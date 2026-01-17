import { Metadata } from 'next';
import Breadcrumbs from '@/components/breadcrumbs';
import StructuredData from '@/components/seo/structured-data';
import AITranslator from '@/components/ai/ai-translator';
import PracticeQuiz from '@/components/ai/practice-quiz';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Sparkles, Brain, BookOpen, Mic, Lightbulb } from 'lucide-react';

export const metadata: Metadata = {
  title: 'Funcionalidades con IA | BubiLex',
  description: 'Aprende Bubi con inteligencia artificial: traductor contextual, quiz de práctica, pronunciación y más.',
  keywords: ['IA', 'Inteligencia Artificial', 'Aprendizaje', 'Bubi', 'Traductor', 'Quiz'],
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

      <div className="relative overflow-hidden rounded-2xl bg-gradient-to-br from-purple-600 via-pink-600 to-blue-600 p-8 md:p-12 text-white shadow-2xl">
        <div className="absolute inset-0 bg-black/10"></div>
        <div className="relative z-10">
          <div className="flex items-center gap-2 mb-4">
            <Sparkles className="w-8 h-8 animate-pulse" />
            <span className="text-sm font-semibold uppercase tracking-wider">Potenciado por IA</span>
          </div>
          <h1 className="text-4xl md:text-5xl font-bold font-headline mb-4">
            Aprende Bubi con Inteligencia Artificial
          </h1>
          <p className="text-lg md:text-xl text-white/90 max-w-2xl">
            Herramientas avanzadas que utilizan IA para mejorar tu experiencia de aprendizaje
          </p>
        </div>
      </div>

      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
        <Card className="hover-lift">
          <CardHeader>
            <div className="flex items-center gap-2 mb-2">
              <Sparkles className="w-6 h-6 text-purple-600 dark:text-purple-400" />
              <CardTitle>Traductor Contextual</CardTitle>
            </div>
            <CardDescription>
              Traducciones que consideran el contexto cultural
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift">
          <CardHeader>
            <div className="flex items-center gap-2 mb-2">
              <Brain className="w-6 h-6 text-pink-600 dark:text-pink-400" />
              <CardTitle>Quiz Inteligente</CardTitle>
            </div>
            <CardDescription>
              Preguntas generadas automáticamente
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift">
          <CardHeader>
            <div className="flex items-center gap-2 mb-2">
              <Mic className="w-6 h-6 text-blue-600 dark:text-blue-400" />
              <CardTitle>Guía de Pronunciación</CardTitle>
            </div>
            <CardDescription>
              Consejos personalizados de pronunciación
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift">
          <CardHeader>
            <div className="flex items-center gap-2 mb-2">
              <BookOpen className="w-6 h-6 text-green-600 dark:text-green-400" />
              <CardTitle>Ejemplos Contextuales</CardTitle>
            </div>
            <CardDescription>
              Frases de ejemplo culturalmente apropiadas
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift">
          <CardHeader>
            <div className="flex items-center gap-2 mb-2">
              <Lightbulb className="w-6 h-6 text-yellow-600 dark:text-yellow-400" />
              <CardTitle>Etimología</CardTitle>
            </div>
            <CardDescription>
              Origen y significado cultural de palabras
            </CardDescription>
          </CardHeader>
        </Card>

        <Card className="hover-lift">
          <CardHeader>
            <div className="flex items-center gap-2 mb-2">
              <Sparkles className="w-6 h-6 text-purple-600 dark:text-purple-400" />
              <CardTitle>Palabras Relacionadas</CardTitle>
            </div>
            <CardDescription>
              Sugerencias de vocabulario relacionado
            </CardDescription>
          </CardHeader>
        </Card>
      </div>

      <div className="grid gap-8 lg:grid-cols-2">
        <div className="animate-fade-in-up">
          <AITranslator />
        </div>
        
        <div className="animate-fade-in-up" style={{ animationDelay: '100ms' }}>
          <PracticeQuiz />
        </div>
      </div>

      <Card className="bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 border-2 border-purple-200 dark:border-purple-800">
        <CardHeader>
          <CardTitle>¿Cómo funciona?</CardTitle>
        </CardHeader>
        <CardContent className="space-y-4">
          <p className="text-muted-foreground">
            Nuestras funcionalidades de IA utilizan modelos de lenguaje avanzados para proporcionar:
          </p>
          <ul className="space-y-2 text-muted-foreground">
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400">•</span>
              <span><strong>Traducciones contextuales:</strong> Considerando el uso cultural</span>
            </li>
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400">•</span>
              <span><strong>Ejemplos auténticos:</strong> Frases que reflejan el uso real</span>
            </li>
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400">•</span>
              <span><strong>Aprendizaje adaptativo:</strong> Preguntas ajustadas a tu nivel</span>
            </li>
            <li className="flex items-start gap-2">
              <span className="text-purple-600 dark:text-purple-400">•</span>
              <span><strong>Información cultural:</strong> Contexto histórico y etimológico</span>
            </li>
          </ul>
          <div className="p-4 bg-yellow-50 dark:bg-yellow-950/30 border border-yellow-200 dark:border-yellow-800 rounded-lg mt-4">
            <p className="text-sm text-yellow-900 dark:text-yellow-100">
              <strong>Nota:</strong> Las funcionalidades de IA requieren configuración de API keys (OpenAI o Anthropic).
            </p>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
