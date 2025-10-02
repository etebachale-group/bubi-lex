import Link from 'next/link';

interface PaginationProps {
  basePath: string;
  page: number;
  limit: number;
  total: number;
  params?: Record<string, string | number | undefined>;
}

function buildHref(basePath: string, page: number, limit: number, params?: Record<string, string | number | undefined>) {
  const url = new URL(basePath, 'http://dummy');
  const sp = new URLSearchParams(url.search);
  if (params) {
    for (const [k, v] of Object.entries(params)) {
      if (v !== undefined && String(v).length > 0) sp.set(k, String(v));
    }
  }
  sp.set('page', String(page));
  sp.set('limit', String(limit));
  const qs = sp.toString();
  return qs ? `${basePath}?${qs}` : basePath;
}

export default function Pagination({ basePath, page, limit, total, params }: PaginationProps) {
  const totalPages = Math.max(1, Math.ceil(total / limit));
  if (totalPages <= 1) return null;
  const prevPage = Math.max(1, page - 1);
  const nextPage = Math.min(totalPages, page + 1);

  return (
    <nav aria-label="Paginación" className="mt-6 flex items-center justify-between gap-2">
      <Link
        aria-disabled={page <= 1}
        className={`px-3 py-2 rounded border ${page <= 1 ? 'pointer-events-none opacity-50' : 'hover:bg-accent'}`}
        href={buildHref(basePath, prevPage, limit, params)}
      >
        Anterior
      </Link>
      <span className="text-sm text-muted-foreground">Página {page} de {totalPages}</span>
      <Link
        aria-disabled={page >= totalPages}
        className={`px-3 py-2 rounded border ${page >= totalPages ? 'pointer-events-none opacity-50' : 'hover:bg-accent'}`}
        href={buildHref(basePath, nextPage, limit, params)}
      >
        Siguiente
      </Link>
    </nav>
  );
}
