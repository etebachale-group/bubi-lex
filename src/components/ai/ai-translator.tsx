"use client";

import { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Textarea } from '@/components/ui/textarea';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Sparkles, ArrowRight, Loader2 } from 'lucide-react';

export default function AITranslator() {
  const [text, setText] = useState('');
  const [context, setContext] = useState('');
  const [result, setResult] = useState<any>(null);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const handleTranslate = async () => {
    if (!text.trim()) return;

    setLoading(true);
    setError('');
    setResult(null);

    try {
      const response = await fetch('/api/ai/translate', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ text, context }),
      });

      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.error || 'Error en la traducción');
      }

      const data = await response.json();
      setResult(data);
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  return (
    <Card className="w-full">
      <CardHeader>
        <div className="flex items-center gap-2">
          <Sparkles className="w-6 h-6 text-purple-600 dark:text-purple-400" />
          <CardTitle>Traductor Contextual con IA</CardTitle>
        </div>
        <CardDescription>
          Traduce palabras considerando el contexto cultural
        </CardDescription>
      </CardHeader>
      <CardContent className="space-y-4">
        <div>
          <Label htmlFor="text">Palabra o frase</Label>
          <Input
            id="text"
            value={text}
            onChange={(e) => setText(e.target.value)}
            placeholder="Escribe en Bubi o Español..."
            className="mt-1"
          />
        </div>

        <div>
          <Label htmlFor="context">Contexto (opcional)</Label>
          <Textarea
            id="context"
            value={context}
            onChange={(e) => setContext(e.target.value)}
            placeholder="Ej: En una conversación sobre familia..."
            className="mt-1"
            rows={2}
          />
        </div>

        <Button
          onClick={handleTranslate}
          disabled={loading || !text.trim()}
          className="w-full bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700"
        >
          {loading ? (
            <>
              <Loader2 className="w-4 h-4 mr-2 animate-spin" />
              Traduciendo...
            </>
          ) : (
            <>
              <ArrowRight className="w-4 h-4 mr-2" />
              Traducir
            </>
          )}
        </Button>

        {error && (
          <div className="p-4 bg-red-50 dark:bg-red-950/30 border border-red-200 dark:border-red-800 rounded-lg text-red-600 dark:text-red-400">
            {error}
          </div>
        )}

        {result && (
          <div className="space-y-4 animate-fade-in">
            <div className="p-4 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 rounded-lg border-2 border-purple-200 dark:border-purple-800">
              <div className="text-sm text-muted-foreground mb-1">
                Idioma detectado: <span className="font-semibold">{result.detectedLanguage}</span>
              </div>
              <div className="text-2xl font-bold text-purple-600 dark:text-purple-400">
                {result.translation}
              </div>
            </div>

            {result.explanation && (
              <div className="p-4 bg-white/50 dark:bg-gray-900/50 rounded-lg">
                <div className="text-sm font-semibold mb-2">Explicación:</div>
                <p className="text-sm text-muted-foreground">{result.explanation}</p>
              </div>
            )}

            {result.alternatives && result.alternatives.length > 0 && (
              <div className="p-4 bg-white/50 dark:bg-gray-900/50 rounded-lg">
                <div className="text-sm font-semibold mb-2">Alternativas:</div>
                <ul className="space-y-1">
                  {result.alternatives.map((alt: string, i: number) => (
                    <li key={i} className="text-sm text-muted-foreground">
                      • {alt}
                    </li>
                  ))}
                </ul>
              </div>
            )}
          </div>
        )}
      </CardContent>
    </Card>
  );
}
