"use client";
import React, { useEffect, useState, useCallback } from 'react';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { 
  Activity, 
  User, 
  Calendar, 
  Filter, 
  RefreshCw, 
  Download,
  Search,
  AlertCircle,
  CheckCircle,
  XCircle,
  Edit,
  Trash2,
  Plus
} from 'lucide-react';
import { getSupabase } from '@/lib/db';

interface AuditEntry {
  id: number;
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
  const [filterAction, setFilterAction] = useState<string>('all');
  const [filterUser, setFilterUser] = useState<string>('');
  const [searchQuery, setSearchQuery] = useState<string>('');

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
  
  // Actualización en tiempo real
  useEffect(() => {
    const supabase = getSupabase();
    const channel = supabase
      .channel('audit-logs-realtime')
      .on(
        'postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'admin_audit_log' },
        (payload) => {
          const newEntry = payload.new as AuditEntry;
          if (newEntry && newEntry.id) {
            setItems((current) => [newEntry, ...current].slice(0, limit));
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, [limit]);

  // Filtrado local
  const filteredItems = items.filter(item => {
    if (filterAction !== 'all' && !item.action.includes(filterAction)) return false;
    if (filterUser && !item.actorEmail?.toLowerCase().includes(filterUser.toLowerCase())) return false;
    if (searchQuery) {
      const query = searchQuery.toLowerCase();
      return (
        item.action.toLowerCase().includes(query) ||
        item.actorEmail?.toLowerCase().includes(query) ||
        JSON.stringify(item.meta).toLowerCase().includes(query)
      );
    }
    return true;
  });

  // Estadísticas
  const stats = {
    total: items.length,
    creates: items.filter(i => i.action.includes('create')).length,
    updates: items.filter(i => i.action.includes('update')).length,
    deletes: items.filter(i => i.action.includes('delete')).length,
    uniqueUsers: new Set(items.map(i => i.actorEmail).filter(Boolean)).size,
  };

  const getActionIcon = (action: string) => {
    if (action.includes('create')) return <Plus className="w-4 h-4 text-green-500" />;
    if (action.includes('update')) return <Edit className="w-4 h-4 text-blue-500" />;
    if (action.includes('delete')) return <Trash2 className="w-4 h-4 text-red-500" />;
    if (action.includes('approve')) return <CheckCircle className="w-4 h-4 text-green-500" />;
    if (action.includes('reject')) return <XCircle className="w-4 h-4 text-red-500" />;
    return <Activity className="w-4 h-4 text-gray-500" />;
  };

  const getActionColor = (action: string) => {
    if (action.includes('create')) return 'bg-green-100 dark:bg-green-900/30 text-green-700 dark:text-green-300';
    if (action.includes('update')) return 'bg-blue-100 dark:bg-blue-900/30 text-blue-700 dark:text-blue-300';
    if (action.includes('delete')) return 'bg-red-100 dark:bg-red-900/30 text-red-700 dark:text-red-300';
    if (action.includes('approve')) return 'bg-green-100 dark:bg-green-900/30 text-green-700 dark:text-green-300';
    if (action.includes('reject')) return 'bg-red-100 dark:bg-red-900/30 text-red-700 dark:text-red-300';
    return 'bg-gray-100 dark:bg-gray-900/30 text-gray-700 dark:text-gray-300';
  };

  const exportToCSV = () => {
    const headers = ['Fecha', 'Usuario', 'Acción', 'Target', 'Metadata'];
    const rows = filteredItems.map(item => [
      new Date(item.ts).toLocaleString(),
      item.actorEmail || 'Sistema',
      item.action,
      item.target || '',
      JSON.stringify(item.meta || {})
    ]);
    
    const csv = [headers, ...rows].map(row => row.map(cell => `"${cell}"`).join(',')).join('\n');
    const blob = new Blob([csv], { type: 'text/csv' });
    const url = URL.createObjectURL(blob);
    const a = document.createElement('a');
    a.href = url;
    a.download = `audit-logs-${new Date().toISOString().split('T')[0]}.csv`;
    a.click();
  };

  return (
    <div className="space-y-6">
      {/* Estadísticas */}
      <div className="grid grid-cols-2 md:grid-cols-5 gap-4">
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Total</p>
                <p className="text-2xl font-bold">{stats.total}</p>
              </div>
              <Activity className="w-8 h-8 text-purple-500" />
            </div>
          </CardContent>
        </Card>
        
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Creaciones</p>
                <p className="text-2xl font-bold text-green-600">{stats.creates}</p>
              </div>
              <Plus className="w-8 h-8 text-green-500" />
            </div>
          </CardContent>
        </Card>
        
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Ediciones</p>
                <p className="text-2xl font-bold text-blue-600">{stats.updates}</p>
              </div>
              <Edit className="w-8 h-8 text-blue-500" />
            </div>
          </CardContent>
        </Card>
        
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Eliminaciones</p>
                <p className="text-2xl font-bold text-red-600">{stats.deletes}</p>
              </div>
              <Trash2 className="w-8 h-8 text-red-500" />
            </div>
          </CardContent>
        </Card>
        
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Usuarios</p>
                <p className="text-2xl font-bold">{stats.uniqueUsers}</p>
              </div>
              <User className="w-8 h-8 text-orange-500" />
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Filtros y Controles */}
      <Card className="glass-card">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <Filter className="w-5 h-5" />
            Filtros y Controles
          </CardTitle>
        </CardHeader>
        <CardContent>
          <div className="grid grid-cols-1 md:grid-cols-4 gap-4">
            {/* Búsqueda */}
            <div className="relative">
              <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-muted-foreground" />
              <Input
                placeholder="Buscar..."
                className="pl-10"
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
              />
            </div>

            {/* Filtro por acción */}
            <select
              className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm"
              value={filterAction}
              onChange={e => setFilterAction(e.target.value)}
            >
              <option value="all">Todas las acciones</option>
              <option value="create">Creaciones</option>
              <option value="update">Ediciones</option>
              <option value="delete">Eliminaciones</option>
              <option value="approve">Aprobaciones</option>
              <option value="reject">Rechazos</option>
            </select>

            {/* Filtro por usuario */}
            <Input
              placeholder="Filtrar por usuario..."
              value={filterUser}
              onChange={(e) => setFilterUser(e.target.value)}
            />

            {/* Límite */}
            <select
              className="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm"
              value={limit}
              onChange={e => setLimit(parseInt(e.target.value, 10))}
            >
              {[25,50,100,150,200].map(v => <option key={v} value={v}>{v} registros</option>)}
            </select>
          </div>

          <div className="flex gap-2 mt-4">
            <Button 
              type="button" 
              size="sm" 
              onClick={load} 
              disabled={loading}
              className="gap-2"
            >
              <RefreshCw className={`w-4 h-4 ${loading ? 'animate-spin' : ''}`} />
              {loading ? 'Actualizando…' : 'Refrescar'}
            </Button>
            
            <Button 
              type="button" 
              size="sm" 
              variant="outline"
              onClick={exportToCSV}
              disabled={filteredItems.length === 0}
              className="gap-2"
            >
              <Download className="w-4 h-4" />
              Exportar CSV
            </Button>

            {(filterAction !== 'all' || filterUser || searchQuery) && (
              <Button 
                type="button" 
                size="sm" 
                variant="ghost"
                onClick={() => {
                  setFilterAction('all');
                  setFilterUser('');
                  setSearchQuery('');
                }}
              >
                Limpiar filtros
              </Button>
            )}
          </div>

          {error && (
            <div className="flex items-center gap-2 mt-4 text-sm text-destructive">
              <AlertCircle className="w-4 h-4" />
              Error: {error}
            </div>
          )}
        </CardContent>
      </Card>

      {/* Lista de Logs */}
      <div className="space-y-2">
        {filteredItems.length === 0 && !loading && (
          <Card className="glass-card">
            <CardContent className="py-12 text-center">
              <Activity className="w-12 h-12 text-muted-foreground mx-auto mb-3" />
              <p className="text-muted-foreground">
                {items.length === 0 
                  ? 'Sin registros (¿ENABLE_AUDIT_LOG=true?)' 
                  : 'No se encontraron resultados con los filtros aplicados'}
              </p>
            </CardContent>
          </Card>
        )}
        
        {filteredItems.map((entry, idx) => (
          <Card key={entry.id || idx} className="glass-card border hover:border-purple-300 dark:hover:border-purple-700 transition-all">
            <CardContent className="pt-4">
              <div className="flex flex-col sm:flex-row sm:items-start gap-3">
                {/* Icono */}
                <div className="flex-shrink-0">
                  {getActionIcon(entry.action)}
                </div>

                {/* Contenido */}
                <div className="flex-1 min-w-0">
                  <div className="flex flex-wrap items-center gap-2 mb-2">
                    <span className={`px-2 py-1 rounded text-xs font-semibold ${getActionColor(entry.action)}`}>
                      {entry.action}
                    </span>
                    
                    {entry.actorEmail && (
                      <span className="flex items-center gap-1 text-xs bg-primary/10 text-primary px-2 py-1 rounded">
                        <User className="w-3 h-3" />
                        {entry.actorEmail}
                      </span>
                    )}
                    
                    {entry.target !== undefined && (
                      <span className="text-xs text-muted-foreground">
                        ID: {String(entry.target)}
                      </span>
                    )}
                  </div>

                  <div className="flex items-center gap-2 text-xs text-muted-foreground mb-2">
                    <Calendar className="w-3 h-3" />
                    <span className="font-mono">
                      {new Date(entry.ts).toLocaleString('es-ES', {
                        year: 'numeric',
                        month: 'short',
                        day: 'numeric',
                        hour: '2-digit',
                        minute: '2-digit',
                        second: '2-digit'
                      })}
                    </span>
                  </div>

                  {entry.meta && Object.keys(entry.meta).length > 0 && (
                    <details className="mt-2">
                      <summary className="text-xs text-muted-foreground cursor-pointer hover:text-foreground">
                        Ver detalles
                      </summary>
                      <pre className="bg-muted/40 rounded p-2 text-xs overflow-auto max-h-40 whitespace-pre-wrap break-words mt-2">
                        {JSON.stringify(entry.meta, null, 2)}
                      </pre>
                    </details>
                  )}
                </div>
              </div>
            </CardContent>
          </Card>
        ))}
      </div>

      {/* Información de actualización */}
      <div className="text-center text-xs text-muted-foreground">
        Mostrando {filteredItems.length} de {items.length} registros • Actualización en tiempo real activa
      </div>
    </div>
  );
}
