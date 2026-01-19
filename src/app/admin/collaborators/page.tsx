import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { redirect } from 'next/navigation';
import { getSupabase } from '@/lib/db';
import CollaboratorsManagement from './collaborators-management';

export const dynamic = 'force-dynamic';

export default async function CollaboratorsPage() {
  const session = await getServerSession(authOptions);
  
  if (!session?.isAdmin) {
    redirect('/admin/login?next=/admin/collaborators');
  }

  const supabase = getSupabase();
  
  // Obtener todos los usuarios con permisos de colaborador
  const { data: collaborators, error } = await supabase
    .from('user_roles')
    .select('user_id, email, can_edit_dictionary, created_at')
    .eq('can_edit_dictionary', true)
    .order('created_at', { ascending: false });

  if (error) {
    console.error('Error fetching collaborators:', error);
  }

  return <CollaboratorsManagement initialCollaborators={collaborators || []} />;
}
