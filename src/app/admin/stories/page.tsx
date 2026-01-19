import { getSupabase } from '@/lib/db';
import { redirect } from 'next/navigation';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { BookText, ArrowLeft } from 'lucide-react';
import StoriesModeration from './stories-moderation';

export const dynamic = 'force-dynamic';

async function getStories() {
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('stories')
    .select('*')
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching stories:', error);
    return [];
  }
  return data || [];
}

export default async function AdminStoriesPage() {
  const session = await getServerSession(authOptions);
  
  if (!session?.isAdmin) {
    redirect('/admin/login?next=/admin/stories');
  }

  const stories = await getStories();
  
  const pending = stories.filter(s => !s.is_approved && !s.is_rejected);
  const approved = stories.filter(s => s.is_approved);
  const rejected = stories.filter(s => s.is_rejected);

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      <div className="mb-8">
        <Link href="/admin" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-4">
          <ArrowLeft className="w-4 h-4" />
          Volver al Panel
        </Link>
        <div className="flex items-center gap-3">
          <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
            <BookText className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-3xl md:text-4xl font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
              Moderar Relatos
            </h1>
            <p className="text-muted-foreground text-sm md:text-base">Aprobar o rechazar relatos de usuarios</p>
          </div>
        </div>
      </div>

      <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
        <div className="glass-card border-2 border-yellow-200 dark:border-yellow-800 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Pendientes</p>
          <p className="text-3xl font-bold text-yellow-600 dark:text-yellow-400">{pending.length}</p>
        </div>
        <div className="glass-card border-2 border-green-200 dark:border-green-800 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Aprobados</p>
          <p className="text-3xl font-bold text-green-600 dark:text-green-400">{approved.length}</p>
        </div>
        <div className="glass-card border-2 border-red-200 dark:border-red-800 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Rechazados</p>
          <p className="text-3xl font-bold text-red-600 dark:text-red-400">{rejected.length}</p>
        </div>
      </div>

      <StoriesModeration initialStories={stories} />
    </div>
  );
}
