import { cookies } from 'next/headers';
import { Button } from '@/components/ui/button';
import { revalidatePath } from 'next/cache';

async function logoutAction() {
  'use server';
  cookies().delete('admin_session');
  revalidatePath('/admin');
}

export default function AdminBadge() {
  const isAdmin = !!cookies().get('admin_session');
  if (!isAdmin) return null;
  return (
    <form action={logoutAction} className="flex items-center gap-2">
      <span className="text-xs px-2 py-1 rounded bg-primary/10 text-primary font-medium">Admin</span>
      <Button type="submit" variant="outline" size="sm">Salir</Button>
    </form>
  );
}
