import { NextRequest, NextResponse } from 'next/server';

// Rutas que no requieren autenticación dentro de /admin
const ADMIN_PUBLIC = ['/admin/login'];

export function middleware(req: NextRequest) {
  const { pathname } = req.nextUrl;
  if (pathname.startsWith('/admin')) {
    const isPublic = ADMIN_PUBLIC.some(p => pathname === p || pathname.startsWith(p + '/'));
    if (isPublic) return NextResponse.next();
    const cookie = req.cookies.get('admin_session');
    if (!cookie) {
      const url = req.nextUrl.clone();
      url.pathname = '/admin/login';
      url.searchParams.set('next', pathname);
      return NextResponse.redirect(url);
    }
  }
  return NextResponse.next();
}

export const config = {
  matcher: ['/admin/:path*'],
};
