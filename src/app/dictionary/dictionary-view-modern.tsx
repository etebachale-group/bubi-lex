"use client";

import { useState } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { SearchX, Volume2, BookOpen, Sparkles, Copy, Check } from 'lucide-react';
import { Button } from '@/components/ui/button';

interface DictionaryEntry {
  id: number;
  bubi: string;
  spanish: string;
  ipa: string | null;
  notes: string | null;
}

interface DictionaryViewProps {
  dictionary: DictionaryEntry[];
}

const DictionaryViewModern = ({ dictionary }: DictionaryViewProps) => {
  const [searchTerm, setSearchTerm] = useState('');
  const [copiedId, setCopiedId] = useState<number | null>(null);

  const filteredDictionary = dictionary.filter(
    (entry) =>
      entry.bubi.toLowerCase().includes(searchTerm.toLowerCase()) ||
      entry.spanish.toLowerCase().includes(searchTerm.toLowerCase())
  );

  const handleCopy = (text: string, id: number) => {
    navigator.clipboard.writeText(text);
    setCopiedId(id);
    setTimeout(() => setCopiedId(null), 2000);
  };

  const handlePronounce = (word: string) => {
    if ('speechSynthesis' in window) {
      const utterance = new SpeechSynthesisUtterance(word);
      utterance.lang = 'es-ES';
      window.speechSynthesis.speak(utterance);
    }
  };

  return (
    <div className="flex flex-col gap-8 animate-fade-in">
      {/* Header */}
      <div className="text-center space-y-4">
        <div className="flex items-center justify-center gap-3">
          <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
            <BookOpen className="w-8 h-8 text-white" />
          </div>
          <h1 className="text-4xl md:text-5xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
            Diccionario Bubi-Español
          </h1>
        </div>
        <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
          Explora más de {dictionary.length} palabras del idioma Bubi con traducciones, pronunciación y notas culturales
        </p>
      </div>

      {/* Search Bar */}
      <div className="max-w-2xl mx-auto w-full">
        <div className="relative">
          <Input
            placeholder="Busca una palabra en Bubi o Español..."
            value={searchTerm}
            onChange={(e) => setSearchTerm(e.target.value)}
            className="pl-12 pr-4 py-6 text-lg glass-card border-2 focus:border-blue-400 dark:focus:border-blue-600 transition-all"
          />
          <BookOpen className="absolute left-4 top-1/2 -translate-y-1/2 w-5 h-5 text-muted-foreground" />
          {searchTerm && (
            <Button
              variant="ghost"
              size="sm"
              className="absolute right-2 top-1/2 -translate-y-1/2"
              onClick={() => setSearchTerm('')}
            >
              Limpiar
            </Button>
          )}
        </div>
        <p className="text-sm text-muted-foreground mt-2 text-center">
          {filteredDictionary.length} {filteredDictionary.length === 1 ? 'resultado' : 'resultados'}
        </p>
      </div>

      {/* Dictionary Grid */}
      {filteredDictionary.length > 0 ? (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {filteredDictionary.map((entry, index) => (
            <Card 
              key={entry.id}
              className="glass-card border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all hover:scale-105 hover:shadow-xl group"
              style={{ animationDelay: `${index * 50}ms` }}
            >
              <CardContent className="pt-6">
                {/* Bubi Word */}
                <div className="mb-4">
                  <div className="flex items-center justify-between mb-2">
                    <h3 className="text-2xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
                      {entry.bubi}
                    </h3>
                    <div className="flex gap-1">
                      <Button
                        variant="ghost"
                        size="icon"
                        className="h-8 w-8 opacity-0 group-hover:opacity-100 transition-opacity"
                        onClick={() => handlePronounce(entry.bubi)}
                        title="Pronunciar"
                      >
                        <Volume2 className="w-4 h-4" />
                      </Button>
                      <Button
                        variant="ghost"
                        size="icon"
                        className="h-8 w-8 opacity-0 group-hover:opacity-100 transition-opacity"
                        onClick={() => handleCopy(entry.bubi, entry.id)}
                        title="Copiar"
                      >
                        {copiedId === entry.id ? (
                          <Check className="w-4 h-4 text-green-500" />
                        ) : (
                          <Copy className="w-4 h-4" />
                        )}
                      </Button>
                    </div>
                  </div>
                  {entry.ipa && (
                    <p className="text-sm text-muted-foreground font-mono">
                      /{entry.ipa}/
                    </p>
                  )}
                </div>

                {/* Spanish Translation */}
                <div className="mb-4 p-3 rounded-lg bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 border border-purple-200 dark:border-purple-800">
                  <p className="text-sm text-muted-foreground mb-1">Español</p>
                  <p className="text-lg font-semibold text-purple-900 dark:text-purple-100">
                    {entry.spanish}
                  </p>
                </div>

                {/* Notes */}
                {entry.notes && (
                  <div className="p-3 rounded-lg bg-orange-50 dark:bg-orange-950/30 border border-orange-200 dark:border-orange-800">
                    <div className="flex items-start gap-2">
                      <Sparkles className="w-4 h-4 text-orange-500 mt-0.5 flex-shrink-0" />
                      <p className="text-sm text-orange-900 dark:text-orange-100">
                        {entry.notes}
                      </p>
                    </div>
                  </div>
                )}

                {/* AI Features Link */}
                <div className="mt-4 pt-4 border-t">
                  <a 
                    href={`/ai-features?word=${encodeURIComponent(entry.bubi)}`}
                    className="text-sm text-blue-600 dark:text-blue-400 hover:underline flex items-center gap-1"
                  >
                    <Sparkles className="w-3 h-3" />
                    Ver ejemplos con IA
                  </a>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      ) : (
        <div className="flex flex-col items-center justify-center text-center py-20 animate-fade-in">
          <div className="p-6 rounded-full bg-gradient-to-br from-gray-100 to-gray-200 dark:from-gray-800 dark:to-gray-900 mb-6">
            <SearchX className="w-16 h-16 text-muted-foreground" />
          </div>
          <h2 className="text-2xl font-semibold mb-2">No se encontraron resultados</h2>
          <p className="text-muted-foreground max-w-md">
            No hemos encontrado ninguna palabra que coincida con "{searchTerm}". 
            Intenta con otra búsqueda.
          </p>
          <Button
            variant="outline"
            className="mt-6"
            onClick={() => setSearchTerm('')}
          >
            Limpiar búsqueda
          </Button>
        </div>
      )}
    </div>
  );
};

export default DictionaryViewModern;
