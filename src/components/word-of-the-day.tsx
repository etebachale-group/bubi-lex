"use client";

import { useCallback, useEffect, useRef, useState } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Volume2, Sparkles, RefreshCw, Play, Pause, AlertCircle, Clock } from "lucide-react";

type DictEntry = { 
  id: number; 
  bubi: string; 
  spanish: string; 
  ipa: string | null; 
  notes: string | null;
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
    u.rate = 0.85;
    u.pitch = 1.0;
    window.speechSynthesis.cancel();
    window.speechSynthesis.speak(u);
  } catch (e) {
    console.error('Error al reproducir audio:', e);
  }
}

const ROTATION_INTERVAL = 60 * 1000; // 1 minuto

const WordOfTheDay = () => {
  const [entry, setEntry] = useState<DictEntry | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [isLoading, setIsLoading] = useState(false);
  const [isSpeaking, setIsSpeaking] = useState(false);
  const [timeLeft, setTimeLeft] = useState(60);
  const timerRef = useRef<number | null>(null);
  const countdownRef = useRef<number | null>(null);
  const [ttsVoice, setTtsVoice] = useState<SpeechSynthesisVoice | null>(null);
  const usedIdsRef = useRef<Set<number>>(new Set());

  const fetchRandomWord = useCallback(async () => {
    setIsLoading(true);
    setError(null);
    
    try {
      // Obtener palabra aleatoria de la base de datos
      const res = await fetch(
        `/api/dictionary/random?mode=random&t=${Date.now()}`,
        { 
          cache: 'no-store', 
          headers: { 'Accept': 'application/json' } 
        }
      );
      
      if (!res.ok) {
        const errorData = await res.json().catch(() => ({ error: 'Error desconocido' }));
        throw new Error(errorData.error || `Error ${res.status}`);
      }
      
      const data = await res.json();
      
      if (!data || !data.bubi) {
        throw new Error('No se pudo obtener una palabra válida');
      }
      
      // Evitar repetir palabras recientes (últimas 20)
      if (usedIdsRef.current.has(data.id) && usedIdsRef.current.size < 20) {
        // Intentar obtener otra palabra
        fetchRandomWord();
        return;
      }
      
      // Agregar a la lista de usadas
      usedIdsRef.current.add(data.id);
      
      // Si ya tenemos más de 20 palabras usadas, limpiar las más antiguas
      if (usedIdsRef.current.size > 20) {
        const idsArray = Array.from(usedIdsRef.current);
        usedIdsRef.current = new Set(idsArray.slice(-20));
      }
      
      setEntry(data);
      setError(null);
      setTimeLeft(60); // Reiniciar contador
    } catch (e: any) {
      console.error('Error al cargar palabra:', e);
      setError(e.message || 'Error al cargar la palabra');
      setEntry(null);
    } finally {
      setIsLoading(false);
    }
  }, []);

  useEffect(() => {
    // Cargar primera palabra
    fetchRandomWord();
    
    // Rotar palabra cada 1 minuto
    const rotationTimer = window.setInterval(() => {
      fetchRandomWord();
    }, ROTATION_INTERVAL);
    timerRef.current = rotationTimer as unknown as number;
    
    // Countdown cada segundo
    const countdownTimer = window.setInterval(() => {
      setTimeLeft(prev => {
        if (prev <= 1) return 60;
        return prev - 1;
      });
    }, 1000);
    countdownRef.current = countdownTimer as unknown as number;
    
    // Configurar voces TTS
    const loadVoices = () => {
      try {
        const voices = window.speechSynthesis.getVoices();
        setTtsVoice(pickSpanishVoice(voices));
      } catch (e) {
        console.error('Error al cargar voces:', e);
      }
    };
    
    loadVoices();
    if (typeof window !== 'undefined' && window.speechSynthesis) {
      window.speechSynthesis.onvoiceschanged = loadVoices;
    }
    
    return () => { 
      if (timerRef.current) window.clearInterval(timerRef.current);
      if (countdownRef.current) window.clearInterval(countdownRef.current);
      if (window.speechSynthesis) window.speechSynthesis.cancel();
    };
  }, [fetchRandomWord]);

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

  return (
    <Card className="w-full bg-gradient-to-br from-purple-50 via-pink-50 to-blue-50 dark:from-purple-950/30 dark:via-pink-950/30 dark:to-blue-950/30 border-2 border-purple-200 dark:border-purple-800 overflow-hidden relative">
      <div className="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-purple-400/20 to-pink-400/20 rounded-full blur-3xl"></div>
      
      <CardHeader className="relative z-10 px-4 sm:px-6 pb-3">
        <div className="flex items-center justify-between mb-2">
          <div className="flex items-center gap-2">
            <Sparkles className="w-5 h-5 text-purple-600 dark:text-purple-400 animate-pulse" />
            <CardTitle className="font-headline text-lg sm:text-xl bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
              Palabra del Momento
            </CardTitle>
          </div>
          <div className="flex items-center gap-2 px-3 py-1 bg-white/50 dark:bg-gray-900/50 rounded-full backdrop-blur-sm">
            <Clock className="w-4 h-4 text-purple-600 dark:text-purple-400" />
            <span className="text-sm font-bold text-purple-600 dark:text-purple-400">
              {timeLeft}s
            </span>
          </div>
        </div>
        <CardDescription className="text-xs">
          Nueva palabra cada minuto desde la base de datos
        </CardDescription>
      </CardHeader>
      
      <CardContent className="relative z-10 px-4 sm:px-6 pb-4">
        {error ? (
          <div className="text-center py-6 space-y-3">
            <div className="p-3 bg-red-50 dark:bg-red-950/30 rounded-lg border border-red-200 dark:border-red-800">
              <div className="flex items-center justify-center gap-2 mb-2">
                <AlertCircle className="w-5 h-5 text-red-500" />
                <div className="font-bold text-sm text-red-700 dark:text-red-400">Error al cargar</div>
              </div>
              <p className="text-xs text-red-600 dark:text-red-400">{error}</p>
            </div>
            <Button 
              onClick={fetchRandomWord}
              variant="outline"
              size="sm"
              disabled={isLoading}
            >
              <RefreshCw className={`w-4 h-4 mr-2 ${isLoading ? 'animate-spin' : ''}`} />
              Reintentar
            </Button>
          </div>
        ) : entry ? (
          <div className="space-y-3 animate-fade-in">
            {/* Palabra principal */}
            <div className="text-center p-4 bg-white/50 dark:bg-gray-900/50 rounded-xl backdrop-blur-sm">
              <div className="text-3xl sm:text-4xl font-bold font-headline text-purple-600 dark:text-purple-400 mb-2 break-words">
                {entry.bubi}
              </div>
              <div className="text-xl sm:text-2xl text-pink-600 dark:text-pink-400 font-medium break-words">
                {entry.spanish}
              </div>
              {entry.ipa && (
                <div className="mt-2 text-sm font-mono text-muted-foreground">
                  /{entry.ipa}/
                </div>
              )}
            </div>
            
            {/* Notas */}
            {entry.notes && (
              <div className="p-3 bg-orange-50 dark:bg-orange-950/30 rounded-lg border border-orange-200 dark:border-orange-800">
                <p className="text-sm text-orange-900 dark:text-orange-100 break-words">
                  {entry.notes}
                </p>
              </div>
            )}
            
            {/* Botones de acción */}
            <div className="flex gap-2">
              <Button 
                onClick={onSpeak} 
                className={`flex-1 ${
                  isSpeaking 
                    ? 'bg-gradient-to-r from-pink-600 to-purple-600 hover:from-pink-700 hover:to-purple-700' 
                    : 'bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700'
                } text-white`}
                disabled={!entry}
              >
                {isSpeaking ? (
                  <>
                    <Pause className="w-4 h-4 mr-2" />
                    Detener
                  </>
                ) : (
                  <>
                    <Play className="w-4 h-4 mr-2" />
                    Escuchar
                  </>
                )}
              </Button>
              <Button 
                onClick={fetchRandomWord}
                variant="outline"
                disabled={isLoading}
              >
                <RefreshCw className={`w-4 h-4 ${isLoading ? 'animate-spin' : ''}`} />
              </Button>
            </div>
          </div>
        ) : (
          <div className="text-center py-8">
            <div className="w-12 h-12 border-4 border-purple-200 dark:border-purple-800 border-t-purple-600 dark:border-t-purple-400 rounded-full animate-spin mx-auto mb-3"></div>
            <div className="text-sm text-muted-foreground">Cargando palabra…</div>
          </div>
        )}
      </CardContent>
    </Card>
  );
};

export default WordOfTheDay;
