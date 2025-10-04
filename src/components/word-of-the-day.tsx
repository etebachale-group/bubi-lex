"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Volume2, Sparkles } from "lucide-react";

type DictEntry = { id: number; bubi: string; spanish: string; ipa: string | null; notes: string | null };

function pickSpanishVoice(voices: SpeechSynthesisVoice[]): SpeechSynthesisVoice | null {
  if (!voices || voices.length === 0) return null;
  // Prefer exact es-ES
  let v = voices.find((x) => x.lang?.toLowerCase() === 'es-es');
  if (v) return v;
  // Then any Spanish variant (es-*)
  v = voices.find((x) => x.lang?.toLowerCase().startsWith('es'));
  if (v) return v;
  // Fallback: voice name contains Spanish
  v = voices.find((x) => /spanish|espan(ol|̃ol)/i.test(x.name));
  return v || null;
}

function speak(text: string, voice: SpeechSynthesisVoice | null) {
  try {
    const u = new SpeechSynthesisUtterance(text);
    if (voice) {
      u.voice = voice;
      u.lang = voice.lang || 'es-ES';
    } else {
      u.lang = 'es-ES';
    }
    // Opcional: ajustar velocidad/tono levemente natural en español
    u.rate = 1.0;
    u.pitch = 1.0;
    window.speechSynthesis.cancel();
    window.speechSynthesis.speak(u);
  } catch {}
}

const FIVE_MIN = 5 * 60 * 1000;

const WordOfTheDay = () => {
  const [entry, setEntry] = useState<DictEntry | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [examples, setExamples] = useState<string[]>([]);
  const timerRef = useRef<number | null>(null);
  const [ttsVoice, setTtsVoice] = useState<SpeechSynthesisVoice | null>(null);

  const lastRandomIdRef = useRef<number | null>(null);
  const fetchWord = useCallback(async (mode: "daily" | "random") => {
    try {
      const controller = new AbortController();
      const res = await fetch(`/api/dictionary/random?mode=${mode}&t=${Date.now()}`,
        { cache: 'no-store', signal: controller.signal, headers: { 'Accept': 'application/json' } });
      const data = await res.json();
      if (!res.ok || data?.error) {
        if (mode === 'daily') {
          // fallback a random
            const rf = await fetch(`/api/dictionary/random?mode=random&t=${Date.now()}`, { cache: 'no-store' });
            const rj = await rf.json();
            if (rf.ok && !rj.error) {
              setEntry(rj);
              setExamples([]);
              setError(null);
              return;
            }
        }
        setError(data?.error || `Error: ${res.status} ${res.statusText}`);
        return;
      }
      if (mode === 'random' && lastRandomIdRef.current && lastRandomIdRef.current === data.id) {
        // intentar otra
        const second = await fetch(`/api/dictionary/random?mode=random&t=${Date.now()+1}`, { cache: 'no-store' });
        if (second.ok) {
          const sj = await second.json();
          if (!sj.error && sj.id !== data.id) {
            setEntry(sj);
            setExamples([]);
            setError(null);
            lastRandomIdRef.current = sj.id;
            return;
          }
        }
      }
      setEntry(data);
      setExamples([]);
      setError(null);
      if (mode === 'random') lastRandomIdRef.current = data.id;
    } catch (e: any) {
      setError(`Fallo al contactar la API: ${e.message}`);
    }
  }, []);

  useEffect(() => {
    // Al montar: palabra del día determinística
  fetchWord("daily");
    // Rotación aleatoria cada 5 minutos
    const id = window.setInterval(() => fetchWord("random"), FIVE_MIN);
    timerRef.current = id as unknown as number;
    // Cargar voces y seleccionar voz española
    const loadVoices = () => {
      try {
        const voices = window.speechSynthesis.getVoices();
        setTtsVoice(pickSpanishVoice(voices));
      } catch {}
    };
    loadVoices();
    if (typeof window !== 'undefined') {
      window.speechSynthesis.onvoiceschanged = loadVoices;
    }
    return () => { if (timerRef.current) window.clearInterval(timerRef.current); };
  }, [fetchWord]);

  const onSpeak = useCallback(() => {
    if (!entry) return;
    speak(entry.bubi, ttsVoice);
  }, [entry, ttsVoice]);

  const onGenerateExamples = useCallback(async () => {
    if (!entry) return;
    try {
      const res = await fetch('/api/dictionary/examples', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ bubi: entry.bubi, spanish: entry.spanish }),
      });
      if (res.ok) {
        const data = await res.json();
        if (Array.isArray(data.examples)) {
          setExamples(data.examples);
          return;
        }
      }
    } catch {}
    // Fallback local si el endpoint falla o no está configurado
    setExamples([
      `En Bubi: «${entry.bubi}». En español: «${entry.spanish}».`,
      `Uso cotidiano: Hoy aprendí la palabra «${entry.bubi}», que significa «${entry.spanish}».`,
      `Contexto cultural: «${entry.bubi}» se relaciona con «${entry.spanish}».`,
    ]);
  }, [entry]);

  return (
    <Card className="w-full max-w-md">
      <CardHeader>
        <CardTitle className="font-headline text-2xl">Palabra del Día</CardTitle>
        <CardDescription>
          Determinística diaria y rotación aleatoria cada 5 minutos.
        </CardDescription>
      </CardHeader>
      <CardContent>
        {error ? (
          <div className="text-red-500 bg-red-50 p-3 rounded-md">
            <div className="font-bold">Error al cargar la palabra:</div>
            <pre className="text-xs whitespace-pre-wrap">{error}</pre>
          </div>
        ) : entry ? (
          <>
            <div className="text-4xl font-bold font-headline text-primary">{entry.bubi}</div>
            <div className="text-xl text-muted-foreground mt-2">{entry.spanish}</div>
            <div className="mt-4">
              <div className="font-bold">Pronunciación:</div>
              <div className="flex items-center">
                <span className="text-lg text-muted-foreground">{entry.ipa ? `/${entry.ipa}/` : ''}</span>
                <Button variant="ghost" size="icon" className="ml-2" onClick={onSpeak} aria-label="Escuchar pronunciación">
                  <Volume2 className="w-5 h-5" />
                </Button>
              </div>
            </div>
            {examples.length > 0 && (
              <div className="mt-4">
                <div className="font-bold">Ejemplos:</div>
                <ul className="list-disc ml-5 mt-1 text-sm text-muted-foreground">
                  {examples.map((ex, i) => (<li key={i}>{ex}</li>))}
                </ul>
              </div>
            )}
          </>
        ) : (
          <div className="text-sm text-muted-foreground">Cargando palabra…</div>
        )}
      </CardContent>
      <CardFooter>
        <div className="flex w-full gap-2">
          <Button className="flex-1" variant="secondary" onClick={() => fetchWord("random")}>Otra aleatoria</Button>
          <Button className="flex-1 bg-accent text-accent-foreground hover:bg-accent/90" onClick={onGenerateExamples}>
            <Sparkles className="w-4 h-4 mr-2" /> Generar Ejemplos
          </Button>
        </div>
      </CardFooter>
    </Card>
  );
};

export default WordOfTheDay;
