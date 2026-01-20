import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { redirect } from 'next/navigation';
import GrammarManagement from './grammar-management';

export const dynamic = 'force-dynamic';

export default async function AdminGrammarPage() {
  const session = await getServerSession(authOptions);
  
  if (!(session as any)?.isAdmin) {
    redirect('/admin/login?next=/admin/grammar');
  }

  return (
    <div className="container mx-auto py-8 px-4 max-w-7xl">
      <div className="mb-8">
        <h1 className="text-3xl md:text-4xl font-bold mb-2 bg-gradient-to-r from-blue-600 to-purple-600 dark:from-blue-400 dark:to-purple-400 bg-clip-text text-transparent">
          Gestión de Gramática Bubi
        </h1>
        <p className="text-muted-foreground">
          Administra la información gramatical que la IA usará para aprender el idioma Bubi
        </p>
      </div>

      <GrammarManagement />
    </div>
  );
}
