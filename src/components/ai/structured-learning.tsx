"use client";

import { useState, useEffect } from "react";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { 
  BookOpen, 
  Lock, 
  CheckCircle, 
  Play,
  Trophy,
  Clock,
  Target,
  ArrowRight,
  Star,
  Flame
} from "lucide-react";

export default function StructuredLearning() {
  return (
    <div className="space-y-6">
      <LessonsList />
    </div>
  );
}

function LessonsList() {
  const lessons = [
    {
      id: 1,
      title: "Lección 1: Introducción y Saludos",
      description: "Aprende los saludos básicos y presentaciones",
      status: "available",
      progress: 0,
      time: "15 min",
      words: 10,
      level: "Principiante"
    },
    {
      id: 2,
      title: "Lección 2: Números del 1 al 10",
      description: "Sistema numérico básico en Bubi",
      status: "locked",
      progress: 0,
      time: "20 min",
      words: 10,
      level: "Principiante"
    }
  ];

  return (
    <div className="space-y-4">
      {lessons.map((lesson) => (
        <LessonCard key={lesson.id} lesson={lesson} />
      ))}
    </div>
  );
}

function LessonCard({ lesson }: any) {
  const isLocked = lesson.status === "locked";
  
  return (
    <Card className={`${isLocked ? 'opacity-60' : ''}`}>
      <CardContent className="p-6">
        <div className="flex items-start gap-4">
          <div className={`p-3 rounded-lg ${isLocked ? 'bg-gray-200' : 'bg-purple-100'}`}>
            {isLocked ? <Lock className="w-6 h-6" /> : <BookOpen className="w-6 h-6 text-purple-600" />}
          </div>
          <div className="flex-1">
            <h3 className="font-bold text-lg">{lesson.title}</h3>
            <p className="text-sm text-muted-foreground">{lesson.description}</p>
            <div className="flex gap-4 mt-2 text-xs">
              <span>⏱️ {lesson.time}</sp