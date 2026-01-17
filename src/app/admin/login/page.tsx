import { Card, CardHeader, CardTitle, CardContent, CardFooter } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { redirect } from 'next/navigation';
import Link from 'next/link';
import { Shield, Chrome } from 'lucide-react';
import Image from 'next/image';

export const dynamic = 'force-dynamic';

export default async function AdminLoginPage({ searchParams }: { searchParams: { next?: string; error?: string } }) {
  const session = await getServerSession(authOptions);
  const next = searchParams?.next || '/admin';
  if (session && (session as any).isAdmin) {
    redirect(next.startsWith('/admin') ? next : '/admin');
  }
  const notAuthorized = session && !(session as any).isAdmin;
  
  return (
    <div className="flex min-h-[80vh] items-center justify-center p-4 animate-fade-in">
      <div className="w-full max-w-md">
        {/* Logo and Title */}
        <div className="text-center mb-8">
          <div className="flex items-center justify-center gap-3 mb-4">
            <div className="p-4 rounded-2xl bg-gradient-to-br from-purple-500 to-pink-500">
              <Shield className="w-10 h-10 text-white" />
            </div>
          </div>
          <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent mb-2">
            Panel de Administración
          </h1>
          <p className="text-muted-foreground">
            Acceso exclusivo para administradores de BubiLex
          </p>
        </div>

        {/* Login Card */}
        <Card className="glass-card border-2 shadow-xl">
          <CardHeader className="text-center pb-4">
            <CardTitle className="text-2xl">Iniciar Sesión</CardTitle>
          </CardHeader>
          <CardContent className="space-y-6">
            {/* Error Message */}
            {notAuthorized && (
              <div className="p-4 rounded-lg bg-red-50 dark:bg-red-950/30 border-2 border-red-200 dark:border-red-800 animate-fade-in">
                <div className="flex items-start gap-3">
                  <Shield className="w-5 h-5 text-red-600 dark:text-red-400 mt-0.5 flex-shrink-0" />
                  <div>
                    <p className="font-semibold text-red-900 dark:text-red-100 mb-1">
                      Acceso Denegado
                    </p>
                    <p className="text-sm text-red-700 dark:text-red-300">
                      Tu correo no está autorizado para acceder al panel de administración.
                    </p>
                  </div>
                </div>
              </div>
            )}

            {/* Google Sign In Button */}
            <form action={`/api/auth/signin/google?callbackUrl=${encodeURIComponent(next)}`} method="POST">
              <Button 
                className="w-full h-12 text-base bg-white hover:bg-gray-50 text-gray-900 border-2 border-gray-300 shadow-sm" 
                type="submit"
              >
                <svg className="w-5 h-5 mr-3" viewBox="0 0 24 24">
                  <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                  <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                  <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                  <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
                </svg>
                Continuar con Google
              </Button>
            </form>

            {/* Info */}
            <div className="space-y-3 pt-4 border-t">
              <div className="flex items-start gap-3 text-sm text-muted-foreground">
                <Shield className="w-4 h-4 mt-0.5 flex-shrink-0" />
                <p>Solo cuentas de Google autorizadas pueden acceder</p>
              </div>
              <div className="flex items-start gap-3 text-sm text-muted-foreground">
                <Chrome className="w-4 h-4 mt-0.5 flex-shrink-0" />
                <p>Usa tu cuenta de Google corporativa o personal autorizada</p>
              </div>
            </div>

            {/* Already logged in */}
            {session && !notAuthorized && (
              <div className="p-4 rounded-lg bg-blue-50 dark:bg-blue-950/30 border-2 border-blue-200 dark:border-blue-800">
                <p className="text-sm text-blue-900 dark:text-blue-100">
                  Ya iniciaste sesión. <Link href="/admin" className="underline font-semibold">Ir al panel</Link>
                </p>
              </div>
            )}
          </CardContent>
          <CardFooter className="flex-col gap-2 text-center text-xs text-muted-foreground border-t pt-6">
            <p>¿Necesitas acceso? Contacta al administrador del sitio</p>
            <Link href="/" className="text-purple-600 dark:text-purple-400 hover:underline">
              ← Volver al inicio
            </Link>
          </CardFooter>
        </Card>

        {/* Security Note */}
        <div className="mt-6 text-center text-xs text-muted-foreground">
          <p>🔒 Conexión segura • Protegido por NextAuth</p>
        </div>
      </div>
    </div>
  );
}
