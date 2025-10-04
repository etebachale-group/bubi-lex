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
    image: '',
    video: '',
  });
  const [isSubmitting, setIsSubmitting] = useState(false);

  useEffect(() => {
    if (newsItem) {
      setFormData({
        title: newsItem.title,
        content: newsItem.content,
        date: new Date(newsItem.date).toISOString().split('T')[0],
        image: newsItem.image || '',
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

    try {
      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      });

      if (!res.ok) {
        throw new Error('Failed to save news item');
      }

      alert(`Noticia ${newsItem ? 'actualizada' : 'creada'} con éxito.`);
      router.push('/admin/news');
      router.refresh(); // To ensure the list is updated
    } catch (error) {
      console.error(error);
      alert('Error al guardar la noticia.');
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
        <Label htmlFor="image">URL de la Imagen (Opcional)</Label>
        <Input
          id="image"
          name="image"
          value={formData.image}
          onChange={handleChange}
        />
      </div>
      <div>
        <Label htmlFor="video">URL del Video (Opcional, p.ej. YouTube embed)</Label>
        <Input
          id="video"
          name="video"
          value={formData.video}
          onChange={handleChange}
        />
      </div>
      <div className="flex justify-end">
        <Button type="submit" disabled={isSubmitting}>
          {isSubmitting ? 'Guardando...' : 'Guardar Cambios'}
        </Button>
      </div>
    </form>
  );
}
