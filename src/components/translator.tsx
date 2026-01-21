"use client";

import { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Button } from '@/components/ui/button';
import { Languages, ArrowRight, Loader2, Volume2, Copy, Check, BookOpen, Sparkles } from 'lucide-react';
import { speak } from '@/lib/speech-synthesis';

interface TranslationResult {
  translation: string;
  explanation: string;
  alternatives: string[];
  provider: string;
  source?: string;
  entries?: Array<{
    bubi: string;
    spanish: string;
    type: string;
    class?: string;
    gender?: string;
    plural?: string;
    examples?: string;
    variants?: string;
  }>;
  note?: string;
}

export default function Translator() {
  const [spanishText, setSpanishText] = useState('');
  const [result, setResult] = useState<TranslationResult | null>(null);
  const [isTranslating, setIsTranslating] = useState(false);
  const [copied, setCopied] = useState(false);

  const translateToBubi = async () => {
    if (!spanishText.trim()) return;

    setIsTranslating(true);
    setResult(null);

    try {
      const res = await fetch('/api/ai/translate', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ 
          text: spanishText,
          from: 'es',
          to: 'bubi'
        }),
      });

      if (!res.ok) throw new Error('Error en la traducción');

      const data = await res.json();
      setResult(data);
    } catch (error) {
      console.error('Error:', error);
      setResult({
        translation: '',
        explanation: 'Error al traducir. Por favor, intenta de nuevo.',
        alternatives: [],
        provider: 'error'
      });
    } finally {
      setIsTranslating(false);
    }
  };

  const handlePronounce = async (text: string) => {
    if (!text) return;
    try {
      await speak(text, { rate: 0.85 }, true);
    } catch (error) {
      console.error('Error al pronunciar:', error);
    }
  };

  const handleCopy = (text: string) => {
    if (!text) return;
    navigator.clipboard.writeText(text);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  };

  const handleKeyPress = (e: React.KeyboardEvent) => {
    if (e.key === 'Enter' && !e.shiftKey) {
      e.preventDefault();
      translateToBubi();
    }
  };

  return (
    <Card className="border-2 border-purple-200 dark:border-purple-800 shadow-xl">
      <CardHeader className="bg-gradient-to-r from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30">
        <div className="flex items-center gap-3">
          <div className="p-2 rounded-lg bg-gradient-to-br from-purple-600 to-pink-600">
            <Languages className="w-6 h-6 text-white" />
          </div>
          <div>
            <CardTitle className="text-2xl">Traductor Español → Bubi</CardTitle>
            <p className="text-sm text-muted-foreground mt-1">
              Busca en el diccionario de 7,676 palabras o usa IA para frases
            </p>
          </div>
        </div>
      </CardHeader>
      <CardContent className="pt-6 space-y-4">
        {/* Input en Español */}
        <div className="space-y-2">
          <label className="text-sm font-semibold text-gray-700 dark:text-gray-300 flex items-center gap-2">
            <span className="px-2 py-0.5 bg-blue-100 dark:bg-blue-900 text-blue-700 dark:text-blue-300 rounded text-xs font-bold">
              ES
            </span>
            Español
          </label>
          <div className="relative">
            <Input
              placeholder="Escribe en español (ej: agua, casa, hola)..."
              value={spanishText}
              onChange={(e) => setSpanishText(e.target.value)}
              onKeyPress={handleKeyPress}
              className="pr-24 py-6 text-lg border-2 focus:border-purple-500 dark:focus:border-purple-500"
              disabled={isTranslating}
            />
            <Button
              onClick={translateToBubi}
              disabled={!spanishText.trim() || isTranslating}
              className="absolute right-2 top-1/2 -translate-y-1/2 bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700"
              size="sm"
            >
              {isTranslating ? (
                <>
                  <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                  Traduciendo...
                </>
              ) : (
                <>
                  Traducir
                  <ArrowRight className="w-4 h-4 ml-2" />
                </>
              )}
            </Button>
          </div>
          <p className="text-xs text-muted-foreground">
            Presiona Enter para traducir
          </p>
        </div>

        {/* Separador con icono */}
        <div className="flex items-center justify-center py-2">
          <div className="flex-1 border-t-2 border-gray-200 dark:border-gray-700"></div>
          <div className="px-4">
            <div className="p-2 rounded-full bg-gradient-to-br from-purple-600 to-pink-600 animate-pulse">
              <ArrowRight className="w-5 h-5 text-white rotate-90" />
            </div>
          </div>
          <div className="flex-1 border-t-2 border-gray-200 dark:border-gray-700"></div>
        </div>

        {/* Output en Bubi */}
        <div className="space-y-2">
          <label className="text-sm font-semibold text-gray-700 dark:text-gray-300 flex items-center gap-2">
            <span className="px-2 py-0.5 bg-purple-100 dark:bg-purple-900 text-purple-700 dark:text-purple-300 rounded text-xs font-bold">
              BUBI
            </span>
            Traducción
            {result?.provider === 'dictionary' && (
              <span className="flex items-center gap-1 text-xs text-green-600 dark:text-green-400">
                <BookOpen className="w-3 h-3" />
                Del diccionario
              </span>
            )}
            {result?.provider && result.provider !== 'dictionary' && result.provider !== 'error' && (
              <span className="flex items-center gap-1 text-xs text-blue-600 dark:text-blue-400">
                <Sparkles className="w-3 h-3" />
                Generado por IA
              </span>
            )}
          </label>
          <div className="relative min-h-[80px] p-4 rounded-lg border-2 border-purple-200 dark:border-purple-800 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30">
            {isTranslating ? (
              <div className="flex items-center justify-center h-full">
                <Loader2 className="w-6 h-6 animate-spin text-purple-600 dark:text-purple-400" />
              </div>
            ) : result ? (
              <>
                <p className="text-lg font-semibold text-purple-900 dark:text-purple-100 pr-20 mb-2">
                  {result.translation || 'No se pudo traducir'}
                </p>
                
                {result.explanation && (
                  <p className="text-sm text-purple-700 dark:text-purple-300 mb-2">
                    {result.explanation}
                  </p>
                )}
                
                {result.alternatives && result.alternatives.length > 0 && (
                  <div className="mt-3 pt-3 border-t border-purple-200 dark:border-purple-700">
                    <p className="text-xs font-semibold text-purple-600 dark:text-purple-400 mb-1">
                      Alternativas:
                    </p>
                    <div className="flex flex-wrap gap-2">
                      {result.alternatives.map((alt, idx) => (
                        <span
                          key={idx}
                          className="px-2 py-1 bg-purple-100 dark:bg-purple-900 text-purple-700 dark:text-purple-300 rounded text-sm"
                        >
                          {alt}
                        </span>
                      ))}
                    </div>
                  </div>
                )}
                
                {result.entries && result.entries.length > 0 && (
                  <div className="mt-3 pt-3 border-t border-purple-200 dark:border-purple-700">
                    <p className="text-xs font-semibold text-purple-600 dark:text-purple-400 mb-2">
                      📚 Entradas del diccionario:
                    </p>
                    <div className="space-y-3">
                      {result.entries.map((entry, idx) => (
                        <div key={idx} className="text-sm bg-white dark:bg-gray-900 p-2 rounded">
                          <div className="flex items-start gap-2">
                            <span className="font-bold text-purple-900 dark:text-purple-100">
                              {entry.bubi}
                            </span>
                            <span className="text-purple-600 dark:text-purple-400">→</span>
                            <span className="text-purple-700 dark:text-purple-300">
                              {entry.spanish}
                            </span>
                          </div>
                          {(entry.type || entry.class || entry.gender) && (
                            <div className="flex flex-wrap gap-1 mt-1">
                              {entry.type && (
                                <span className="text-xs px-1.5 py-0.5 bg-blue-100 dark:bg-blue-900 text-blue-700 dark:text-blue-300 rounded">
                                  {entry.type}
                                </span>
                              )}
                              {entry.class && (
                                <span className="text-xs px-1.5 py-0.5 bg-green-100 dark:bg-green-900 text-green-700 dark:text-green-300 rounded">
                                  {entry.class}
                                </span>
                              )}
                              {entry.gender && (
                                <span className="text-xs px-1.5 py-0.5 bg-pink-100 dark:bg-pink-900 text-pink-700 dark:text-pink-300 rounded">
                                  {entry.gender}
                                </span>
                              )}
                              {entry.plural && (
                                <span className="text-xs px-1.5 py-0.5 bg-amber-100 dark:bg-amber-900 text-amber-700 dark:text-amber-300 rounded">
                                  pl: {entry.plural}
                                </span>
                              )}
                            </div>
                          )}
                          {entry.variants && (
                            <p className="text-xs text-purple-600 dark:text-purple-400 mt-1">
                              Variantes: {entry.variants}
                            </p>
                          )}
                          {entry.examples && (
                            <p className="text-xs text-gray-600 dark:text-gray-400 mt-1 italic">
                              Ej: {entry.examples.substring(0, 100)}{entry.examples.length > 100 ? '...' : ''}
                            </p>
                          )}
                        </div>
                      ))}
                    </div>
                  </div>
                )}
                
                {result.translation && (
                  <div className="absolute top-3 right-3 flex gap-2">
                    <Button
                      variant="ghost"
                      size="icon"
                      className="h-8 w-8 rounded-full hover:bg-purple-200 dark:hover:bg-purple-800"
                      onClick={() => handlePronounce(result.translation)}
                      title="Pronunciar"
                    >
                      <Volume2 className="w-4 h-4 text-purple-600 dark:text-purple-400" />
                    </Button>
                    <Button
                      variant="ghost"
                      size="icon"
                      className="h-8 w-8 rounded-full hover:bg-purple-200 dark:hover:bg-purple-800"
                      onClick={() => handleCopy(result.translation)}
                      title="Copiar"
                    >
                      {copied ? (
                        <Check className="w-4 h-4 text-green-600 dark:text-green-400" />
                      ) : (
                        <Copy className="w-4 h-4 text-purple-600 dark:text-purple-400" />
                      )}
                    </Button>
                  </div>
                )}
              </>
            ) : (
              <p className="text-muted-foreground text-center py-4">
                La traducción aparecerá aquí...
              </p>
            )}
          </div>
        </div>

        {/* Nota informativa */}
        <div className="p-3 rounded-lg bg-blue-50 dark:bg-blue-950/30 border border-blue-200 dark:border-blue-800">
          <p className="text-xs text-blue-900 dark:text-blue-100">
            <strong>💡 Cómo funciona:</strong> Primero busca en el diccionario de 7,676 palabras. 
            Si no encuentra coincidencia exacta, usa IA para generar una traducción aproximada.
          </p>
        </div>
        
        {result?.note && (
          <div className="p-3 rounded-lg bg-amber-50 dark:bg-amber-950/30 border border-amber-200 dark:border-amber-800">
            <p className="text-xs text-amber-900 dark:text-amber-100">
              <strong>⚠️ Nota:</strong> {result.note}
            </p>
          </div>
        )}
      </CardContent>
    </Card>
  );
}
