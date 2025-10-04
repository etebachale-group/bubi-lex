"use client";
import React, { useEffect, useState, useCallback } from 'react';
import { Button } from '@/components/ui/button';
import { Card } from '@/components/ui/card';

interface AuditEntry {
  ts: string;
  actorEmail: string | null;
  action: string;
  target?: any;
  meta?: Record<string, any>;
}

export default function AuditLogViewer() {
  const [items, setItems] = useState<AuditEntry[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState<string | null>(null);
  const [limit, setLimit] = useState(50);

  const load = useCallback(async () => {
    setLoading(true);
    setError(null);
    try {
      const res = await fetch(`/api/admin/audit?limit=${limit}`, { cache: 'no-store' });
      if (!res.ok) throw new Error(`HTTP ${res.status}`);
      const json = await res.json();
      setItems(json.items || []);
    } catch (e:any) {
      setError(e.message);
    } finally {
      setLoading(false);
    }
  }, [limit]);

  useEffect(() => { load(); }, [load]);
  useEffect(() => {
    const id = setInterval(load, 8000);
    return () => clearInterval(id);
  }, [load]);

  return (
    <div className="space-y-4">
      <div className="flex items-end gap-4 flex-wrap">
        <div>
          <label className="text-sm font-medium">Número de registros</label>
          <select
            className="block border rounded px-2 py-1 text-sm bg-background"
            value={limit}
            onChange={e => setLimit(parseInt(e.target.value, 10))}
          >
            {[25,50,100,150,200].map(v => <option key={v} value={v}>{v}</option>)}
          </select>
        </div>
        <Button type="button" size="sm" onClick={load} disabled={loading}>{loading ? 'Actualizando…' : 'Refrescar'}</Button>
        {error && <span className="text-sm text-destructive">Error: {error}</span>}
      </div>
      <div className="grid gap-2">
        {items.length === 0 && !loading && <p className="text-sm text-muted-foreground">Sin registros (¿ENABLE_AUDIT_LOG=true?).</p>}
        {items.map((e, idx) => (
          <Card key={idx} className="p-3 text-sm flex flex-col gap-1">
            <div className="flex gap-3 flex-wrap items-center">
              <span className="font-mono text-xs text-muted-foreground">{new Date(e.ts).toLocaleString()}</span>
              <span className="font-semibold">{e.action}</span>
              {e.actorEmail && <span className="text-xs bg-primary/10 text-primary px-2 py-0.5 rounded">{e.actorEmail}</span>}
              {e.target !== undefined && <span className="text-xs">target: {String(e.target)}</span>}
            </div>
            {e.meta && Object.keys(e.meta).length > 0 && (
              <pre className="bg-muted/40 rounded p-2 text-xs overflow-auto max-h-40 whitespace-pre-wrap break-words">{JSON.stringify(e.meta, null, 2)}</pre>
            )}
          </Card>
        ))}
      </div>
    </div>
  );
}
