export const dynamic = 'force-dynamic';
import { Metadata } from 'next';
import NewsView from './news-view';
import StructuredData from '@/components/seo/structured-data';
import React from 'react';
import Breadcrumbs from '@/components/breadcrumbs';
import { supabase } from '@/lib/db';

// ... (keep existing code until the NewsPage function)

export default async function NewsPage({ searchParams }: { searchParams: SearchParams }) {
  const page = toNumber(searchParams.page, 1);
  const limit = toNumber(searchParams.limit, 5);
  const offset = (page - 1) * limit;

  const { data: rows, count, error } = await supabase
    .from('news')
    .select('id, title, content, date, image, video, likes', { count: 'exact' })
    .order('date', { ascending: false })
    .range(offset, offset + limit - 1);

  if (error) {
    console.error('Supabase select Error:', error);
    // Handle error appropriately, maybe show an error message
  }

  const total = count ?? 0;

  // ... (keep existing code from itemListElement downwards)


  const itemListElement = rows.map((item, index) => ({
    '@type': 'ListItem',
    position: index + 1 + offset,
    url: `/news#${item.id}`,
    name: item.title,
  }));

  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: 'Noticias y Relatos | BubiLex',
    description: 'Las últimas noticias, relatos y fábulas de la cultura Bubi.',
    mainEntity: {
      '@type': 'ItemList',
      itemListElement,
    },
  } as const;

  return (
    <>
      <StructuredData data={{
        '@context': 'https://schema.org',
        '@type': 'BreadcrumbList',
        itemListElement: [
          { '@type': 'ListItem', position: 1, name: 'Inicio', item: '/' },
          { '@type': 'ListItem', position: 2, name: 'Noticias', item: '/news' },
        ],
      }} />
      <StructuredData data={jsonLd} />
      <Breadcrumbs items={[
        { label: 'Inicio', href: '/' },
        { label: 'Noticias' },
      ]} />
  <NewsView news={rows.map(r => ({ ...r, image: r.image ?? undefined, video: r.video ?? undefined }))} />
      <Pagination basePath="/news" page={page} limit={limit} total={total} />
    </>
  );
}