import { getSupabase } from '@/lib/db';
import DictionaryEntryForm from '../../dictionary-entry-form';

export const dynamic = 'force-dynamic';

async function getEntry(id: string) {
  if (id === 'new') return null;
  const idNum = Number(id);
  if (!Number.isFinite(idNum)) return null;
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('dictionary_entries')
    .select('id, bubi, spanish, ipa, notes')
    .eq('id', idNum)
    .single();
  if (error) {
    console.error('Error fetching dictionary entry:', error);
    return null;
  }
  return data;
}

export default async function EditDictionaryEntryPage({ 
  params 
}: { 
  params: Promise<{ id: string }> 
}) {
  const resolvedParams = await params;
  const entry = await getEntry(resolvedParams.id);
  const mode = resolvedParams.id === 'new' ? 'create' : 'edit';
  
  return (
    <div className="container mx-auto py-8 px-4">
      <h1 className="text-3xl font-bold mb-6">
        {mode === 'create' ? 'Añadir Palabra' : 'Editar Palabra'}
      </h1>
      <DictionaryEntryForm
        mode={mode}
        id={entry?.id}
        initial={entry ? { 
          bubi: entry.bubi, 
          spanish: entry.spanish, 
          ipa: entry.ipa, 
          notes: entry.notes 
        } : null}
        onSaved={(savedId) => {
          // Redirect handled in form
        }}
      />
    </div>
  );
}
