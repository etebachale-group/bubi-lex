import { getSupabase } from '@/lib/db';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { Card, CardContent } from '@/components/ui/card';
import { revalidatePath } from 'next/cache';
import { BookOpen, Plus, ArrowLeft, Edit, Trash2, Search } from 'lucide-react';
import { Input } from '@/components/ui/input';

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
  const rows = await getEntries();

  async function deleteAction(formData: FormData) {
    'use server';
    const id = formData.get('id');
    if (!id) return;
    const supabase = getSupabase();
    await supabase.from('dictionary_entries').delete().eq('id', Number(id));
    revalidatePath('/admin/dictionary');
    revalidatePath('/dictionary');
  }

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <Link href="/admin" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-4">
          <ArrowLeft className="w-4 h-4" />
          Volver al Panel
        </Link>
        <div className="flex items-center justify-between">
          <div className="flex items-center gap-3">
            <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
              <BookOpen className="w-8 h-8 text-white" />
            </div>
            <div>
              <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
                Gestionar Diccionario
              </h1>
              <p className="text-muted-foreground">Administra todas las palabras</p>
            </div>
          </div>
          <Button asChild size="lg" className="bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700">
            <Link href="/admin/dictionary/edit/new" className="gap-2">
              <Plus className="w-5 h-5" />
              Añadir Palabra
            </Link>
          </Button>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-8">
        <div className="glass-card border-2 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Total Palabras</p>
          <p className="text-3xl font-bold">{rows.length}</p>
        </div>
        <div className="glass-card border-2 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Con IPA</p>
          <p className="text-3xl font-bold">{rows.filter(r => r.ipa).length}</p>
        </div>
        <div className="glass-card border-2 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Con Notas</p>
          <p className="text-3xl font-bold">{rows.filter(r => r.notes).length}</p>
        </div>
        <div className="glass-card border-2 p-6 rounded-xl">
          <p className="text-sm text-muted-foreground mb-1">Completitud</p>
          <p className="text-3xl font-bold">
            {Math.round((rows.filter(r => r.ipa && r.notes).length / rows.length) * 100)}%
          </p>
        </div>
      </div>

      {/* Search */}
      <div className="mb-6">
        <div className="relative max-w-md">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 w-5 h-5 text-muted-foreground" />
          <Input
            placeholder="Buscar palabra..."
            className="pl-10"
            id="search-input"
          />
        </div>
      </div>

      {/* Dictionary Grid */}
      {rows.length === 0 ? (
        <div className="text-center py-20">
          <BookOpen className="w-16 h-16 text-muted-foreground mx-auto mb-4" />
          <p className="text-muted-foreground">No hay entradas todavía.</p>
        </div>
      ) : (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3" id="dictionary-grid">
          {rows.map((r, index) => (
            <Card 
              key={r.id} 
              className="glass-card border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all hover:scale-105 group dictionary-entry"
              data-bubi={r.bubi.toLowerCase()}
              data-spanish={r.spanish.toLowerCase()}
              style={{ animationDelay: `${index * 30}ms` }}
            >
              <CardContent className="pt-6">
                <div className="mb-4">
                  <h3 className="text-2xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent mb-1">
                    {r.bubi}
                  </h3>
                  {r.ipa && (
                    <p className="text-sm text-muted-foreground font-mono">/{r.ipa}/</p>
                  )}
                </div>
                <div className="mb-4 p-3 rounded-lg bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 border border-purple-200 dark:border-purple-800">
                  <p className="text-sm font-semibold text-purple-900 dark:text-purple-100">
                    {r.spanish}
                  </p>
                </div>
                {r.notes && (
                  <p className="text-xs text-muted-foreground mb-4 line-clamp-2">{r.notes}</p>
                )}
                <div className="flex gap-2">
                  <Button size="sm" variant="outline" asChild className="flex-1 group-hover:border-blue-400">
                    <Link href={`/admin/dictionary/edit/${r.id}`} className="gap-2">
                      <Edit className="w-4 h-4" />
                      Editar
                    </Link>
                  </Button>
                  <form action={deleteAction} onSubmit={(e) => { if(!confirm(`¿Eliminar "${r.bubi}"?`)) e.preventDefault(); }}>
                    <input type="hidden" name="id" value={r.id} />
                    <Button size="sm" variant="destructive" type="submit" className="gap-2">
                      <Trash2 className="w-4 h-4" />
                    </Button>
                  </form>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      )}

      {/* Client-side search script */}
      <script dangerouslySetInnerHTML={{__html: `
        document.addEventListener('DOMContentLoaded', function() {
          const searchInput = document.getElementById('search-input');
          const entries = document.querySelectorAll('.dictionary-entry');
          
          if (searchInput) {
            searchInput.addEventListener('input', function(e) {
              const query = e.target.value.toLowerCase();
              entries.forEach(entry => {
                const bubi = entry.dataset.bubi || '';
                const spanish = entry.dataset.spanish || '';
                if (bubi.includes(query) || spanish.includes(query)) {
                  entry.style.display = '';
                } else {
                  entry.style.display = 'none';
                }
              });
            });
          }
        });
      `}} />
    </div>
  );
}
