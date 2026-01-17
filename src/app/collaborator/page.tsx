"use client";

import { useEffect, useState } from 'react';
import { useSession } from 'next-auth/react';
import { useRouter } from 'next/navigation';
import Link from 'next/link';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { BookOpen, Plus, List, TrendingUp, Award } from 'lucide-react';

type CollaboratorStats = {
  totalWords: number;
  myWords: number;
  wordsToday: number;
  wordsThisWeek: number;
  completeness: number;
};

export default function CollaboratorPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [stats, setStats] = useState<CollaboratorStats>({
    totalWords: 0,
    myWords: 0,
    wordsToday: 0,
    wordsThisWeek: 0,
    completeness: 0,
  });
  const [isLoading, setIsLoading] = useState(true);

  useEffect(() => {
    if (status === "loading") return;
    
    if (status === "unauthenticated") {
      router.push("/admin/login?next=/collaborator");
      return;
    }

    if (status === "authenticated") {
      const canEdit = (session as any)?.canEditDictionary;
      if (!canEdit) {
        router.push("/admin/login?next=/collaborator");
        return;
      }
      
      fetchStats();
    }
  }, [status, session, router]);

  const fetchStats = async () => {
    try {
      setIsLoading(true);
      const res = await fetch('/api/dictionary/bulk');
      if (!res.ok) throw new Error('Error al cargar estadísticas');
      
      const allWords = await res.json();
      const myWords = allWords.filter(
        (entry: any) => 
          entry.created_by?.toLowerCase() === session?.user?.email?.toLowerCase()
      );

      const now = new Date();
      const today = new Date(now.getFullYear(), now.getMonth(), now.getDate());
      const startOfWeek = new Date(today);
      startOfWeek.setDate(today.getDate() - today.getDay());

      const wordsToday = myWords.filter((w: any) => new Date(w.created_at) >= today).length;
      const wordsThisWeek = myWords.filter((w: any) => new Date(w.created_at) >= startOfWeek).length;
      
      const completeWords = myWords.filter((w: any) => w.ipa && w.notes).length;
      const completeness = myWords.length > 0 ? Math.round((completeWords / myWords.length) * 100) : 0;

      setStats({
        totalWords: allWords.length,
        myWords: myWords.length,
        wordsToday,
        wordsThisWeek,
        completeness,
      });
    } catch (error) {
      console.error('Error al cargar estadísticas:', error);
    } finally {
      setIsLoading(false);
    }
  };

  if (status === "loading" || isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-blue-50 via-cyan-50 to-teal-50 dark:from-gray-900 dark:via-blue-950 dark:to-cyan-950">
        <div className="text-center">
          <div className="w-16 h-16 border-4 border-blue-200 dark:border-blue-800 border-t-blue-600 dark:border-t-blue-400 rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-muted-foreground">Cargando panel...</p>
        </div>
      </div>
    );
  }
  
  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center gap-3 mb-2">
          <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
            <BookOpen className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
              Panel de Colaborador
            </h1>
            <p className="text-muted-foreground">
              Bienvenido, {session?.user?.name || session?.user?.email}
            </p>
          </div>
        </div>
        <div className="inline-flex items-center gap-2 px-3 py-1 rounded-full bg-blue-100 dark:bg-blue-900/30 text-blue-700 dark:text-blue-300 text-sm font-medium">
          <Award className="w-4 h-4" />
          Colaborador
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-1 md:grid-cols-4 gap-4 mb-8">
        <Card className="glass-card border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Mis Palabras</p>
                <p className="text-2xl font-bold">{stats.myWords}</p>
              </div>
              <BookOpen className="w-8 h-8 text-blue-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card border-2 hover:border-green-300 dark:hover:border-green-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Hoy</p>
                <p className="text-2xl font-bold">{stats.wordsToday}</p>
              </div>
              <TrendingUp className="w-8 h-8 text-green-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Esta Semana</p>
                <p className="text-2xl font-bold">{stats.wordsThisWeek}</p>
              </div>
              <TrendingUp className="w-8 h-8 text-purple-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card border-2 hover:border-orange-300 dark:hover:border-orange-700 transition-all">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Completitud</p>
                <p className="text-2xl font-bold">{stats.completeness}%</p>
              </div>
              <Award className="w-8 h-8 text-orange-500" />
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Actions */}
      <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
        {/* Agregar Palabra */}
        <Link href="/collaborator/dictionary/add">
          <Card className="glass-card border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all hover:scale-105 hover:shadow-xl h-full group">
            <CardContent className="pt-6">
              <div className="flex items-start gap-4">
                <div className="p-4 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500 group-hover:scale-110 transition-transform">
                  <Plus className="w-8 h-8 text-white" />
                </div>
                <div className="flex-1">
                  <h3 className="text-xl font-bold mb-2 group-hover:text-blue-600 dark:group-hover:text-blue-400 transition-colors">
                    Agregar Palabra
                  </h3>
                  <p className="text-sm text-muted-foreground mb-4">
                    Añade una nueva palabra al diccionario Bubi-Español con su traducción y pronunciación
                  </p>
                  <div className="flex items-center text-sm text-blue-600 dark:text-blue-400 font-medium">
                    Comenzar
                    <svg className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                    </svg>
                  </div>
                </div>
              </div>
            </CardContent>
          </Card>
        </Link>

        {/* Ver Mis Contribuciones */}
        <Link href="/collaborator/dictionary/my-words">
          <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all hover:scale-105 hover:shadow-xl h-full group">
            <CardContent className="pt-6">
              <div className="flex items-start gap-4">
                <div className="p-4 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500 group-hover:scale-110 transition-transform">
                  <List className="w-8 h-8 text-white" />
                </div>
                <div className="flex-1">
                  <h3 className="text-xl font-bold mb-2 group-hover:text-purple-600 dark:group-hover:text-purple-400 transition-colors">
                    Mis Contribuciones
                  </h3>
                  <p className="text-sm text-muted-foreground mb-4">
                    Revisa y edita las palabras que has agregado al diccionario
                  </p>
                  <div className="flex items-center text-sm text-purple-600 dark:text-purple-400 font-medium">
                    Ver lista
                    <svg className="w-4 h-4 ml-1 group-hover:translate-x-1 transition-transform" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                      <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M9 5l7 7-7 7" />
                    </svg>
                  </div>
                </div>
              </div>
            </CardContent>
          </Card>
        </Link>
      </div>

      {/* Guía Rápida */}
      <div className="mt-8">
        <Card className="glass-card border-2">
          <CardContent className="pt-6">
            <h3 className="text-lg font-bold mb-4">📚 Guía Rápida para Colaboradores</h3>
            <div className="space-y-3 text-sm text-muted-foreground">
              <div className="flex items-start gap-3">
                <div className="w-6 h-6 rounded-full bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center flex-shrink-0 mt-0.5">
                  <span className="text-blue-600 dark:text-blue-400 font-bold text-xs">1</span>
                </div>
                <p>
                  <strong className="text-foreground">Agrega palabras:</strong> Incluye la palabra en Bubi, su traducción al español, y si es posible, la pronunciación IPA
                </p>
              </div>
              <div className="flex items-start gap-3">
                <div className="w-6 h-6 rounded-full bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center flex-shrink-0 mt-0.5">
                  <span className="text-blue-600 dark:text-blue-400 font-bold text-xs">2</span>
                </div>
                <p>
                  <strong className="text-foreground">Añade contexto:</strong> Las notas culturales ayudan a entender mejor el uso de la palabra
                </p>
              </div>
              <div className="flex items-start gap-3">
                <div className="w-6 h-6 rounded-full bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center flex-shrink-0 mt-0.5">
                  <span className="text-blue-600 dark:text-blue-400 font-bold text-xs">3</span>
                </div>
                <p>
                  <strong className="text-foreground">Revisa tus contribuciones:</strong> Puedes editar las palabras que has agregado en cualquier momento
                </p>
              </div>
              <div className="flex items-start gap-3">
                <div className="w-6 h-6 rounded-full bg-blue-100 dark:bg-blue-900/30 flex items-center justify-center flex-shrink-0 mt-0.5">
                  <span className="text-blue-600 dark:text-blue-400 font-bold text-xs">4</span>
                </div>
                <p>
                  <strong className="text-foreground">Calidad sobre cantidad:</strong> Es mejor agregar pocas palabras bien documentadas que muchas incompletas
                </p>
              </div>
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Links útiles */}
      <div className="mt-6 flex gap-4 justify-center">
        <Button variant="outline" asChild>
          <Link href="/dictionary">Ver Diccionario Público</Link>
        </Button>
        <Button variant="outline" asChild>
          <Link href="/ai-features">Funcionalidades IA</Link>
        </Button>
      </div>
    </div>
  );
}
