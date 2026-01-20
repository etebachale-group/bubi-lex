import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import AuditLogViewer from '@/components/admin/audit-log-viewer';
import { redirect } from 'next/navigation';
import { Activity, ArrowLeft } from 'lucide-react';
import Link from 'next/link';
import { Button } from '@/components/ui/button';

export const metadata = { title: 'Audit Logs | BubiLex Admin' };
export const dynamic = 'force-dynamic';

export default async function AuditLogsPage() {
  const session = await getServerSession(authOptions);
  if (!(session as any)?.isAdmin) {
    redirect('/admin/login');
  }
  
  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <Link href="/admin" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-4">
          <ArrowLeft className="w-4 h-4" />
          Volver al Panel
        </Link>
        <div className="flex items-center gap-3">
          <div className="p-3 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500">
            <Activity className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-3xl md:text-4xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
              Logs de Auditoría
            </h1>
            <p className="text-muted-foreground text-sm md:text-base">
              Historial completo de acciones administrativas con actualización en tiempo real
            </p>
          </div>
        </div>
      </div>

      <AuditLogViewer />
    </div>
  );
}
