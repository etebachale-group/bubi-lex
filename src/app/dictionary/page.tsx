export const dynamic = 'force-dynamic';
import { Metadata } from 'next';
import StructuredData from '@/components/seo/structured-data';
import Breadcrumbs from '@/components/breadcrumbs';
import { getSupabase } from '@/lib/db';
import Link from 'next/link';
import DictionaryViewModern from './dictionary-view-modern';

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
  word_type: string | null;
  gender: string | null;
  number: string | null;
  nominal_class: string | null;
  plural_form: string | null;
  ipa: string | null;
  examples: string | null;
  variants: string | null;
  notes: string | null;
  created_by: string | null;
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
  const lang: 'bubi' | 'es' = toString(searchParams.lang).trim().toLowerCase() === 'es' ? 'es' : 'bubi';

  let rows: DictionaryRow[] = [];

  const supabase = getSupabase();
  
  // Cargar TODAS las palabras (sin paginación)
  const orderBy = lang === 'es' ? 'spanish' : 'bubi';
  
  const { data, error } = await supabase
    .from('dictionary_entries')
    .select('id, bubi, spanish, word_type, gender, number, nominal_class, plural_form, ipa, examples, variants, notes, created_by')
    .order(orderBy, { ascending: true });

  if (error) {
    console.error('Supabase select Error:', error);
  } else {
    rows = data || [];
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
      
      {/* Vista moderna del diccionario */}
      <DictionaryViewModern 
        dictionary={rows} 
        initialLang={lang}
        initialSearch={q}
      />
    </>
  );
}