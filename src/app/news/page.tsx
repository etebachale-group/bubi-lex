import { Metadata } from 'next';
import NewsView from './news-view';
import StructuredData from '@/components/seo/structured-data';
import React from 'react';
import Breadcrumbs from '@/components/breadcrumbs';
import { query } from '@/lib/db';
import Pagination from '@/components/pagination';

export const metadata: Metadata = {
  title: 'Noticias y Relatos | BubiLex',
  description: 'Las últimas noticias, relatos y fábulas de la cultura Bubi.',
  keywords: ['Noticias Bubi', 'Relatos Bubi', 'Cultura Bubi', 'BubiLex'],
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

type SearchParams = {
  page?: string | string[];
  limit?: string | string[];
};

interface NewsRow {
  id: number;
  title: string;
  content: string;
  date: string;
  image: string | null;
  video: string | null;
  likes: number;
}

function toNumber(value: string | string[] | undefined, fallback: number) {
  const n = Array.isArray(value) ? parseInt(value[0] ?? '') : parseInt(value ?? '');
  return Number.isFinite(n) && n > 0 ? n : fallback;
}

export default async function NewsPage({ searchParams }: { searchParams: SearchParams }) {
  const page = toNumber(searchParams.page, 1);
  const limit = toNumber(searchParams.limit, 5);
  const offset = (page - 1) * limit;

  const rows = await query<NewsRow[]>(
    'SELECT id, title, content, DATE_FORMAT(date, "%Y-%m-%d") as date, image, video, likes FROM news ORDER BY date DESC LIMIT ? OFFSET ?',
    [limit, offset]
  );

  const countRows = await query<Array<{ count: number }>>(
    'SELECT COUNT(*) as count FROM news',
    []
  );
  const total = countRows[0]?.count ?? 0;

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