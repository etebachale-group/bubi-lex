import { getSupabase } from '@/lib/db';
import NewsAdminView from './news-admin-view';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { Newspaper, Plus, ArrowLeft } from 'lucide-react';

export const dynamic = 'force-dynamic';

async function getNews() {
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('news')
    .select('id, title, date')
    .order('date', { ascending: false });

  if (error) {
    console.error('Error fetching news:', error);
    return [];
  }
  return data;
}

export default async function AdminNewsPage() {
  const news = await getNews();

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <Link href="/admin" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-4">
          <ArrowLeft className="w-4 h-4" />
          Volver al Panel
        </Link>
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="p-3 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500">
              <Newspaper className="w-8 h-8 text-white" />
            </div>
            <div>
              <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
                Gestionar Noticias
              </h1>
              <p className="text-muted-foreground">Administra todas las publicaciones</p>
            </div>
          </div>
          <Button asChild size="lg" className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700">
            <Link href="/admin/news/edit/new" className="gap-2">
              <Plus className="w-5 h-5" />
              Nueva Noticia
            </Link>
          </Button>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
        <div className="glass-card border-2 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Total Publicaciones</p>
          <p className="text-3xl font-bold">{news.length}</p>
        </div>
        <div className="glass-card border-2 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Este Mes</p>
          <p className="text-3xl font-bold">
            {news.filter(n => {
              const date = new Date(n.date);
              const now = new Date();
              return date.getMonth() === now.getMonth() && date.getFullYear() === now.getFullYear();
            }).length}
          </p>
        </div>
        <div className="glass-card border-2 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Esta Semana</p>
          <p className="text-3xl font-bold">
            {news.filter(n => {
              const date = new Date(n.date);
              const now = new Date();
              const weekAgo = new Date(now.getTime() - 7 * 24 * 60 * 60 * 1000);
              return date >= weekAgo;
            }).length}
          </p>
        </div>
      </div>

      {/* News List */}
      <NewsAdminView initialNews={news} />
    </div>
  );
}
