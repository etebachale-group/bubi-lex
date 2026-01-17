"use client";

import { useState, useEffect } from 'react';
import { Card, CardContent, CardHeader, CardTitle, CardDescription } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Brain, CheckCircle, XCircle, Loader2, RefreshCw } from 'lucide-react';

interface QuizQuestion {
  question: string;
  options: string[];
  correctAnswer: number;
  explanation: string;
}

export default function PracticeQuiz() {
  const [quiz, setQuiz] = useState<QuizQuestion[]>([]);
  const [currentQuestion, setCurrentQuestion] = useState(0);
  const [selectedAnswer, setSelectedAnswer] = useState<number | null>(null);
  const [showResult, setShowResult] = useState(false);
  const [score, setScore] = useState(0);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const loadQuiz = async () => {
    setLoading(true);
    setError('');
    setQuiz([]);
    setCurrentQuestion(0);
    setScore(0);
    setShowResult(false);

    try {
      const response = await fetch('/api/ai/quiz');
      
      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.error || 'Error cargando quiz');
      }

      const data = await response.json();
      setQuiz(data.quiz || []);
    } catch (err: any) {
      setError(err.message);
    } finally {
      setLoading(false);
    }
  };

  const handleAnswer = (answerIndex: number) => {
    if (selectedAnswer !== null) return;
    
    setSelectedAnswer(answerIndex);
    
    if (answerIndex === quiz[currentQuestion].correctAnswer) {
      setScore(score + 1);
    }
  };

  const nextQuestion = () => {
    if (currentQuestion < quiz.length - 1) {
      setCurrentQuestion(currentQuestion + 1);
      setSelectedAnswer(null);
    } else {
      setShowResult(true);
    }
  };

  if (loading) {
    return (
      <Card className="w-full">
        <CardContent className="flex items-center justify-center py-12">
          <Loader2 className="w-8 h-8 animate-spin text-purple-600" />
        </CardContent>
      </Card>
    );
  }

  if (error) {
    return (
      <Card className="w-full">
        <CardContent className="py-8">
          <div className="text-center">
            <p className="text-red-600 dark:text-red-400 mb-4">{error}</p>
            <Button onClick={loadQuiz} variant="outline">
              <RefreshCw className="w-4 h-4 mr-2" />
              Reintentar
            </Button>
          </div>
        </CardContent>
      </Card>
    );
  }

  if (quiz.length === 0) {
    return (
      <Card className="w-full">
        <CardHeader>
          <div className="flex items-center gap-2">
            <Brain className="w-6 h-6 text-purple-600 dark:text-purple-400" />
            <CardTitle>Quiz de Práctica con IA</CardTitle>
          </div>
          <CardDescription>
            Practica tu vocabulario Bubi con preguntas generadas por IA
          </CardDescription>
        </CardHeader>
        <CardContent>
          <Button
            onClick={loadQuiz}
            className="w-full bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700"
          >
            <Brain className="w-4 h-4 mr-2" />
            Comenzar Quiz
          </Button>
        </CardContent>
      </Card>
    );
  }

  if (showResult) {
    const percentage = Math.round((score / quiz.length) * 100);
    
    return (
      <Card className="w-full">
        <CardHeader>
          <CardTitle>¡Quiz Completado!</CardTitle>
        </CardHeader>
        <CardContent className="space-y-4">
          <div className="text-center py-8">
            <div className="text-6xl font-bold text-purple-600 dark:text-purple-400 mb-2">
              {percentage}%
            </div>
            <p className="text-lg text-muted-foreground">
              {score} de {quiz.length} correctas
            </p>
          </div>

          <div className="flex gap-2">
            <Button onClick={loadQuiz} className="flex-1" variant="outline">
              <RefreshCw className="w-4 h-4 mr-2" />
              Nuevo Quiz
            </Button>
          </div>
        </CardContent>
      </Card>
    );
  }

  const question = quiz[currentQuestion];

  return (
    <Card className="w-full">
      <CardHeader>
        <div className="flex justify-between items-center">
          <CardTitle>Pregunta {currentQuestion + 1} de {quiz.length}</CardTitle>
          <div className="text-sm text-muted-foreground">
            Puntuación: {score}/{currentQuestion + (selectedAnswer !== null ? 1 : 0)}
          </div>
        </div>
      </CardHeader>
      <CardContent className="space-y-4">
        <div className="p-4 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/30 dark:to-pink-950/30 rounded-lg">
          <p className="text-lg font-medium">{question.question}</p>
        </div>

        <div className="space-y-2">
          {question.options.map((option, index) => {
            const isSelected = selectedAnswer === index;
            const isCorrect = index === question.correctAnswer;
            const showFeedback = selectedAnswer !== null;

            let className = "w-full justify-start text-left p-4 h-auto";
            
            if (showFeedback) {
              if (isCorrect) {
                className += " bg-green-100 dark:bg-green-950/30 border-2 border-green-500";
              } else if (isSelected) {
                className += " bg-red-100 dark:bg-red-950/30 border-2 border-red-500";
              }
            }

            return (
              <Button
                key={index}
                onClick={() => handleAnswer(index)}
                disabled={selectedAnswer !== null}
                variant="outline"
                className={className}
              >
                <div className="flex items-center gap-2 w-full">
                  {showFeedback && isCorrect && (
                    <CheckCircle className="w-5 h-5 text-green-600" />
                  )}
                  {showFeedback && isSelected && !isCorrect && (
                    <XCircle className="w-5 h-5 text-red-600" />
                  )}
                  <span className="flex-1">{option}</span>
                </div>
              </Button>
            );
          })}
        </div>

        {selectedAnswer !== null && (
          <div className="p-4 bg-blue-50 dark:bg-blue-950/30 rounded-lg border border-blue-200 dark:border-blue-800 animate-fade-in">
            <p className="text-sm text-blue-900 dark:text-blue-100">
              <strong>Explicación:</strong> {question.explanation}
            </p>
          </div>
        )}

        {selectedAnswer !== null && (
          <Button
            onClick={nextQuestion}
            className="w-full bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700"
          >
            {currentQuestion < quiz.length - 1 ? 'Siguiente Pregunta' : 'Ver Resultados'}
          </Button>
        )}
      </CardContent>
    </Card>
  );
}
