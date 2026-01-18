'use client';

import { useState, useEffect } from 'react';
import { Card, CardHeader, CardTitle, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { AlertCircle, Trash2, RefreshCw, CheckCircle } from 'lucide-react';
import { useRouter } from 'next/navigation';

interface DuplicateEntry {
  id: number;
  bubi: string;
  spanish: string;
  ipa: string | null;
  notes: string | null;
  created_at: string;
}

interface DuplicateGroup {
  bubi: string;
  count: number;
  entries: DuplicateEntry[];
}

export default function DuplicatesPage() {
  const router = useRouter();
  const [duplicates, setDuplicates] = useState<DuplicateGroup[]>([]);
  const [loading, setLoading] = useState(true);
  const [deleting, setDeleting] = useState(false);
  const [error, setError] = useState<string | null>(null);

  const fetchDuplicates = async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch('/api/dictionary/duplicates');
      if (!res.ok) throw new Error('Error al cargar duplicados');
      const data = await res.json();
      setDuplicates(data.duplicates || []);
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Error desconocido');
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchDuplicates();
  }, []);

  const handleDeleteAll = async () => {
    if (!confirm(`¿Eliminar ${duplicates.reduce((sum, d) => sum + (d.count - 1), 0)} duplicados? Se mantendrá la entrada más antigua de cada grupo.`)) {
      return;
    }

    setDeleting(true);
    try {
      const res = await fetch('/api/dictionary/duplicates', {
        method: 'DELETE',
      });
      
      if (!res.ok) throw new Error('Error al eliminar duplicados');
      
      const data = await res.json();
      alert(`✅ ${data.deleted} duplicados eliminados exitosamente`);
      fetchDuplicates();
    } catch (err) {
      alert(`Error: ${err instanceof Error ? err.message : 'Error desconocido'}`);
    } finally {
      setDeleting(false);
    }
  };

  if (loading) {
    return (
      <div className="container mx-auto py-8 px-4">
        <div className="flex items-center justify-center min-h-[400px]">
          <RefreshCw className="w-8 h-8 animate-spin text-purple-500" />
        </div>
      </div>
    );
  }

  const totalDuplicates = duplicates.reduce((sum, d) => sum + (d.count - 1), 0);

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center justify-between mb-4">
          <div>
            <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
              Gestión de Duplicados
            </h1>
            <p className="text-muted-foreground mt-2">
              Detecta y elimina entradas duplicadas en el diccionario
            </p>
          </div>
          <Button
            onClick={() => router.push('/admin/dictionary')}
            variant="outline"
          >
            Volver al Diccionario
          </Button>
        </div>

        {/* Stats */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <Card className="glass-card">
            <CardContent className="pt-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-muted-foreground">Grupos Duplicados</p>
                  <p className="text-3xl font-bold">{duplicates.length}</p>
                </div>
                <AlertCircle className="w-8 h-8 text-orange-500" />
              </div>
            </CardContent>
          </Card>
          <Card className="glass-card">
            <CardContent className="pt-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-muted-foreground">Entradas a Eliminar</p>
                  <p className="text-3xl font-bold">{totalDuplicates}</p>
                </div>
                <Trash2 className="w-8 h-8 text-red-500" />
              </div>
            </CardContent>
          </Card>
          <Card className="glass-card">
            <CardContent className="pt-6">
              <div className="flex items-center justify-between">
                <div>
                  <p className="text-sm text-muted-foreground">Entradas a Mantener</p>
                  <p className="text-3xl font-bold">{duplicates.length}</p>
                </div>
                <CheckCircle className="w-8 h-8 text-green-500" />
              </div>
            </CardContent>
          </Card>
        </div>
      </div>

      {/* Actions */}
      {duplicates.length > 0 && (
        <div className="mb-6 flex gap-4">
          <Button
            onClick={handleDeleteAll}
            disabled={deleting}
            className="bg-gradient-to-r from-red-500 to-pink-500 hover:from-red-600 hover:to-pink-600"
          >
            <Trash2 className="w-5 h-5 mr-2" />
            {deleting ? 'Eliminando...' : 'Eliminar Todos los Duplicados'}
          </Button>
          <Button
            onClick={fetchDuplicates}
            variant="outline"
            disabled={loading}
          >
            <RefreshCw className={`w-5 h-5 mr-2 ${loading ? 'animate-spin' : ''}`} />
            Actualizar
          </Button>
        </div>
      )}

      {/* Error State */}
      {error && (
        <Card className="border-red-500 bg-red-50 dark:bg-red-900/20 mb-6">
          <CardContent className="pt-6">
            <div className="flex items-center gap-3 text-red-700 dark:text-red-300">
              <AlertCircle className="w-5 h-5" />
              <p>{error}</p>
            </div>
          </CardContent>
        </Card>
      )}

      {/* Empty State */}
      {duplicates.length === 0 && !error && (
        <Card className="glass-card border-2 border-green-300 dark:border-green-700">
          <CardContent className="pt-12 pb-12 text-center">
            <CheckCircle className="w-16 h-16 text-green-500 mx-auto mb-4" />
            <h3 className="text-2xl font-bold mb-2">¡No hay duplicados!</h3>
            <p className="text-muted-foreground">
              El diccionario está limpio. No se encontraron entradas duplicadas.
            </p>
          </CardContent>
        </Card>
      )}

      {/* Duplicates List */}
      {duplicates.length > 0 && (
        <div className="space-y-6">
          {duplicates.map((group, idx) => (
            <Card key={idx} className="glass-card border-2 border-orange-300 dark:border-orange-700">
              <CardHeader>
                <CardTitle className="flex items-center justify-between">
                  <span className="text-2xl">
                    {group.entries[0].bubi}
                  </span>
                  <span className="text-sm font-normal px-3 py-1 rounded-full bg-orange-100 dark:bg-orange-900/30 text-orange-700 dark:text-orange-300">
                    {group.count} entradas
                  </span>
                </CardTitle>
              </CardHeader>
              <CardContent>
                <div className="space-y-4">
                  {group.entries.map((entry, entryIdx) => (
                    <div
                      key={entry.id}
                      className={`p-4 rounded-lg border-2 ${
                        entryIdx === 0
                          ? 'border-green-300 dark:border-green-700 bg-green-50 dark:bg-green-900/20'
                          : 'border-red-300 dark:border-red-700 bg-red-50 dark:bg-red-900/20'
                      }`}
                    >
                      <div className="flex items-start justify-between mb-2">
                        <div className="flex-1">
                          <div className="flex items-center gap-2 mb-1">
                            <span className="font-semibold">ID: {entry.id}</span>
                            {entryIdx === 0 ? (
                              <span className="text-xs px-2 py-1 rounded-full bg-green-500 text-white">
                                ✓ Se mantendrá
                              </span>
                            ) : (
                              <span className="text-xs px-2 py-1 rounded-full bg-red-500 text-white">
                                ✗ Se eliminará
                              </span>
                            )}
                          </div>
                          <p className="text-lg mb-1">
                            <span className="font-medium">Bubi:</span> {entry.bubi}
                          </p>
                          <p className="text-lg mb-1">
                            <span className="font-medium">Español:</span> {entry.spanish}
                          </p>
                          {entry.ipa && (
                            <p className="text-sm text-muted-foreground mb-1">
                              <span className="font-medium">IPA:</span> {entry.ipa}
                            </p>
                          )}
                          {entry.notes && (
                            <p className="text-sm text-muted-foreground">
                              <span className="font-medium">Notas:</span> {entry.notes}
                            </p>
                          )}
                        </div>
                        <div className="text-right text-sm text-muted-foreground">
                          <p>Creado:</p>
                          <p>{new Date(entry.created_at).toLocaleDateString('es-ES')}</p>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}
