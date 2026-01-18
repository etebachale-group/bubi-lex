'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { AlertTriangle, ArrowLeft, Trash2 } from 'lucide-react';

export default function DangerZonePage() {
  const router = useRouter();
  const [confirmText, setConfirmText] = useState('');
  const [deleting, setDeleting] = useState(false);

  const handleTruncate = async () => {
    if (confirmText !== 'ELIMINAR TODO') {
      alert('Debes escribir "ELIMINAR TODO" para confirmar');
      return;
    }

    if (!confirm('⚠️ ÚLTIMA ADVERTENCIA\n\n¿Estás ABSOLUTAMENTE SEGURO de que quieres eliminar TODAS las palabras del diccionario?\n\nEsta acción NO se puede deshacer.\n\nSe perderán TODOS los datos.')) {
      return;
    }

    setDeleting(true);
    try {
      const res = await fetch('/api/admin/dictionary/truncate', {
        method: 'DELETE',
      });

      if (!res.ok) {
        const data = await res.json();
        throw new Error(data.error || 'Error al eliminar');
      }

      const data = await res.json();
      alert(`✅ ${data.message}\n\nSe eliminaron ${data.deletedCount} entradas.`);
      
      // Redirigir al diccionario
      router.push('/admin/dictionary');
      router.refresh();
    } catch (err) {
      alert(`❌ Error: ${err instanceof Error ? err.message : 'Error desconocido'}`);
    } finally {
      setDeleting(false);
      setConfirmText('');
    }
  };

  return (
    <div className="container mx-auto py-8 px-4 max-w-4xl">
      {/* Header */}
      <div className="mb-8">
        <Link href="/admin/dictionary" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-4">
          <ArrowLeft className="w-4 h-4" />
          Volver al Diccionario
        </Link>
        <div className="flex items-center gap-3 mb-4">
          <div className="p-3 rounded-xl bg-gradient-to-br from-red-500 to-orange-500">
            <AlertTriangle className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-3xl md:text-4xl font-bold text-red-600 dark:text-red-400">
              Zona de Peligro
            </h1>
            <p className="text-muted-foreground">Operaciones irreversibles</p>
          </div>
        </div>
      </div>

      {/* Warning Card */}
      <Card className="border-4 border-red-500 bg-red-50 dark:bg-red-900/20 mb-8">
        <CardContent className="pt-6">
          <div className="flex items-start gap-3">
            <AlertTriangle className="w-6 h-6 text-red-600 dark:text-red-400 flex-shrink-0 mt-1" />
            <div>
              <h3 className="font-bold text-red-900 dark:text-red-100 text-lg mb-2">
                ⚠️ ADVERTENCIA CRÍTICA
              </h3>
              <ul className="space-y-2 text-red-800 dark:text-red-200 text-sm">
                <li>• Esta operación eliminará TODAS las palabras del diccionario</li>
                <li>• Esta acción NO se puede deshacer</li>
                <li>• NO hay forma de recuperar los datos eliminados</li>
                <li>• Se perderán TODOS los registros históricos</li>
                <li>• Asegúrate de tener un backup antes de continuar</li>
              </ul>
            </div>
          </div>
        </CardContent>
      </Card>

      {/* Truncate Section */}
      <Card className="border-2 border-red-300 dark:border-red-700">
        <CardHeader>
          <CardTitle className="flex items-center gap-2 text-red-600 dark:text-red-400">
            <Trash2 className="w-5 h-5" />
            Eliminar Todas las Palabras
          </CardTitle>
        </CardHeader>
        <CardContent className="space-y-6">
          <div>
            <p className="text-sm text-muted-foreground mb-4">
              Esta operación eliminará permanentemente todas las entradas del diccionario.
              Solo usa esta función si estás absolutamente seguro.
            </p>
            
            <div className="bg-yellow-50 dark:bg-yellow-900/20 border-2 border-yellow-300 dark:border-yellow-700 rounded-lg p-4 mb-4">
              <p className="text-sm font-semibold text-yellow-900 dark:text-yellow-100 mb-2">
                Casos de uso válidos:
              </p>
              <ul className="text-sm text-yellow-800 dark:text-yellow-200 space-y-1">
                <li>• Limpiar datos de prueba antes de importar datos reales</li>
                <li>• Reiniciar el diccionario desde cero</li>
                <li>• Preparar para una importación masiva</li>
              </ul>
            </div>
          </div>

          <div>
            <label className="block text-sm font-medium mb-2">
              Para confirmar, escribe: <span className="font-bold text-red-600">ELIMINAR TODO</span>
            </label>
            <Input
              type="text"
              value={confirmText}
              onChange={(e) => setConfirmText(e.target.value)}
              placeholder="Escribe ELIMINAR TODO"
              className="font-mono"
              disabled={deleting}
            />
          </div>

          <Button
            onClick={handleTruncate}
            disabled={confirmText !== 'ELIMINAR TODO' || deleting}
            className="w-full bg-red-600 hover:bg-red-700 text-white"
            size="lg"
          >
            <Trash2 className="w-5 h-5 mr-2" />
            {deleting ? 'Eliminando...' : 'Eliminar Todas las Palabras'}
          </Button>

          <p className="text-xs text-center text-muted-foreground">
            Esta acción requiere permisos de administrador y será registrada en los logs de auditoría.
          </p>
        </CardContent>
      </Card>

      {/* Info Card */}
      <Card className="mt-8 border-2 border-blue-300 dark:border-blue-700 bg-blue-50 dark:bg-blue-900/20">
        <CardContent className="pt-6">
          <h3 className="font-semibold mb-2 flex items-center gap-2">
            💡 Alternativas más seguras
          </h3>
          <ul className="space-y-2 text-sm text-muted-foreground">
            <li>• <strong>Eliminar duplicados:</strong> Usa la función de gestión de duplicados</li>
            <li>• <strong>Eliminar palabras específicas:</strong> Usa la búsqueda y elimina individualmente</li>
            <li>• <strong>Exportar antes de eliminar:</strong> Descarga un backup desde el panel de base de datos</li>
          </ul>
        </CardContent>
      </Card>
    </div>
  );
}
