"use client";

import { useCallback, useEffect, useMemo, useState } from 'react';
import { useRouter, useSearchParams, usePathname } from 'next/navigation';
import { Input } from '@/components/ui/input';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import Pagination from '@/components/pagination';

type Item = { id: number; bubi: string; spanish: string; ipa?: string | null; notes: string | null };

function useDebouncedCallback(cb: (v: string) => void, delay: number) {
  const [t, setT] = useState<NodeJS.Timeout | null>(null);
  return useCallback((v: string) => {
    if (t) clearTimeout(t);
    const nt = setTimeout(() => cb(v), delay);
    setT(nt);
  }, [cb, delay, t]);
}

export default function DictionaryRealtime({ initialTotal, initialItems, initialParams }: { initialTotal: number; initialItems?: Item[]; initialParams?: { q: string; page: number; limit: number; lang: string } }) {
  const router = useRouter();
  const params = useSearchParams();
  const pathname = usePathname();
  const q = params.get('q') ?? '';
  const page = Math.max(1, parseInt(params.get('page') ?? '1', 10) || 1);
  const limit = Math.max(1, parseInt(params.get('limit') ?? '12', 10) || 12);
  const lang = (params.get('lang') ?? 'bubi').toLowerCase();

  const [items, setItems] = useState<Item[]>(() => {
    if (initialItems && initialParams && initialParams.q === q && initialParams.page === page && initialParams.limit === limit && initialParams.lang === lang) {
      return initialItems;
    }
    return [];
  });
  const [total, setTotal] = useState<number>(initialTotal);
  const [loading, setLoading] = useState<boolean>(() => items.length === 0);

  const qs = useMemo(() => {
    const sp = new URLSearchParams();
    if (q) sp.set('q', q);
    sp.set('page', String(page));
    sp.set('limit', String(limit));
    sp.set('lang', lang);
    return sp.toString();
  }, [q, page, limit, lang]);

  const fetchData = useCallback(async () => {
    setLoading(true);
    const res = await fetch(`/api/dictionary?${qs}`, { cache: 'no-store' });
    if (res.ok) {
      const data = await res.json();
      setItems(data.items ?? []);
      setTotal(data.total ?? 0);
    }
    setLoading(false);
  }, [qs]);

  useEffect(() => {
    // Evita el primer fetch si ya tenemos items precargados que coinciden con los parámetros
    const shouldFetchInitially = !(initialItems && initialParams && initialParams.q === q && initialParams.page === page && initialParams.limit === limit && initialParams.lang === lang);
    if (shouldFetchInitially) {
      fetchData();
    } else {
      setLoading(false);
    }
    // Suscripción a eventos del diccionario; sin polling periódico
    const es = new EventSource('/api/dictionary/events');
    es.onmessage = () => fetchData();
    es.onerror = () => { /* ignore transient errors */ };
    return () => { es.close(); };
  }, [fetchData, initialItems, initialParams, q, page, limit, lang]);

  const onChange = useDebouncedCallback((value: string) => {
    const sp = new URLSearchParams(qs);
    if (value) sp.set('q', value); else sp.delete('q');
    sp.set('page', '1');
    router.replace(`${pathname}?${sp.toString()}`);
  }, 400);

  return (
    <div className="flex flex-col gap-4">
      <Input
        placeholder="Busca una palabra en Bubi o Español..."
        defaultValue={q}
        onChange={(e) => onChange(e.target.value)}
        className="max-w-sm"
        aria-label="Buscar en el diccionario"
      />
      {loading && items.length === 0 ? (
        <p className="text-sm text-muted-foreground">Cargando…</p>
      ) : items.length > 0 ? (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {items.map((entry) => (
            <Card key={entry.id}>
              <CardHeader>
                <CardTitle className="font-headline text-primary flex items-baseline gap-2">
                  <span>{entry.bubi}</span>
                  {entry.ipa ? (
                    <span className="text-sm font-normal text-muted-foreground">/{entry.ipa}/</span>
                  ) : null}
                </CardTitle>
              </CardHeader>
              <CardContent>
                <p>{entry.spanish}</p>
              </CardContent>
            </Card>
          ))}
        </div>
      ) : (
        <div className="text-muted-foreground">No se encontraron resultados.</div>
      )}
      <Pagination basePath="/dictionary" page={page} limit={limit} total={total} params={{ q, lang }} />
    </div>
  );
}
