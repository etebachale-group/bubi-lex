"use client";

import { useState, useEffect } from 'react';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Textarea } from '@/components/ui/textarea';
import { Check, X, Eye, Clock, CheckCircle, XCircle } from 'lucide-react';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription } from '@/components/ui/dialog';
import { getSupabase } from '@/lib/db';

interface Story {
  id: number;
  title: string;
  content: string;
  author_name: string;
  author_email: string | null;
  is_approved: boolean;
  is_rejected: boolean;
  rejection_reason: string | null;
  created_at: string;
  approved_at: string | null;
  approved_by: string | null;
  views: number;
  likes: number;
}

interface StoriesModerationProps {
  initialStories: Story[];
}

export default function StoriesModeration({ initialStories }: StoriesModerationProps) {
  const [stories, setStories] = useState<Story[]>(initialStories);
  const [filter, setFilter] = useState<'pending' | 'approved' | 'rejected' | 'all'>('pending');
  const [selectedStory, setSelectedStory] = useState<Story | null>(null);
  const [rejectionReason, setRejectionReason] = useState('');
  const [loading, setLoading] = useState(false);

  // Tiempo real con Supabase
  useEffect(() => {
    const supabase = getSupabase();
    const channel = supabase
      .channel('stories-moderation-realtime')
      .on(
        'postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'stories' },
        (payload) => {
          const newStory = payload.new as Story;
          if (newStory && newStory.id) {
            setStories((current) => [newStory, ...current]);
          }
        }
      )
      .on(
        'postgres_changes',
        { event: 'UPDATE', schema: 'public', table: 'stories' },
        (payload) => {
          const updatedStory = payload.new as Story;
          if (updatedStory && updatedStory.id) {
            setStories((current) =>
              current.map((story) =>
                story.id === updatedStory.id ? updatedStory : story
              )
            );
          }
        }
      )
      .on(
        'postgres_changes',
        { event: 'DELETE', schema: 'public', table: 'stories' },
        (payload) => {
          const deletedId = (payload.old as Partial<Story>).id;
          if (deletedId) {
            setStories((current) =>
              current.filter((story) => story.id !== deletedId)
            );
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, []);

  const filteredStories = stories.filter(story => {
    if (filter === 'pending') return !story.is_approved && !story.is_rejected;
    if (filter === 'approved') return story.is_approved;
    if (filter === 'rejected') return story.is_rejected;
    return true;
  });

  const handleApprove = async (id: number) => {
    setLoading(true);
    try {
      const res = await fetch(`/api/admin/stories/${id}/approve`, {
        method: 'POST',
      });

      if (res.ok) {
        setStories(prev => prev.map(s => 
          s.id === id 
            ? { ...s, is_approved: true, is_rejected: false, approved_at: new Date().toISOString() }
            : s
        ));
        setSelectedStory(null);
      } else {
        alert('Error al aprobar el relato');
      }
    } catch (error) {
      console.error('Error:', error);
      alert('Error al aprobar el relato');
    } finally {
      setLoading(false);
    }
  };

  const handleReject = async (id: number) => {
    if (!rejectionReason.trim()) {
      alert('Por favor, proporciona una razón para el rechazo');
      return;
    }

    setLoading(true);
    try {
      const res = await fetch(`/api/admin/stories/${id}/reject`, {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ reason: rejectionReason }),
      });

      if (res.ok) {
        setStories(prev => prev.map(s => 
          s.id === id 
            ? { ...s, is_approved: false, is_rejected: true, rejection_reason: rejectionReason }
            : s
        ));
        setSelectedStory(null);
        setRejectionReason('');
      } else {
        alert('Error al rechazar el relato');
      }
    } catch (error) {
      console.error('Error:', error);
      alert('Error al rechazar el relato');
    } finally {
      setLoading(false);
    }
  };

  return (
    <div>
      <div className="flex gap-2 mb-6 flex-wrap">
        <Button
          variant={filter === 'pending' ? 'default' : 'outline'}
          onClick={() => setFilter('pending')}
          className={filter === 'pending' ? 'bg-gradient-to-r from-yellow-600 to-orange-600' : ''}
        >
          <Clock className="w-4 h-4 mr-2" />
          Pendientes
        </Button>
        <Button
          variant={filter === 'approved' ? 'default' : 'outline'}
          onClick={() => setFilter('approved')}
          className={filter === 'approved' ? 'bg-gradient-to-r from-green-600 to-emerald-600' : ''}
        >
          <CheckCircle className="w-4 h-4 mr-2" />
          Aprobados
        </Button>
        <Button
          variant={filter === 'rejected' ? 'default' : 'outline'}
          onClick={() => setFilter('rejected')}
          className={filter === 'rejected' ? 'bg-gradient-to-r from-red-600 to-pink-600' : ''}
        >
          <XCircle className="w-4 h-4 mr-2" />
          Rechazados
        </Button>
        <Button
          variant={filter === 'all' ? 'default' : 'outline'}
          onClick={() => setFilter('all')}
        >
          Todos
        </Button>
      </div>

      {filteredStories.length === 0 ? (
        <Card>
          <CardContent className="py-12 text-center text-muted-foreground">
            No hay relatos en esta categoría
          </CardContent>
        </Card>
      ) : (
        <div className="space-y-4">
          {filteredStories.map(story => (
            <Card key={story.id} className={`border-2 ${
              story.is_approved ? 'border-green-200 dark:border-green-800' :
              story.is_rejected ? 'border-red-200 dark:border-red-800' :
              'border-yellow-200 dark:border-yellow-800'
            }`}>
              <CardHeader>
                <div className="flex items-start justify-between gap-4">
                  <div className="flex-1">
                    <CardTitle className="text-xl mb-2">{story.title}</CardTitle>
                    <div className="text-sm text-muted-foreground space-y-1">
                      <p>Autor: {story.author_name}</p>
                      {story.author_email && <p>Email: {story.author_email}</p>}
                      <p>Fecha: {new Date(story.created_at).toLocaleDateString('es-ES', { 
                        year: 'numeric', 
                        month: 'long', 
                        day: 'numeric',
                        hour: '2-digit',
                        minute: '2-digit'
                      })}</p>
                      {story.is_approved && story.approved_at && (
                        <p className="text-green-600 dark:text-green-400">
                          ✓ Aprobado el {new Date(story.approved_at).toLocaleDateString('es-ES')}
                        </p>
                      )}
                      {story.is_rejected && (
                        <p className="text-red-600 dark:text-red-400">
                          ✗ Rechazado: {story.rejection_reason}
                        </p>
                      )}
                    </div>
                  </div>
                  <div className="flex gap-2">
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => setSelectedStory(story)}
                    >
                      <Eye className="w-4 h-4 mr-2" />
                      Ver
                    </Button>
                    {!story.is_approved && !story.is_rejected && (
                      <>
                        <Button
                          variant="outline"
                          size="sm"
                          onClick={() => handleApprove(story.id)}
                          disabled={loading}
                          className="border-green-500 text-green-600 hover:bg-green-50 dark:hover:bg-green-950"
                        >
                          <Check className="w-4 h-4 mr-2" />
                          Aprobar
                        </Button>
                        <Button
                          variant="outline"
                          size="sm"
                          onClick={() => setSelectedStory(story)}
                          disabled={loading}
                          className="border-red-500 text-red-600 hover:bg-red-50 dark:hover:bg-red-950"
                        >
                          <X className="w-4 h-4 mr-2" />
                          Rechazar
                        </Button>
                      </>
                    )}
                  </div>
                </div>
              </CardHeader>
              <CardContent>
                <p className="text-sm line-clamp-3">{story.content}</p>
              </CardContent>
            </Card>
          ))}
        </div>
      )}

      <Dialog open={!!selectedStory} onOpenChange={() => {
        setSelectedStory(null);
        setRejectionReason('');
      }}>
        <DialogContent className="max-w-3xl max-h-[80vh] overflow-y-auto">
          <DialogHeader>
            <DialogTitle>{selectedStory?.title}</DialogTitle>
            <DialogDescription>
              Por {selectedStory?.author_name} • {selectedStory && new Date(selectedStory.created_at).toLocaleDateString('es-ES')}
            </DialogDescription>
          </DialogHeader>
          
          <div className="space-y-4">
            <div className="prose dark:prose-invert max-w-none">
              <p className="whitespace-pre-wrap">{selectedStory?.content}</p>
            </div>

            {selectedStory && !selectedStory.is_approved && !selectedStory.is_rejected && (
              <div className="space-y-4 pt-4 border-t">
                <div>
                  <label className="text-sm font-medium mb-2 block">
                    Razón de rechazo (opcional para aprobar, requerido para rechazar)
                  </label>
                  <Textarea
                    value={rejectionReason}
                    onChange={(e) => setRejectionReason(e.target.value)}
                    placeholder="Explica por qué se rechaza este relato..."
                    rows={3}
                  />
                </div>
                
                <div className="flex gap-2 justify-end">
                  <Button
                    variant="outline"
                    onClick={() => {
                      setSelectedStory(null);
                      setRejectionReason('');
                    }}
                  >
                    Cancelar
                  </Button>
                  <Button
                    onClick={() => selectedStory && handleApprove(selectedStory.id)}
                    disabled={loading}
                    className="bg-gradient-to-r from-green-600 to-emerald-600 hover:from-green-700 hover:to-emerald-700"
                  >
                    <Check className="w-4 h-4 mr-2" />
                    Aprobar
                  </Button>
                  <Button
                    onClick={() => selectedStory && handleReject(selectedStory.id)}
                    disabled={loading || !rejectionReason.trim()}
                    className="bg-gradient-to-r from-red-600 to-pink-600 hover:from-red-700 hover:to-pink-700"
                  >
                    <X className="w-4 h-4 mr-2" />
                    Rechazar
                  </Button>
                </div>
              </div>
            )}
          </div>
        </DialogContent>
      </Dialog>
    </div>
  );
}
