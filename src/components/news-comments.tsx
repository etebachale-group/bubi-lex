'use client';

import { useState, useEffect } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Card, CardContent } from '@/components/ui/card';
import { MessageCircle, Send, User, Clock } from 'lucide-react';

interface Comment {
  id: number;
  author_name: string;
  content: string;
  created_at: string;
  parent_id: number | null;
}

interface NewsCommentsProps {
  newsId: number;
}

export default function NewsComments({ newsId }: NewsCommentsProps) {
  const [comments, setComments] = useState<Comment[]>([]);
  const [loading, setLoading] = useState(true);
  const [submitting, setSubmitting] = useState(false);
  const [showForm, setShowForm] = useState(false);
  const [replyTo, setReplyTo] = useState<number | null>(null);
  
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
        setComments(data);
      }
    } catch (error) {
      console.error('Error cargando comentarios:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
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
          parent_id: replyTo,
        }),
      });

      if (!res.ok) {
        const error = await res.json();
        throw new Error(error.error || 'Error al enviar comentario');
      }

      const result = await res.json();
      alert(result.message || 'Comentario enviado correctamente');
      
      // Limpiar formulario
      setFormData({ author_name: '', author_email: '', content: '' });
      setShowForm(false);
      setReplyTo(null);
      
      // Recargar comentarios
      loadComments();
    } catch (error) {
      alert(error instanceof Error ? error.message : 'Error al enviar comentario');
    } finally {
      setSubmitting(false);
    }
  };

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    const now = new Date();
    const diffTime = Math.abs(now.getTime() - date.getTime());
    const diffDays = Math.ceil(diffTime / (1000 * 60 * 60 * 24));

    if (diffDays === 0) return 'Hoy';
    if (diffDays === 1) return 'Ayer';
    if (diffDays < 7) return `Hace ${diffDays} días`;
    
    return date.toLocaleDateString('es-ES', { 
      year: 'numeric', 
      month: 'long', 
      day: 'numeric' 
    });
  };

  // Organizar comentarios en hilos
  const topLevelComments = comments.filter(c => !c.parent_id);
  const getReplies = (parentId: number) => comments.filter(c => c.parent_id === parentId);

  const CommentItem = ({ comment, isReply = false }: { comment: Comment; isReply?: boolean }) => (
    <div className={`${isReply ? 'ml-4 sm:ml-8 mt-3' : 'mb-4'}`}>
      <Card className="glass-card border">
        <CardContent className="pt-3 sm:pt-4 px-3 sm:px-6">
          <div className="flex items-start gap-2 sm:gap-3">
            <div className="p-1.5 sm:p-2 rounded-full bg-gradient-to-br from-purple-100 to-pink-100 dark:from-purple-900 dark:to-pink-900 flex-shrink-0">
              <User className="w-3 h-3 sm:w-4 sm:h-4 text-purple-600 dark:text-purple-400" />
            </div>
            <div className="flex-1 min-w-0">
              <div className="flex flex-col sm:flex-row sm:items-center gap-1 sm:gap-2 mb-1.5 sm:mb-1">
                <span className="font-semibold text-xs sm:text-sm truncate">{comment.author_name}</span>
                <span className="text-xs text-muted-foreground flex items-center gap-1">
                  <Clock className="w-3 h-3 flex-shrink-0" />
                  <span className="truncate">{formatDate(comment.created_at)}</span>
                </span>
              </div>
              <p className="text-xs sm:text-sm text-muted-foreground leading-relaxed break-words">
                {comment.content}
              </p>
              {!isReply && (
                <Button
                  variant="ghost"
                  size="sm"
                  className="mt-2 text-xs h-7 px-2 sm:px-3"
                  onClick={() => {
                    setReplyTo(comment.id);
                    setShowForm(true);
                  }}
                >
                  Responder
                </Button>
              )}
            </div>
          </div>
        </CardContent>
      </Card>
      
      {/* Respuestas */}
      {!isReply && getReplies(comment.id).map(reply => (
        <CommentItem key={reply.id} comment={reply} isReply />
      ))}
    </div>
  );

  return (
    <div className="mt-6 sm:mt-8 pt-6 sm:pt-8 border-t">
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 sm:gap-0 mb-4 sm:mb-6">
        <h3 className="text-xl sm:text-2xl font-bold flex items-center gap-2">
          <MessageCircle className="w-5 h-5 sm:w-6 sm:h-6" />
          Comentarios ({comments.length})
        </h3>
        {!showForm && (
          <Button
            onClick={() => setShowForm(true)}
            className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 w-full sm:w-auto"
            size="sm"
          >
            <MessageCircle className="w-4 h-4 mr-2" />
            Comentar
          </Button>
        )}
      </div>

      {/* Formulario de comentario */}
      {showForm && (
        <Card className="glass-card border-2 border-purple-300 dark:border-purple-700 mb-4 sm:mb-6">
          <CardContent className="pt-4 sm:pt-6 px-3 sm:px-6">
            <form onSubmit={handleSubmit} className="space-y-3 sm:space-y-4">
              {replyTo && (
                <div className="flex items-center justify-between p-2 sm:p-3 bg-purple-50 dark:bg-purple-950/30 rounded-lg">
                  <span className="text-xs sm:text-sm text-purple-600 dark:text-purple-400">
                    Respondiendo a un comentario
                  </span>
                  <Button
                    type="button"
                    variant="ghost"
                    size="sm"
                    onClick={() => setReplyTo(null)}
                    className="h-7 text-xs"
                  >
                    Cancelar
                  </Button>
                </div>
              )}
              
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-3 sm:gap-4">
                <div>
                  <Input
                    placeholder="Tu nombre *"
                    value={formData.author_name}
                    onChange={(e) => setFormData({ ...formData, author_name: e.target.value })}
                    required
                    maxLength={100}
                    className="text-sm"
                  />
                </div>
                <div>
                  <Input
                    type="email"
                    placeholder="Tu email (opcional)"
                    value={formData.author_email}
                    onChange={(e) => setFormData({ ...formData, author_email: e.target.value })}
                    maxLength={255}
                    className="text-sm"
                  />
                </div>
              </div>
              
              <Textarea
                placeholder="Escribe tu comentario... *"
                value={formData.content}
                onChange={(e) => setFormData({ ...formData, content: e.target.value })}
                required
                rows={4}
                maxLength={1000}
                className="text-sm resize-none"
              />
              
              <div className="flex flex-col sm:flex-row sm:items-center sm:justify-between gap-3">
                <p className="text-xs text-muted-foreground">
                  Tu comentario será visible después de ser aprobado
                </p>
                <div className="flex gap-2">
                  <Button
                    type="button"
                    variant="outline"
                    onClick={() => {
                      setShowForm(false);
                      setReplyTo(null);
                      setFormData({ author_name: '', author_email: '', content: '' });
                    }}
                    className="flex-1 sm:flex-none text-sm h-9"
                  >
                    Cancelar
                  </Button>
                  <Button
                    type="submit"
                    disabled={submitting}
                    className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 flex-1 sm:flex-none text-sm h-9"
                  >
                    {submitting ? (
                      'Enviando...'
                    ) : (
                      <>
                        <Send className="w-3 h-3 sm:w-4 sm:h-4 mr-2" />
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

      {/* Lista de comentarios */}
      {loading ? (
        <div className="text-center py-6 sm:py-8">
          <p className="text-sm text-muted-foreground">Cargando comentarios...</p>
        </div>
      ) : comments.length === 0 ? (
        <div className="text-center py-8 sm:py-12">
          <MessageCircle className="w-10 h-10 sm:w-12 sm:h-12 text-muted-foreground mx-auto mb-3" />
          <p className="text-sm sm:text-base text-muted-foreground mb-4">
            Sé el primero en comentar esta noticia
          </p>
          {!showForm && (
            <Button
              onClick={() => setShowForm(true)}
              variant="outline"
              size="sm"
              className="w-full sm:w-auto"
            >
              Escribir comentario
            </Button>
          )}
        </div>
      ) : (
        <div className="space-y-3 sm:space-y-4">
          {topLevelComments.map(comment => (
            <CommentItem key={comment.id} comment={comment} />
          ))}
        </div>
      )}
    </div>
  );
}
