import { Card, CardHeader, CardTitle, CardContent, CardFooter } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { redirect } from 'next/navigation';
import Link from 'next/link';

export const dynamic = 'force-dynamic';

export default async function AdminLoginPage({ searchParams }: { searchParams: { next?: string; error?: string } }) {
  const session = await getServerSession(authOptions);
  const next = searchParams?.next || '/admin';
  if (session && (session as any).isAdmin) {
    redirect(next.startsWith('/admin') ? next : '/admin');
  }
  const notAuthorized = session && !(session as any).isAdmin;
  return (
    <div className="flex min-h-[60vh] items-center justify-center p-4">
      <Card className="w-full max-w-sm">
        <CardHeader>
          <CardTitle>Acceso Administrador</CardTitle>
        </CardHeader>
        <CardContent className="space-y-4">
          {notAuthorized && (
            <div className="text-sm text-red-600 bg-red-50 p-2 rounded">Tu correo no está autorizado.</div>
          )}
          <form action={`/api/auth/signin/google?callbackUrl=${encodeURIComponent(next)}`} method="POST" className="space-y-2">
            <Button className="w-full" type="submit" variant="default">Entrar con Google</Button>
          </form>
          <p className="text-xs text-muted-foreground">Debes iniciar sesión con un correo autorizado.</p>
          <p className="text-xs text-muted-foreground">¿Problemas? Contacta al administrador del sitio.</p>
          {session && !notAuthorized && (
            <p className="text-xs">Ya iniciaste sesión. <Link href="/admin" className="underline">Ir al panel</Link></p>
          )}
        </CardContent>
        <CardFooter className="justify-center text-xs text-muted-foreground">BubiLex Admin</CardFooter>
      </Card>
    </div>
  );
}
