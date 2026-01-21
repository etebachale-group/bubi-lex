// Tipos para el sistema de aprendizaje estructurado

export type LessonStatus = 'locked' | 'available' | 'in-progress' | 'completed';
export type ExerciseType = 'vocabulary' | 'translation' | 'listening' | 'grammar' | 'writing';
export type DifficultyLevel = 'beginner' | 'intermediate' | 'advanced';

export interface Word {
  id: number;
  bubi: string;
  spanish: string;
  ipa?: string;
  word_type?: string;
  nominal_class?: string;
  examples?: string;
}

export interface Exercise {
  id: string;
  type: ExerciseType;
  question: string;
  options?: string[];
  correctAnswer: string | number;
  explanation: string;
  words?: Word[];
}

export interface Lesson {
  id: string;
  title: string;
  description: string;
  level: DifficultyLevel;
  order: number;
  status: LessonStatus;
  progress: number; // 0-100
  exercises: Exercise[];
  requiredScore: number; // Puntuación mínima para completar
  estimatedTime: number; // minutos
  category: string;
  grammarTopics?: string[];
  vocabularyCount: number;
}

export interface Course {
  id: string;
  title: string;
  description: string;
  lessons: Lesson[];
  totalLessons: number;
  completedLessons: number;
  level: DifficultyLevel;
}

export interface UserProgress {
  completedLessons: string[];
  currentLesson: string | null;
  totalScore: number;
  streak: number; // días consecutivos
  lastStudyDate: string;
  lessonsProgress: Record<string, {
    attempts: number;
    bestScore: number;
    completed: boolean;
    lastAttempt: string;
  }>;
}
