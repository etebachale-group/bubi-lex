import { Metadata } from 'next';
import StructuredData from '@/components/seo/structured-data';
import Breadcrumbs from '@/components/breadcrumbs';
import { query } from '@/lib/db';
import Link from 'next/link';
import DictionaryRealtime from './dictionary-realtime';

export const metadata: Metadata = {
  title: 'Diccionario Bubi-Español | BubiLex',
  description: 'Explora el diccionario completo de palabras en Bubi y su significado en Español.',
  keywords: ['Diccionario Bubi', 'Lengua Bubi', 'Vocabulario Bubi', 'Traductor Bubi Español', 'BubiLex'],
  alternates: {
    canonical: '/dictionary',
  },
  openGraph: {
    title: 'Diccionario Bubi-Español | BubiLex',
    description: 'Explora el diccionario completo de palabras en Bubi y su significado en Español.',
  },
  twitter: {
    title: 'Diccionario Bubi-Español | BubiLex',
    description: 'Explora el diccionario completo de palabras en Bubi y su significado en Español.',
  },
};

type SearchParams = {
  q?: string | string[];
  page?: string | string[];
  limit?: string | string[];
  lang?: 'bubi' | 'es' | string | string[];
};

interface DictionaryRow {
  id: number;
  bubi: string;
  spanish: string;
  ipa: string | null;
  notes: string | null;
}

function toNumber(value: string | string[] | undefined, fallback: number) {
  const n = Array.isArray(value) ? parseInt(value[0] ?? '') : parseInt(value ?? '');
  return Number.isFinite(n) && n > 0 ? n : fallback;
}

function toString(value: string | string[] | undefined) {
  return Array.isArray(value) ? (value[0] ?? '') : (value ?? '');
}

export default async function DictionaryPage({ searchParams }: { searchParams: Promise<SearchParams> }) {
  const sp = await searchParams;
  const q = toString(sp.q).trim();
  const page = toNumber(sp.page, 1);
  const limit = toNumber(sp.limit, 12);
  const rawLang = toString(sp.lang).trim().toLowerCase();
  const lang: 'bubi' | 'es' = rawLang === 'es' ? 'es' : 'bubi';
  const offset = (page - 1) * limit;

  const orderBy = lang === 'es' ? 'spanish' : 'bubi';

  let rows: DictionaryRow[] = [];
  let total = 0;
  if (q) {
    const booleanQuery = q
      .split(/\s+/)
      .filter(Boolean)
      .map((t) => `${t.trim()}*`)
      .join(' ');
    rows = await query<DictionaryRow[]>(
      `SELECT id, bubi, spanish, ipa, notes,
              MATCH(bubi, spanish) AGAINST (? IN BOOLEAN MODE) AS relevance
         FROM dictionary_entries
        WHERE MATCH(bubi, spanish) AGAINST (? IN BOOLEAN MODE)
        ORDER BY relevance DESC, ${orderBy} ASC
        LIMIT ? OFFSET ?`,
      [booleanQuery, booleanQuery, limit, offset]
    );
    const cnt = await query<Array<{ count: number }>>(
      `SELECT COUNT(*) AS count FROM dictionary_entries WHERE MATCH(bubi, spanish) AGAINST (? IN BOOLEAN MODE)`,
      [booleanQuery]
    );
    total = cnt[0]?.count ?? 0;
  } else {
    rows = await query<DictionaryRow[]>(
      `SELECT id, bubi, spanish, ipa, notes FROM dictionary_entries ORDER BY ${orderBy} ASC LIMIT ? OFFSET ?`,
      [limit, offset]
    );
    const cnt = await query<Array<{ count: number }>>('SELECT COUNT(*) AS count FROM dictionary_entries');
    total = cnt[0]?.count ?? 0;
  }

  const jsonLd = {
    '@context': 'https://schema.org',
    '@type': 'CollectionPage',
    name: 'Diccionario Bubi-Español | BubiLex',
    description: 'Explora el diccionario completo de palabras en Bubi y su significado en Español.',
  } as const;

  return (
    <>
      <StructuredData data={{
        '@context': 'https://schema.org',
        '@type': 'BreadcrumbList',
        itemListElement: [
          { '@type': 'ListItem', position: 1, name: 'Inicio', item: '/' },
          { '@type': 'ListItem', position: 2, name: 'Diccionario', item: '/dictionary' },
        ],
      }} />
      <StructuredData data={jsonLd} />
      <Breadcrumbs items={[
        { label: 'Inicio', href: '/' },
        { label: 'Diccionario' },
      ]} />
      {/* Tabs para ordenar por idioma */}
      <div className="mb-4" role="tablist" aria-label="Orden del diccionario">
        <div className="inline-flex rounded-md border p-1 bg-background">
          {(['bubi', 'es'] as const).map((t) => {
            const sp = new URLSearchParams();
            if (q) sp.set('q', q);
            sp.set('lang', t);
            sp.set('limit', String(limit));
            sp.set('page', '1');
            const href = `/dictionary?${sp.toString()}`;
            const selected = lang === t;
            return (
              <Link
                key={t}
                role="tab"
                aria-selected={selected}
                href={href}
                className={`px-3 py-1 text-sm rounded ${selected ? 'bg-primary text-primary-foreground' : 'hover:bg-accent'}`}
              >
                {t === 'bubi' ? 'Bubi → Español' : 'Español → Bubi'}
              </Link>
            );
          })}
        </div>
      </div>
      {/* Realtime client view */}
      <DictionaryRealtime initialTotal={total} initialItems={rows} initialParams={{ q, page, limit, lang }} />
    </>
  );
}