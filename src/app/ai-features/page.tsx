import { Metadata } from 'next';
import Breadcrumbs from '@/components/breadcrumbs';
import StructuredData from '@/components/seo/structured-data';
import LearningSystem from '@/components/ai/learning-system';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Sparkles, Brain, BookOpen, Target, Zap, Trophy, Volume2, Languages, GraduationCap, Database } from 'lucide-react';

export const metadata: Metadata = {
  title: 'Funcionalidades con IA | BubiLex',
  description: 'Aprende Bubi con inteligencia artificial avanzada: traductor contextual con gramática, quiz adaptativos, pronunciación IPA, ejemplos culturales y más.',
  keywords: ['IA', 'Inteligencia Artificial', 'Aprendizaje', 'Bubi', 'Traductor', 'Quiz', 'Gramática', 'Pronunciación', 'IPA'],
};

export default function AIFeaturesPage() {
  return (
    <div className="flex flex-col gap-8 animate-fade-in">
      <StructuredData data={{
        '@context': 'https://schema.org',
        '@type': 'WebPage',
        name: 'Funcionalidades con IA - BubiLex',
        description: 'Herramientas de aprendizaje potenciadas por inteligencia artificial',
      }} />
      
      <Breadcrumbs items={[
        { label: 'Inicio', href: '/' },
        { label: 'IA' },
      ]} />

      <div className="relative overflow-hidden rounded-2xl bg-gradient-to-br from-purple-600 via-pink-600 to-blue-600 p-6 sm:p-8 md:p-12 text-white shadow-2xl">
        <div className="absolute inset-0 bg-black/10"></div>
        <div className="relative z-10">
          <div className="flex items-center gap-2 mb-4">
            <Sparkles className="w-6 sm:w-8 h-6 sm:h-8 animate-pulse" />
            <span className="text-xs sm:text-sm font-semibold uppercase tracking-wider">Potenciado por IA Avanzada</span>
          </div>
          <h1 className="text-3xl sm:text-4xl md:text-5xl font-bold font-headline mb-4">
            Aprende Bubi con Inteligencia Artificial
          </h1>
          <p className="text-base sm:text-lg md:text-xl text-white/90 max-w-2xl mb-4">
            Herramientas avanzadas con contexto gramatical completo y estructura lingüística del idioma Bubi
          </p>
          <div className="flex flex-wrap gap-2 text-xs sm:text-sm">
            <span className="px-3 py-1 bg-white/20 rounded-full backdrop-blur-sm">
              🎯 Gramática Contextual
            </span>
            <span className="px-3 py-1 bg-white/20 rounded-full backdrop-blur-sm">
              🔊 Pronunciación IPA
            </span>
            <span className="px-3 py-1 bg-white/20 rounded-full backdrop-blur-sm">
              📚 Clases Nominales
            </span>
            <span className="px-3 py-1 bg-white/20 rounded-full backdrop-blur-sm">
              🎵 Sistema Tonal
            </span>
          </div>
        </div>
      </div>

      <div className="grid gap-4 sm:gap-6 grid-cols-1 sm:grid-cols-2 lg:grid-cols-3">
        <Card className="hover-lift border-2 border-purple-200 dark:border-purple-800">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2 mb-2">
              <Brain className="w-5 h-5 sm:w-6 sm:h-6 text-purple-600 dark:text-purple-400" />
              <CardTitle className="text-base sm:text-lg">Sesiones de Aprendizaje</CardTitle>
            </div>
            <CardDescription className="text-xs sm:text-sm">
              Lecciones personalizadas con gramática contextual y ejemplos culturales
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift border-2 border-blue-200 dark:border-blue-800">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2 mb-2">
              <Target className="w-5 h-5 sm:w-6 sm:h-6 text-blue-600 dark:text-blue-400" />
              <CardTitle className="text-base sm:text-lg">Quiz Interactivo</CardTitle>
            </div>
            <CardDescription className="text-xs sm:text-sm">
              Preguntas sobre clases nominales, tonos y estructura gramatical
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift border-2 border-green-200 dark:border-green-800">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2 mb-2">
              <BookOpen className="w-5 h-5 sm:w-6 sm:h-6 text-green-600 dark:text-green-400" />
              <CardTitle className="text-base sm:text-lg">Ejemplos Contextuales</CardTitle>
            </div>
            <CardDescription className="text-xs sm:text-sm">
              Oraciones que siguen reglas gramaticales reales del Bubi
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift border-2 border-orange-200 dark:border-orange-800">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2 mb-2">
              <Volume2 className="w-5 h-5 sm:w-6 sm:h-6 text-orange-600 dark:text-orange-400" />
              <CardTitle className="text-base sm:text-lg">Pronunciación IPA</CardTitle>
            </div>
            <CardDescription className="text-xs sm:text-sm">
              Guías detalladas con tonos, consonantes geminadas y especiales
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift border-2 border-yellow-200 dark:border-yellow-800">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2 mb-2">
              <Languages className="w-5 h-5 sm:w-6 sm:h-6 text-yellow-600 dark:text-yellow-400" />
              <CardTitle className="text-base sm:text-lg">Traducción Contextual</CardTitle>
            </div>
            <CardDescription className="text-xs sm:text-sm">
              Considera clases nominales, prefijos y sistema de tonos
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift border-2 border-pink-200 dark:border-pink-800">
          <CardHeader className="pb-3">
            <div className="flex items-center gap-2 mb-2">
              <GraduationCap className="w-5 h-5 sm:w-6 sm:h-6 text-pink-600 dark:text-pink-400" />
              <CardTitle className="text-base sm:text-lg">Sistema de Gramática</CardTitle>
            </div>
            <CardDescription className="text-xs sm:text-sm">
              Base de conocimiento completa sobre estructura del Bubi
            </CardDescription>
          </CardHeader>
        </Card>
      </div>

      {/* Sistema de Aprendizaje Principal */}
      <div className="animate-fade-in-up">
        <LearningSystem />
      </div>

      {/* Nueva sección: Sistema de Gramática */}
      <Card className="bg-gradient-to-br from-blue-50 to-indigo-50 dark:from-blue-950/30 dark:to-indigo-950/30 border-2 border-blue-200 dark:border-blue-800">
        <CardHeader>
          <div className="flex items-center gap-2 mb-2">
            <Database className="w-6 h-6 text-blue-600 dark:text-blue-400" />
            <CardTitle className="text-lg sm:text-xl">Sistema de Gramática Integrado</CardTitle>
          </div>
          <CardDescription className="text-sm">
            La IA ahora tiene acceso a conocimiento lingüístico completo del Bubi
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="grid gap-3 sm:gap-4 grid-cols-1 sm:grid-cols-2">
            <div className="p-3 sm:p-4 bg-white dark:bg-gray-900 rounded-lg border border-blue-200 dark:border-blue-800">
              <h4 className="font-semibold text-sm sm:text-base mb-2 text-blue-600 dark:text-blue-400">Sistema Fonético</h4>
              <ul className="text-xs sm:text-sm text-muted-foreground space-y-1">
                <li>• 7 vocales con tonos alto/bajo</li>
                <li>• Consonantes geminadas</li>
                <li>• Consonantes especiales (ty, dy, hM, hN)</li>
                <li>• Ortografía fonológica</li>
              </ul>
            </div>
            
            <div className="p-3 sm:p-4 bg-white dark:bg-gray-900 rounded-lg border border-purple-200 dark:border-purple-800">
              <h4 className="font-semibold text-sm sm:text-base mb-2 text-purple-600 dark:text-purple-400">Clases Nominales</h4>
              <ul className="text-xs sm:text-sm text-muted-foreground space-y-1">
                <li>• Sistema de prefijos (bo-, ba-, ri-, etc.)</li>
                <li>• Concordancia obligatoria</li>
                <li>• Sin género masculino/femenino</li>
                <li>• Adjetivos copian prefijos</li>
              </ul>
            </div>
            
            <div className="p-3 sm:p-4 bg-white dark:bg-gray-900 rounded-lg border border-green-200 dark:border-green-800">
              <h4 className="font-semibold text-sm sm:text-base mb-2 text-green-600 dark:text-green-400">Estructura Sintáctica</h4>
              <ul className="text-xs sm:text-sm text-muted-foreground space-y-1">
                <li>• Orden: Sujeto-Verbo-Objeto</li>
                <li>• Verbos con prefijo o-</li>
                <li>• Sistema de aumentos (definición)</li>
                <li>• Demostrativos según distancia</li>
              </ul>
            </div>
            
            <div className="p-3 sm:p-4 bg-white dark:bg-gray-900 rounded-lg border border-orange-200 dark:border-orange-800">
              <h4 className="font-semibold text-sm sm:text-base mb-2 text-orange-600 dark:text-orange-400">Conjugaciones</h4>
              <ul className="text-xs sm:text-sm text-muted-foreground space-y-1">
                <li>• Base de datos de conjugaciones</li>
                <li>• Tiempos verbales (presente, pasado)</li>
                <li>• Personas gramaticales</li>
                <li>• Ejemplos de uso</li>
              </ul>
            </div>
          </div>
        </CardContent>
      </Card>

      <Card className="bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 border-2 border-purple-200 dark:border-purple-800">
        <CardHeader>
          <CardTitle className="text-lg sm:text-xl">¿Cómo funciona la IA mejorada?</CardTitle>
        </CardHeader>
        <CardContent className="space-y-4">
          <p className="text-sm sm:text-base text-muted-foreground">
            Nuestras funcionalidades de IA utilizan modelos de lenguaje avanzados con contexto gramatical completo:
          </p>
          <ul className="space-y-2 text-sm sm:text-base text-muted-foreground">
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400 text-lg">•</span>
              <span><strong>Traducciones contextuales:</strong> Considera clases nominales, prefijos y tonos que cambian el significado</span>
            </li>
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400 text-lg">•</span>
              <span><strong>Ejemplos gramaticalmente correctos:</strong> Respeta concordancia, orden S-V-O y sistema de aumentos</span>
            </li>
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400 text-lg">•</span>
              <span><strong>Pronunciación precisa:</strong> IPA con tonos, consonantes geminadas y especiales del Bubi</span>
            </li>
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400 text-lg">•</span>
              <span><strong>Quiz educativos:</strong> Preguntas sobre aspectos clave como clases nominales y tonos</span>
            </li>
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400 text-lg">•</span>
              <span><strong>Contexto cultural:</strong> Información histórica y etimológica del pueblo Bubi</span>
            </li>
          </ul>
          
          <div className="p-3 sm:p-4 bg-green-50 dark:bg-green-950/30 border border-green-200 dark:border-green-800 rounded-lg mt-4">
            <p className="text-xs sm:text-sm text-green-900 dark:text-green-100">
              <strong>✨ Nuevo:</strong> La IA ahora usa una base de conocimiento completa sobre la estructura lingüística del Bubi, incluyendo reglas gramaticales, conjugaciones verbales y patrones de estructura.
            </p>
          </div>
          
          <div className="p-3 sm:p-4 bg-yellow-50 dark:bg-yellow-950/30 border border-yellow-200 dark:border-yellow-800 rounded-lg">
            <p className="text-xs sm:text-sm text-yellow-900 dark:text-yellow-100">
              <strong>💡 Nota:</strong> Las funcionalidades de IA funcionan con APIs gratuitas (Groq, Together AI) o premium (OpenAI, Anthropic). Configura tu API key preferida.
            </p>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
