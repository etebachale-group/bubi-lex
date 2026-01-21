// Datos del curso estructurado de Bubi
import { Course, Lesson } from '@/types/learning';

export const BUBI_COURSE: Course = {
  id: 'bubi-fundamentals',
  title: 'Fundamentos del Idioma Bubi',
  description: 'Curso completo desde cero hasta nivel intermedio',
  level: 'beginner',
  totalLessons: 12,
  completedLessons: 0,
  lessons: [
    {
      id: 'lesson-1',
      title: 'Introducción y Saludos',
      description: 'Aprende los saludos básicos y presentaciones en Bubi',
      level: 'beginner',
      order: 1,
      status: 'available',
      progress: 0,
      requiredScore: 70,
      estimatedTime: 15,
      category: 'Saludos',
      vocabularyCount: 10,
      grammarTopics: ['Pronunciación básica', 'Tonos'],
      exercises: []
    },
    {
      id: 'lesson-2',
      title: 'Números del 1 al 10',
      description: 'Sistema numérico básico en Bubi',
      level: 'beginner',
      order: 2,
      status: 'locked',
      progress: 0,
      requiredScore: 70,
      estimatedTime: 20,
      category: 'Números',
      vocabularyCount: 10,
      grammarTopics: ['Números cardinales'],
      exercises: []
    },
    {
      id: 'lesson-3',
      title: 'La Familia',
      description: 'Vocabulario sobre miembros de la familia',
      level: 'beginner',
      order: 3,
      status: 'locked',
      progress: 0,
      requiredScore: 70,
      estimatedTime: 25,
      category: 'Familia',
      vocabularyCount: 15,
      grammarTopics: ['Clases nominales - personas'],
      exercises: []
    },
  ]
};
