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

type LearningMode = 'menu' | 'session' | 'quiz';

type Word = {
  bubi: string;
  spanish: string;
  ipa?: string;
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

  // Generar sesión de aprendizaje
  const generateLearningSession = useCallback(async () => {
    if (!topic.trim()) return;
    
    setIsLoading(true);
    try {
      const res = await fetch('/api/ai/learning-session', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ topic: topic.trim(), wordCount: 5 }),
      });

      if (res.ok) {
        const data = await res.json();
        setSessionData(data);
        setMode('session');
      } else {
        // Fallback con datos de ejemplo
        setSessionData({
          words: [
            { bubi: 'bótó', spanish: 'casa', ipa: 'bo.to' },
            { bubi: 'móló', spanish: 'agua', ipa: 'mo.lo' },
            { bubi: 'rìbà', spanish: 'comida', ipa: 'ri.ba' },
          ],
          examples: [
            { bubi: 'Bótó lá móló', spanish: 'La casa tiene agua' },
            { bubi: 'Rìbà ló bótó', spanish: 'La comida está en la casa' },
          ],
          culturalNotes: [
            'Las palabras básicas del Bubi reflejan la importancia de la familia y el hogar.',
            'El idioma Bubi tiene tonos que cambian el significado de las palabras.',
          ],
        });
        setMode('session');
      }
    } catch (error) {
      console.error('Error generando sesión:', error);
    } finally {
      setIsLoading(false);
    }
  }, [topic]);

  // Generar quiz
  const generateQuiz = useCallback(async () => {
    if (!topic.trim()) return;
    
    setIsLoading(true);
    setScore(0);
    setAnsweredQuestions(0);
    setCurrentQuestionIndex(0);
    
    try {
      const res = await fetch('/api/ai/quiz', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ topic: topic.trim(), count: 5 }),
      });

      if (res.ok) {
        const data = await res.json();
        if (data.questions && data.questions.length > 0) {
          setQuizData(data.questions);
          setMode('quiz');
          setIsLoading(false);
          return;
        }
      }
      
      // Fallback con preguntas de ejemplo
      setQuizData([
        {
          question: '¿Qué significa "bótó" en español?',
          options: ['Casa', 'Agua', 'Comida', 'Árbol'],
          correctAnswer: 0,
          explanation: '"Bótó" significa "casa" en Bubi. Es una palabra fundamental que representa el hogar familiar.',
        },
        {
          question: '¿Cómo se dice "agua" en Bubi?',
          options: ['Rìbà', 'Móló', 'Bótó', 'Lóbà'],
          correctAnswer: 1,
          explanation: '"Móló" es la palabra para "agua" en Bubi, un recurso esencial en la cultura.',
        },
        {
          question: '¿Qué característica tiene el idioma Bubi?',
          options: ['No tiene vocales', 'Usa tonos', 'Solo consonantes', 'Sin gramática'],
          correctAnswer: 1,
          explanation: 'El Bubi es un idioma tonal, donde el tono cambia el significado de las palabras.',
        },
      ]);
      setMode('quiz');
    } catch (error) {
      console.error('Error generando quiz:', error);
    } finally {
      setIsLoading(false);
    }
  }, [topic]);

  // Manejar respuesta del quiz
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

  // Reiniciar
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
  const speakWord = (text: string) => {
    if ('speechSynthesis' in window) {
      const utterance = new SpeechSynthesisUtterance(text);
      utterance.lang = 'es-ES';
      utterance.rate = 0.8;
      window.speechSynthesis.speak(utterance);
    }
  };

  // Menú principal
  if (mode === 'menu') {
    return (
      <Card className="w-full bg-gradient-to-br from-purple-50 via-pink-50 to-blue-50 dark:from-purple-950/30 dark:via-pink-950/30 dark:to-blue-950/30 border-2 border-purple-200 dark:border-purple-800">
        <CardHeader>
          <div className="flex items-center gap-2 mb-2">
            <Brain className="w-6 h-6 text-purple-600 dark:text-purple-400 animate-pulse" />
            <CardTitle className="text-2xl">Sistema de Aprendizaje Avanzado</CardTitle>
          </div>
          <CardDescription>
            Aprende Bubi con sesiones personalizadas y quiz interactivos potenciados por IA
          </CardDescription>
        </CardHeader>
        <CardContent className="space-y-6">
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
                  <div className="text-xs opacity-90">Palabras, ejemplos y notas culturales</div>
                </div>
              </div>
            </Button>

            <Button
              onClick={generateQuiz}
              disabled={!topic.trim() || isLoading}
              className="h-auto py-6 bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white"
            >
              <div className="flex flex-col items-center gap-2">
                <Target className="w-8 h-8" />
                <div>
                  <div className="font-bold">Quiz Interactivo</div>
                  <div className="text-xs opacity-90">Pon a prueba tus conocimientos</div>
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
              <div className="text-sm font-semibold">Personalizado</div>
              <div className="text-xs text-muted-foreground">Contenido adaptado a ti</div>
            </div>
            <div className="text-center p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <Zap className="w-6 h-6 mx-auto mb-2 text-yellow-600 dark:text-yellow-400" />
              <div className="text-sm font-semibold">Interactivo</div>
              <div className="text-xs text-muted-foreground">Aprende haciendo</div>
            </div>
            <div className="text-center p-3 bg-white/50 dark:bg-gray-900/50 rounded-lg">
              <Trophy className="w-6 h-6 mx-auto mb-2 text-orange-600 dark:text-orange-400" />
              <div className="text-sm font-semibold">Progreso</div>
              <div className="text-xs text-muted-foreground">Sigue tu avance</div>
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

          <Button
            onClick={() => {
              setMode('menu');
              generateQuiz();
            }}
            className="w-full bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700 text-white"
          >
            Hacer Quiz sobre este tema
            <ArrowRight className="w-4 h-4 ml-2" />
          </Button>
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
                  onClick={resetToMenu}
                  variant="outline"
                  className="w-full"
                >
                  Volver al menú
                </Button>
                <Button
                  onClick={generateQuiz}
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
