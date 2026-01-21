"use client";

import { useState, useCallback, useEffect } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { 
  Brain, 
  BookOpen, 
  CheckCircle2, 
  XCircle, 
  Sparkles, 
  Trophy,
  Target,
  Zap,
  RefreshCw,
  Play,
  ArrowRight,
  Volume2
} from "lucide-react";
import { speak } from "@/lib/speech-synthesis";

type LearningMode = 'menu' | 'session' | 'quiz' | 'progress';

type Word = {
  bubi: string;
  spanish: string;
  ipa?: string;
  id?: number;
};

type Example = {
  bubi: string;
  spanish: string;
};

type QuizQuestion = {
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
};

type SessionData = {
  words: Word[];
  examples: Example[];
  culturalNotes: string[];
};

type UserProgress = {
  learnedWords: number[];
  completedTopics: string[];
  totalScore: number;
  quizzesTaken: number;
  level: number;
};

const WORDS_PER_SESSION = 5;
const WORDS_PER_LEVEL = 20;

const LearningSystem = () => {
  const [mode, setMode] = useState<LearningMode>('menu');
  const [topic, setTopic] = useState('');
  const [isLoading, setIsLoading] = useState(false);
  const [sessionData, setSessionData] = useState<SessionData | null>(null);
  const [quizData, setQuizData] = useState<QuizQuestion[]>([]);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [showExplanation, setShowExplanation] = useState(false);
  const [score, setScore] = useState(0);
  const [answeredQuestions, setAnsweredQuestions] = useState(0);
  const [progress, setProgress] = useState<UserProgress>({
    learnedWords: [],
    completedTopics: [],
    totalScore: 0,
    quizzesTaken: 0,
    level: 1,
  });

  // Cargar progreso del usuario
  useEffect(() => {
    const savedProgress = localStorage.getItem('bubilex_learning_progress');
    if (savedProgress) {
      try {
        setProgress(JSON.parse(savedProgress));
      } catch (error) {
        console.error('Error cargando progreso:', error);
      }
    }
  }, []);

  // Guardar progreso
  const saveProgress = useCallback((newProgress: UserProgress) => {
    setProgress(newProgress);
    localStorage.setItem('bubilex_learning_progress', JSON.stringify(newProgress));
  }, []);

  // Obtener palabras no aprendidas
  const getUnlearnedWords = useCallback(async () => {
    try {
      const res = await fetch('/api/dictionary');
      if (res.ok) {
        const data = await res.json();
        const allWords = data.entries || [];
        // Filtrar palabras ya aprendidas
        const unlearnedWords = allWords.filter((word: any) => 
          !progress.learnedWords.includes(word.id)
        );
        return unlearnedWords;
      }
    } catch (error) {
      console.error('Error obteniendo palabras:', error);
    }
    return [];
  }, [progress.learnedWords]);

  // Generar sesión de aprendizaje con palabras no repetidas
  const generateLearningSession = useCallback(async () => {
    setIsLoading(true);
    try {
      // Obtener palabras no aprendidas
      const unlearnedWords = await getUnlearnedWords();
      
      if (unlearnedWords.length === 0) {
        alert('¡Felicidades! Has aprendido todas las palabras disponibles. Pronto agregaremos más.');
        setIsLoading(false);
        return;
      }

      // Seleccionar palabras aleatorias no aprendidas
      const selectedWords = unlearnedWords
        .sort(() => Math.random() - 0.5)
        .slice(0, Math.min(WORDS_PER_SESSION, unlearnedWords.length))
        .map((word: any) => ({
          id: word.id,
          bubi: word.bubi,
          spanish: word.spanish,
          ipa: word.ipa || undefined,
        }));

      // Generar sesión con IA usando las palabras seleccionadas
      const topicText = topic.trim() || 'vocabulario básico';
      const res = await fetch('/api/ai/learning-session', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ 
          topic: topicText, 
          wordCount: selectedWords.length,
          words: selectedWords 
        }),
      });

      if (res.ok) {
        const data = await res.json();
        setSessionData({
          ...data,
          words: selectedWords, // Usar las palabras seleccionadas
        });
        setMode('session');
      } else {
        // Fallback con las palabras seleccionadas
        setSessionData({
          words: selectedWords,
          examples: selectedWords.slice(0, 3).map((w: Word) => ({
            bubi: `${w.bubi} ló bótó`,
            spanish: `${w.spanish} está en la casa`,
          })),
          culturalNotes: [
            'El idioma Bubi es una lengua bantú hablada en Bioko, Guinea Ecuatorial.',
            'Cada palabra tiene un significado cultural profundo en la comunidad Bubi.',
          ],
        });
        setMode('session');
      }
    } catch (error) {
      console.error('Error generando sesión:', error);
      alert('Error al generar la sesión. Por favor intenta de nuevo.');
    } finally {
      setIsLoading(false);
    }
  }, [topic, getUnlearnedWords]);

  // Marcar sesión como completada
  const completeSession = useCallback(() => {
    if (!sessionData) return;

    const newLearnedWords = [
      ...progress.learnedWords,
      ...sessionData.words.filter(w => w.id).map(w => w.id!)
    ];
    
    const newLevel = Math.floor(newLearnedWords.length / WORDS_PER_LEVEL) + 1;
    
    const newProgress: UserProgress = {
      ...progress,
      learnedWords: newLearnedWords,
      level: newLevel,
    };

    saveProgress(newProgress);
    alert(`¡Sesión completada! Has aprendido ${sessionData.words.length} palabras nuevas.`);
    resetToMenu();
  }, [sessionData, progress, saveProgress]);

  // Generar quiz con palabras aprendidas
  const generateQuiz = useCallback(async () => {
    // Verificar que hay suficientes palabras aprendidas
    if (progress.learnedWords.length < 3) {
      alert('Necesitas aprender al menos 3 palabras antes de hacer un quiz. ¡Completa una sesión de aprendizaje primero!');
      return;
    }

    setIsLoading(true);
    setScore(0);
    setAnsweredQuestions(0);
    setCurrentQuestionIndex(0);
    
    try {
      // Obtener todas las palabras
      const res = await fetch('/api/dictionary');
      if (!res.ok) throw new Error('Error obteniendo palabras');
      
      const data = await res.json();
      const allWords = data.entries || [];
      
      // Filtrar solo palabras aprendidas
      const learnedWords = allWords.filter((word: any) => 
        progress.learnedWords.includes(word.id)
      );

      // Seleccionar hasta 10 palabras aleatorias para el quiz
      const selectedWords = learnedWords
        .sort(() => Math.random() - 0.5)
        .slice(0, Math.min(10, learnedWords.length));

      // Generar quiz con IA
      const quizRes = await fetch('/api/ai/quiz', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ 
          topic: topic.trim() || 'palabras aprendidas',
          count: 5,
          words: selectedWords
        }),
      });

      if (quizRes.ok) {
        const quizData = await quizRes.json();
        if (quizData.questions && quizData.questions.length > 0) {
          setQuizData(quizData.questions);
          setMode('quiz');
          setIsLoading(false);
          return;
        }
      }
      
      // Fallback: generar preguntas simples con las palabras aprendidas
      const fallbackQuestions: QuizQuestion[] = selectedWords.slice(0, 5).map((word: any) => {
        const otherWords = selectedWords.filter((w: any) => w.id !== word.id).slice(0, 3);
        const options = [word.spanish, ...otherWords.map((w: any) => w.spanish)]
          .sort(() => Math.random() - 0.5);
        
        return {
          question: `¿Qué significa "${word.bubi}" en español?`,
          options,
          correctAnswer: options.indexOf(word.spanish),
          explanation: `"${word.bubi}" significa "${word.spanish}" en español.`,
        };
      });

      setQuizData(fallbackQuestions);
      setMode('quiz');
    } catch (error) {
      console.error('Error generando quiz:', error);
      alert('Error al generar el quiz. Por favor intenta de nuevo.');
    } finally {
      setIsLoading(false);
    }
  }, [topic, progress.learnedWords]);

  // Completar quiz
  const completeQuiz = useCallback(() => {
    const newProgress: UserProgress = {
      ...progress,
      totalScore: progress.totalScore + score,
      quizzesTaken: progress.quizzesTaken + 1,
    };

    saveProgress(newProgress);
  }, [progress, score, saveProgress]);

  // Manejar selección de respuesta
  const handleAnswerSelect = (answerIndex: number) => {
    if (showExplanation) return;
    
    setSelectedAnswer(answerIndex);
    setShowExplanation(true);
    
    const currentQuestion = quizData[currentQuestionIndex];
    if (answerIndex === currentQuestion.correctAnswer) {
      setScore(score + 1);
    }
    setAnsweredQuestions(answeredQuestions + 1);
  };

  // Siguiente pregunta
  const nextQuestion = () => {
    if (currentQuestionIndex < quizData.length - 1) {
      setCurrentQuestionIndex(currentQuestionIndex + 1);
      setSelectedAnswer(null);
      setShowExplanation(false);
    }
  };

  // Reiniciar progreso
  const resetProgress = useCallback(() => {
    if (confirm('¿Estás seguro de que quieres reiniciar todo tu progreso? Esta acción no se puede deshacer.')) {
      const newProgress: UserProgress = {
        learnedWords: [],
        completedTopics: [],
        totalScore: 0,
        quizzesTaken: 0,
        level: 1,
      };
      saveProgress(newProgress);
      alert('Progreso reiniciado correctamente.');
      setMode('menu');
    }
  }, [saveProgress]);

  // Volver al menú
  const resetToMenu = () => {
    setMode('menu');
    setTopic('');
    setSessionData(null);
    setQuizData([]);
    setCurrentQuestionIndex(0);
    setSelectedAnswer(null);
    setShowExplanation(false);
    setScore(0);
    setAnsweredQuestions(0);
  };

  // Pronunciar palabra
  const speakWord = async (text: string) => {
    try {
      await speak(text, { rate: 0.8 }, true); // normalizeText = true
    } catch (error) {
      console.error('Error al pronunciar:', error);
    }
  };

  // Pantalla de progreso
  if (mode === 'progress') {
    const progressToNextLevel = progress.learnedWords.length % WORDS_PER_LEVEL;
    const progressPercentage = (progressToNextLevel / WORDS_PER_LEVEL) * 100;

    return (
      <Card className="w-full">
        <CardHeader>
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-2">
              <Trophy className="w-6 h-6 text-yellow-600 dark:text-yellow-400" />
              <CardTitle>Tu Progreso</CardTitle>
            </div>
            <Button variant="outline" size="sm" onClick={() => setMode('menu')}>
              Volver al menú
            </Button>
          </div>
        </CardHeader>
        <CardContent>
          <div className="space-y-6">
            {/* Nivel actual */}
            <div className="text-center p-6 bg-gradient-to-br from-yellow-50 to-orange-50 dark:from-yellow-950/30 dark:to-orange-950/30 rounded-lg border-2 border-yellow-200 dark:border-yellow-800">
              <Trophy className="w-20 h-20 mx-auto mb-3 text-yellow-600 dark:text-yellow-400" />
              <div className="text-5xl font-bold mb-2 bg-gradient-to-r from-yellow-600 to-orange-600 bg-clip-text text-transparent">
                Nivel {progress.level}
              </div>
              <div className="text-lg text-muted-foreground">
                {progress.learnedWords.length} palabras aprendidas
              </div>
            </div>
            
            {/* Barra de progreso al siguiente nivel */}
            <div>
              <div className="flex justify-between text-sm mb-2 font-medium">
                <span>Progreso al siguiente nivel</span>
                <span className="text-purple-600 dark:text-purple-400">
                  {progressToNextLevel}/{WORDS_PER_LEVEL}
                </span>
              </div>
              <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-4 overflow-hidden">
                <div 
                  className="bg-gradient-to-r from-purple-600 to-pink-600 h-4 rounded-full transition-all duration-500"
                  style={{ width: `${progressPercentage}%` }}
                />
              </div>
              <div className="text-xs text-muted-foreground mt-1 text-center">
                {WORDS_PER_LEVEL - progressToNextLevel} palabras más para nivel {progress.level + 1}
              </div>
            </div>
            
            {/* Estadísticas */}
            <div className="grid grid-cols-2 gap-4">
              <div className="p-5 bg-blue-50 dark:bg-blue-950/30 rounded-lg border border-blue-200 dark:border-blue-800 text-center">
                <Target className="w-8 h-8 mx-auto mb-2 text-blue-600 dark:text-blue-400" />
                <div className="text-3xl font-bold text-blue-600 dark:text-blue-400">
                  {progress.quizzesTaken}
                </div>
                <div className="text-sm text-muted-foreground mt-1">Quizzes Completados</div>
              </div>
              <div className="p-5 bg-green-50 dark:bg-green-950/30 rounded-lg border border-green-200 dark:border-green-800 text-center">
                <Sparkles className="w-8 h-8 mx-auto mb-2 text-green-600 dark:text-green-400" />
                <div className="text-3xl font-bold text-green-600 dark:text-green-400">
                  {progress.totalScore}
                </div>
                <div className="text-sm text-muted-foreground mt-1">Puntos Totales</div>
              </div>
            </div>

            {/* Logros */}
            <div className="p-4 bg-gradient-to-r from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 rounded-lg border border-purple-200 dark:border-purple-800">
              <h3 className="font-bold mb-3 flex items-center gap-2">
                <Trophy className="w-5 h-5 text-purple-600" />
                Logros Desbloqueados
              </h3>
              <div className="space-y-2">
                {progress.learnedWords.length >= 5 && (
                  <div className="flex items-center gap-2 text-sm">
                    <CheckCircle2 className="w-4 h-4 text-green-600" />
                    <span>🎯 Primeros Pasos - Aprendiste 5 palabras</span>
                  </div>
                )}
                {progress.learnedWords.length >= 20 && (
                  <div className="flex items-center gap-2 text-sm">
                    <CheckCircle2 className="w-4 h-4 text-green-600" />
                    <span>🌟 Estudiante Dedicado - Alcanzaste nivel 2</span>
                  </div>
                )}
                {progress.quizzesTaken >= 5 && (
                  <div className="flex items-center gap-2 text-sm">
                    <CheckCircle2 className="w-4 h-4 text-green-600" />
                    <span>📚 Maestro del Quiz - Completaste 5 quizzes</span>
                  </div>
                )}
                {progress.learnedWords.length === 0 && (
                  <div className="text-sm text-muted-foreground italic">
                    Completa sesiones de aprendizaje para desbloquear logros
                  </div>
                )}
              </div>
            </div>
            
            {/* Botón reiniciar */}
            <Button 
              variant="outline" 
              onClick={resetProgress}
              className="w-full border-red-200 dark:border-red-800 text-red-600 dark:text-red-400 hover:bg-red-50 dark:hover:bg-red-950/30"
            >
              <RefreshCw className="w-4 h-4 mr-2" />
              Reiniciar Progreso
            </Button>
          </div>
        </CardContent>
      </Card>
    );
  }

  // Menú principal
  if (mode === 'menu') {
    return (
      <Card className="w-full bg-gradient-to-br from-purple-50 via-pink-50 to-blue-50 dark:from-purple-950/30 dark:via-pink-950/30 dark:to-blue-950/30 border-2 border-purple-200 dark:border-purple-800">
        <CardHeader>
          <div className="flex items-center justify-between mb-2">
            <div className="flex items-center gap-2">
              <Brain className="w-6 h-6 text-purple-600 dark:text-purple-400 animate-pulse" />
              <CardTitle className="text-2xl">Sistema de Aprendizaje Avanzado</CardTitle>
            </div>
            <Button 
              variant="outline" 
              size="sm"
              onClick={() => setMode('progress')}
              className="hidden sm:flex"
            >
              <Trophy className="w-4 h-4 mr-2" />
              Ver Progreso
            </Button>
          </div>
          <CardDescription>
            Aprende Bubi con sesiones personalizadas y quiz interactivos potenciados por IA
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
          {/* Card de progreso */}
          <div className="p-4 bg-gradient-to-r from-purple-100 to-pink-100 dark:from-purple-900/50 dark:to-pink-900/50 rounded-lg border border-purple-200 dark:border-purple-800">
            <div className="flex items-center justify-between">
              <div>
                <div className="text-sm text-muted-foreground">Tu nivel actual</div>
                <div className="text-3xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">
                  Nivel {progress.level}
                </div>
                <div className="text-xs text-muted-foreground mt-1">
                  {progress.learnedWords.length} palabras aprendidas
                </div>
              </div>
              <Trophy className="w-12 h-12 text-yellow-600 dark:text-yellow-400" />
            </div>
            <Button
              variant="ghost"
              size="sm"
              onClick={() => setMode('progress')}
              className="w-full mt-3 sm:hidden"
            >
              Ver estadísticas completas
            </Button>
          </div>

          <div className="space-y-3">
            <label className="text-sm font-semibold">¿Qué quieres aprender hoy?</label>
            <Input
              placeholder="Ej: saludos, familia, números, comida..."
              value={topic}
              onChange={(e) => setTopic(e.target.value)}
              onKeyPress={(e) => e.key === 'Enter' && generateLearningSession()}
              className="text-lg"
            />
          </div>

          <div className="grid gap-4 md:grid-cols-2">
            <Button
              onClick={generateLearningSession}
              disabled={!topic.trim() || isLoading}
              className="h-auto py-6 bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white"
            >
              <div className="flex flex-col items-center gap-2">
                <BookOpen className="w-8 h-8" />
                <div>
                  <div className="font-bold">Sesión de Aprendizaje</div>
                  <div className="text-xs opacity-90">Palabras nuevas y ejemplos</div>
                </div>
              </div>
            </Button>

            <Button
              onClick={generateQuiz}
              disabled={isLoading || progress.learnedWords.length < 3}
              className="h-auto py-6 bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white disabled:opacity-50"
            >
              <div className="flex flex-col items-center gap-2">
                <Target className="w-8 h-8" />
                <div>
                  <div className="font-bold">Quiz Interactivo</div>
                  <div className="text-xs opacity-90">
                    {progress.learnedWords.length < 3 
                      ? 'Aprende 3 palabras primero' 
                      : 'Pon a prueba tus conocimientos'}
                  </div>
                </div>
              </div>
            </Button>
          </div>

          {isLoading && (
            <div className="text-center py-4">
              <div className="inline-flex items-center gap-2 text-purple-600 dark:text-purple-400">
                <RefreshCw className="w-5 h-5 animate-spin" />
                <span>Generando contenido con IA...</span>
              </div>
            </div>
          )}

          <div className="grid gap-3 md:grid-cols-3 pt-4 border-t">
            <div className="text-center p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <Sparkles className="w-6 h-6 mx-auto mb-2 text-purple-600 dark:text-purple-400" />
              <div className="text-sm font-semibold">Sin Repetición</div>
              <div className="text-xs text-muted-foreground">Siempre palabras nuevas</div>
            </div>
            <div className="text-center p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <Zap className="w-6 h-6 mx-auto mb-2 text-yellow-600 dark:text-yellow-400" />
              <div className="text-sm font-semibold">Progreso Real</div>
              <div className="text-xs text-muted-foreground">Sube de nivel</div>
            </div>
            <div className="text-center p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <Trophy className="w-6 h-6 mx-auto mb-2 text-orange-600 dark:text-orange-400" />
              <div className="text-sm font-semibold">Gamificación</div>
              <div className="text-xs text-muted-foreground">Logros y puntos</div>
            </div>
          </div>
        </CardContent>
      </Card>
    );
  }

  // Sesión de aprendizaje
  if (mode === 'session' && sessionData) {
    return (
      <Card className="w-full">
        <CardHeader>
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-2">
              <BookOpen className="w-6 h-6 text-purple-600 dark:text-purple-400" />
              <CardTitle>Sesión: {topic}</CardTitle>
            </div>
            <Button variant="outline" size="sm" onClick={resetToMenu}>
              Volver al menú
            </Button>
          </div>
        </CardHeader>
        <CardContent className="space-y-6">
          {/* Palabras */}
          <div>
            <h3 className="text-lg font-bold mb-3 flex items-center gap-2">
              <Sparkles className="w-5 h-5 text-purple-600" />
              Vocabulario
            </h3>
            <div className="grid gap-3 md:grid-cols-2">
              {sessionData.words.map((word, idx) => (
                <div
                  key={idx}
                  className="p-4 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 rounded-lg border border-purple-200 dark:border-purple-800"
                >
                  <div className="flex items-center justify-between mb-2">
                    <div className="text-2xl font-bold text-purple-600 dark:text-purple-400">
                      {word.bubi}
                    </div>
                    <Button
                      variant="ghost"
                      size="icon"
                      onClick={() => speakWord(word.bubi)}
                    >
                      <Volume2 className="w-4 h-4" />
                    </Button>
                  </div>
                  <div className="text-lg text-pink-600 dark:text-pink-400 font-medium">
                    {word.spanish}
                  </div>
                  {word.ipa && (
                    <div className="text-sm text-muted-foreground font-mono mt-1">
                      /{word.ipa}/
                    </div>
                  )}
                </div>
              ))}
            </div>
          </div>

          {/* Ejemplos */}
          <div>
            <h3 className="text-lg font-bold mb-3 flex items-center gap-2">
              <BookOpen className="w-5 h-5 text-blue-600" />
              Ejemplos de Uso
            </h3>
            <div className="space-y-3">
              {sessionData.examples.map((example, idx) => (
                <div
                  key={idx}
                  className="p-4 bg-blue-50 dark:bg-blue-950/30 rounded-lg border border-blue-200 dark:border-blue-800"
                >
                  <div className="flex items-start gap-3">
                    <div className="flex-shrink-0 w-6 h-6 rounded-full bg-blue-600 text-white flex items-center justify-center text-sm font-bold">
                      {idx + 1}
                    </div>
                    <div className="flex-1">
                      <div className="font-semibold text-blue-900 dark:text-blue-100 mb-1">
                        {example.bubi}
                      </div>
                      <div className="text-sm text-blue-700 dark:text-blue-300">
                        {example.spanish}
                      </div>
                    </div>
                    <Button
                      variant="ghost"
                      size="icon"
                      onClick={() => speakWord(example.bubi)}
                    >
                      <Volume2 className="w-4 h-4" />
                    </Button>
                  </div>
                </div>
              ))}
            </div>
          </div>

          {/* Notas culturales */}
          <div>
            <h3 className="text-lg font-bold mb-3 flex items-center gap-2">
              <Sparkles className="w-5 h-5 text-orange-600" />
              Notas Culturales
            </h3>
            <div className="space-y-2">
              {sessionData.culturalNotes.map((note, idx) => (
                <div
                  key={idx}
                  className="p-3 bg-orange-50 dark:bg-orange-950/30 rounded-lg border border-orange-200 dark:border-orange-800 text-sm"
                >
                  <span className="text-orange-600 dark:text-orange-400 font-bold mr-2">💡</span>
                  {note}
                </div>
              ))}
            </div>
          </div>

          <div className="grid gap-3 md:grid-cols-2">
            <Button
              onClick={completeSession}
              className="w-full bg-gradient-to-r from-green-600 to-emerald-600 hover:from-green-700 hover:to-emerald-700 text-white"
            >
              <CheckCircle2 className="w-4 h-4 mr-2" />
              Marcar como Completada
            </Button>
            <Button
              onClick={() => {
                completeSession();
                generateQuiz();
              }}
              className="w-full bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white"
            >
              Completar y Hacer Quiz
              <ArrowRight className="w-4 h-4 ml-2" />
            </Button>
          </div>
        </CardContent>
      </Card>
    );
  }

  // Quiz
  if (mode === 'quiz' && quizData.length > 0) {
    const currentQuestion = quizData[currentQuestionIndex];
    const isQuizComplete = currentQuestionIndex === quizData.length - 1 && showExplanation;

    return (
      <Card className="w-full">
        <CardHeader>
          <div className="flex items-center justify-between">
            <div className="flex items-center gap-2">
              <Target className="w-6 h-6 text-blue-600 dark:text-blue-400" />
              <CardTitle>Quiz: {topic}</CardTitle>
            </div>
            <Button variant="outline" size="sm" onClick={resetToMenu}>
              Salir
            </Button>
          </div>
          <div className="flex items-center justify-between text-sm">
            <span>Pregunta {currentQuestionIndex + 1} de {quizData.length}</span>
            <span className="font-bold text-blue-600 dark:text-blue-400">
              Puntuación: {score}/{answeredQuestions}
            </span>
          </div>
          <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
            <div
              className="bg-gradient-to-r from-blue-600 to-cyan-600 h-2 rounded-full transition-all"
              style={{ width: `${((currentQuestionIndex + 1) / quizData.length) * 100}%` }}
            />
          </div>
        </CardHeader>
        <CardContent className="space-y-6">
          <div className="p-6 bg-gradient-to-br from-blue-50 to-cyan-50 dark:from-blue-950/30 dark:to-cyan-950/30 rounded-lg border-2 border-blue-200 dark:border-blue-800">
            <h3 className="text-xl font-bold mb-4">{currentQuestion.question}</h3>
            <div className="space-y-3">
              {currentQuestion.options.map((option, idx) => {
                const isSelected = selectedAnswer === idx;
                const isCorrect = idx === currentQuestion.correctAnswer;
                const showResult = showExplanation;

                let buttonClass = "w-full p-4 text-left border-2 rounded-lg transition-all ";
                if (!showResult) {
                  buttonClass += isSelected
                    ? "border-blue-600 bg-blue-100 dark:bg-blue-900/30"
                    : "border-gray-300 dark:border-gray-700 hover:border-blue-400";
                } else {
                  if (isCorrect) {
                    buttonClass += "border-green-600 bg-green-100 dark:bg-green-900/30";
                  } else if (isSelected && !isCorrect) {
                    buttonClass += "border-red-600 bg-red-100 dark:bg-red-900/30";
                  } else {
                    buttonClass += "border-gray-300 dark:border-gray-700 opacity-50";
                  }
                }

                return (
                  <button
                    key={idx}
                    onClick={() => handleAnswerSelect(idx)}
                    disabled={showExplanation}
                    className={buttonClass}
                  >
                    <div className="flex items-center justify-between">
                      <span className="font-medium">{option}</span>
                      {showResult && isCorrect && (
                        <CheckCircle2 className="w-5 h-5 text-green-600" />
                      )}
                      {showResult && isSelected && !isCorrect && (
                        <XCircle className="w-5 h-5 text-red-600" />
                      )}
                    </div>
                  </button>
                );
              })}
            </div>
          </div>

          {showExplanation && (
            <div className="p-4 bg-purple-50 dark:bg-purple-950/30 rounded-lg border border-purple-200 dark:border-purple-800 animate-fade-in">
              <div className="flex items-start gap-2">
                <Sparkles className="w-5 h-5 text-purple-600 dark:text-purple-400 flex-shrink-0 mt-0.5" />
                <div>
                  <div className="font-bold text-purple-900 dark:text-purple-100 mb-1">
                    Explicación
                  </div>
                  <div className="text-sm text-purple-800 dark:text-purple-200">
                    {currentQuestion.explanation}
                  </div>
                </div>
              </div>
            </div>
          )}

          {showExplanation && !isQuizComplete && (
            <Button
              onClick={nextQuestion}
              className="w-full bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white"
            >
              Siguiente pregunta
              <ArrowRight className="w-4 h-4 ml-2" />
            </Button>
          )}

          {isQuizComplete && (
            <div className="space-y-4">
              <div className="p-6 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 rounded-lg border-2 border-purple-200 dark:border-purple-800 text-center">
                <Trophy className="w-16 h-16 mx-auto mb-4 text-yellow-600" />
                <h3 className="text-2xl font-bold mb-2">¡Quiz Completado!</h3>
                <div className="text-4xl font-bold text-purple-600 dark:text-purple-400 mb-2">
                  {score}/{quizData.length}
                </div>
                <div className="text-lg text-muted-foreground">
                  {score === quizData.length
                    ? '¡Perfecto! Dominas este tema'
                    : score >= quizData.length * 0.7
                    ? '¡Muy bien! Sigue practicando'
                    : 'Sigue aprendiendo, vas por buen camino'}
                </div>
              </div>
              <div className="grid gap-3 md:grid-cols-2">
                <Button
                  onClick={() => {
                    completeQuiz();
                    resetToMenu();
                  }}
                  variant="outline"
                  className="w-full"
                >
                  Volver al menú
                </Button>
                <Button
                  onClick={() => {
                    completeQuiz();
                    generateQuiz();
                  }}
                  className="w-full bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white"
                >
                  <RefreshCw className="w-4 h-4 mr-2" />
                  Nuevo Quiz
                </Button>
              </div>
            </div>
          )}
        </CardContent>
      </Card>
    );
  }

  return null;
};

export default LearningSystem;
