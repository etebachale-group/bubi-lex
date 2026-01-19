import Link from 'next/link';
import { Card, CardContent } from '@/components/ui/card';
import { 
  BookOpen, 
  Newspaper, 
  Shield,
  Sparkles,
  ArrowRight,
  BookText
} from 'lucide-react';
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { redirect } from 'next/navigation';
import { getSupabase } from '@/lib/db';

export const dynamic = 'force-dynamic';

export default async function AdminPage() {
  const session = await getServerSession(authOptions);
  
  // Solo admins pueden acceder
  if (!session?.isAdmin) {
    // Si es colaborador, redirigir a su panel
    if (session?.canEditDictionary) {
      redirect('/collaborator');
    }
    // Si no está autenticado o es usuario normal
    redirect('/admin/login?next=/admin');
  }

  // Obtener estadísticas reales
  const supabase = getSupabase();
  const [
    { count: wordsCount },
    { count: newsCount }
  ] = await Promise.all([
    supabase.from('dictionary_entries').select('*', { count: 'exact', head: true }),
    supabase.from('news').select('*', { count: 'exact', head: true })
  ]);
  
  // Obtener estadísticas de relatos
  const { count: storiesCount } = await supabase
    .from('stories')
    .select('*', { count: 'exact', head: true })
    .eq('is_approved', false)
    .eq('is_rejected', false);

  const adminSections = [
    {
      title: 'Diccionario',
      description: 'Gestionar palabras y traducciones',
      href: '/admin/dictionary',
      icon: BookOpen,
      color: 'from-blue-500 to-cyan-500',
      count: wordsCount || 0
    },
    {
      title: 'Noticias',
      description: 'Crear y editar noticias',
      href: '/admin/news',
      icon: Newspaper,
      color: 'from-purple-500 to-pink-500',
      count: newsCount || 0
    },
    {
      title: 'Relatos',
      description: 'Moderar relatos de usuarios',
      href: '/admin/stories',
      icon: BookText,
      color: 'from-blue-500 to-indigo-500',
      count: storiesCount || 0,
      badge: storiesCount && storiesCount > 0 ? `${storiesCount} pendientes` : null
    },
    {
      title: 'Logs de Auditoría',
      description: 'Ver historial de cambios',
      href: '/admin/audit',
      icon: Shield,
      color: 'from-green-500 to-emerald-500',
      count: null
    },
    {
      title: 'Funcionalidades IA',
      description: 'Probar características de IA',
      href: '/ai-features',
      icon: Sparkles,
      color: 'from-orange-500 to-red-500',
      count: null
    }
  ];

  return (
    <div className="container mx-auto py-8 px-4 max-w-6xl">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center gap-3 mb-4">
          <div className="p-3 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500">
            <Shield className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-3xl md:text-4xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
              Panel de Administración
            </h1>
            <p className="text-muted-foreground text-sm md:text-base">
              Bienvenido, {session.user?.name || session.user?.email}
            </p>
          </div>
        </div>
      </div>

      {/* Stats Cards */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-4 mb-8">
        <Card className="border-2 border-blue-200 dark:border-blue-800">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground mb-1">Palabras en el Diccionario</p>
                <p className="text-3xl font-bold text-blue-600 dark:text-blue-400">{wordsCount || 0}</p>
              </div>
              <BookOpen className="w-12 h-12 text-blue-500 opacity-50" />
            </div>
          </CardContent>
        </Card>
        
        <Card className="border-2 border-purple-200 dark:border-purple-800">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground mb-1">Noticias Publicadas</p>
                <p className="text-3xl font-bold text-purple-600 dark:text-purple-400">{newsCount || 0}</p>
              </div>
              <Newspaper className="w-12 h-12 text-purple-500 opacity-50" />
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Main Actions */}
      <div className="space-y-4">
        <h2 className="text-xl font-bold mb-4">Gestión de Contenido</h2>
        
        {adminSections.map((section) => {
          const Icon = section.icon;
          return (
            <Link key={section.href} href={section.href}>
              <Card className="border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all hover:shadow-lg">
                <CardContent className="p-6">
                  <div className="flex items-center justify-between">
                    <div className="flex items-center gap-4">
                      <div className={`p-3 rounded-xl bg-gradient-to-br ${section.color}`}>
                        <Icon className="w-6 h-6 text-white" />
                      </div>
                      <div>
                        <h3 className="font-semibold text-lg mb-1">{section.title}</h3>
                        <p className="text-sm text-muted-foreground">{section.description}</p>
                        {section.count !== null && (
                          <p className="text-xs text-muted-foreground mt-1">
                            {section.count} {section.count === 1 ? 'entrada' : 'entradas'}
                          </p>
                        )}
                        {section.badge && (
                          <span className="inline-block mt-2 px-2 py-1 bg-yellow-100 dark:bg-yellow-900 text-yellow-800 dark:text-yellow-200 text-xs font-semibold rounded">
                            {section.badge}
                          </span>
                        )}
                      </div>
                    </div>
                    <ArrowRight className="w-6 h-6 text-muted-foreground" />
                  </div>
                </CardContent>
              </Card>
            </Link>
          );
        })}
      </div>

      {/* Info */}
      <Card className="mt-8 border-2 border-green-200 dark:border-green-800 bg-green-50 dark:bg-green-900/20">
        <CardContent className="pt-6">
          <div className="flex items-start gap-3">
            <Shield className="w-5 h-5 text-green-600 dark:text-green-400 mt-0.5" />
            <div>
              <p className="font-semibold text-green-900 dark:text-green-100 mb-1">
                Acceso de Administrador
              </p>
              <p className="text-sm text-green-800 dark:text-green-200">
                Tienes permisos completos para gestionar todo el contenido de BubiLex.
              </p>
            </div>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}