import { getSupabase } from '@/lib/db';
import StoriesView from './stories-view';
import { Metadata } from 'next';
import Breadcrumbs from '@/components/breadcrumbs';

export const dynamic = 'force-dynamic';

export const metadata: Metadata = {
  title: 'Relatos | BubiLex',
  description: 'Relatos y fábulas de la cultura Bubi compartidos por la comunidad.',
  keywords: ['Relatos Bubi', 'Fábulas Bubi', 'Cultura Bubi', 'Historias Bubi'],
};

async function getStories() {
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('stories')
    .select('id, title, content, author_name, created_at, views, likes')
    .eq('is_approved', true)
    .eq('is_rejected', false)
    .order('created_at', { ascending: false })
    .limit(50);

  if (error) {
    console.error('Error fetching stories:', error);
    return [];
  }
  return data || [];
}

export default async function StoriesPage() {
  const stories = await getStories();

  return (
    <>
      <Breadcrumbs items={[
        { label: 'Inicio', href: '/' },
        { label: 'Relatos' },
      ]} />
      <StoriesView initialStories={stories} />
    </>
  );
}
