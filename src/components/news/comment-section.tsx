'use client';

import { useState, useEffect } from 'react';
import { Button } from '@/components/ui/button';
import { Textarea } from '@/components/ui/textarea';
import { Input } from '@/components/ui/input';
import { Card, CardContent } from '@/components/ui/card';
import { MessageCircle, Send, Reply, User } from 'lucide-react';

interface Comment {
  id: number;
  author_name: string;
  content: string;
  created_at: string;
  replies: Comment[];
}

interface CommentSectionProps {
  newsId: number;
}

export default function CommentSection({ newsId }: CommentSectionProps) {
  const [comments, setComments] = useState<Comment[]>([]);
  const [loading, setLoading] = useState(true);
  const [submitting, setSubmitting] = useState(false);
  const [replyingTo, setReplyingTo] = useState<number | null>(null);
  
  const [formData, setFormData] = useState({
    author_name: '',
    author_email: '',
    content: '',
  });

  useEffect(() => {
    loadComments();
  }, [newsId]);

  const loadComments = async () => {
    try {
      const res = await fetch(`/api/news/${newsId}/comments`);
      if (res.ok) {
        const data = await res.json();
        setComments(data.comments || []);
      }
    } catch (error) {
      console.error('Error cargando comentarios:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSubmit = async (e: React.FormEvent, parentId?: number) => {
    e.preventDefault();
    
    if (!formData.author_name.trim() || !formData.content.trim()) {
      alert('Por favor completa todos los campos requeridos');
      return;
    }

    setSubmitting(true);
    try {
      const res = await fetch(`/api/news/${newsId}/comments`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({
          ...formData,
          parent_id: parentId || null,
        }),
      });

      if (res.ok) {
        const data = await res.json();
        alert(data.message || 'Comentario enviado correctamente');
        setFormData({ author_name: '', author_email: '', content: '' });
        setReplyingTo(null);
        loadComments();
      } else {
        const error = await res.json();
        alert(error.error || 'Error al enviar comentario');
      }
    } catch (error) {
      alert('Error al enviar comentario');
    } finally {
      setSubmitting(false);
    }
  };

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    const now = new Date();
    const diffMs = now.getTime() - date.getTime();
    const diffMins = Math.floor(diffMs / 60000);
    const diffHours = Math.floor(diffMs / 3600000);
    const diffDays = Math.floor(diffMs / 86400000);

    if (diffMins < 1) return 'Ahora';
    if (diffMins < 60) return `Hace ${diffMins} min`;
    if (diffHours < 24) return `Hace ${diffHours}h`;
    if (diffDays < 7) return `Hace ${diffDays}d`;
    
    return date.toLocaleDateString('es-ES', { 
      day: 'numeric', 
      month: 'short',
      year: date.getFullYear() !== now.getFullYear() ? 'numeric' : undefined
    });
  };

  const CommentItem = ({ comment, depth = 0 }: { comment: Comment; depth?: number }) => (
    <div className={`${depth > 0 ? 'ml-8 mt-4' : 'mt-4'}`}>
      <Card className="glass-card border">
        <CardContent className="pt-4">
          <div className="flex items-start gap-3">
            <div className="p-2 rounded-full bg-gradient-to-br from-purple-100 to-pink-100 dark:from-purple-900 dark:to-pink-900">
              <User className="w-4 h-4 text-purple-600 dark:text-purple-400" />
            </div>
            <div className="flex-1">
              <div className="flex items-center gap-2 mb-1">
                <span className="font-semibold text-sm">{comment.author_name}</span>
                <span className="text-xs text-muted-foreground">
                  {formatDate(comment.created_at)}
                </span>
              </div>
              <p className="text-sm text-foreground mb-2">{comment.content}</p>
              {depth < 2 && (
                <Button
                  variant="ghost"
                  size="sm"
                  className="h-7 text-xs"
                  onClick={() => setReplyingTo(comment.id)}
                >
                  <Reply className="w-3 h-3 mr-1" />
                  Responder
                </Button>
              )}
            </div>
          </div>
          
          {replyingTo === comment.id && (
            <form onSubmit={(e) => handleSubmit(e, comment.id)} className="mt-4 space-y-3">
              <Input
                placeholder="Tu nombre *"
                value={formData.author_name}
                onChange={(e) => setFormData({ ...formData, author_name: e.target.value })}
                required
                className="text-sm"
              />
              <Textarea
                placeholder="Tu respuesta *"
                value={formData.content}
                onChange={(e) => setFormData({ ...formData, content: e.target.value })}
                required
                rows={3}
                className="text-sm"
              />
              <div className="flex gap-2">
                <Button type="submit" size="sm" disabled={submitting}>
                  {submitting ? 'Enviando...' : 'Enviar'}
                </Button>
                <Button
                  type="button"
                  variant="outline"
                  size="sm"
                  onClick={() => setReplyingTo(null)}
                >
                  Cancelar
                </Button>
              </div>
            </form>
          )}
        </CardContent>
      </Card>
      
      {comment.replies && comment.replies.length > 0 && (
        <div className="space-y-2">
          {comment.replies.map((reply) => (
            <CommentItem key={reply.id} comment={reply} depth={depth + 1} />
          ))}
        </div>
      )}
    </div>
  );

  return (
    <div className="mt-8">
      <div className="flex items-center gap-2 mb-6">
        <MessageCircle className="w-5 h-5 text-purple-600 dark:text-purple-400" />
        <h3 className="text-xl font-bold">
          Comentarios {comments.length > 0 && `(${comments.length})`}
        </h3>
      </div>

      {/* Formulario de nuevo comentario */}
      <Card className="glass-card border-2 border-purple-200 dark:border-purple-800 mb-6">
        <CardContent className="pt-6">
          <form onSubmit={(e) => handleSubmit(e)} className="space-y-4">
            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              <Input
                placeholder="Tu nombre *"
                value={formData.author_name}
                onChange={(e) => setFormData({ ...formData, author_name: e.target.value })}
                required
              />
              <Input
                type="email"
                placeholder="Tu email (opcional)"
                value={formData.author_email}
                onChange={(e) => setFormData({ ...formData, author_email: e.target.value })}
              />
            </div>
            <Textarea
              placeholder="Escribe tu comentario... *"
              value={formData.content}
              onChange={(e) => setFormData({ ...formData, content: e.target.value })}
              required
              rows={4}
            />
            <div className="flex justify-between items-center">
              <p className="text-xs text-muted-foreground">
                Tu comentario será revisado antes de publicarse
              </p>
              <Button type="submit" disabled={submitting} className="gap-2">
                <Send className="w-4 h-4" />
                {submitting ? 'Enviando...' : 'Enviar Comentario'}
              </Button>
            </div>
          </form>
        </CardContent>
      </Card>

      {/* Lista de comentarios */}
      {loading ? (
        <div className="text-center py-8 text-muted-foreground">
          Cargando comentarios...
        </div>
      ) : comments.length === 0 ? (
        <div className="text-center py-12">
          <MessageCircle className="w-12 h-12 text-muted-foreground mx-auto mb-3" />
          <p className="text-muted-foreground">
            Sé el primero en comentar esta noticia
          </p>
        </div>
      ) : (
        <div className="space-y-4">
          {comments.map((comment) => (
            <CommentItem key={comment.id} comment={comment} />
          ))}
        </div>
      )}
    </div>
  );
}
