import Link from 'next/link';
import { Card, CardHeader, CardTitle, CardContent, CardDescription } from '@/components/ui/card';
import { 
  BookOpen, 
  Newspaper, 
  Users, 
  BarChart3, 
  Settings, 
  FileText,
  Sparkles,
  Shield,
  Database,
  TrendingUp
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
  
  const adminSections = [
    {
      title: 'Diccionario',
      description: 'Gestionar palabras y traducciones',
      href: '/admin/dictionary',
      icon: BookOpen,
      color: 'from-blue-500 to-cyan-500',
      stats: 'Gestión completa'
    },
    {
      title: 'Noticias',
      description: 'Crear y editar noticias y relatos',
      href: '/admin/news',
      icon: Newspaper,
      color: 'from-purple-500 to-pink-500',
      stats: 'Publicaciones'
    },
    {
      title: 'Colaboradores',
      description: 'Gestionar usuarios colaboradores',
      href: '/admin/collaborators',
      icon: Users,
      color: 'from-green-500 to-emerald-500',
      stats: 'Permisos'
    },
    {
      title: 'Funcionalidades IA',
      description: 'Configurar y monitorear IA',
      href: '/ai-features',
      icon: Sparkles,
      color: 'from-orange-500 to-red-500',
      stats: 'Groq activo'
    },
    {
      title: 'Logs de Auditoría',
      description: 'Ver historial de cambios',
      href: '/admin/audit',
      icon: Shield,
      color: 'from-green-500 to-emerald-500',
      stats: 'Seguridad'
    },
    {
      title: 'Estadísticas',
      description: 'Métricas y análisis del sitio',
      href: '/admin/stats',
      icon: BarChart3,
      color: 'from-indigo-500 to-purple-500',
      stats: 'Próximamente'
    },
    {
      title: 'Base de Datos',
      description: 'Gestión de datos y backups',
      href: '/admin/database',
      icon: Database,
      color: 'from-teal-500 to-cyan-500',
      stats: 'Próximamente'
    }
  ];

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center gap-3 mb-2">
          <div className="p-3 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500">
            <Settings className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
              Panel de Administración
            </h1>
            <p className="text-muted-foreground">Gestiona todos los aspectos de BubiLex</p>
          </div>
        </div>
        <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-purple-100 dark:bg-purple-900/30 text-purple-700 dark:text-purple-300 text-sm font-medium">
          <Shield className="w-4 h-4" />
          Administrador
        </div>
      </div>

      {/* Quick Stats */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-8">
        <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Total Palabras</p>
                <p className="text-2xl font-bold">{wordsCount || 0}</p>
              </div>
              <BookOpen className="w-8 h-8 text-blue-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Noticias</p>
                <p className="text-2xl font-bold">{newsCount || 0}</p>
              </div>
              <Newspaper className="w-8 h-8 text-purple-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Visitas Hoy</p>
                <p className="text-2xl font-bold">-</p>
              </div>
              <TrendingUp className="w-8 h-8 text-green-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">IA Requests</p>
                <p className="text-2xl font-bold">-</p>
              </div>
              <Sparkles className="w-8 h-8 text-orange-500" />
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Admin Sections */}
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        {adminSections.map((section, index) => {
          const Icon = section.icon;
          return (
            <Link 
              key={section.href} 
              href={section.href}
              className="group"
              style={{ animationDelay: `${index * 100}ms` }}
            >
              <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all hover:scale-105 hover:shadow-xl h-full">
                <CardHeader>
                  <div className="flex items-start justify-between mb-2">
                    <div className={`p-3 rounded-xl bg-gradient-to-br ${section.color} group-hover:scale-110 transition-transform`}>
                      <Icon className="w-6 h-6 text-white" />
                    </div>
                    <span className="text-xs px-2 py-1 rounded-full bg-purple-100 dark:bg-purple-900/30 text-purple-600 dark:text-purple-400">
                      {section.stats}
                    </span>
                  </div>
                  <CardTitle className="text-xl group-hover:text-purple-600 dark:group-hover:text-purple-400 transition-colors">
                    {section.title}
                  </CardTitle>
                  <CardDescription className="text-sm">
                    {section.description}
                  </CardDescription>
                </CardHeader>
                <CardContent>
                  <div className="flex items-center text-sm text-purple-600 dark:text-purple-400 font-medium">
                    Acceder
                    <svg className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                    </svg>
                  </div>
                </CardContent>
              </Card>
            </Link>
          );
        })}
      </div>

      {/* Quick Actions */}
      <div className="mt-8">
        <h2 className="text-2xl font-headline font-bold mb-4">Acciones Rápidas</h2>
        <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
          <Link href="/admin/dictionary">
            <Card className="glass-card border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all hover:scale-105">
              <CardContent className="pt-6">
                <div className="flex items-center gap-4">
                  <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
                    <BookOpen className="w-6 h-6 text-white" />
                  </div>
                  <div>
                    <p className="font-semibold">Agregar Palabra</p>
                    <p className="text-sm text-muted-foreground">Nueva entrada al diccionario</p>
                  </div>
                </div>
              </CardContent>
            </Card>
          </Link>
          <Link href="/admin/news">
            <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all hover:scale-105">
              <CardContent className="pt-6">
                <div className="flex items-center gap-4">
                  <div className="p-3 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500">
                    <Newspaper className="w-6 h-6 text-white" />
                  </div>
                  <div>
                    <p className="font-semibold">Publicar Noticia</p>
                    <p className="text-sm text-muted-foreground">Crear nueva publicación</p>
                  </div>
                </div>
              </CardContent>
            </Card>
          </Link>
        </div>
      </div>
    </div>
  );
}