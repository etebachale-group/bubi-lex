'use client';

import { useState } from 'react';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { Edit, Trash2, Calendar, Search } from 'lucide-react';
import { Input } from '@/components/ui/input';
import { useRouter } from 'next/navigation';

interface NewsItem {
  id: number;
  title: string;
  date: string;
}

interface NewsAdminViewProps {
  initialNews: NewsItem[];
}

export default function NewsAdminView({ initialNews }: NewsAdminViewProps) {
  const router = useRouter();
  const [searchQuery, setSearchQuery] = useState('');
  const [deleting, setDeleting] = useState<number | null>(null);

  const filteredNews = initialNews.filter(item => {
    const query = searchQuery.toLowerCase();
    return item.title.toLowerCase().includes(query);
  });

  const handleDelete = async (id: number, title: string) => {
    if (!confirm(`¿Eliminar "${title}"?`)) {
      return;
    }

    setDeleting(id);
    try {
      const res = await fetch(`/api/news/${id}`, {
        method: 'DELETE'
      });

      if (!res.ok) {
        const data = await res.json();
        throw new Error(data.error || 'Error al eliminar');
      }

      // Recargar la página para actualizar la lista
      router.refresh();
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
            placeholder="Buscar noticia..."
            className="pl-10"
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
          />
        </div>
        {searchQuery && (
          <p className="text-sm text-muted-foreground mt-2">
            Mostrando {filteredNews.length} de {initialNews.length} noticias
          </p>
        )}
      </div>

      {/* News List */}
      {filteredNews.length === 0 ? (
        <div className="text-center py-20">
          <p className="text-muted-foreground">
            {searchQuery ? 'No se encontraron resultados' : 'No hay noticias todavía'}
          </p>
        </div>
      ) : (
        <div className="space-y-4">
          {filteredNews.map((item, index) => (
            <Card 
              key={item.id} 
              className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all hover:scale-[1.02] group"
              style={{ animationDelay: `${index * 30}ms` }}
            >
              <CardContent className="pt-6">
                <div className="flex flex-col md:flex-row md:items-center justify-between gap-4">
                  <div className="flex-1">
                    <h3 className="text-xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent mb-2">
                      {item.title}
                    </h3>
                    <div className="flex items-center gap-2 text-sm text-muted-foreground">
                      <Calendar className="w-4 h-4" />
                      <span>
                        {new Date(item.date).toLocaleDateString('es-ES', { 
                          year: 'numeric', 
                          month: 'long', 
                          day: 'numeric' 
                        })}
                      </span>
                    </div>
                  </div>
                  <div className="flex gap-2">
                    <Button 
                      size="sm" 
                      variant="outline" 
                      asChild 
                      className="flex-1 md:flex-none group-hover:border-purple-400"
                    >
                      <Link href={`/admin/news/edit/${item.id}`} className="gap-2">
                        <Edit className="w-4 h-4" />
                        Editar
                      </Link>
                    </Button>
                    <Button 
                      size="sm" 
                      variant="destructive" 
                      onClick={() => handleDelete(item.id, item.title)}
                      disabled={deleting === item.id}
                      className="gap-2"
                    >
                      <Trash2 className="w-4 h-4" />
                      {deleting === item.id ? '...' : 'Eliminar'}
                    </Button>
                  </div>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      )}
    </>
  );
}
