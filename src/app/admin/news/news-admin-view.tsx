'use client';

import { useState } from 'react';
import Link from 'next/link';
import { Button } from '@/components/ui/button';

interface NewsItem {
  id: number;
  title: string;
  date: string;
}

interface NewsAdminViewProps {
  initialNews: NewsItem[];
}

export default function NewsAdminView({ initialNews }: NewsAdminViewProps) {
  const [news, setNews] = useState<NewsItem[]>(initialNews);

  const handleDelete = async (id: number) => {
    if (!window.confirm('¿Estás seguro de que quieres eliminar esta noticia?')) {
      return;
    }

    try {
      const res = await fetch(`/api/news/${id}`,
        { method: 'DELETE' }
      );

      if (!res.ok) {
        throw new Error('Failed to delete news item');
      }

      setNews((currentNews) => currentNews.filter((item) => item.id !== id));
      alert('Noticia eliminada con éxito.');
    } catch (error) {
      console.error(error);
      alert('Error al eliminar la noticia.');
    }
  };

  return (
    <div className="bg-white shadow rounded-lg">
      <ul className="divide-y divide-gray-200">
        {news.map((item) => (
          <li key={item.id} className="px-6 py-4 flex items-center justify-between">
            <div>
              <p className="text-lg font-medium text-gray-900">{item.title}</p>
              <p className="text-sm text-gray-500">
                {new Date(item.date).toLocaleDateString('es-ES', { year: 'numeric', month: 'long', day: 'numeric' })}
              </p>
            </div>
            <div className="flex gap-2">
              <Button variant="outline" size="sm" asChild>
                <Link href={`/admin/news/edit/${item.id}`}>Editar</Link>
              </Button>
              <Button variant="destructive" size="sm" onClick={() => handleDelete(item.id)}>
                Eliminar
              </Button>
            </div>
          </li>
        ))}
      </ul>
    </div>
  );
}
