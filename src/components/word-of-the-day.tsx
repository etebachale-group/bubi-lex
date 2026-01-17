"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription, CardFooter } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Volume2, Sparkles, RefreshCw, BookOpen, Lightbulb, Play, Pause } from "lucide-react";

type DictEntry = { 
  id: number; 
  bubi: string; 
  spanish: string; 
  ipa: string | null; 
  notes: string | null;
  category: string | null;
};

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
    u.rate = 0.9;
    u.pitch = 1.0;
    window.speechSynthesis.cancel();
    window.speechSynthesis.speak(u);
  } catch {}
}

const ROTATION_INTERVAL = 10 * 60 * 1000; // 10 minutos

const WordOfTheDay = () => {
  const [entry, setEntry] = useState<DictEntry | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [examples, setExamples] = useState<string[]>([]);
  const [etymology, setEtymology] = useState<string>("");
  const [pronunciation, setPronunciation] = useState<any>(null);
  const [isLoading, setIsLoading] = useState(false);
  const [isLoadingAI, setIsLoadingAI] = useState(false);
  const [isSpeaking, setIsSpeaking] = useState(false);
  const timerRef = useRef<number | null>(null);
  const [ttsVoice, setTtsVoice] = useState<SpeechSynthesisVoice | null>(null);
  const lastRandomIdRef = useRef<number | null>(null);

  const fetchWord = useCallback(async (mode: "daily" | "random") => {
    setIsLoading(true);
    setExamples([]);
    setEtymology("");
    setPronunciation(null);
    
    try {
      const controller = new AbortController();
      const excludeParam = mode === 'random' && lastRandomIdRef.current 
        ? `&excludeId=${lastRandomIdRef.current}` 
        : '';
      const res = await fetch(`/api/dictionary/random?mode=${mode}&t=${Date.now()}${excludeParam}`,
        { cache: 'no-store', signal: controller.signal, headers: { 'Accept': 'application/json' } });
      const data = await res.json();
      
      if (!res.ok || data?.error) {
        if (mode === 'daily') {
          const rf = await fetch(`/api/dictionary/random?mode=random&t=${Date.now()}`, { cache: 'no-store' });
          const rj = await rf.json();
          if (rf.ok && !rj.error) {
            setEntry(rj);
            setError(null);
            lastRandomIdRef.current = rj.id;
            setIsLoading(false);
            return;
          }
        }
        setError(data?.error || `Error: ${res.status} ${res.statusText}`);
        setIsLoading(false);
        return;
      }
      
      setEntry(data);
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
    
    // Rotar palabra cada 10 minutos
    const id = window.setInterval(() => fetchWord("random"), ROTATION_INTERVAL);
    timerRef.current = id as unknown as number;
    
    // Configurar voces TTS
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
    
    return () => { 
      if (timerRef.current) window.clearInterval(timerRef.current); 
      window.speechSynthesis.cancel();
    };
  }, [fetchWord]);

  const onSpeak = useCallback(() => {
    if (!entry) return;
    
    if (isSpeaking) {
      window.speechSynthesis.cancel();
      setIsSpeaking(false);
      return;
    }
    
    setIsSpeaking(true);
    speak(entry.bubi, ttsVoice);
    
    // Detectar cuando termina de hablar
    setTimeout(() => setIsSpeaking(false), 3000);
  }, [entry, ttsVoice, isSpeaking]);

  const onGenerateExamples = useCallback(async () => {
    if (!entry || isLoadingAI) return;
    setIsLoadingAI(true);
    
    try {
      const res = await fetch('/api/ai/examples', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ bubi: entry.bubi, spanish: entry.spanish, count: 3 }),
      });
      
      if (res.ok) {
        const data = await res.json();
        if (Array.isArray(data.examples) && data.examples.length > 0) {
          setExamples(data.examples);
          setIsLoadingAI(false);
          return;
        }
      }
    } catch {}
    
    // Fallback
    setExamples([
      `La palabra "${entry.bubi}" significa "${entry.spanish}" en español.`,
      `En contexto: "${entry.bubi}" se usa frecuentemente en conversaciones cotidianas.`,
      `Ejemplo cultural: "${entry.bubi}" tiene un significado especial en la cultura Bubi.`,
    ]);
    setIsLoadingAI(false);
  }, [entry, isLoadingAI]);

  const onGenerateEtymology = useCallback(async () => {
    if (!entry || isLoadingAI) return;
    setIsLoadingAI(true);
    
    try {
      const res = await fetch('/api/ai/etymology', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ bubi: entry.bubi, spanish: entry.spanish }),
      });
      
      if (res.ok) {
        const data = await res.json();
        if (data.explanation) {
          setEtymology(data.explanation);
          setIsLoadingAI(false);
          return;
        }
      }
    } catch {}
    
    // Fallback
    setEtymology(`La palabra "${entry.bubi}" (${entry.spanish}) es parte del vocabulario tradicional del pueblo Bubi de Bioko, Guinea Ecuatorial.`);
    setIsLoadingAI(false);
  }, [entry, isLoadingAI]);

  const onGeneratePronunciation = useCallback(async () => {
    if (!entry || isLoadingAI) return;
    setIsLoadingAI(true);
    
    try {
      const res = await fetch('/api/ai/pronunciation', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ bubi: entry.bubi, ipa: entry.ipa }),
      });
      
      if (res.ok) {
        const data = await res.json();
        setPronunciation(data);
        setIsLoadingAI(false);
        return;
      }
    } catch {}
    
    // Fallback
    setPronunciation({
      ipa: entry.ipa || entry.bubi,
      breakdown: `Pronunciar: ${entry.bubi}`,
      tips: ['Pronunciar cada sílaba claramente', 'Mantener un ritmo constante']
    });
    setIsLoadingAI(false);
  }, [entry, isLoadingAI]);

  return (
    <Card className="w-full max-w-2xl bg-gradient-to-br from-purple-50 via-pink-50 to-blue-50 dark:from-purple-950/30 dark:via-pink-950/30 dark:to-blue-950/30 border-2 border-purple-200 dark:border-purple-800 overflow-hidden relative">
      <div className="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-purple-400/20 to-pink-400/20 rounded-full blur-3xl"></div>
      
      <CardHeader className="relative z-10">
        <div className="flex items-center gap-2 mb-2">
          <Sparkles className="w-6 h-6 text-purple-600 dark:text-purple-400 animate-pulse" />
          <CardTitle className="font-headline text-2xl bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
            Palabra del Día
          </CardTitle>
        </div>
        <CardDescription>
          Descubre una nueva palabra cada 10 minutos • Potenciado por IA
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
            {/* Palabra principal */}
            <div className="text-center p-6 bg-white/50 dark:bg-gray-900/50 rounded-xl backdrop-blur-sm">
              <div className="text-5xl font-bold font-headline text-purple-600 dark:text-purple-400 mb-3 animate-scale-in">
                {entry.bubi}
              </div>
              <div className="text-2xl text-pink-600 dark:text-pink-400 font-medium mb-2">
                {entry.spanish}
              </div>
              {entry.category && (
                <div className="inline-block px-3 py-1 bg-purple-100 dark:bg-purple-900/30 text-purple-700 dark:text-purple-300 rounded-full text-sm">
                  {entry.category}
                </div>
              )}
            </div>
            
            {/* Pronunciación básica con botón más visible */}
            <div className="flex items-center justify-between gap-3 p-4 bg-gradient-to-r from-purple-100 to-pink-100 dark:from-purple-900/30 dark:to-pink-900/30 rounded-lg backdrop-blur-sm border-2 border-purple-200 dark:border-purple-800">
              <div className="flex-1">
                <div className="text-xs font-semibold text-purple-600 dark:text-purple-400 uppercase mb-1 flex items-center gap-2">
                  <Volume2 className="w-4 h-4" />
                  Escuchar Pronunciación
                </div>
                {entry.ipa && (
                  <span className="text-lg font-mono text-foreground">/{entry.ipa}/</span>
                )}
              </div>
              <Button 
                size="lg"
                onClick={onSpeak} 
                aria-label={isSpeaking ? "Detener" : "Escuchar pronunciación"}
                className={`${
                  isSpeaking 
                    ? 'bg-gradient-to-r from-pink-600 to-purple-600 hover:from-pink-700 hover:to-purple-700' 
                    : 'bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700'
                } text-white shadow-lg hover:shadow-xl transition-all`}
              >
                {isSpeaking ? (
                  <>
                    <Pause className="w-5 h-5 mr-2" />
                    Detener
                  </>
                ) : (
                  <>
                    <Play className="w-5 h-5 mr-2" />
                    Escuchar
                  </>
                )}
              </Button>
            </div>
            
            {/* Pronunciación detallada con IA */}
            {pronunciation && (
              <div className="p-4 bg-white/50 dark:bg-gray-900/50 rounded-lg backdrop-blur-sm animate-fade-in">
                <div className="font-bold text-sm mb-2 text-purple-600 dark:text-purple-400 flex items-center gap-2">
                  <Volume2 className="w-4 h-4" />
                  Guía de Pronunciación
                </div>
                <div className="space-y-2 text-sm">
                  <div>
                    <span className="font-semibold">IPA:</span> /{pronunciation.ipa}/
                  </div>
                  <div>
                    <span className="font-semibold">Desglose:</span> {pronunciation.breakdown}
                  </div>
                  {pronunciation.tips && pronunciation.tips.length > 0 && (
                    <div>
                      <span className="font-semibold">Consejos:</span>
                      <ul className="list-disc list-inside mt-1 space-y-1">
                        {pronunciation.tips.map((tip: string, i: number) => (
                          <li key={i} className="text-muted-foreground">{tip}</li>
                        ))}
                      </ul>
                    </div>
                  )}
                </div>
              </div>
            )}
            
            {/* Ejemplos */}
            {examples.length > 0 && (
              <div className="p-4 bg-white/50 dark:bg-gray-900/50 rounded-lg backdrop-blur-sm animate-fade-in">
                <div className="font-bold text-sm mb-2 text-purple-600 dark:text-purple-400 flex items-center gap-2">
                  <BookOpen className="w-4 h-4" />
                  Ejemplos de uso
                </div>
                <ul className="space-y-2">
                  {examples.map((ex, i) => (
                    <li key={i} className="text-sm text-muted-foreground pl-4 border-l-2 border-purple-300 dark:border-purple-700">
                      {ex}
                    </li>
                  ))}
                </ul>
              </div>
            )}
            
            {/* Etimología */}
            {etymology && (
              <div className="p-4 bg-white/50 dark:bg-gray-900/50 rounded-lg backdrop-blur-sm animate-fade-in">
                <div className="font-bold text-sm mb-2 text-purple-600 dark:text-purple-400 flex items-center gap-2">
                  <Lightbulb className="w-4 h-4" />
                  Etimología y Origen
                </div>
                <p className="text-sm text-muted-foreground">{etymology}</p>
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
        <div className="flex flex-col w-full gap-2">
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
              disabled={!entry || isLoadingAI}
            >
              <Sparkles className="w-4 h-4 mr-2" />
              {isLoadingAI ? 'Generando...' : 'Ejemplos IA'}
            </Button>
          </div>
          <div className="flex w-full gap-2">
            <Button 
              className="flex-1" 
              variant="outline" 
              onClick={onGeneratePronunciation}
              disabled={!entry || isLoadingAI}
            >
              <Volume2 className="w-4 h-4 mr-2" />
              Pronunciación
            </Button>
            <Button 
              className="flex-1" 
              variant="outline" 
              onClick={onGenerateEtymology}
              disabled={!entry || isLoadingAI}
            >
              <Lightbulb className="w-4 h-4 mr-2" />
              Etimología
            </Button>
          </div>
        </div>
      </CardFooter>
    </Card>
  );
};

export default WordOfTheDay;
