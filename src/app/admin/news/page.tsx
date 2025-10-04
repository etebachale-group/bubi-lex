import { supabase } from '@/lib/db';
import NewsAdminView from './news-admin-view';
import Link from 'next/link';
import { Button } from '@/components/ui/button';

export const dynamic = 'force-dynamic';

async function getNews() {
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
    <div className="container mx-auto py-8">
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-3xl font-bold">Gestionar Noticias</h1>
        <Button asChild>
          <Link href="/admin/news/edit/new">Crear Nueva Noticia</Link>
        </Button>
      </div>
      <NewsAdminView initialNews={news} />
    </div>
  );
}
