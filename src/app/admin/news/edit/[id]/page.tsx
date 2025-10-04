import { supabase } from '@/lib/db';
import NewsEditForm from './news-edit-form';

export const dynamic = 'force-dynamic';

async function getNewsItem(id: string) {
  if (id === 'new') {
    return null;
  }
  
  const idNum = Number(id);
  if (!Number.isFinite(idNum)) {
    return null;
  }

  const { data, error } = await supabase
    .from('news')
    .select('*')
    .eq('id', idNum)
    .single();

  if (error) {
    console.error('Error fetching news item:', error);
    return null;
  }
  return data;
}

export default async function EditNewsPage({ params }: { params: { id: string } }) {
  const newsItem = await getNewsItem(params.id);

  if (params.id !== 'new' && !newsItem) {
    return (
      <div className="container mx-auto py-8">
        <h1 className="text-3xl font-bold">Noticia no encontrada</h1>
        <p>La noticia que intentas editar no existe.</p>
      </div>
    );
  }

  return (
    <div className="container mx-auto py-8">
      <h1 className="text-3xl font-bold mb-6">
        {params.id === 'new' ? 'Crear Nueva Noticia' : 'Editar Noticia'}
      </h1>
      <NewsEditForm newsItem={newsItem} />
    </div>
  );
}
