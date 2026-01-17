"use client";

import { useEffect, useState } from "react";
import { useSession } from "next-auth/react";
import { useRouter } from "next/navigation";
import { Card, CardContent, CardDescription, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { BookOpen, Edit, Search, TrendingUp, Calendar, User } from "lucide-react";

type DictionaryEntry = {
  id: number;
  bubi: string;
  spanish: string;
  ipa: string | null;
  notes: string | null;
  created_at: string;
  updated_at: string | null;
  created_by: string | null;
  updated_by: string | null;
};

export default function MyWordsPage() {
  const { data: session, status } = useSession();
  const router = useRouter();
  const [entries, setEntries] = useState<DictionaryEntry[]>([]);
  const [filteredEntries, setFilteredEntries] = useState<DictionaryEntry[]>([]);
  const [isLoading, setIsLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");
  const [stats, setStats] = useState({
    total: 0,
    thisMonth: 0,
    thisWeek: 0,
  });

  useEffect(() => {
    if (status === "unauthenticated") {
      router.push("/admin/login");
      return;
    }

    if (status === "authenticated" && !session?.canEditDictionary) {
      router.push("/");
      return;
    }

    if (status === "authenticated" && session?.user?.email) {
      fetchMyWords();
    }
  }, [status, session, router]);

  const fetchMyWords = async () => {
    try {
      setIsLoading(true);
      const res = await fetch("/api/dictionary/bulk");
      if (!res.ok) throw new Error("Error al cargar palabras");
      
      const data = await res.json();
      const myWords = data.filter(
        (entry: DictionaryEntry) => 
          entry.created_by?.toLowerCase() === session?.user?.email?.toLowerCase()
      );

      setEntries(myWords);
      setFilteredEntries(myWords);
      calculateStats(myWords);
    } catch (error) {
      console.error("Error al cargar mis palabras:", error);
    } finally {
      setIsLoading(false);
    }
  };

  const calculateStats = (words: DictionaryEntry[]) => {
    const now = new Date();
    const startOfMonth = new Date(now.getFullYear(), now.getMonth(), 1);
    const startOfWeek = new Date(now);
    startOfWeek.setDate(now.getDate() - now.getDay());

    const thisMonth = words.filter(
      (w) => new Date(w.created_at) >= startOfMonth
    ).length;

    const thisWeek = words.filter(
      (w) => new Date(w.created_at) >= startOfWeek
    ).length;

    setStats({
      total: words.length,
      thisMonth,
      thisWeek,
    });
  };

  useEffect(() => {
    if (searchQuery.trim() === "") {
      setFilteredEntries(entries);
      return;
    }

    const query = searchQuery.toLowerCase();
    const filtered = entries.filter(
      (entry) =>
        entry.bubi.toLowerCase().includes(query) ||
        entry.spanish.toLowerCase().includes(query)
    );
    setFilteredEntries(filtered);
  }, [searchQuery, entries]);

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    return date.toLocaleDateString("es-ES", {
      year: "numeric",
      month: "short",
      day: "numeric",
    });
  };

  if (status === "loading" || isLoading) {
    return (
      <div className="min-h-screen flex items-center justify-center bg-gradient-to-br from-blue-50 via-cyan-50 to-teal-50 dark:from-gray-900 dark:via-blue-950 dark:to-cyan-950">
        <div className="text-center">
          <div className="w-16 h-16 border-4 border-blue-200 dark:border-blue-800 border-t-blue-600 dark:border-t-blue-400 rounded-full animate-spin mx-auto mb-4"></div>
          <p className="text-muted-foreground">Cargando tus contribuciones...</p>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gradient-to-br from-blue-50 via-cyan-50 to-teal-50 dark:from-gray-900 dark:via-blue-950 dark:to-cyan-950 p-6">
      <div className="max-w-7xl mx-auto space-y-6">
        {/* Header */}
        <div className="flex items-center justify-between">
          <div>
            <h1 className="text-4xl font-bold font-headline bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
              Mis Contribuciones
            </h1>
            <p className="text-muted-foreground mt-2">
              Palabras que has agregado al diccionario Bubi
            </p>
          </div>
          <Button
            onClick={() => router.push("/collaborator/dictionary/add")}
            className="bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white"
          >
            <BookOpen className="w-4 h-4 mr-2" />
            Agregar Palabra
          </Button>
        </div>

        {/* Stats Cards */}
        <div className="grid grid-cols-1 md:grid-cols-3 gap-4">
          <Card className="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm border-2 border-blue-200 dark:border-blue-800">
            <CardHeader className="pb-3">
              <CardDescription className="flex items-center gap-2">
                <BookOpen className="w-4 h-4 text-blue-600 dark:text-blue-400" />
                Total de Palabras
              </CardDescription>
              <CardTitle className="text-3xl font-bold text-blue-600 dark:text-blue-400">
                {stats.total}
              </CardTitle>
            </CardHeader>
          </Card>

          <Card className="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm border-2 border-cyan-200 dark:border-cyan-800">
            <CardHeader className="pb-3">
              <CardDescription className="flex items-center gap-2">
                <Calendar className="w-4 h-4 text-cyan-600 dark:text-cyan-400" />
                Este Mes
              </CardDescription>
              <CardTitle className="text-3xl font-bold text-cyan-600 dark:text-cyan-400">
                {stats.thisMonth}
              </CardTitle>
            </CardHeader>
          </Card>

          <Card className="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm border-2 border-teal-200 dark:border-teal-800">
            <CardHeader className="pb-3">
              <CardDescription className="flex items-center gap-2">
                <TrendingUp className="w-4 h-4 text-teal-600 dark:text-teal-400" />
                Esta Semana
              </CardDescription>
              <CardTitle className="text-3xl font-bold text-teal-600 dark:text-teal-400">
                {stats.thisWeek}
              </CardTitle>
            </CardHeader>
          </Card>
        </div>

        {/* Search */}
        <Card className="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm">
          <CardContent className="pt-6">
            <div className="relative">
              <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 w-5 h-5 text-muted-foreground" />
              <Input
                type="text"
                placeholder="Buscar en mis palabras..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="pl-10"
              />
            </div>
          </CardContent>
        </Card>

        {/* Words List */}
        {filteredEntries.length === 0 ? (
          <Card className="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm">
            <CardContent className="py-12 text-center">
              <BookOpen className="w-16 h-16 mx-auto mb-4 text-muted-foreground opacity-50" />
              <h3 className="text-xl font-semibold mb-2">
                {searchQuery ? "No se encontraron palabras" : "Aún no has agregado palabras"}
              </h3>
              <p className="text-muted-foreground mb-4">
                {searchQuery
                  ? "Intenta con otra búsqueda"
                  : "Comienza a contribuir al diccionario Bubi"}
              </p>
              {!searchQuery && (
                <Button
                  onClick={() => router.push("/collaborator/dictionary/add")}
                  className="bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white"
                >
                  <BookOpen className="w-4 h-4 mr-2" />
                  Agregar Primera Palabra
                </Button>
              )}
            </CardContent>
          </Card>
        ) : (
          <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
            {filteredEntries.map((entry) => (
              <Card
                key={entry.id}
                className="bg-white/50 dark:bg-gray-900/50 backdrop-blur-sm hover:shadow-lg transition-all duration-300 border-2 border-blue-100 dark:border-blue-900 hover:border-blue-300 dark:hover:border-blue-700"
              >
                <CardHeader>
                  <CardTitle className="text-2xl font-headline text-blue-600 dark:text-blue-400">
                    {entry.bubi}
                  </CardTitle>
                  <CardDescription className="text-lg font-medium text-cyan-600 dark:text-cyan-400">
                    {entry.spanish}
                  </CardDescription>
                </CardHeader>
                <CardContent className="space-y-3">
                  {entry.ipa && (
                    <div className="text-sm">
                      <span className="font-semibold text-muted-foreground">IPA:</span>{" "}
                      <span className="font-mono">/{entry.ipa}/</span>
                    </div>
                  )}
                  {entry.notes && (
                    <div className="text-sm text-muted-foreground">
                      <span className="font-semibold">Notas:</span> {entry.notes}
                    </div>
                  )}
                  <div className="flex items-center gap-2 text-xs text-muted-foreground pt-2 border-t">
                    <Calendar className="w-3 h-3" />
                    <span>Agregada: {formatDate(entry.created_at)}</span>
                  </div>
                  {entry.updated_at && entry.updated_at !== entry.created_at && (
                    <div className="flex items-center gap-2 text-xs text-muted-foreground">
                      <Edit className="w-3 h-3" />
                      <span>Editada: {formatDate(entry.updated_at)}</span>
                    </div>
                  )}
                  <Button
                    variant="outline"
                    size="sm"
                    className="w-full mt-2"
                    onClick={() => router.push(`/admin/dictionary/edit/${entry.id}`)}
                  >
                    <Edit className="w-3 h-3 mr-2" />
                    Editar
                  </Button>
                </CardContent>
              </Card>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}
