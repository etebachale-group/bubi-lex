import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import AuditLogViewer from '@/components/admin/audit-log-viewer';
import { redirect } from 'next/navigation';

export const metadata = { title: 'Audit Logs | BubiLex Admin' };

export default async function AuditLogsPage() {
  const session = await getServerSession(authOptions);
  if (!(session as any)?.isAdmin) {
    redirect('/admin/login');
  }
  return (
    <main className="p-6 space-y-6">
      <h1 className="text-2xl font-bold">Audit Logs</h1>
      <p className="text-sm text-muted-foreground">Historial reciente de acciones administrativas. Requiere ENABLE_AUDIT_LOG=true para registrar eventos.</p>
      <AuditLogViewer />
    </main>
  );
}
