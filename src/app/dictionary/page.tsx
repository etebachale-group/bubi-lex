export const dynamic = 'force-dynamic';
import { Metadata } from 'next';
import StructuredData from '@/components/seo/structured-data';
import Breadcrumbs from '@/components/breadcrumbs';
import { getSupabase } from '@/lib/db';
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

export default async function DictionaryPage({ searchParams }: { searchParams: SearchParams }) {
  const sp = searchParams;
  const q = toString(searchParams.q);
  const page = toNumber(searchParams.page, 1);
  const limit = toNumber(searchParams.limit, 12);
  const rawLang = toString(searchParams.lang).trim().toLowerCase();
  const lang: 'bubi' | 'es' = rawLang === 'es' ? 'es' : 'bubi';
  const offset = (page - 1) * limit;

  const orderBy = lang === 'es' ? 'spanish' : 'bubi';

  let rows: DictionaryRow[] = [];
  let total = 0;

  const supabase = getSupabase();
  if (q) {
    // Usar RPC para búsqueda full-text
    const { data, error } = await supabase.rpc('search_dictionary_entries', { search_term: q });
    if (error) {
      console.error('Supabase RPC search_dictionary_entries Error:', error);
    } else {
      rows = data || [];
      total = data?.length || 0; // Nota: RPC no devuelve total, así que esto es una aproximación
    }
  } else {
    // Query normal para listar todo
    const { data, count, error } = await supabase
      .from('dictionary_entries')
      .select('id, bubi, spanish, ipa, notes', { count: 'exact' })
      .order(orderBy, { ascending: true })
      .range(offset, offset + limit - 1);

    if (error) {
      console.error('Supabase select Error:', error);
    } else {
      rows = data || [];
      total = count ?? 0;
    }
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