"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Volume2, Sparkles, RefreshCw } from "lucide-react";

type DictEntry = { id: number; bubi: string; spanish: string; ipa: string | null; notes: string | null };

function pickSpanishVoice(voices: SpeechSynthesisVoice[]): SpeechSynthesisVoice | null {
  if (!voices || voices.length === 0) return null;
  let v = voices.find((x) => x.lang?.toLowerCase() === 'es-es');
  if (v) return v;
  v = voices.find((x) => x.lang?.toLowerCase().startsWith('es'));
  if (v) return v;
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
  const [isLoading, setIsLoading] = useState(false);
  const timerRef = useRef<number | null>(null);
  const [ttsVoice, setTtsVoice] = useState<SpeechSynthesisVoice | null>(null);

  const lastRandomIdRef = useRef<number | null>(null);
  const fetchWord = useCallback(async (mode: "daily" | "random") => {
    setIsLoading(true);
    try {
      const controller = new AbortController();
      const res = await fetch(`/api/dictionary/random?mode=${mode}&t=${Date.now()}`,
        { cache: 'no-store', signal: controller.signal, headers: { 'Accept': 'application/json' } });
      const data = await res.json();
      if (!res.ok || data?.error) {
        if (mode === 'daily') {
          const rf = await fetch(`/api/dictionary/random?mode=random&t=${Date.now()}`, { cache: 'no-store' });
          const rj = await rf.json();
          if (rf.ok && !rj.error) {
            setEntry(rj);
            setExamples([]);
            setError(null);
            setIsLoading(false);
            return;
          }
        }
        setError(data?.error || `Error: ${res.status} ${res.statusText}`);
        setIsLoading(false);
        return;
      }
      if (mode === 'random' && lastRandomIdRef.current && lastRandomIdRef.current === data.id) {
        const second = await fetch(`/api/dictionary/random?mode=random&t=${Date.now()+1}`, { cache: 'no-store' });
        if (second.ok) {
          const sj = await second.json();
          if (!sj.error && sj.id !== data.id) {
            setEntry(sj);
            setExamples([]);
            setError(null);
            lastRandomIdRef.current = sj.id;
            setIsLoading(false);
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
    } finally {
      setIsLoading(false);
    }
  }, []);

  useEffect(() => {
    fetchWord("daily");
    const id = window.setInterval(() => fetchWord("random"), FIVE_MIN);
    timerRef.current = id as unknown as number;
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
    setExamples([
      `En Bubi: «${entry.bubi}». En español: «${entry.spanish}».`,
      `Uso cotidiano: Hoy aprendí la palabra «${entry.bubi}», que significa «${entry.spanish}».`,
      `Contexto cultural: «${entry.bubi}» se relaciona con «${entry.spanish}».`,
    ]);
  }, [entry]);

  return (
    <Card className="w-full max-w-md bg-gradient-to-br from-purple-50 via-pink-50 to-blue-50 dark:from-purple-950/30 dark:via-pink-950/30 dark:to-blue-950/30 border-2 border-purple-200 dark:border-purple-800 overflow-hidden relative">
      <div className="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-purple-400/20 to-pink-400/20 rounded-full blur-3xl"></div>
      <CardHeader className="relative z-10">
        <div className="flex items-center gap-2 mb-2">
          <Sparkles className="w-6 h-6 text-purple-600 dark:text-purple-400 animate-pulse" />
          <CardTitle className="font-headline text-2xl bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
            Palabra del Día
          </CardTitle>
        </div>
        <CardDescription>
          Descubre una nueva palabra cada día
        </CardDescription>
      </CardHeader>
      <CardContent className="relative z-10">
        {error ? (
          <div className="text-red-500 bg-red-50 dark:bg-red-950/30 p-4 rounded-lg border border-red-200 dark:border-red-800">
            <div className="font-bold mb-1">Error al cargar la palabra</div>
            <pre className="text-xs whitespace-pre-wrap">{error}</pre>
          </div>
        ) : entry ? (
          <div className="space-y-4">
            <div className="text-center p-6 bg-white/50 dark:bg-gray-900/50 rounded-xl backdrop-blur-sm">
              <div className="text-5xl font-bold font-headline text-purple-600 dark:text-purple-400 mb-3 animate-scale-in">
                {entry.bubi}
              </div>
              <div className="text-2xl text-pink-600 dark:text-pink-400 font-medium">
                {entry.spanish}
              </div>
            </div>
            
            {entry.ipa && (
              <div className="flex items-center justify-center gap-3 p-4 bg-white/50 dark:bg-gray-900/50 rounded-lg backdrop-blur-sm">
                <div className="flex-1">
                  <div className="text-xs font-semibold text-muted-foreground uppercase mb-1">Pronunciación</div>
                  <span className="text-lg font-mono text-foreground">/{entry.ipa}/</span>
                </div>
                <Button 
                  variant="ghost" 
                  size="icon" 
                  onClick={onSpeak} 
                  aria-label="Escuchar pronunciación"
                  className="hover:bg-purple-100 dark:hover:bg-purple-900/30"
                >
                  <Volume2 className="w-5 h-5 text-purple-600 dark:text-purple-400" />
                </Button>
              </div>
            )}
            
            {examples.length > 0 && (
              <div className="p-4 bg-white/50 dark:bg-gray-900/50 rounded-lg backdrop-blur-sm animate-fade-in">
                <div className="font-bold text-sm mb-2 text-purple-600 dark:text-purple-400">Ejemplos de uso:</div>
                <ul className="space-y-2">
                  {examples.map((ex, i) => (
                    <li key={i} className="text-sm text-muted-foreground pl-4 border-l-2 border-purple-300 dark:border-purple-700">
                      {ex}
                    </li>
                  ))}
                </ul>
              </div>
            )}
          </div>
        ) : (
          <div className="text-center py-8">
            <div className="w-12 h-12 border-4 border-purple-200 dark:border-purple-800 border-t-purple-600 dark:border-t-purple-400 rounded-full animate-spin mx-auto mb-3"></div>
            <div className="text-sm text-muted-foreground">Cargando palabra…</div>
          </div>
        )}
      </CardContent>
      <CardFooter className="relative z-10">
        <div className="flex w-full gap-2">
          <Button 
            className="flex-1" 
            variant="outline" 
            onClick={() => fetchWord("random")}
            disabled={isLoading}
          >
            <RefreshCw className={`w-4 h-4 mr-2 ${isLoading ? 'animate-spin' : ''}`} />
            Otra palabra
          </Button>
          <Button 
            className="flex-1 bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white" 
            onClick={onGenerateExamples}
            disabled={!entry}
          >
            <Sparkles className="w-4 h-4 mr-2" />
            Ejemplos
          </Button>
        </div>
      </CardFooter>
    </Card>
  );
};

export default WordOfTheDay;
