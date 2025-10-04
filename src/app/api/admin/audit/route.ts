import { NextResponse } from 'next/server';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { getRecentAudit } from '@/lib/audit-log';

export async function GET(req: Request) {
  const session = await getServerSession(authOptions);
  if (!(session as any)?.isAdmin) {
    return NextResponse.json({ error: 'Unauthorized' }, { status: 401 });
  }
  const { searchParams } = new URL(req.url);
  const limit = Math.min(200, Math.max(1, parseInt(searchParams.get('limit') || '50', 10)));
  const entries = getRecentAudit(limit);
  return NextResponse.json({ items: entries });
}
