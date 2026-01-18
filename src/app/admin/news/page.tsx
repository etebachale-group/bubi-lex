import { getSupabase } from '@/lib/db';
import NewsAdminView from './news-admin-view';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { Newspaper, Plus, ArrowLeft } from 'lucide-react';
import { redirect } from 'next/navigation';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';

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
  const session = await getServerSession(authOptions);
  
  // Solo admins pueden acceder
  if (!session?.isAdmin) {
    redirect('/admin/login?next=/admin/news');
  }

  const news = await getNews();

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <Link href="/admin" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-4">
          <ArrowLeft className="w-4 h-4" />
          Volver al Panel
        </Link>
        <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className="p-3 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500">
              <Newspaper className="w-8 h-8 text-white" />
            </div>
            <div>
              <h1 className="text-3xl md:text-4xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
                Gestionar Noticias
              </h1>
              <p className="text-muted-foreground text-sm md:text-base">Administra todas las publicaciones</p>
            </div>
          </div>
          <Button asChild size="default" className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700">
            <Link href="/admin/news/edit/new" className="gap-2">
              <Plus className="w-4 h-4" />
              <span className="hidden sm:inline">Nueva Noticia</span>
              <span className="sm:hidden">Nueva</span>
            </Link>
          </Button>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
        <div className="glass-card border-2 p-4 md:p-6 rounded-xl">
          <p className="text-xs md:text-sm text-muted-foreground mb-1">Total Publicaciones</p>
          <p className="text-2xl md:text-3xl font-bold">{news.length}</p>
        </div>
        <div className="glass-card border-2 p-4 md:p-6 rounded-xl">
          <p className="text-xs md:text-sm text-muted-foreground mb-1">Este Mes</p>
          <p className="text-2xl md:text-3xl font-bold">
            {news.filter(n => {
              const date = new Date(n.date);
              const now = new Date();
              return date.getMonth() === now.getMonth() && date.getFullYear() === now.getFullYear();
            }).length}
          </p>
        </div>
        <div className="glass-card border-2 p-4 md:p-6 rounded-xl">
          <p className="text-xs md:text-sm text-muted-foreground mb-1">Esta Semana</p>
          <p className="text-2xl md:text-3xl font-bold">
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
      {news.length === 0 ? (
        <div className="text-center py-20">
          <Newspaper className="w-16 h-16 text-muted-foreground mx-auto mb-4" />
          <p className="text-muted-foreground mb-4">No hay noticias todavía.</p>
          <Button asChild>
            <Link href="/admin/news/edit/new">
              <Plus className="w-4 h-4 mr-2" />
              Crear Primera Noticia
            </Link>
          </Button>
        </div>
      ) : (
        <NewsAdminView initialNews={news} />
      )}
    </div>
  );
}
