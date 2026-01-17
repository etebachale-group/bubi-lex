export const dynamic = 'force-dynamic';
import { Metadata } from 'next';
import NewsViewModern from './news-view-modern';
import StructuredData from '@/components/seo/structured-data';
import React from 'react';
import Breadcrumbs from '@/components/breadcrumbs';
import { getSupabase } from '@/lib/db';

type SearchParams = {
  page?: string | string[];
  limit?: string | string[];
};

export const metadata: Metadata = {
  title: 'Noticias y Relatos | BubiLex',
  description: 'Las últimas noticias, relatos y fábulas de la cultura Bubi.',
  keywords: ['Noticias Bubi', 'Relatos Bubi', 'Cultura Bubi', 'Fábulas Bubi'],
  alternates: {
    canonical: '/news',
  },
  openGraph: {
    title: 'Noticias y Relatos | BubiLex',
    description: 'Las últimas noticias, relatos y fábulas de la cultura Bubi.',
  },
  twitter: {
    title: 'Noticias y Relatos | BubiLex',
    description: 'Las últimas noticias, relatos y fábulas de la cultura Bubi.',
  },
};

function toNumber(value: string | string[] | undefined, fallback: number) {
  const n = Array.isArray(value) ? parseInt(value[0] ?? '') : parseInt(value ?? '');
  return Number.isFinite(n) && n > 0 ? n : fallback;
}

export default async function NewsPage({ searchParams }: { searchParams: SearchParams }) {
  const page = toNumber(searchParams.page, 1);
  const limit = toNumber(searchParams.limit, 10);
  const offset = (page - 1) * limit;

  const supabase = getSupabase();
  const { data: rows, count, error } = await supabase
    .from('news')
    .select('id, title, content, date, image, video, likes', { count: 'exact' })
    .order('date', { ascending: false })
    .range(offset, offset + limit - 1);

  if (error) {
    console.error('Supabase select Error:', error);
  }

  const total = count ?? 0;

  const itemListElement = (rows ?? []).map((item, index) => ({
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
      <NewsViewModern news={(rows ?? []).map(r => ({ ...r, image: r.image ?? undefined, video: r.video ?? undefined }))} />
    </>
  );
}