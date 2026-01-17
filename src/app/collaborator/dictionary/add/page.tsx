import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { redirect } from 'next/navigation';
import Link from 'next/link';
import { ArrowLeft } from 'lucide-react';
import DictionaryEntryForm from '@/components/dictionary-entry-form';

export const dynamic = 'force-dynamic';

export default async function AddWordPage() {
  const session = await getServerSession(authOptions);
  
  if (!session?.canEditDictionary) {
    redirect('/admin/login?next=/collaborator/dictionary/add');
  }
  
  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      <Link href="/collaborator" className="inline-flex items-center gap-2 text-sm text-muted-foreground hover:text-foreground mb-6">
        <ArrowLeft className="w-4 h-4" />
        Volver al Panel
      </Link>
      
      <div className="max-w-2xl mx-auto">
        <div className="mb-8">
          <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent mb-2">
            Agregar Nueva Palabra
          </h1>
          <p className="text-muted-foreground">
            Completa el formulario para añadir una nueva palabra al diccionario
          </p>
        </div>
        
        <DictionaryEntryForm mode="create" redirectTo="/collaborator" />
      </div>
    </div>
  );
}
