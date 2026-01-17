export const dynamic = 'force-dynamic';

import { NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { getAuditFromDB } from '@/lib/audit-log';

export async function GET(req: Request) {
  try {
    const session = await getServerSession(authOptions);
    if (!session?.isAdmin) {
      return NextResponse.json({ error: 'No autorizado' }, { status: 401 });
    }
    
    const { searchParams } = new URL(req.url);
    const limit = Math.min(200, Math.max(1, parseInt(searchParams.get('limit') || '50', 10)));
    
    const entries = await getAuditFromDB(limit);
    return NextResponse.json({ items: entries });
  } catch (err) {
    console.error('Error en GET /api/admin/audit:', err);
    return NextResponse.json({ error: 'Error interno del servidor' }, { status: 500 });
  }
}

