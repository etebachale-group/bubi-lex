"use client";

import { useState, useEffect } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { SearchX, Volume2, BookOpen, Sparkles, Copy, Check, ArrowRightLeft, Loader2 } from 'lucide-react';
import { Button } from '@/components/ui/button';
import { useRouter, useSearchParams } from 'next/navigation';
import { speak } from '@/lib/speech-synthesis';
import { getSupabase } from '@/lib/db';

interface DictionaryEntry {
  id: number;
  bubi: string;
  spanish: string;
  word_type: string | null;
  gender: string | null;
  number: string | null;
  nominal_class: string | null;
  plural_form: string | null;
  ipa: string | null;
  examples: string | null;
  variants: string | null;
  notes: string | null;
  created_by: string | null;
}

interface DictionaryViewProps {
  dictionary: DictionaryEntry[];
  initialLang?: 'bubi' | 'es';
  initialSearch?: string;
}

const DictionaryViewModern = ({ dictionary: initialDictionary, initialLang = 'bubi', initialSearch = '' }: DictionaryViewProps) => {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [dictionary, setDictionary] = useState<DictionaryEntry[]>(initialDictionary);
  const [searchTerm, setSearchTerm] = useState(initialSearch);
  const [searchLang, setSearchLang] = useState<'bubi' | 'es'>(initialLang);
  const [copiedId, setCopiedId] = useState<number | null>(null);
  const [generatingIPA, setGeneratingIPA] = useState<Set<number>>(new Set());

  // Tiempo real con Supabase
  useEffect(() => {
    const supabase = getSupabase();
    const channel = supabase
      .channel('dictionary-realtime')
      .on(
        'postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'dictionary_entries' },
        (payload) => {
          const newEntry = payload.new as DictionaryEntry;
          if (newEntry && newEntry.id) {
            setDictionary((current) => [...current, newEntry]);
          }
        }
      )
      .on(
        'postgres_changes',
        { event: 'UPDATE', schema: 'public', table: 'dictionary_entries' },
        (payload) => {
          const updatedEntry = payload.new as DictionaryEntry;
          if (updatedEntry && updatedEntry.id) {
            setDictionary((current) =>
              current.map((entry) =>
                entry.id === updatedEntry.id ? updatedEntry : entry
              )
            );
          }
        }
      )
      .on(
        'postgres_changes',
        { event: 'DELETE', schema: 'public', table: 'dictionary_entries' },
        (payload) => {
          const deletedId = (payload.old as Partial<DictionaryEntry>).id;
          if (deletedId) {
            setDictionary((current) =>
              current.filter((entry) => entry.id !== deletedId)
            );
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, []);

  // Filtrado local basado en el idioma seleccionado
  const filteredDictionary = dictionary.filter((entry) => {
    if (!searchTerm) return true;
    const term = searchTerm.toLowerCase();
    
    if (searchLang === 'bubi') {
      // Buscar en palabra Bubi y variantes
      const bubiMatch = entry.bubi.toLowerCase().includes(term);
      const variantsMatch = entry.variants?.toLowerCase().includes(term);
      return bubiMatch || variantsMatch;
    } else {
      // Buscar en español: definición y notas (que contienen "Español: palabra")
      const spanishMatch = entry.spanish.toLowerCase().includes(term);
      const notesMatch = entry.notes?.toLowerCase().includes(term);
      return spanishMatch || notesMatch;
    }
  });

  // Ordenar alfabéticamente según el idioma de búsqueda
  const sortedDictionary = [...filteredDictionary].sort((a, b) => {
    const fieldA = searchLang === 'bubi' ? a.bubi : a.spanish;
    const fieldB = searchLang === 'bubi' ? b.bubi : b.spanish;
    return fieldA.localeCompare(fieldB, 'es', { sensitivity: 'base' });
  });

  const handleCopy = (text: string, id: number) => {
    navigator.clipboard.writeText(text);
    setCopiedId(id);
    setTimeout(() => setCopiedId(null), 2000);
  };

  const handlePronounce = async (word: string) => {
    try {
      await speak(word, { rate: 0.85 }, true); // normalizeText = true
    } catch (error) {
      console.error('Error al pronunciar:', error);
    }
  };

  const toggleSearchLang = () => {
    const newLang = searchLang === 'bubi' ? 'es' : 'bubi';
    setSearchLang(newLang);
    
    // Actualizar URL
    const params = new URLSearchParams(searchParams.toString());
    params.set('lang', newLang);
    if (searchTerm) {
      params.set('q', searchTerm);
    }
    router.push(`/dictionary?${params.toString()}`);
  };

  const handleSearch = (value: string) => {
    setSearchTerm(value);
    
    // Actualizar URL con debounce
    const params = new URLSearchParams(searchParams.toString());
    if (value) {
      params.set('q', value);
    } else {
      params.delete('q');
    }
    params.set('lang', searchLang);
    router.push(`/dictionary?${params.toString()}`);
  };

  const generateIPA = async (entry: DictionaryEntry) => {
    if (generatingIPA.has(entry.id)) return;

    setGeneratingIPA(prev => new Set(prev).add(entry.id));

    try {
      const res = await fetch('/api/ai/pronunciation/generate', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ word: entry.bubi, wordId: entry.id }),
      });

      if (!res.ok) throw new Error('Error generando IPA');

      const data = await res.json();
      
      // Actualizar la entrada en el estado local
      window.location.reload(); // Recargar para mostrar el IPA actualizado
    } catch (error) {
      console.error('Error generando IPA:', error);
      alert('No se pudo generar la pronunciación');
    } finally {
      setGeneratingIPA(prev => {
        const next = new Set(prev);
        next.delete(entry.id);
        return next;
      });
    }
  };

  // Componente para mostrar IPA con opción de generar
  const IPAPronunciation = ({ entry }: { entry: DictionaryEntry }) => {
    if (entry.ipa) {
      return (
        <p className="text-sm text-muted-foreground font-mono">
          /{entry.ipa}/
        </p>
      );
    }

    return (
      <Button
        variant="ghost"
        size="sm"
        className="text-xs text-blue-600 dark:text-blue-400 hover:text-blue-700 dark:hover:text-blue-300 p-0 h-auto font-normal"
        onClick={() => generateIPA(entry)}
        disabled={generatingIPA.has(entry.id)}
      >
        {generatingIPA.has(entry.id) ? (
          <>
            <Loader2 className="w-3 h-3 mr-1 animate-spin" />
            Generando...
          </>
        ) : (
          <>
            <Sparkles className="w-3 h-3 mr-1" />
            Generar pronunciación con IA
          </>
        )}
      </Button>
    );
  };

  return (
    <div className="flex flex-col gap-10 animate-fade-in">
      {/* Header */}
      <div className="text-center space-y-6 py-8">
        <div className="flex flex-col items-center justify-center gap-4">
          <div className="p-4 rounded-2xl bg-gradient-to-br from-blue-600 via-cyan-500 to-teal-500 shadow-2xl shadow-blue-500/30 dark:shadow-blue-500/20 animate-pulse-slow">
            <BookOpen className="w-10 h-10 text-white" />
          </div>
          <h1 className="text-5xl md:text-6xl lg:text-7xl font-bold tracking-tight bg-gradient-to-r from-blue-700 via-cyan-600 to-teal-600 dark:from-blue-400 dark:via-cyan-400 dark:to-teal-400 bg-clip-text text-transparent leading-tight">
            Diccionario Bubi
          </h1>
          <div className="h-1 w-32 bg-gradient-to-r from-blue-600 via-cyan-500 to-teal-500 rounded-full"></div>
        </div>
        <p className="text-xl md:text-2xl text-gray-600 dark:text-gray-300 max-w-3xl mx-auto font-light leading-relaxed">
          Explora <span className="font-bold text-blue-600 dark:text-blue-400">{dictionary.length.toLocaleString()}</span> palabras del idioma Bubi con traducciones, pronunciación y notas culturales
        </p>
      </div>

      {/* Search Bar with Language Toggle */}
      <div className="max-w-3xl mx-auto w-full space-y-6">
        {/* Language Direction Selector */}
        <div className="flex items-center justify-center gap-4">
          <Button
            variant={searchLang === 'bubi' ? 'default' : 'outline'}
            onClick={() => {
              setSearchLang('bubi');
              const params = new URLSearchParams(searchParams.toString());
              params.set('lang', 'bubi');
              router.push(`/dictionary?${params.toString()}`);
            }}
            className={`flex-1 max-w-[220px] h-12 text-base font-semibold transition-all duration-300 ${
              searchLang === 'bubi' 
                ? 'bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 shadow-lg shadow-blue-500/30' 
                : 'hover:bg-blue-50 dark:hover:bg-blue-950/30 hover:border-blue-400'
            }`}
          >
            Bubi → Español
          </Button>
          
          <Button
            variant="ghost"
            size="icon"
            onClick={toggleSearchLang}
            className="rounded-full h-12 w-12 hover:rotate-180 transition-all duration-500 hover:bg-gradient-to-br hover:from-blue-100 hover:to-cyan-100 dark:hover:from-blue-900 dark:hover:to-cyan-900"
            title="Cambiar dirección de búsqueda"
          >
            <ArrowRightLeft className="w-6 h-6 text-blue-600 dark:text-blue-400" />
          </Button>
          
          <Button
            variant={searchLang === 'es' ? 'default' : 'outline'}
            onClick={() => {
              setSearchLang('es');
              const params = new URLSearchParams(searchParams.toString());
              params.set('lang', 'es');
              router.push(`/dictionary?${params.toString()}`);
            }}
            className={`flex-1 max-w-[220px] h-12 text-base font-semibold transition-all duration-300 ${
              searchLang === 'es' 
                ? 'bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 shadow-lg shadow-purple-500/30' 
                : 'hover:bg-purple-50 dark:hover:bg-purple-950/30 hover:border-purple-400'
            }`}
          >
            Español → Bubi
          </Button>
        </div>

        {/* Search Input */}
        <div className="relative group">
          <Input
            placeholder={searchLang === 'bubi' ? 'Busca una palabra en Bubi...' : 'Busca una palabra en Español...'}
            value={searchTerm}
            onChange={(e) => handleSearch(e.target.value)}
            className="pl-14 pr-24 py-7 text-lg font-medium glass-card border-2 border-gray-200 dark:border-gray-700 focus:border-blue-500 dark:focus:border-blue-500 focus:ring-4 focus:ring-blue-500/20 transition-all shadow-lg hover:shadow-xl"
          />
          <div className="absolute left-4 top-1/2 -translate-y-1/2 p-2 rounded-lg bg-gradient-to-br from-blue-500 to-cyan-500">
            <BookOpen className="w-5 h-5 text-white" />
          </div>
          {searchTerm && (
            <Button
              variant="ghost"
              size="sm"
              className="absolute right-3 top-1/2 -translate-y-1/2 font-semibold text-blue-600 hover:text-blue-700 hover:bg-blue-100 dark:hover:bg-blue-900"
              onClick={() => handleSearch('')}
            >
              Limpiar
            </Button>
          )}
        </div>
        
        <div className="flex items-center justify-between px-2">
          <div className="flex items-center gap-2">
            <div className={`w-2 h-2 rounded-full ${searchLang === 'bubi' ? 'bg-blue-500' : 'bg-purple-500'} animate-pulse`}></div>
            <p className="text-sm font-medium text-gray-600 dark:text-gray-400">
              Buscando en: <span className={`font-bold ${searchLang === 'bubi' ? 'text-blue-600 dark:text-blue-400' : 'text-purple-600 dark:text-purple-400'}`}>
                {searchLang === 'bubi' ? 'Bubi' : 'Español'}
              </span>
            </p>
          </div>
          <p className="text-sm font-semibold text-gray-700 dark:text-gray-300 bg-gray-100 dark:bg-gray-800 px-4 py-1.5 rounded-full">
            {sortedDictionary.length.toLocaleString()} {sortedDictionary.length === 1 ? 'resultado' : 'resultados'}
          </p>
        </div>
      </div>

      {/* Dictionary Grid */}
      {sortedDictionary.length > 0 ? (
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3 xl:grid-cols-4">
          {sortedDictionary.map((entry, index) => (
            <Card 
              key={entry.id}
              className="glass-card border-2 border-gray-200 dark:border-gray-700 hover:border-blue-400 dark:hover:border-blue-600 transition-all duration-300 hover:scale-[1.02] hover:shadow-2xl hover:shadow-blue-500/20 group overflow-hidden"
              style={{ animationDelay: `${index * 30}ms` }}
            >
              <CardContent className="pt-6 pb-5 relative">
                {/* Decorative gradient background */}
                <div className="absolute top-0 right-0 w-32 h-32 bg-gradient-to-br from-blue-500/10 to-cyan-500/10 rounded-full blur-3xl -z-10 group-hover:scale-150 transition-transform duration-500"></div>
                
                {/* Bubi Word with Type and Class */}
                <div className="mb-5">
                  <div className="flex items-start justify-between mb-2 gap-2">
                    <div className="flex-1">
                      <h3 className="text-2xl md:text-3xl font-bold bg-gradient-to-r from-blue-700 via-cyan-600 to-teal-600 dark:from-blue-400 dark:via-cyan-400 dark:to-teal-400 bg-clip-text text-transparent leading-tight break-words">
                        {entry.bubi}
                      </h3>
                      {/* Grammatical Info */}
                      <div className="flex flex-wrap gap-2 mt-2">
                        {entry.word_type && (
                          <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold bg-blue-100 text-blue-800 dark:bg-blue-900 dark:text-blue-200">
                            {entry.word_type}
                          </span>
                        )}
                        {entry.gender && (
                          <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold bg-purple-100 text-purple-800 dark:bg-purple-900 dark:text-purple-200">
                            {entry.gender}
                          </span>
                        )}
                        {entry.nominal_class && (
                          <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold bg-teal-100 text-teal-800 dark:bg-teal-900 dark:text-teal-200">
                            {entry.nominal_class}
                          </span>
                        )}
                        {entry.number && (
                          <span className="inline-flex items-center px-2.5 py-0.5 rounded-full text-xs font-semibold bg-cyan-100 text-cyan-800 dark:bg-cyan-900 dark:text-cyan-200">
                            {entry.number}
                          </span>
                        )}
                      </div>
                    </div>
                    <div className="flex gap-1 flex-shrink-0">
                      <Button
                        variant="ghost"
                        size="icon"
                        className="h-9 w-9 rounded-full opacity-0 group-hover:opacity-100 transition-all duration-300 hover:bg-blue-100 dark:hover:bg-blue-900 hover:scale-110"
                        onClick={() => handlePronounce(entry.bubi)}
                        title="Pronunciar"
                      >
                        <Volume2 className="w-4 h-4 text-blue-600 dark:text-blue-400" />
                      </Button>
                      <Button
                        variant="ghost"
                        size="icon"
                        className="h-9 w-9 rounded-full opacity-0 group-hover:opacity-100 transition-all duration-300 hover:bg-green-100 dark:hover:bg-green-900 hover:scale-110"
                        onClick={() => handleCopy(entry.bubi, entry.id)}
                        title="Copiar"
                      >
                        {copiedId === entry.id ? (
                          <Check className="w-4 h-4 text-green-600 dark:text-green-400" />
                        ) : (
                          <Copy className="w-4 h-4 text-green-600 dark:text-green-400" />
                        )}
                      </Button>
                    </div>
                  </div>
                  <IPAPronunciation entry={entry} />
                </div>

                {/* Variants */}
                {entry.variants && (
                  <div className="mb-4 p-3 rounded-lg bg-gradient-to-br from-indigo-50 to-blue-50 dark:from-indigo-950/40 dark:to-blue-950/40 border border-indigo-200 dark:border-indigo-800">
                    <p className="text-xs font-semibold text-indigo-600 dark:text-indigo-400 mb-1 uppercase tracking-wider">Variantes</p>
                    <p className="text-sm font-medium text-indigo-900 dark:text-indigo-100">
                      {entry.variants}
                    </p>
                  </div>
                )}

                {/* Plural Form */}
                {entry.plural_form && (
                  <div className="mb-4 p-3 rounded-lg bg-gradient-to-br from-emerald-50 to-teal-50 dark:from-emerald-950/40 dark:to-teal-950/40 border border-emerald-200 dark:border-emerald-800">
                    <p className="text-xs font-semibold text-emerald-600 dark:text-emerald-400 mb-1 uppercase tracking-wider">Plural</p>
                    <p className="text-sm font-medium text-emerald-900 dark:text-emerald-100">
                      {entry.plural_form}
                    </p>
                  </div>
                )}

                {/* Spanish Translation */}
                <div className="mb-4 p-4 rounded-xl bg-gradient-to-br from-purple-50 via-pink-50 to-rose-50 dark:from-purple-950/40 dark:via-pink-950/40 dark:to-rose-950/40 border-2 border-purple-200 dark:border-purple-800 shadow-sm">
                  <p className="text-xs font-semibold text-purple-600 dark:text-purple-400 mb-2 uppercase tracking-wider">Español</p>
                  <p className="text-base md:text-lg font-semibold text-purple-900 dark:text-purple-100 leading-relaxed">
                    {entry.spanish}
                  </p>
                </div>

                {/* Examples */}
                {entry.examples && (
                  <div className="mb-4 p-4 rounded-xl bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-950/40 dark:to-emerald-950/40 border-2 border-green-200 dark:border-green-800 shadow-sm">
                    <p className="text-xs font-semibold text-green-600 dark:text-green-400 mb-2 uppercase tracking-wider">Ejemplos</p>
                    <div className="space-y-2">
                      {entry.examples.split(' | ').map((example, idx) => (
                        <p key={idx} className="text-sm text-green-900 dark:text-green-100 leading-relaxed pl-3 border-l-2 border-green-400 dark:border-green-600">
                          {example}
                        </p>
                      ))}
                    </div>
                  </div>
                )}

                {/* Notes */}
                {entry.notes && !entry.notes.startsWith('Español:') && (
                  <div className="p-4 rounded-xl bg-gradient-to-br from-amber-50 to-orange-50 dark:from-amber-950/40 dark:to-orange-950/40 border-2 border-amber-200 dark:border-amber-800 shadow-sm mb-4">
                    <div className="flex items-start gap-2">
                      <Sparkles className="w-4 h-4 text-amber-600 dark:text-amber-400 mt-1 flex-shrink-0" />
                      <p className="text-sm text-amber-900 dark:text-amber-100 leading-relaxed">
                        {entry.notes}
                      </p>
                    </div>
                  </div>
                )}

                {/* Source Badge */}
                {entry.created_by && (
                  <div className="mb-4">
                    <span className="inline-flex items-center px-2 py-1 rounded text-xs font-medium bg-gray-100 text-gray-700 dark:bg-gray-800 dark:text-gray-300">
                      {entry.created_by === 'import-script' ? '📚 Bubi-Español' : 
                       entry.created_by === 'import-espanol-bubi' ? '📖 Español-Bubi' : 
                       '✍️ Colaborador'}
                    </span>
                  </div>
                )}

                {/* AI Features Link */}
                <div className="mt-4 pt-4 border-t-2 border-gray-100 dark:border-gray-800">
                  <a 
                    href={`/ai-features?word=${encodeURIComponent(entry.bubi)}`}
                    className="text-sm font-semibold text-blue-600 dark:text-blue-400 hover:text-blue-700 dark:hover:text-blue-300 flex items-center gap-2 group/link transition-all"
                  >
                    <Sparkles className="w-4 h-4 group-hover/link:rotate-12 transition-transform" />
                    <span className="group-hover/link:underline">Ver más con IA</span>
                  </a>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      ) : (
        <div className="flex flex-col items-center justify-center text-center py-24 animate-fade-in">
          <div className="p-8 rounded-full bg-gradient-to-br from-gray-100 via-gray-200 to-gray-300 dark:from-gray-800 dark:via-gray-900 dark:to-gray-950 mb-8 shadow-xl">
            <SearchX className="w-20 h-20 text-gray-400 dark:text-gray-600" />
          </div>
          <h2 className="text-3xl font-bold mb-3 text-gray-800 dark:text-gray-200">No se encontraron resultados</h2>
          <p className="text-lg text-gray-600 dark:text-gray-400 max-w-md mb-8 leading-relaxed">
            No hemos encontrado ninguna palabra que coincida con <span className="font-bold text-blue-600 dark:text-blue-400">"{searchTerm}"</span>. 
            Intenta con otra búsqueda.
          </p>
          <Button
            variant="outline"
            className="px-8 py-6 text-base font-semibold border-2 hover:bg-blue-50 dark:hover:bg-blue-950 hover:border-blue-400 transition-all"
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
