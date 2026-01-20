'use client';

import { useState, useEffect } from 'react';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { Edit, Trash2, Search } from 'lucide-react';
import { Input } from '@/components/ui/input';
import { useRouter } from 'next/navigation';
import { getSupabase } from '@/lib/db';

interface DictionaryEntry {
  id: number;
  bubi: string;
  spanish: string;
  ipa: string | null;
  notes: string | null;
}

interface DictionaryListProps {
  entries: DictionaryEntry[];
}

export default function DictionaryList({ entries: initialEntries }: DictionaryListProps) {
  const router = useRouter();
  const [entries, setEntries] = useState<DictionaryEntry[]>(initialEntries);
  const [searchQuery, setSearchQuery] = useState('');
  const [deleting, setDeleting] = useState<number | null>(null);

  // Actualización en tiempo real con Supabase
  useEffect(() => {
    const supabase = getSupabase();
    
    const channel = supabase
      .channel('dictionary-admin-changes')
      .on(
        'postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'dictionary_entries' },
        (payload) => {
          const newEntry = payload.new as DictionaryEntry;
          if (newEntry && newEntry.id) {
            setEntries((current) => [newEntry, ...current]);
          }
        }
      )
      .on(
        'postgres_changes',
        { event: 'UPDATE', schema: 'public', table: 'dictionary_entries' },
        (payload) => {
          const updatedEntry = payload.new as DictionaryEntry;
          if (updatedEntry && updatedEntry.id) {
            setEntries((current) =>
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
            setEntries((current) =>
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

  const filteredEntries = entries.filter(entry => {
    const query = searchQuery.toLowerCase();
    return (
      entry.bubi.toLowerCase().includes(query) ||
      entry.spanish.toLowerCase().includes(query)
    );
  });

  const handleDelete = async (id: number, bubi: string) => {
    if (!confirm(`¿Eliminar "${bubi}"?`)) {
      return;
    }

    setDeleting(id);
    try {
      const res = await fetch(`/api/admin/dictionary/${id}`, {
        method: 'DELETE',
      });

      if (!res.ok) {
        const data = await res.json();
        throw new Error(data.error || 'Error al eliminar');
      }

      // La actualización en tiempo real manejará la eliminación de la lista
    } catch (err) {
      alert(`Error: ${err instanceof Error ? err.message : 'Error desconocido'}`);
    } finally {
      setDeleting(null);
    }
  };

  return (
    <>
      {/* Search */}
      <div className="mb-6">
        <div className="relative max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-muted-foreground" />
          <Input
            placeholder="Buscar palabra..."
            className="pl-10"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
          />
        </div>
        {searchQuery && (
          <p className="text-sm text-muted-foreground mt-2">
            Mostrando {filteredEntries.length} de {entries.length} palabras
          </p>
        )}
      </div>

      {/* Dictionary Grid */}
      {filteredEntries.length === 0 ? (
        <div className="text-center py-20">
          <p className="text-muted-foreground">
            {searchQuery ? 'No se encontraron resultados' : 'No hay entradas todavía'}
          </p>
        </div>
      ) : (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {filteredEntries.map((entry, index) => (
            <Card 
              key={entry.id} 
              className="glass-card border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all hover:scale-105 group"
              style={{ animationDelay: `${index * 30}ms` }}
            >
              <CardContent className="pt-6">
                <div className="mb-4">
                  <h3 className="text-2xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent mb-1">
                    {entry.bubi}
                  </h3>
                  {entry.ipa && (
                    <p className="text-sm text-muted-foreground font-mono">/{entry.ipa}/</p>
                  )}
                </div>
                <div className="mb-4 p-3 rounded-lg bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 border border-purple-200 dark:border-purple-800">
                  <p className="text-sm font-semibold text-purple-900 dark:text-purple-100">
                    {entry.spanish}
                  </p>
                </div>
                {entry.notes && (
                  <p className="text-xs text-muted-foreground mb-4 line-clamp-2">{entry.notes}</p>
                )}
                <div className="flex gap-2">
                  <Button size="sm" variant="outline" asChild className="flex-1 group-hover:border-blue-400">
                    <Link href={`/admin/dictionary/edit/${entry.id}`} className="gap-2">
                      <Edit className="w-4 h-4" />
                      Editar
                    </Link>
                  </Button>
                  <Button 
                    size="sm" 
                    variant="destructive" 
                    onClick={() => handleDelete(entry.id, entry.bubi)}
                    disabled={deleting === entry.id}
                    className="gap-2"
                  >
                    <Trash2 className="w-4 h-4" />
                    {deleting === entry.id && <span className="text-xs">...</span>}
                  </Button>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      )}
    </>
  );
}
