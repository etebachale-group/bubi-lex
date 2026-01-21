"use client";

import { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Button } from '@/components/ui/button';
import { Languages, ArrowRight, Loader2, Volume2, Copy, Check } from 'lucide-react';
import { speak } from '@/lib/speech-synthesis';

export default function Translator() {
  const [spanishText, setSpanishText] = useState('');
  const [bubiTranslation, setBubiTranslation] = useState('');
  const [isTranslating, setIsTranslating] = useState(false);
  const [copied, setCopied] = useState(false);

  const translateToBubi = async () => {
    if (!spanishText.trim()) return;

    setIsTranslating(true);
    setBubiTranslation('');

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
      setBubiTranslation(data.translation || 'No se pudo traducir');
    } catch (error) {
      console.error('Error:', error);
      setBubiTranslation('Error al traducir. Por favor, intenta de nuevo.');
    } finally {
      setIsTranslating(false);
    }
  };

  const handlePronounce = async () => {
    if (!bubiTranslation) return;
    try {
      await speak(bubiTranslation, { rate: 0.85 }, true);
    } catch (error) {
      console.error('Error al pronunciar:', error);
    }
  };

  const handleCopy = () => {
    if (!bubiTranslation) return;
    navigator.clipboard.writeText(bubiTranslation);
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
              Traduce palabras y frases del español al Bubi con IA
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
              placeholder="Escribe en español..."
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
          </label>
          <div className="relative min-h-[80px] p-4 rounded-lg border-2 border-purple-200 dark:border-purple-800 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30">
            {isTranslating ? (
              <div className="flex items-center justify-center h-full">
                <Loader2 className="w-6 h-6 animate-spin text-purple-600 dark:text-purple-400" />
              </div>
            ) : bubiTranslation ? (
              <>
                <p className="text-lg font-semibold text-purple-900 dark:text-purple-100 pr-20">
                  {bubiTranslation}
                </p>
                <div className="absolute top-3 right-3 flex gap-2">
                  <Button
                    variant="ghost"
                    size="icon"
                    className="h-8 w-8 rounded-full hover:bg-purple-200 dark:hover:bg-purple-800"
                    onClick={handlePronounce}
                    title="Pronunciar"
                  >
                    <Volume2 className="w-4 h-4 text-purple-600 dark:text-purple-400" />
                  </Button>
                  <Button
                    variant="ghost"
                    size="icon"
                    className="h-8 w-8 rounded-full hover:bg-purple-200 dark:hover:bg-purple-800"
                    onClick={handleCopy}
                    title="Copiar"
                  >
                    {copied ? (
                      <Check className="w-4 h-4 text-green-600 dark:text-green-400" />
                    ) : (
                      <Copy className="w-4 h-4 text-purple-600 dark:text-purple-400" />
                    )}
                  </Button>
                </div>
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
            <strong>💡 Nota:</strong> Las traducciones son generadas por IA y pueden no ser 100% precisas. 
            Para traducciones más exactas, consulta el diccionario.
          </p>
        </div>
      </CardContent>
    </Card>
  );
}
