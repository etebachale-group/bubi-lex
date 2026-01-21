"use client";

import { useState, useCallback, useEffect } from "react";
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
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
  Volume2,
  Lock,
  Star,
  Flame,
  GraduationCap,
  Clock
} from "lucide-react";
import { speak } from "@/lib/speech-synthesis";

type LearningMode = 'menu' | 'lessons' | 'lesson-detail' | 'session' | 'quiz' | 'progress';

type Word = {
  bubi: string;
  spanish: string;
  ipa?: string;
  id?: number;
};

type LessonData = {
  id: number;
  title: string;
  desc: string;
  status: string;
  time: string;
  words: number;
  category: string;
  content?: string;
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
  const [isLoading, setIsLoading] = useState(false);
  const [sessionData, setSessionData] = useState<SessionData | null>(null);
  const [quizData, setQuizData] = useState<QuizQuestion[]>([]);
  const [currentQuestionIndex, setCurrentQuestionIndex] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [showExplanation, setShowExplanation] = useState(false);
  const [score, setScore] = useState(0);
  const [answeredQuestions, setAnsweredQuestions] = useState(0);
  const [currentLesson, setCurrentLesson] = useState<LessonData | null>(null);
  const [progress, setProgress] = useState<UserProgress>({
    learnedWords: [],
    completedTopics: [],
    totalScore: 0,
    quizzesTaken: 0,
    level: 1,
  });
  
  // Estados para el quiz de la lección
  const [quizStarted, setQuizStarted] = useState(false);
  const [quizIndex, setQuizIndex] = useState(0);
  const [quizScore, setQuizScore] = useState(0);
  const [quizAnswer, setQuizAnswer] = useState<number | null>(null);
  const [showQuizExp, setShowQuizExp] = useState(false);

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
      // Obtener muchas palabras (el límite máximo del API es 100 por request)
      // Vamos a hacer múltiples requests para obtener más palabras
      const allWords: any[] = [];
      let page = 1;
      const limit = 100;
      let hasMore = true;
      
      // Obtener hasta 500 palabras (5 páginas)
      while (hasMore && page <= 5) {
        const res = await fetch(`/api/dictionary?limit=${limit}&page=${page}`);
        if (res.ok) {
          const data = await res.json();
          const items = data.items || [];
          if (items.length > 0) {
            allWords.push(...items);
            page++;
          } else {
            hasMore = false;
          }
        } else {
          hasMore = false;
        }
      }
      
      // Filtrar palabras ya aprendidas
      const unlearnedWords = allWords.filter((word: any) => 
        !progress.learnedWords.includes(word.id)
      );
      return unlearnedWords;
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
      const res = await fetch('/api/ai/learning-session', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ 
          topic: 'vocabulario básico', 
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
  }, [getUnlearnedWords]);

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
      // Obtener palabras (múltiples páginas para tener más opciones)
      const allWords: any[] = [];
      let page = 1;
      const limit = 100;
      let hasMore = true;
      
      // Obtener hasta 300 palabras (3 páginas)
      while (hasMore && page <= 3) {
        const res = await fetch(`/api/dictionary?limit=${limit}&page=${page}`);
        if (res.ok) {
          const data = await res.json();
          const items = data.items || [];
          if (items.length > 0) {
            allWords.push(...items);
            page++;
          } else {
            hasMore = false;
          }
        } else {
          hasMore = false;
        }
      }
      
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
          topic: 'palabras aprendidas',
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
  }, [progress.learnedWords]);

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
    setSessionData(null);
    setQuizData([]);
    setCurrentQuestionIndex(0);
    setSelectedAnswer(null);
    setShowExplanation(false);
    setScore(0);
    setAnsweredQuestions(0);
    setCurrentLesson(null);
    setQuizStarted(false);
    setQuizIndex(0);
    setQuizScore(0);
    setQuizAnswer(null);
    setShowQuizExp(false);
  };

  // Abrir una lección
  const openLesson = (lesson: LessonData) => {
    setCurrentLesson(lesson);
    setMode('lesson-detail');
    setQuizStarted(false);
    setQuizIndex(0);
    setQuizScore(0);
    setQuizAnswer(null);
    setShowQuizExp(false);
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
        <CardHeader className="pb-3 sm:pb-6">
          <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <div className="flex items-center gap-2">
              <Trophy className="w-5 h-5 sm:w-6 sm:h-6 text-yellow-600 dark:text-yellow-400" />
              <CardTitle className="text-lg sm:text-xl">Tu Progreso</CardTitle>
            </div>
            <Button variant="outline" size="sm" onClick={() => setMode('menu')} className="self-start sm:self-auto">
              Volver al menú
            </Button>
          </div>
        </CardHeader>
        <CardContent>
          <div className="space-y-4 sm:space-y-6">
            {/* Nivel actual */}
            <div className="text-center p-4 sm:p-6 bg-gradient-to-br from-yellow-50 to-orange-50 dark:from-yellow-950/30 dark:to-orange-950/30 rounded-lg border-2 border-yellow-200 dark:border-yellow-800">
              <Trophy className="w-16 h-16 sm:w-20 sm:h-20 mx-auto mb-2 sm:mb-3 text-yellow-600 dark:text-yellow-400" />
              <div className="text-4xl sm:text-5xl font-bold mb-1 sm:mb-2 bg-gradient-to-r from-yellow-600 to-orange-600 bg-clip-text text-transparent">
                Nivel {progress.level}
              </div>
              <div className="text-base sm:text-lg text-muted-foreground">
                {progress.learnedWords.length} palabras aprendidas
              </div>
            </div>
            
            {/* Barra de progreso al siguiente nivel */}
            <div>
              <div className="flex justify-between text-xs sm:text-sm mb-2 font-medium">
                <span>Progreso al siguiente nivel</span>
                <span className="text-purple-600 dark:text-purple-400">
                  {progressToNextLevel}/{WORDS_PER_LEVEL}
                </span>
              </div>
              <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-3 sm:h-4 overflow-hidden">
                <div 
                  className="bg-gradient-to-r from-purple-600 to-pink-600 h-3 sm:h-4 rounded-full transition-all duration-500"
                  style={{ width: `${progressPercentage}%` }}
                />
              </div>
              <div className="text-xs text-muted-foreground mt-1 text-center">
                {WORDS_PER_LEVEL - progressToNextLevel} palabras más para nivel {progress.level + 1}
              </div>
            </div>
            
            {/* Estadísticas */}
            <div className="grid grid-cols-2 gap-3 sm:gap-4">
              <div className="p-3 sm:p-5 bg-blue-50 dark:bg-blue-950/30 rounded-lg border border-blue-200 dark:border-blue-800 text-center">
                <Target className="w-6 h-6 sm:w-8 sm:h-8 mx-auto mb-1 sm:mb-2 text-blue-600 dark:text-blue-400" />
                <div className="text-2xl sm:text-3xl font-bold text-blue-600 dark:text-blue-400">
                  {progress.quizzesTaken}
                </div>
                <div className="text-xs sm:text-sm text-muted-foreground mt-1">Quizzes</div>
              </div>
              <div className="p-3 sm:p-5 bg-green-50 dark:bg-green-950/30 rounded-lg border border-green-200 dark:border-green-800 text-center">
                <Sparkles className="w-6 h-6 sm:w-8 sm:h-8 mx-auto mb-1 sm:mb-2 text-green-600 dark:text-green-400" />
                <div className="text-2xl sm:text-3xl font-bold text-green-600 dark:text-green-400">
                  {progress.totalScore}
                </div>
                <div className="text-xs sm:text-sm text-muted-foreground mt-1">Puntos</div>
              </div>
            </div>

            {/* Logros */}
            <div className="p-3 sm:p-4 bg-gradient-to-r from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 rounded-lg border border-purple-200 dark:border-purple-800">
              <h3 className="text-sm sm:text-base font-bold mb-2 sm:mb-3 flex items-center gap-2">
                <Trophy className="w-4 h-4 sm:w-5 sm:h-5 text-purple-600" />
                Logros Desbloqueados
              </h3>
              <div className="space-y-1.5 sm:space-y-2">
                {progress.learnedWords.length >= 5 && (
                  <div className="flex items-center gap-2 text-xs sm:text-sm">
                    <CheckCircle2 className="w-3 h-3 sm:w-4 sm:h-4 text-green-600 flex-shrink-0" />
                    <span>🎯 Primeros Pasos - Aprendiste 5 palabras</span>
                  </div>
                )}
                {progress.learnedWords.length >= 20 && (
                  <div className="flex items-center gap-2 text-xs sm:text-sm">
                    <CheckCircle2 className="w-3 h-3 sm:w-4 sm:h-4 text-green-600 flex-shrink-0" />
                    <span>🌟 Estudiante Dedicado - Alcanzaste nivel 2</span>
                  </div>
                )}
                {progress.quizzesTaken >= 5 && (
                  <div className="flex items-center gap-2 text-xs sm:text-sm">
                    <CheckCircle2 className="w-3 h-3 sm:w-4 sm:h-4 text-green-600 flex-shrink-0" />
                    <span>📚 Maestro del Quiz - Completaste 5 quizzes</span>
                  </div>
                )}
                {progress.learnedWords.length === 0 && (
                  <div className="text-xs sm:text-sm text-muted-foreground italic">
                    Completa sesiones de aprendizaje para desbloquear logros
                  </div>
                )}
              </div>
            </div>
            
            {/* Botón reiniciar */}
            <Button 
              variant="outline" 
              onClick={resetProgress}
              className="w-full border-red-200 dark:border-red-800 text-red-600 dark:text-red-400 hover:bg-red-50 dark:hover:bg-red-950/30 text-sm"
            >
              <RefreshCw className="w-3 h-3 sm:w-4 sm:h-4 mr-2" />
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
        <CardHeader className="pb-3 sm:pb-6">
          <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3 mb-2">
            <div className="flex items-center gap-2">
              <Brain className="w-5 h-5 sm:w-6 sm:h-6 text-purple-600 dark:text-purple-400 animate-pulse" />
              <CardTitle className="text-xl sm:text-2xl">Sistema de Aprendizaje</CardTitle>
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
          <CardDescription className="text-sm">
            Elige cómo quieres aprender Bubi hoy
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-4 sm:space-y-6">
          {/* Card de progreso */}
          <div className="p-3 sm:p-4 bg-gradient-to-r from-purple-100 to-pink-100 dark:from-purple-900/50 dark:to-pink-900/50 rounded-lg border border-purple-200 dark:border-purple-800">
            <div className="flex items-center justify-between">
              <div>
                <div className="text-xs sm:text-sm text-muted-foreground">Tu nivel actual</div>
                <div className="text-2xl sm:text-3xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 bg-clip-text text-transparent">
                  Nivel {progress.level}
                </div>
                <div className="text-xs text-muted-foreground mt-1">
                  {progress.learnedWords.length} palabras
                </div>
              </div>
              <Trophy className="w-10 h-10 sm:w-12 sm:h-12 text-yellow-600 dark:text-yellow-400" />
            </div>
            <Button
              variant="ghost"
              size="sm"
              onClick={() => setMode('progress')}
              className="w-full mt-3 sm:hidden text-xs"
            >
              Ver estadísticas completas
            </Button>
          </div>

          {/* Opciones de aprendizaje */}
          <div className="grid grid-cols-1 sm:grid-cols-3 gap-3 sm:gap-4">
            {/* Lecciones Estructuradas - NUEVO */}
            <Button
              onClick={() => setMode('lessons')}
              className="h-auto py-4 sm:py-6 bg-gradient-to-r from-blue-600 to-indigo-600 hover:from-blue-700 hover:to-indigo-700 text-white"
            >
              <div className="flex flex-col items-center gap-1 sm:gap-2">
                <GraduationCap className="w-6 h-6 sm:w-8 sm:h-8" />
                <div>
                  <div className="font-bold text-sm sm:text-base">Lecciones</div>
                  <div className="text-xs opacity-90">Curso estructurado</div>
                </div>
              </div>
            </Button>

            {/* Práctica Rápida */}
            <Button
              onClick={generateLearningSession}
              disabled={isLoading}
              className="h-auto py-4 sm:py-6 bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white"
            >
              <div className="flex flex-col items-center gap-1 sm:gap-2">
                <BookOpen className="w-6 h-6 sm:w-8 sm:h-8" />
                <div>
                  <div className="font-bold text-sm sm:text-base">Práctica Rápida</div>
                  <div className="text-xs opacity-90">5 palabras aleatorias</div>
                </div>
              </div>
            </Button>

            {/* Quiz */}
            <Button
              onClick={generateQuiz}
              disabled={isLoading || progress.learnedWords.length < 3}
              className="h-auto py-4 sm:py-6 bg-gradient-to-r from-green-600 to-emerald-600 hover:from-green-700 hover:to-emerald-700 text-white disabled:opacity-50"
            >
              <div className="flex flex-col items-center gap-1 sm:gap-2">
                <Target className="w-6 h-6 sm:w-8 sm:h-8" />
                <div>
                  <div className="font-bold text-sm sm:text-base">Quiz</div>
                  <div className="text-xs opacity-90">
                    {progress.learnedWords.length < 3 
                      ? 'Aprende 3 primero' 
                      : 'Pon a prueba'}
                  </div>
                </div>
              </div>
            </Button>
          </div>

          {isLoading && (
            <div className="text-center py-3 sm:py-4">
              <div className="inline-flex items-center gap-2 text-purple-600 dark:text-purple-400 text-sm">
                <RefreshCw className="w-4 h-4 sm:w-5 sm:h-5 animate-spin" />
                <span>Generando contenido...</span>
              </div>
            </div>
          )}

          <div className="grid grid-cols-3 gap-2 sm:gap-3 pt-3 sm:pt-4 border-t">
            <div className="text-center p-2 sm:p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <GraduationCap className="w-5 h-5 sm:w-6 sm:h-6 mx-auto mb-1 sm:mb-2 text-blue-600 dark:text-blue-400" />
              <div className="text-xs sm:text-sm font-semibold">Curso</div>
              <div className="text-xs text-muted-foreground hidden sm:block">12 lecciones</div>
            </div>
            <div className="text-center p-2 sm:p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <Zap className="w-5 h-5 sm:w-6 sm:h-6 mx-auto mb-1 sm:mb-2 text-yellow-600 dark:text-yellow-400" />
              <div className="text-xs sm:text-sm font-semibold">Progreso</div>
              <div className="text-xs text-muted-foreground hidden sm:block">Sube de nivel</div>
            </div>
            <div className="text-center p-2 sm:p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <Trophy className="w-5 h-5 sm:w-6 sm:h-6 mx-auto mb-1 sm:mb-2 text-orange-600 dark:text-orange-400" />
              <div className="text-xs sm:text-sm font-semibold">Logros</div>
              <div className="text-xs text-muted-foreground hidden sm:block">Puntos</div>
            </div>
          </div>
        </CardContent>
      </Card>
    );
  }

  // Lista de lecciones estructuradas
  if (mode === 'lessons') {
    const lessons = [
      { 
        id: 1, 
        title: "Lección 1: Saludos y Presentaciones", 
        desc: "Aprende palabras básicas: botyo (persona), bótó (casa), móló (agua)", 
        status: "available", 
        time: "15 min", 
        words: 10, 
        category: "Saludos",
        content: "Palabras: botyo, batyo, bótó, móló, lóbà, èrí, rìbà, lobora, telle, sossa"
      },
      { 
        id: 2, 
        title: "Lección 2: Números 1-10", 
        desc: "Sistema numérico: mottí (1), babá (2), balalo (3)...", 
        status: "locked", 
        time: "20 min", 
        words: 10, 
        category: "Números",
        content: "Números: mottí, babá, balalo, bíná, bítáno, motóba, sambuali, mwambe, libua, jómi"
      },
      { 
        id: 3, 
        title: "Lección 3: La Familia", 
        desc: "Familia: pateri (padre), materi (madre), mwana (hijo)", 
        status: "locked", 
        time: "25 min", 
        words: 15, 
        category: "Familia",
        content: "Clases nominales Cl.1 (bo-) y Cl.2 (ba-) para personas"
      },
      { 
        id: 4, 
        title: "Lección 4: Colores y Formas", 
        desc: "Colores: pépé (rojo), pípi (negro), tótó (blanco)", 
        status: "locked", 
        time: "20 min", 
        words: 12, 
        category: "Colores",
        content: "Adjetivos con concordancia de clase nominal"
      },
      { 
        id: 5, 
        title: "Lección 5: Comida y Bebida", 
        desc: "Alimentos: biheli (ñames), mbika (pescado), nyama (carne)", 
        status: "locked", 
        time: "30 min", 
        words: 20, 
        category: "Comida",
        content: "Vocabulario de alimentos tradicionales Bubi"
      },
      { 
        id: 6, 
        title: "Lección 6: El Cuerpo Humano", 
        desc: "Cuerpo: motó (cabeza), liso (ojo), loboko (brazo)", 
        status: "locked", 
        time: "25 min", 
        words: 18, 
        category: "Cuerpo",
        content: "Clases Cl.5 (li-) y Cl.6 (ma-) para partes del cuerpo"
      },
      { 
        id: 7, 
        title: "Lección 7: La Casa", 
        desc: "Casa: bótó (casa), tébollo (mesa), bOntána (ventana)", 
        status: "locked", 
        time: "30 min", 
        words: 20, 
        category: "Casa",
        content: "Vocabulario doméstico con préstamos del español"
      },
      { 
        id: 8, 
        title: "Lección 8: Verbos Básicos", 
        desc: "Verbos: sossa (leer), tyá (ir), ría (comer), nua (beber)", 
        status: "locked", 
        time: "35 min", 
        words: 15, 
        category: "Verbos",
        content: "Conjugación con prefijo o- en presente"
      },
      { 
        id: 9, 
        title: "Lección 9: Clases Nominales", 
        desc: "Sistema de 14 clases con prefijos: bo-, ba-, mo-, mi-, li-, ma-...", 
        status: "locked", 
        time: "40 min", 
        words: 0, 
        category: "Gramática",
        content: "Fundamento del sistema gramatical Bubi"
      },
      { 
        id: 10, 
        title: "Lección 10: Construcción de Oraciones", 
        desc: "Orden S-V-O: Botyo osossa ribúkku (La persona lee un libro)", 
        status: "locked", 
        time: "40 min", 
        words: 0, 
        category: "Gramática",
        content: "Sintaxis y concordancia obligatoria"
      },
      { 
        id: 11, 
        title: "Lección 11: Conversación Básica", 
        desc: "Frases: Bótó lá móló (La casa tiene agua)", 
        status: "locked", 
        time: "45 min", 
        words: 25, 
        category: "Conversación",
        content: "Diálogos en situaciones cotidianas"
      },
      { 
        id: 12, 
        title: "Lección 12: Cultura Bubi", 
        desc: "Historia, tradiciones y cosmovisión del pueblo Bubi de Bioko", 
        status: "locked", 
        time: "30 min", 
        words: 15, 
        category: "Cultura",
        content: "Contexto cultural e histórico de la lengua"
      },
    ];

    return (
      <Card className="w-full">
        <CardHeader className="pb-3 sm:pb-6">
          <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <div className="flex items-center gap-2">
              <GraduationCap className="w-5 h-5 sm:w-6 sm:h-6 text-blue-600 dark:text-blue-400" />
              <CardTitle className="text-lg sm:text-xl">Curso de Bubi</CardTitle>
            </div>
            <Button variant="outline" size="sm" onClick={() => setMode('menu')} className="self-start sm:self-auto">
              Volver
            </Button>
          </div>
          <CardDescription className="text-sm">
            12 lecciones desde principiante hasta intermedio
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-2 sm:space-y-3">
          {lessons.map((lesson) => {
            const isLocked = lesson.status === 'locked';
            return (
              <div
                key={lesson.id}
                className={`p-3 sm:p-4 rounded-lg border-2 transition-all ${
                  isLocked
                    ? 'border-gray-200 dark:border-gray-800 opacity-60'
                    : 'border-blue-200 dark:border-blue-800 hover:border-blue-400 dark:hover:border-blue-600 cursor-pointer'
                }`}
              >
                <div className="flex items-start gap-2 sm:gap-4">
                  <div className={`p-2 sm:p-3 rounded-lg flex-shrink-0 ${isLocked ? 'bg-gray-200 dark:bg-gray-800' : 'bg-blue-100 dark:bg-blue-900'}`}>
                    {isLocked ? (
                      <Lock className="w-4 h-4 sm:w-6 sm:h-6 text-gray-500" />
                    ) : (
                      <BookOpen className="w-4 h-4 sm:w-6 sm:h-6 text-blue-600 dark:text-blue-400" />
                    )}
                  </div>
                  <div className="flex-1 min-w-0">
                    <div className="flex flex-col sm:flex-row sm:items-start sm:justify-between gap-2">
                      <div className="flex-1 min-w-0">
                        <h3 className="font-bold text-sm sm:text-lg leading-tight">{lesson.title}</h3>
                        <p className="text-xs sm:text-sm text-muted-foreground mt-0.5 sm:mt-1">{lesson.desc}</p>
                        {lesson.content && (
                          <p className="text-xs text-blue-600 dark:text-blue-400 mt-1 italic">
                            📖 {lesson.content}
                          </p>
                        )}
                        <div className="flex flex-wrap gap-2 sm:gap-4 mt-1.5 sm:mt-2 text-xs text-muted-foreground">
                          <span className="flex items-center gap-1">
                            <Clock className="w-3 h-3" />
                            {lesson.time}
                          </span>
                          {lesson.words > 0 && (
                            <span className="flex items-center gap-1">
                              <BookOpen className="w-3 h-3" />
                              {lesson.words} palabras
                            </span>
                          )}
                          <span className="px-1.5 sm:px-2 py-0.5 bg-blue-100 dark:bg-blue-900 text-blue-700 dark:text-blue-300 rounded text-xs">
                            {lesson.category}
                          </span>
                        </div>
                      </div>
                      {!isLocked && (
                        <Button 
                          size="sm" 
                          className="bg-blue-600 hover:bg-blue-700 text-xs sm:text-sm self-start sm:self-auto whitespace-nowrap"
                          onClick={() => openLesson(lesson)}
                        >
                          <Play className="w-3 h-3 sm:w-4 sm:h-4 mr-1" />
                          Empezar
                        </Button>
                      )}
                    </div>
                  </div>
                </div>
              </div>
            );
          })}
        </CardContent>
      </Card>
    );
  }

  // Detalle de lección
  if (mode === 'lesson-detail' && currentLesson) {
    // Contenido educativo de la Lección 1
    const lesson1Vocab = [
      { bubi: "botyo", spanish: "persona", example: "Botyo osossa ribúkku (La persona lee un libro)" },
      { bubi: "batyo", spanish: "personas", example: "Batyo be tyá (Las personas van)" },
      { bubi: "bótó", spanish: "casa", example: "Bótó lá móló (La casa tiene agua)" },
      { bubi: "móló", spanish: "agua", example: "Móló mó telle (El agua es buena)" },
      { bubi: "lóbà", spanish: "día", example: "Lóbà ló telle (El día es bueno)" },
      { bubi: "èrí", spanish: "árbol", example: "Èrí é búkku (El árbol es grande)" },
      { bubi: "rìbà", spanish: "comida", example: "Rìbà ló bótó (La comida está en la casa)" },
      { bubi: "lobora", spanish: "palabra", example: "Lobora ló telle (La palabra es buena)" },
      { bubi: "telle", spanish: "bien/bueno", example: "Bótó bó telle (La casa es buena)" },
      { bubi: "sossa", spanish: "leer/contar", example: "Na osossa (Yo leo)" },
    ];

    const lesson1Grammar = [
      { title: "7 Vocales", text: "El Bubi tiene 7 vocales: a, e, ɛ, i, o, ɔ, u (más que español)" },
      { title: "Tonos", text: "Tono alto (´) y bajo (`) cambian el significado" },
      { title: "Clases", text: "Cl.1 (bo-) personas singular, Cl.2 (ba-) personas plural" },
      { title: "Concordancia", text: "Los adjetivos copian el prefijo: bótó búkku" },
    ];

    const lesson1Quiz = [
      { q: "¿Qué significa 'botyo'?", opts: ["casa", "persona", "agua", "día"], correct: 1, exp: "'botyo' = persona (Cl.1, singular)" },
      { q: "Plural de 'botyo':", opts: ["mabotyo", "batyo", "bibotyo", "lobotyo"], correct: 1, exp: "botyo → batyo (Cl.1 → Cl.2)" },
      { q: "'Bótó lá móló' significa:", opts: ["Persona tiene agua", "Casa tiene agua", "Agua en casa", "Casa grande"], correct: 1, exp: "bótó=casa, lá=tiene, móló=agua" },
      { q: "¿Cuántas vocales tiene Bubi?", opts: ["5", "6", "7", "8"], correct: 2, exp: "7 vocales: a,e,ɛ,i,o,ɔ,u" },
      { q: "Prefijo Clase 1:", opts: ["ba-", "bo-", "mo-", "li-"], correct: 1, exp: "Cl.1 usa 'bo-' para personas singulares" },
    ];

    const handleQuizAnswer = (idx: number) => {
      if (showQuizExp) return;
      setQuizAnswer(idx);
      setShowQuizExp(true);
      if (idx === lesson1Quiz[quizIndex].correct) {
        setQuizScore(quizScore + 1);
      }
    };

    const nextQuizQuestion = () => {
      if (quizIndex < lesson1Quiz.length - 1) {
        setQuizIndex(quizIndex + 1);
        setQuizAnswer(null);
        setShowQuizExp(false);
      }
    };

    return (
      <Card className="w-full">
        <CardHeader className="pb-3 sm:pb-6">
          <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
            <div className="flex items-center gap-2">
              <GraduationCap className="w-5 h-5 sm:w-6 sm:h-6 text-blue-600 dark:text-blue-400" />
              <CardTitle className="text-lg sm:text-xl">{currentLesson.title}</CardTitle>
            </div>
            <Button variant="outline" size="sm" onClick={() => setMode('lessons')} className="self-start sm:self-auto">
              Volver
            </Button>
          </div>
        </CardHeader>
        <CardContent className="space-y-4 sm:space-y-6">
          {!quizStarted ? (
            <>
              {/* Vocabulario */}
              <div>
                <h3 className="text-base sm:text-lg font-bold mb-3 flex items-center gap-2">
                  <BookOpen className="w-5 h-5 text-purple-600" />
                  Vocabulario (10 palabras)
                </h3>
                <div className="grid gap-2 sm:gap-3">
                  {lesson1Vocab.map((word, idx) => (
                    <div key={idx} className="p-3 sm:p-4 bg-purple-50 dark:bg-purple-950/30 rounded-lg border border-purple-200 dark:border-purple-800">
                      <div className="flex items-start gap-3">
                        <div className="flex-shrink-0 w-6 h-6 sm:w-8 sm:h-8 rounded-full bg-purple-600 text-white flex items-center justify-center text-xs sm:text-sm font-bold">
                          {idx + 1}
                        </div>
                        <div className="flex-1 min-w-0">
                          <div className="flex flex-wrap items-baseline gap-2">
                            <span className="text-base sm:text-lg font-bold text-purple-900 dark:text-purple-100">{word.bubi}</span>
                            <span className="text-sm sm:text-base text-purple-600 dark:text-purple-400">→ {word.spanish}</span>
                          </div>
                          <p className="text-xs sm:text-sm text-muted-foreground mt-1 italic">{word.example}</p>
                        </div>
                      </div>
                    </div>
                  ))}
                </div>
              </div>

              {/* Gramática */}
              <div>
                <h3 className="text-base sm:text-lg font-bold mb-3 flex items-center gap-2">
                  <Brain className="w-5 h-5 text-blue-600" />
                  Gramática Esencial
                </h3>
                <div className="grid gap-2 sm:gap-3">
                  {lesson1Grammar.map((rule, idx) => (
                    <div key={idx} className="p-3 sm:p-4 bg-blue-50 dark:bg-blue-950/30 rounded-lg border border-blue-200 dark:border-blue-800">
                      <h4 className="font-bold text-sm sm:text-base text-blue-900 dark:text-blue-100 mb-1">{rule.title}</h4>
                      <p className="text-xs sm:text-sm text-blue-700 dark:text-blue-300">{rule.text}</p>
                    </div>
                  ))}
                </div>
              </div>

              {/* Cultura */}
              <div className="p-3 sm:p-4 bg-orange-50 dark:bg-orange-950/30 rounded-lg border border-orange-200 dark:border-orange-800">
                <h3 className="text-base sm:text-lg font-bold mb-2 flex items-center gap-2">
                  <Sparkles className="w-5 h-5 text-orange-600" />
                  Contexto Cultural
                </h3>
                <p className="text-xs sm:text-sm text-orange-900 dark:text-orange-100">
                  El Bubi es una lengua bantú de la isla de Bioko, Guinea Ecuatorial. Es una de las más antiguas de la familia nigero-congolesa. Los saludos son muy importantes en la cultura Bubi.
                </p>
              </div>

              {/* Botón Quiz */}
              <Button
                onClick={() => setQuizStarted(true)}
                className="w-full bg-gradient-to-r from-green-600 to-emerald-600 hover:from-green-700 hover:to-emerald-700 text-white py-4 sm:py-6 text-sm sm:text-base"
              >
                <Target className="w-4 h-4 sm:w-5 sm:h-5 mr-2" />
                Empezar Quiz (5 preguntas)
              </Button>
            </>
          ) : (
            <>
              {/* Quiz */}
              {quizIndex < lesson1Quiz.length && !showQuizExp ? (
                <div>
                  <div className="mb-4">
                    <div className="flex justify-between text-sm mb-2">
                      <span>Pregunta {quizIndex + 1} de {lesson1Quiz.length}</span>
                      <span className="font-bold text-green-600">Puntuación: {quizScore}/{quizIndex}</span>
                    </div>
                    <div className="w-full bg-gray-200 dark:bg-gray-700 rounded-full h-2">
                      <div className="bg-green-600 h-2 rounded-full transition-all" style={{ width: `${((quizIndex + 1) / lesson1Quiz.length) * 100}%` }} />
                    </div>
                  </div>
                  <div className="p-4 sm:p-6 bg-blue-50 dark:bg-blue-950/30 rounded-lg border-2 border-blue-200 dark:border-blue-800">
                    <h3 className="text-base sm:text-lg font-bold mb-4">{lesson1Quiz[quizIndex].q}</h3>
                    <div className="space-y-2 sm:space-y-3">
                      {lesson1Quiz[quizIndex].opts.map((opt, idx) => (
                        <button
                          key={idx}
                          onClick={() => handleQuizAnswer(idx)}
                          className="w-full p-3 sm:p-4 text-left border-2 rounded-lg transition-all hover:border-blue-400 text-sm sm:text-base"
                        >
                          {opt}
                        </button>
                      ))}
                    </div>
                  </div>
                </div>
              ) : showQuizExp ? (
                <div>
                  <div className={`p-4 sm:p-6 rounded-lg border-2 ${quizAnswer === lesson1Quiz[quizIndex].correct ? 'bg-green-50 dark:bg-green-950/30 border-green-200 dark:border-green-800' : 'bg-red-50 dark:bg-red-950/30 border-red-200 dark:border-red-800'}`}>
                    <div className="flex items-center gap-2 mb-3">
                      {quizAnswer === lesson1Quiz[quizIndex].correct ? (
                        <CheckCircle2 className="w-6 h-6 text-green-600" />
                      ) : (
                        <XCircle className="w-6 h-6 text-red-600" />
                      )}
                      <h3 className="text-lg font-bold">
                        {quizAnswer === lesson1Quiz[quizIndex].correct ? '¡Correcto!' : 'Incorrecto'}
                      </h3>
                    </div>
                    <p className="text-sm sm:text-base">{lesson1Quiz[quizIndex].exp}</p>
                  </div>
                  {quizIndex < lesson1Quiz.length - 1 ? (
                    <Button onClick={nextQuizQuestion} className="w-full mt-4 bg-blue-600 hover:bg-blue-700">
                      Siguiente Pregunta <ArrowRight className="w-4 h-4 ml-2" />
                    </Button>
                  ) : (
                    <div className="mt-4 p-6 bg-gradient-to-r from-yellow-50 to-orange-50 dark:from-yellow-950/30 dark:to-orange-950/30 rounded-lg border-2 border-yellow-200 dark:border-yellow-800 text-center">
                      <Trophy className="w-16 h-16 mx-auto mb-3 text-yellow-600" />
                      <h3 className="text-xl font-bold mb-2">¡Quiz Completado!</h3>
                      <div className="text-4xl font-bold text-yellow-600 mb-2">{quizScore}/{lesson1Quiz.length}</div>
                      <p className="text-muted-foreground mb-4">
                        {quizScore === lesson1Quiz.length ? '¡Perfecto! Dominas esta lección' : quizScore >= 3 ? '¡Muy bien! Buen progreso' : 'Sigue practicando'}
                      </p>
                      <div className="grid grid-cols-2 gap-3">
                        <Button variant="outline" onClick={() => { setQuizStarted(false); setQuizIndex(0); setQuizScore(0); setQuizAnswer(null); setShowQuizExp(false); }}>
                          Repasar Lección
                        </Button>
                        <Button onClick={() => { alert('¡Lección completada!'); setMode('lessons'); }} className="bg-green-600 hover:bg-green-700">
                          Completar Lección
                        </Button>
                      </div>
                    </div>
                  )}
                </div>
              ) : null}
            </>
          )}
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
              <CardTitle>Sesión de Aprendizaje</CardTitle>
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
              <CardTitle>Quiz Interactivo</CardTitle>
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
