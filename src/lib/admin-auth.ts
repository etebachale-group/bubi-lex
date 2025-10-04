import { cookies } from 'next/headers';

export function isAdmin(): boolean {
  const c = cookies().get('admin_session');
  return !!c && c.value === '1';
}

export function requireAdmin() {
  if (!isAdmin()) {
    const err: any = new Error('Admin authentication required');
    err.status = 401;
    throw err;
  }
}
