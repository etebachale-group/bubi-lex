import { cookies } from 'next/headers';
import { redirect } from 'next/navigation';
import { revalidatePath } from 'next/cache';
import { Card, CardHeader, CardTitle, CardContent, CardFooter } from '@/components/ui/card';
import { Input } from '@/components/ui/input';
import { Button } from '@/components/ui/button';

export const dynamic = 'force-dynamic';

async function loginAction(formData: FormData) {
  'use server';
  const pass = formData.get('password');
  const next = formData.get('next') as string | null;
  if (!pass || typeof pass !== 'string') return;
  const expected = process.env.ADMIN_PASSWORD;
  if (!expected) throw new Error('ADMIN_PASSWORD no está configurada en el entorno.');
  if (pass === expected) {
    cookies().set({
      name: 'admin_session',
      value: '1',
      httpOnly: true,
      path: '/',
      maxAge: 60 * 60 * 6, // 6 horas
      sameSite: 'lax',
      secure: process.env.NODE_ENV === 'production',
    });
    revalidatePath('/admin');
    redirect(next && next.startsWith('/admin') ? next : '/admin');
  }
  // Si falla, simplemente se recarga manteniendo el campo limpio
}

export default function AdminLoginPage({ searchParams }: { searchParams: { next?: string } }) {
  const next = searchParams?.next || '/admin';
  return (
    <div className="flex min-h-[60vh] items-center justify-center p-4">
      <Card className="w-full max-w-sm">
        <CardHeader>
          <CardTitle>Acceso Administrador</CardTitle>
        </CardHeader>
        <CardContent>
          <form action={loginAction} className="space-y-4">
            <input type="hidden" name="next" value={next} />
            <div className="space-y-2">
              <label htmlFor="password" className="text-sm font-medium">Contraseña</label>
              <Input id="password" name="password" type="password" required autoComplete="current-password" />
            </div>
            <Button type="submit" className="w-full">Entrar</Button>
          </form>
          <p className="text-xs text-muted-foreground mt-4">Si olvidaste la contraseña, actualiza ADMIN_PASSWORD en el entorno.</p>
        </CardContent>
        <CardFooter className="justify-center text-xs text-muted-foreground">
          BubiLex Admin
        </CardFooter>
      </Card>
    </div>
  );
}
