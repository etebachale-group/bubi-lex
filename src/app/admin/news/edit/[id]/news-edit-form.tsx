'use client';

import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Label } from '@/components/ui/label';

interface NewsItem {
  id: number;
  title: string;
  content: string;
  date: string;
  image?: string | null;
  video?: string | null;
  likes: number;
}

interface NewsEditFormProps {
  newsItem: NewsItem | null;
}

export default function NewsEditForm({ newsItem }: NewsEditFormProps) {
  const router = useRouter();
  const [formData, setFormData] = useState({
    title: '',
    content: '',
    date: new Date().toISOString().split('T')[0], // Defaults to today
    video: '',
  });
  const [isSubmitting, setIsSubmitting] = useState(false);

  useEffect(() => {
    if (newsItem) {
      setFormData({
        title: newsItem.title,
        content: newsItem.content,
        date: new Date(newsItem.date).toISOString().split('T')[0],
        video: newsItem.video || '',
      });
    }
  }, [newsItem]);

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setFormData((prev) => ({ ...prev, [name]: value }));
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);

    const url = newsItem ? `/api/news/${newsItem.id}` : '/api/news';
    const method = newsItem ? 'PUT' : 'POST';

    // Preparar datos: convertir strings vacíos a null para URLs opcionales
    const dataToSend = {
      ...formData,
      image: null, // Siempre null ya que eliminamos la funcionalidad de imágenes
      video: formData.video.trim() || null,
    };

    try {
      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(dataToSend),
      });

      if (!res.ok) {
        const errorData = await res.json();
        console.error('Error response:', errorData);
        throw new Error(errorData.error || 'Failed to save news item');
      }

      alert(`Noticia ${newsItem ? 'actualizada' : 'creada'} con éxito.`);
      router.push('/admin/news');
      router.refresh(); // To ensure the list is updated
    } catch (error) {
      console.error('Error al guardar:', error);
      alert(`Error al guardar la noticia: ${error instanceof Error ? error.message : 'Error desconocido'}`);
    } finally {
      setIsSubmitting(false);
    }
  };

  return (
    <form onSubmit={handleSubmit} className="space-y-6 max-w-2xl mx-auto">
      <div>
        <Label htmlFor="title">Título</Label>
        <Input
          id="title"
          name="title"
          value={formData.title}
          onChange={handleChange}
          required
        />
      </div>
      <div>
        <Label htmlFor="date">Fecha</Label>
        <Input
          id="date"
          name="date"
          type="date"
          value={formData.date}
          onChange={handleChange}
          required
        />
      </div>
      <div>
        <Label htmlFor="content">Contenido</Label>
        <Textarea
          id="content"
          name="content"
          value={formData.content}
          onChange={handleChange}
          required
          rows={10}
        />
      </div>
      <div>
        <Label htmlFor="video">URL del Video (Opcional, p.ej. YouTube embed)</Label>
        <div className="flex gap-2">
          <Input
            id="video"
            name="video"
            value={formData.video}
            onChange={handleChange}
            placeholder="https://www.youtube.com/watch?v=..."
          />
          {formData.video && (
            <Button
              type="button"
              variant="outline"
              onClick={() => setFormData(prev => ({ ...prev, video: '' }))}
            >
              Limpiar
            </Button>
          )}
        </div>
        {formData.video && (
          <p className="text-xs text-muted-foreground mt-1">
            Haz clic en "Limpiar" para eliminar el video de esta noticia
          </p>
        )}
      </div>
      <div className="flex justify-end">
        <Button type="submit" disabled={isSubmitting}>
          {isSubmitting ? 'Guardando...' : 'Guardar Cambios'}
        </Button>
      </div>
    </form>
  );
}
