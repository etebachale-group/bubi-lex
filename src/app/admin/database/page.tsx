'use client';

import { useState, useEffect } from 'react';
import { Card, CardHeader, CardTitle, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { 
  Database, 
  Download, 
  Upload, 
  Trash2, 
  RefreshCw, 
  AlertCircle,
  CheckCircle,
  HardDrive,
  FileText
} from 'lucide-react';
import Link from 'next/link';

interface DatabaseStats {
  dictionaryCount: number;
  newsCount: number;
  auditCount: number;
  eventsCount: number;
}

export default function DatabasePage() {
  const [stats, setStats] = useState<DatabaseStats>({
    dictionaryCount: 0,
    newsCount: 0,
    auditCount: 0,
    eventsCount: 0
  });
  const [loading, setLoading] = useState(true);
  const [exporting, setExporting] = useState(false);

  const fetchStats = async () => {
    setLoading(true);
    try {
      const res = await fetch('/api/admin/database/stats');
      if (!res.ok) throw new Error('Error al cargar estadísticas');
      
      const data = await res.json();
      setStats(data);
    } catch (err) {
      console.error('Error al cargar estadísticas:', err);
      // Mantener valores por defecto en caso de error
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchStats();
  }, []);

  const handleExport = async (table: string) => {
    setExporting(true);
    try {
      // En producción: GET /api/admin/database/export?table=dictionary_entries
      alert(`Funcionalidad en desarrollo: Exportar ${table}`);
      
      // Ejemplo de implementación:
      // const res = await fetch(`/api/admin/database/export?table=${table}`);
      // const blob = await res.blob();
      // const url = window.URL.createObjectURL(blob);
      // const a = document.createElement('a');
      // a.href = url;
      // a.download = `${table}_${new Date().toISOString()}.json`;
      // a.click();
    } catch (err) {
      alert('Error al exportar datos');
    } finally {
      setExporting(false);
    }
  };

  const handleImport = () => {
    alert('Funcionalidad en desarrollo: Importar datos\n\nEsta función permitirá:\n- Subir archivo JSON/CSV\n- Validar formato\n- Importar en lote\n- Ver progreso');
  };

  const handleRunMigration = () => {
    if (confirm('¿Ejecutar script de reparación de base de datos?\n\nEsto:\n- Agregará columnas faltantes\n- Creará índices\n- Eliminará duplicados\n- Optimizará tablas')) {
      alert('Funcionalidad en desarrollo: Ejecutar migración\n\nEn producción, esto ejecutaría el script db/repair-database.sql');
    }
  };

  if (loading) {
    return (
      <div className="container mx-auto py-8 px-4">
        <div className="flex items-center justify-center min-h-[400px]">
          <RefreshCw className="w-8 h-8 animate-spin text-purple-500" />
        </div>
      </div>
    );
  }

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center gap-3 mb-2">
          <div className="p-3 rounded-xl bg-gradient-to-br from-teal-500 to-cyan-500">
            <Database className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-teal-600 to-cyan-600 dark:from-teal-400 dark:to-cyan-400 bg-clip-text text-transparent">
              Gestión de Base de Datos
            </h1>
            <p className="text-muted-foreground">Administra, exporta y optimiza los datos</p>
          </div>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-8">
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Diccionario</p>
                <p className="text-3xl font-bold">{stats.dictionaryCount}</p>
              </div>
              <FileText className="w-8 h-8 text-blue-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Noticias</p>
                <p className="text-3xl font-bold">{stats.newsCount}</p>
              </div>
              <FileText className="w-8 h-8 text-purple-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Auditoría</p>
                <p className="text-3xl font-bold">{stats.auditCount}</p>
              </div>
              <FileText className="w-8 h-8 text-green-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Eventos</p>
                <p className="text-3xl font-bold">{stats.eventsCount}</p>
              </div>
              <FileText className="w-8 h-8 text-orange-500" />
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Quick Actions */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6 mb-8">
        {/* Export */}
        <Card className="glass-card border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all">
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Download className="w-5 h-5 text-blue-500" />
              Exportar Datos
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-3">
            <p className="text-sm text-muted-foreground mb-4">
              Descarga copias de seguridad en formato JSON
            </p>
            <Button
              onClick={() => handleExport('dictionary_entries')}
              disabled={exporting}
              variant="outline"
              className="w-full justify-start"
            >
              <FileText className="w-4 h-4 mr-2" />
              Exportar Diccionario ({stats.dictionaryCount} entradas)
            </Button>
            <Button
              onClick={() => handleExport('news')}
              disabled={exporting}
              variant="outline"
              className="w-full justify-start"
            >
              <FileText className="w-4 h-4 mr-2" />
              Exportar Noticias ({stats.newsCount} entradas)
            </Button>
            <Button
              onClick={() => handleExport('all')}
              disabled={exporting}
              className="w-full bg-gradient-to-r from-blue-500 to-cyan-500 hover:from-blue-600 hover:to-cyan-600"
            >
              <Download className="w-4 h-4 mr-2" />
              {exporting ? 'Exportando...' : 'Exportar Todo'}
            </Button>
          </CardContent>
        </Card>

        {/* Import */}
        <Card className="glass-card border-2 hover:border-green-300 dark:hover:border-green-700 transition-all">
          <CardHeader>
            <CardTitle className="flex items-center gap-2">
              <Upload className="w-5 h-5 text-green-500" />
              Importar Datos
            </CardTitle>
          </CardHeader>
          <CardContent className="space-y-3">
            <p className="text-sm text-muted-foreground mb-4">
              Carga datos desde archivos JSON o CSV
            </p>
            <Button
              onClick={handleImport}
              variant="outline"
              className="w-full justify-start"
            >
              <Upload className="w-4 h-4 mr-2" />
              Importar Diccionario
            </Button>
            <Button
              onClick={handleImport}
              variant="outline"
              className="w-full justify-start"
            >
              <Upload className="w-4 h-4 mr-2" />
              Importar Noticias
            </Button>
            <div className="p-3 rounded-lg bg-yellow-50 dark:bg-yellow-900/20 border border-yellow-200 dark:border-yellow-800">
              <div className="flex items-start gap-2 text-sm text-yellow-800 dark:text-yellow-200">
                <AlertCircle className="w-4 h-4 mt-0.5 flex-shrink-0" />
                <p>La importación validará y procesará los datos antes de insertarlos</p>
              </div>
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Maintenance */}
      <Card className="glass-card mb-8">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <HardDrive className="w-5 h-5 text-purple-500" />
            Mantenimiento y Optimización
          </CardTitle>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
            <Link href="/admin/dictionary/duplicates">
              <Button
                variant="outline"
                className="w-full justify-start h-auto py-4"
              >
                <div className="flex items-start gap-3">
                  <Trash2 className="w-5 h-5 text-orange-500 mt-1" />
                  <div className="text-left">
                    <p className="font-semibold">Gestionar Duplicados</p>
                    <p className="text-sm text-muted-foreground">
                      Detecta y elimina entradas duplicadas
                    </p>
                  </div>
                </div>
              </Button>
            </Link>

            <Button
              onClick={handleRunMigration}
              variant="outline"
              className="w-full justify-start h-auto py-4"
            >
              <div className="flex items-start gap-3">
                <RefreshCw className="w-5 h-5 text-blue-500 mt-1" />
                <div className="text-left">
                  <p className="font-semibold">Ejecutar Migración</p>
                  <p className="text-sm text-muted-foreground">
                    Aplica el script de reparación de BD
                  </p>
                </div>
              </div>
            </Button>

            <Button
              onClick={() => alert('Funcionalidad en desarrollo: Limpiar datos huérfanos')}
              variant="outline"
              className="w-full justify-start h-auto py-4"
            >
              <div className="flex items-start gap-3">
                <Trash2 className="w-5 h-5 text-red-500 mt-1" />
                <div className="text-left">
                  <p className="font-semibold">Limpiar Datos Huérfanos</p>
                  <p className="text-sm text-muted-foreground">
                    Elimina registros sin referencias
                  </p>
                </div>
              </div>
            </Button>

            <Button
              onClick={fetchStats}
              variant="outline"
              className="w-full justify-start h-auto py-4"
            >
              <div className="flex items-start gap-3">
                <CheckCircle className="w-5 h-5 text-green-500 mt-1" />
                <div className="text-left">
                  <p className="font-semibold">Actualizar Estadísticas</p>
                  <p className="text-sm text-muted-foreground">
                    Recalcula contadores y métricas
                  </p>
                </div>
              </div>
            </Button>
          </div>
        </CardContent>
      </Card>

      {/* Info */}
      <Card className="glass-card border-2 border-teal-300 dark:border-teal-700">
        <CardContent className="pt-6">
          <h3 className="font-semibold mb-3 flex items-center gap-2">
            <AlertCircle className="w-5 h-5 text-teal-500" />
            Información Importante
          </h3>
          <div className="space-y-2 text-sm text-muted-foreground">
            <p>• Las exportaciones incluyen todos los campos y metadatos</p>
            <p>• Las importaciones validan el formato antes de insertar</p>
            <p>• Se recomienda hacer backups antes de operaciones masivas</p>
            <p>• El script de migración es idempotente (se puede ejecutar múltiples veces)</p>
            <p>• Los duplicados se detectan por palabra Bubi (case-insensitive)</p>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
