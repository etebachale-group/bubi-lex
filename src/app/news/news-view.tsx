"use client";

import { useState } from 'react';
import { Card, CardContent, CardHeader, CardTitle, CardFooter } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { ThumbsUp, Share2 } from 'lucide-react';
import Image from 'next/image';

interface NewsItem {
  id: number;
  title: string;
  content: string;
  date: string;
  image?: string;
  video?: string;
  likes: number;
}

interface NewsViewProps {
  news: NewsItem[];
}

const NewsView = ({ news }: NewsViewProps) => {
  const [likes, setLikes] = useState(news.map(item => item.likes));

  const handleLike = async (index: number, id: number) => {
    try {
      // Optimistic update
      setLikes((prev) => {
        const next = [...prev];
        next[index] = (next[index] ?? 0) + 1;
        return next;
      });
      const res = await fetch(`/api/news/${id}/like`, { method: 'POST' });
      if (!res.ok) throw new Error('Like failed');
      const data = await res.json();
      // Sync with server value
      setLikes((prev) => {
        const next = [...prev];
        next[index] = data.likes ?? next[index];
        return next;
      });
  } catch {
      // Revert optimistic update on error
      setLikes((prev) => {
        const next = [...prev];
        next[index] = Math.max(0, (next[index] ?? 1) - 1);
        return next;
      });
      alert('No se pudo registrar tu me gusta.');
    }
  };

  const handleShare = (id: number) => {
    const url = `${window.location.origin}/news#${id}`;
    navigator.clipboard.writeText(url);
    alert('¡Enlace copiado al portapapeles!');
  };

  return (
    <div className="flex flex-col gap-8">
      <h1 className="text-3xl font-bold font-headline">Noticias y Relatos</h1>
      <div className="space-y-6">
        {news.map((item, index) => (
          <article key={item.id} id={String(item.id)}>
            <Card>
              <CardHeader>
                <CardTitle className="font-headline">{item.title}</CardTitle>
                <p className="text-sm text-muted-foreground">{new Date(item.date).toLocaleDateString('es-ES', { year: 'numeric', month: 'long', day: 'numeric' })}</p>
              </CardHeader>
              <CardContent>
                {item.image && (
                  <div className="w-full mb-4">
                    <Image
                      src={item.image}
                      alt={item.title}
                      width={1200}
                      height={675}
                      sizes="(max-width: 640px) 100vw, (max-width: 1024px) 768px, 1200px"
                      className="rounded-lg w-full h-auto max-h-96 object-cover"
                      priority={index === 0}
                    />
                  </div>
                )}
                {item.video && (
                  item.video.startsWith('/uploads/') ? (
                    <video controls className="w-full mb-4 rounded-lg" src={item.video} />
                  ) : (
                    <div className="relative w-full aspect-video mb-4">
                      <iframe
                        src={item.video}
                        title={item.title}
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowFullScreen
                        className="absolute inset-0 w-full h-full rounded-lg"
                      ></iframe>
                    </div>
                  )
                )}
                <p className="text-muted-foreground">{item.content}</p>
              </CardContent>
              <CardFooter className="flex justify-end gap-2">
                <Button aria-label="Me gusta" variant="ghost" size="icon" onClick={() => handleLike(index, item.id)}>
                  <ThumbsUp className="w-5 h-5" />
                  <span className="ml-2">{likes[index]}</span>
                </Button>
                <Button aria-label="Compartir" variant="ghost" size="icon" onClick={() => handleShare(item.id)}>
                  <Share2 className="w-5 h-5" />
                </Button>
              </CardFooter>
            </Card>
          </article>
        ))}
      </div>
    </div>
  );
};

export default NewsView;
