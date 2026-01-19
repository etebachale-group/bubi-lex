'use client';

import { useState } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { BookOpen, Heart, Eye, Calendar, User, Plus, Send } from 'lucide-react';

interface Story {
  id: number;
  title: string;
  content: string;
  author_name: string;
  created_at: string;
  views: number;
  likes: number;
}

interface StoriesViewProps {
  initialStories: Story[];
}

export default function StoriesView({ initialStories }: StoriesViewProps) {
  const [stories, setStories] = useState<Story[]>(initialStories);
  const [showForm, setShowForm] = useState(false);
  const [submitting, setSubmitting] = useState(false);
  const [likedStories, setLikedStories] = useState<Set<number>>(new Set());
  const [expandedStories, setExpandedStories] = useState<Set<number>>(new Set());
  
  const [formData, setFormData] = useState({
    title: '',
    content: '',
    author_name: '',
    author_email: '',
  });

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!formData.title.trim() || !formData.content.trim() || !formData.author_name.trim()) {
      alert('Por favor completa todos los campos requeridos');
      return;
    }

    setSubmitting(true);
    try {
      const res = await fetch('/api/stories', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      });

      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Error al enviar relato');
      }

      const result = await res.json();
      alert(result.message || 'Relato enviado correctamente');
      
      // Limpiar formulario
      setFormData({ title: '', content: '', author_name: '', author_email: '' });
      setShowForm(false);
    } catch (error) {
      alert(error instanceof Error ? error.message : 'Error al enviar relato');
    } finally {
      setSubmitting(false);
    }
  };

  const handleLike = async (id: number) => {
    if (likedStories.has(id)) return;

    try {
      const res = await fetch(`/api/stories/${id}`, { method: 'POST' });
      if (!res.ok) throw new Error('Error al dar like');
      
      const { likes } = await res.json();
      
      setStories(stories.map(s => s.id === id ? { ...s, likes } : s));
      setLikedStories(prev => new Set(prev).add(id));
    } catch (error) {
      alert('No se pudo registrar tu me gusta');
    }
  };

  const toggleExpand = (id: number) => {
    const newExpanded = new Set(expandedStories);
    if (newExpanded.has(id)) {
      newExpanded.delete(id);
    } else {
      newExpanded.add(id);
    }
    setExpandedStories(newExpanded);
  };

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    return date.toLocaleDateString('es-ES', { 
      year: 'numeric', 
      month: 'long', 
      day: 'numeric' 
    });
  };

  const truncateContent = (content: string, maxLength: number = 300) => {
    if (content.length <= maxLength) return content;
    return content.substring(0, maxLength) + '...';
  };

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="text-center space-y-4 mb-8">
        <div className="flex items-center justify-center gap-3">
          <div className="p-3 rounded-xl bg-gradient-to-br from-orange-500 to-red-500">
            <BookOpen className="w-8 h-8 text-white" />
          </div>
          <h1 className="text-4xl md:text-5xl font-headline font-bold bg-gradient-to-r from-orange-600 to-red-600 dark:from-orange-400 dark:to-red-400 bg-clip-text text-transparent">
            Relatos y Fábulas
          </h1>
        </div>
        <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
          Historias y fábulas de la cultura Bubi compartidas por la comunidad
        </p>
        <Button
          onClick={() => setShowForm(!showForm)}
          className="bg-gradient-to-r from-orange-600 to-red-600 hover:from-orange-700 hover:to-red-700"
        >
          <Plus className="w-4 h-4 mr-2" />
          Compartir tu Relato
        </Button>
      </div>

      {/* Formulario */}
      {showForm && (
        <Card className="glass-card border-2 border-orange-300 dark:border-orange-700 mb-8 max-w-3xl mx-auto">
          <CardContent className="pt-6">
            <form onSubmit={handleSubmit} className="space-y-4">
              <div>
                <Input
                  placeholder="Título del relato *"
                  value={formData.title}
                  onChange={(e) => setFormData({ ...formData, title: e.target.value })}
                  required
                  maxLength={255}
                />
              </div>
              
              <Textarea
                placeholder="Escribe tu relato... *"
                value={formData.content}
                onChange={(e) => setFormData({ ...formData, content: e.target.value })}
                required
                rows={10}
                maxLength={10000}
                className="resize-none"
              />
              
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <Input
                  placeholder="Tu nombre *"
                  value={formData.author_name}
                  onChange={(e) => setFormData({ ...formData, author_name: e.target.value })}
                  required
                  maxLength={100}
                />
                <Input
                  type="email"
                  placeholder="Tu email (opcional)"
                  value={formData.author_email}
                  onChange={(e) => setFormData({ ...formData, author_email: e.target.value })}
                  maxLength={255}
                />
              </div>
              
              <div className="flex items-center justify-between">
                <p className="text-xs text-muted-foreground">
                  Tu relato será visible después de ser aprobado por un moderador
                </p>
                <div className="flex gap-2">
                  <Button
                    type="button"
                    variant="outline"
                    onClick={() => {
                      setShowForm(false);
                      setFormData({ title: '', content: '', author_name: '', author_email: '' });
                    }}
                  >
                    Cancelar
                  </Button>
                  <Button
                    type="submit"
                    disabled={submitting}
                    className="bg-gradient-to-r from-orange-600 to-red-600 hover:from-orange-700 hover:to-red-700"
                  >
                    {submitting ? (
                      'Enviando...'
                    ) : (
                      <>
                        <Send className="w-4 h-4 mr-2" />
                        Enviar
                      </>
                    )}
                  </Button>
                </div>
              </div>
            </form>
          </CardContent>
        </Card>
      )}

      {/* Lista de Relatos */}
      {stories.length === 0 ? (
        <div className="text-center py-20">
          <BookOpen className="w-16 h-16 text-muted-foreground mx-auto mb-4" />
          <p className="text-muted-foreground mb-4">No hay relatos todavía.</p>
          <Button
            onClick={() => setShowForm(true)}
            variant="outline"
          >
            Sé el primero en compartir
          </Button>
        </div>
      ) : (
        <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3 max-w-7xl mx-auto">
          {stories.map((story, index) => {
            const isExpanded = expandedStories.has(story.id);
            const needsTruncate = story.content.length > 300;
            
            return (
              <Card 
                key={story.id}
                className="glass-card border-2 hover:border-orange-300 dark:hover:border-orange-700 transition-all hover:scale-105 hover:shadow-xl group"
                style={{ animationDelay: `${index * 50}ms` }}
              >
                <CardContent className="pt-6">
                  {/* Título */}
                  <h3 className="text-xl font-headline font-bold bg-gradient-to-r from-orange-600 to-red-600 dark:from-orange-400 dark:to-red-400 bg-clip-text text-transparent mb-3">
                    {story.title}
                  </h3>

                  {/* Contenido */}
                  <div className="mb-4">
                    <p className="text-muted-foreground leading-relaxed whitespace-pre-wrap">
                      {isExpanded ? story.content : truncateContent(story.content)}
                    </p>
                    {needsTruncate && (
                      <Button
                        variant="ghost"
                        size="sm"
                        className="mt-2 text-orange-600 dark:text-orange-400"
                        onClick={() => toggleExpand(story.id)}
                      >
                        {isExpanded ? 'Ver menos' : 'Leer más'}
                      </Button>
                    )}
                  </div>

                  {/* Metadata */}
                  <div className="space-y-2 text-sm text-muted-foreground mb-4">
                    <div className="flex items-center gap-2">
                      <User className="w-4 h-4" />
                      <span>{story.author_name}</span>
                    </div>
                    <div className="flex items-center gap-2">
                      <Calendar className="w-4 h-4" />
                      <span>{formatDate(story.created_at)}</span>
                    </div>
                  </div>

                  {/* Acciones */}
                  <div className="flex items-center gap-4 pt-4 border-t">
                    <Button
                      variant="ghost"
                      size="sm"
                      className={`gap-2 ${likedStories.has(story.id) ? 'text-red-500' : ''}`}
                      onClick={() => handleLike(story.id)}
                      disabled={likedStories.has(story.id)}
                    >
                      <Heart className={`w-4 h-4 ${likedStories.has(story.id) ? 'fill-current' : ''}`} />
                      <span className="font-semibold">{story.likes}</span>
                    </Button>
                    <div className="flex items-center gap-2 text-muted-foreground">
                      <Eye className="w-4 h-4" />
                      <span>{story.views}</span>
                    </div>
                  </div>
                </CardContent>
              </Card>
            );
          })}
        </div>
      )}
    </div>
  );
}
