import { getSupabase } from '@/lib/db';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { BookOpen, Plus, ArrowLeft, Trash2 } from 'lucide-react';
import { redirect } from 'next/navigation';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import DictionaryList from './dictionary-list';

export const dynamic = 'force-dynamic';

async function getEntries() {
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('dictionary_entries')
    .select('id, bubi, spanish, ipa, notes')
    .order('bubi', { ascending: true })
    .limit(500);
  if (error) {
    console.error('Error fetching dictionary entries:', error);
    return [];
  }
  return data || [];
}

export default async function AdminDictionaryPage() {
  const session = await getServerSession(authOptions);
  
  // Solo admins pueden acceder
  if (!session?.isAdmin) {
    redirect('/admin/login?next=/admin/dictionary');
  }

  const rows = await getEntries();

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <Link href="/admin" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-4">
          <ArrowLeft className="w-4 h-4" />
          Volver al Panel
        </Link>
        <div className="flex flex-col md:flex-row md:items-center md:justify-between gap-4">
          <div className="flex items-center gap-3">
            <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
              <BookOpen className="w-8 h-8 text-white" />
            </div>
            <div>
              <h1 className="text-3xl md:text-4xl font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
                Gestionar Diccionario
              </h1>
              <p className="text-muted-foreground text-sm md:text-base">Administra todas las palabras</p>
            </div>
          </div>
          <div className="flex gap-2">
            <Button 
              asChild 
              size="default"
              variant="outline"
              className="border-orange-500 text-orange-600 hover:bg-orange-50 dark:hover:bg-orange-950"
            >
              <Link href="/admin/dictionary/duplicates" className="gap-2">
                <Trash2 className="w-4 h-4" />
                <span className="hidden sm:inline">Duplicados</span>
              </Link>
            </Button>
            <Button asChild size="default" className="bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700">
              <Link href="/admin/dictionary/edit/new" className="gap-2">
                <Plus className="w-4 h-4" />
                <span className="hidden sm:inline">Añadir</span>
              </Link>
            </Button>
          </div>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-2 md:grid-cols-4 gap-4 mb-8">
        <div className="glass-card border-2 p-4 md:p-6 rounded-xl">
          <p className="text-xs md:text-sm text-muted-foreground mb-1">Total Palabras</p>
          <p className="text-2xl md:text-3xl font-bold">{rows.length}</p>
        </div>
        <div className="glass-card border-2 p-4 md:p-6 rounded-xl">
          <p className="text-xs md:text-sm text-muted-foreground mb-1">Con IPA</p>
          <p className="text-2xl md:text-3xl font-bold">{rows.filter(r => r.ipa).length}</p>
        </div>
        <div className="glass-card border-2 p-4 md:p-6 rounded-xl">
          <p className="text-xs md:text-sm text-muted-foreground mb-1">Con Notas</p>
          <p className="text-2xl md:text-3xl font-bold">{rows.filter(r => r.notes).length}</p>
        </div>
        <div className="glass-card border-2 p-4 md:p-6 rounded-xl">
          <p className="text-xs md:text-sm text-muted-foreground mb-1">Completitud</p>
          <p className="text-2xl md:text-3xl font-bold">
            {rows.length > 0 ? Math.round((rows.filter(r => r.ipa && r.notes).length / rows.length) * 100) : 0}%
          </p>
        </div>
      </div>

      {/* Dictionary List with Search */}
      {rows.length === 0 ? (
        <div className="text-center py-20">
          <BookOpen className="w-16 h-16 text-muted-foreground mx-auto mb-4" />
          <p className="text-muted-foreground mb-4">No hay entradas todavía.</p>
          <Button asChild>
            <Link href="/admin/dictionary/edit/new">
              <Plus className="w-4 h-4 mr-2" />
              Añadir Primera Palabra
            </Link>
          </Button>
        </div>
      ) : (
        <DictionaryList entries={rows} />
      )}
    </div>
  );
}
