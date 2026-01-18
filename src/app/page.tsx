import WordOfTheDay from "@/components/word-of-the-day";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import Link from "next/link";
import { Button } from "@/components/ui/button";
import { ArrowRight, BookOpen, Newspaper, Sparkles, Brain, Target, Trophy } from "lucide-react";
import StructuredData from "@/components/seo/structured-data";
import { getSupabase } from '@/lib/db';

export const dynamic = 'force-dynamic';

async function getRecentNews() {
  const supabase = getSupabase();
  const { data, error } = await supabase
    .from('news')
    .select('id, title, date')
    .order('date', { ascending: false })
    .limit(3);

  if (error) {
    console.error('Error fetching recent news:', error);
    return [];
  }
  return data;
}

const DashboardPage = async () => {
  const recentNews = await getRecentNews();

  return (
    <div className="flex flex-col gap-8 animate-fade-in">
      <StructuredData data={{
        '@context': 'https://schema.org',
        '@type': 'WebSite',
        name: 'BubiLex',
        url: process.env.NEXT_PUBLIC_SITE_URL ?? 'http://localhost:3000',
        potentialAction: {
          '@type': 'SearchAction',
          target: `${process.env.NEXT_PUBLIC_SITE_URL ?? 'http://localhost:3000'}/dictionary?q={search_term_string}`,
          'query-input': 'required name=search_term_string',
        },
      }} />
      
      {/* Hero Section */}
      <div className="relative overflow-hidden rounded-2xl bg-gradient-to-br from-purple-600 via-pink-600 to-blue-600 p-8 md:p-12 text-white shadow-2xl">
        <div className="absolute inset-0 bg-black/10"></div>
        <div className="relative z-10">
          <div className="flex items-center gap-2 mb-4">
            <Sparkles className="w-6 h-6 animate-pulse" />
            <span className="text-sm font-semibold uppercase tracking-wider">Bienvenido a</span>
          </div>
          <h1 className="text-4xl md:text-6xl font-bold font-headline mb-4">
            BubiLex
          </h1>
          <p className="text-lg md:text-xl text-white/90 max-w-2xl mb-6">
            Explora el diccionario Bubi-Español y sumérgete en la riqueza cultural del pueblo Bubi
          </p>
          <div className="flex flex-wrap gap-4">
            <Button asChild size="lg" className="bg-white text-purple-600 hover:bg-white/90">
              <Link href="/dictionary">
                <BookOpen className="w-5 h-5 mr-2" />
                Explorar Diccionario
              </Link>
            </Button>
            <Button asChild size="lg" variant="outline" className="border-white text-white hover:bg-white/10">
              <Link href="/news">
                <Newspaper className="w-5 h-5 mr-2" />
                Ver Noticias
              </Link>
            </Button>
          </div>
        </div>
        <div className="absolute -right-20 -bottom-20 w-64 h-64 bg-white/10 rounded-full blur-3xl"></div>
        <div className="absolute -left-20 -top-20 w-64 h-64 bg-white/10 rounded-full blur-3xl"></div>
      </div>

      {/* Sistema de Aprendizaje Destacado */}
      <Link href="/ai-features" className="block group">
        <Card className="relative overflow-hidden border-2 border-purple-200 dark:border-purple-800 hover:border-purple-400 dark:hover:border-purple-600 transition-all hover:shadow-2xl hover:scale-[1.02]">
          <div className="absolute inset-0 bg-gradient-to-br from-purple-600/10 via-pink-600/10 to-blue-600/10 opacity-0 group-hover:opacity-100 transition-opacity"></div>
          <CardHeader className="relative z-10">
            <div className="flex items-center justify-between mb-2">
              <div className="flex items-center gap-2">
                <div className="p-2 rounded-lg bg-gradient-to-br from-purple-600 to-pink-600">
                  <Brain className="w-6 h-6 text-white" />
                </div>
                <CardTitle className="text-2xl">Sistema de Aprendizaje con IA</CardTitle>
              </div>
              <span className="px-3 py-1 bg-gradient-to-r from-purple-600 to-pink-600 text-white text-xs font-bold rounded-full animate-pulse">
                NUEVO
              </span>
            </div>
            <CardDescription className="text-base">
              Aprende Bubi de forma interactiva con sesiones personalizadas, quiz y ejemplos generados por IA
            </CardDescription>
          </CardHeader>
          <CardContent className="relative z-10">
            <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
              <div className="text-center p-3 bg-purple-50 dark:bg-purple-950/30 rounded-lg">
                <BookOpen className="w-6 h-6 mx-auto mb-2 text-purple-600 dark:text-purple-400" />
                <div className="text-sm font-semibold">Sesiones</div>
                <div className="text-xs text-muted-foreground">Personalizadas</div>
              </div>
              <div className="text-center p-3 bg-blue-50 dark:bg-blue-950/30 rounded-lg">
                <Target className="w-6 h-6 mx-auto mb-2 text-blue-600 dark:text-blue-400" />
                <div className="text-sm font-semibold">Quiz</div>
                <div className="text-xs text-muted-foreground">Interactivos</div>
              </div>
              <div className="text-center p-3 bg-pink-50 dark:bg-pink-950/30 rounded-lg">
                <Sparkles className="w-6 h-6 mx-auto mb-2 text-pink-600 dark:text-pink-400" />
                <div className="text-sm font-semibold">Ejemplos</div>
                <div className="text-xs text-muted-foreground">Con contexto</div>
              </div>
              <div className="text-center p-3 bg-orange-50 dark:bg-orange-950/30 rounded-lg">
                <Trophy className="w-6 h-6 mx-auto mb-2 text-orange-600 dark:text-orange-400" />
                <div className="text-sm font-semibold">Progreso</div>
                <div className="text-xs text-muted-foreground">Seguimiento</div>
              </div>
            </div>
            <div className="mt-4 flex items-center justify-center gap-2 text-purple-600 dark:text-purple-400 font-semibold group-hover:gap-3 transition-all">
              <span>Comenzar a aprender</span>
              <ArrowRight className="w-5 h-5 group-hover:translate-x-1 transition-transform" />
            </div>
          </CardContent>
        </Card>
      </Link>

      <div className="grid gap-8 md:grid-cols-3">
        <div className="md:col-span-2 animate-fade-in-up">
          <Card className="border-2">
            <CardHeader>
              <div className="flex items-center gap-2">
                <Newspaper className="w-6 h-6 text-primary" />
                <CardTitle className="text-2xl">Noticias Recientes</CardTitle>
              </div>
            </CardHeader>
            <CardContent className="space-y-4">
              {recentNews.length > 0 ? (
                recentNews.map((item, index) => (
                  <div 
                    key={item.id} 
                    className="flex justify-between items-center p-4 rounded-lg bg-gradient-to-r from-purple-50 to-pink-50 dark:from-purple-950/20 dark:to-pink-950/20 hover:shadow-md transition-all duration-300"
                    style={{ animationDelay: `${index * 100}ms` }}
                  >
                    <div className="flex-1">
                      <Link href={`/news#${item.id}`} className="font-semibold text-lg hover:text-primary transition-colors">
                        {item.title}
                      </Link>
                      <p className="text-sm text-muted-foreground mt-1">
                        {new Date(item.date).toLocaleDateString('es-ES', { month: 'long', day: 'numeric', year: 'numeric' })}
                      </p>
                    </div>
                    <Button variant="ghost" size="sm" asChild className="ml-4">
                      <Link href={`/news#${item.id}`}>
                        <ArrowRight className="w-4 h-4" />
                      </Link>
                    </Button>
                  </div>
                ))
              ) : (
                <div className="text-center py-8 text-muted-foreground">
                  <Newspaper className="w-12 h-12 mx-auto mb-3 opacity-50" />
                  <p>No hay noticias recientes.</p>
                </div>
              )}
            </CardContent>
          </Card>
        </div>

        <div className="md:col-span-1 animate-fade-in-up" style={{ animationDelay: '200ms' }}>
          <WordOfTheDay />
        </div>
      </div>

      {/* Stats Section */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-6 animate-fade-in-up" style={{ animationDelay: '300ms' }}>
        <Card className="text-center p-6 bg-gradient-to-br from-purple-50 to-purple-100 dark:from-purple-950/30 dark:to-purple-900/30 border-purple-200 dark:border-purple-800">
          <BookOpen className="w-12 h-12 mx-auto mb-3 text-purple-600 dark:text-purple-400" />
          <h3 className="text-3xl font-bold text-purple-600 dark:text-purple-400 mb-1">1000+</h3>
          <p className="text-sm text-muted-foreground">Palabras en el diccionario</p>
        </Card>
        <Card className="text-center p-6 bg-gradient-to-br from-pink-50 to-pink-100 dark:from-pink-950/30 dark:to-pink-900/30 border-pink-200 dark:border-pink-800">
          <Newspaper className="w-12 h-12 mx-auto mb-3 text-pink-600 dark:text-pink-400" />
          <h3 className="text-3xl font-bold text-pink-600 dark:text-pink-400 mb-1">50+</h3>
          <p className="text-sm text-muted-foreground">Noticias y relatos</p>
        </Card>
        <Card className="text-center p-6 bg-gradient-to-br from-blue-50 to-blue-100 dark:from-blue-950/30 dark:to-blue-900/30 border-blue-200 dark:border-blue-800">
          <Sparkles className="w-12 h-12 mx-auto mb-3 text-blue-600 dark:text-blue-400" />
          <h3 className="text-3xl font-bold text-blue-600 dark:text-blue-400 mb-1">Diario</h3>
          <p className="text-sm text-muted-foreground">Palabra del día</p>
        </Card>
      </div>
    </div>
  );
}

export default DashboardPage;