import { getSupabase } from '@/lib/db';
import Link from 'next/link';
import { Button } from '@/components/ui/button';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { revalidatePath } from 'next/cache';

export const dynamic = 'force-dynamic';

async function getEntries() {
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('dictionary_entries')
    .select('id, bubi, spanish, ipa')
    .order('bubi', { ascending: true })
    .limit(200);
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
    // Trigger revalidation of this admin page and public dictionary listing
    revalidatePath('/admin/dictionary');
    revalidatePath('/dictionary');
  }

  return (
    <div className="container mx-auto py-8">
      <div className="flex justify-between items-center mb-6">
        <h1 className="text-3xl font-bold">Gestionar Diccionario</h1>
        <Button asChild>
          <Link href="/admin/dictionary/edit/new">Añadir Palabra</Link>
        </Button>
      </div>
      {rows.length === 0 ? (
        <p className="text-muted-foreground">No hay entradas todavía.</p>
      ) : (
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {rows.map(r => (
            <Card key={r.id}>
              <CardHeader>
                <CardTitle className="font-headline flex items-baseline gap-2">
                  <span>{r.bubi}</span>
                  {r.ipa && <span className="text-sm font-normal text-muted-foreground">/{r.ipa}/</span>}
                </CardTitle>
              </CardHeader>
              <CardContent>
                <p className="mb-2 text-sm text-muted-foreground">{r.spanish}</p>
                <div className="flex gap-2">
                  <Button size="sm" variant="outline" asChild>
                    <Link href={`/admin/dictionary/edit/${r.id}`}>Editar</Link>
                  </Button>
                  <form action={deleteAction} onSubmit={(e) => { if(!confirm(`¿Eliminar "${r.bubi}"?`)) e.preventDefault(); }}>
                    <input type="hidden" name="id" value={r.id} />
                    <Button size="sm" variant="destructive" type="submit">Eliminar</Button>
                  </form>
                </div>
              </CardContent>
            </Card>
          ))}
        </div>
      )}
    </div>
  );
}
