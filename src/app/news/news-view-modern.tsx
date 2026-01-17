'use client';

import { useState, useEffect } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { ThumbsUp, Share2, Calendar, Heart, MessageCircle, Newspaper as NewsIcon } from 'lucide-react';
import Image from 'next/image';
import { getSupabase } from '@/lib/db';
import { toYouTubeEmbedUrl } from '@/lib/utils';
import YouTubeEmbed from '@/components/youtube-embed';

interface NewsItem {
  id: number;
  title: string;
  content: string;
  date: string;
  image?: string | null;
  video?: string | null;
  likes: number;
}

interface NewsViewProps {
  news: NewsItem[];
}

const NewsViewModern = ({ news }: NewsViewProps) => {
  const [newsItems, setNewsItems] = useState<NewsItem[]>(news);
  const [likedItems, setLikedItems] = useState<Set<number>>(new Set());

  useEffect(() => {
    setNewsItems(news);
  }, [news]);

  useEffect(() => {
    const supabase = getSupabase();
    const channel = supabase
      .channel('news-feed-modern')
      .on(
        'postgres_changes',
        { event: 'INSERT', schema: 'public', table: 'news' },
        (payload) => {
          const newNewsItem = payload.new as NewsItem;
          if (newNewsItem && newNewsItem.id) {
            setNewsItems((currentNews) => [newNewsItem, ...currentNews]);
          }
        }
      )
      .on(
        'postgres_changes',
        { event: 'DELETE', schema: 'public', table: 'news' },
        (payload) => {
          const deletedItemId = (payload.old as Partial<NewsItem>).id;
          if (deletedItemId) {
            setNewsItems((currentNews) =>
              currentNews.filter((item) => item.id !== deletedItemId)
            );
          }
        }
      )
      .subscribe();

    return () => {
      supabase.removeChannel(channel);
    };
  }, []);

  const handleLike = async (index: number, id: number) => {
    // Check if already liked
    if (likedItems.has(id)) {
      return;
    }

    // Optimistic update
    setNewsItems(currentNews => {
      const next = [...currentNews];
      next[index] = { ...next[index], likes: (next[index].likes ?? 0) + 1 };
      return next;
    });
    setLikedItems(prev => new Set(prev).add(id));

    try {
      const res = await fetch(`/api/news/${id}/like`, { method: 'POST' });
      if (!res.ok) throw new Error('Like failed');
      const data = await res.json();
      // Sync with server value
      setNewsItems(currentNews => {
        const next = [...currentNews];
        if (next[index] && next[index].id === id) {
          next[index] = { ...next[index], likes: data.likes };
        }
        return next;
      });
    } catch {
      // Revert optimistic update
      setNewsItems(currentNews => {
        const next = [...currentNews];
        if (next[index] && next[index].id === id) {
          next[index] = { ...next[index], likes: Math.max(0, (next[index].likes ?? 1) - 1) };
        }
        return next;
      });
      setLikedItems(prev => {
        const next = new Set(prev);
        next.delete(id);
        return next;
      });
      alert('No se pudo registrar tu me gusta.');
    }
  };

  const handleShare = (item: NewsItem) => {
    const url = `${window.location.origin}/news#${item.id}`;
    if (navigator.share) {
      navigator.share({
        title: item.title,
        text: item.content.substring(0, 100) + '...',
        url: url,
      }).catch(() => {
        // Fallback to clipboard
        navigator.clipboard.writeText(url);
        alert('¡Enlace copiado al portapapeles!');
      });
    } else {
      navigator.clipboard.writeText(url);
      alert('¡Enlace copiado al portapapeles!');
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

  return (
    <div className="flex flex-col gap-8 animate-fade-in">
      {/* Header */}
      <div className="text-center space-y-4">
        <div className="flex items-center justify-center gap-3">
          <div className="p-3 rounded-xl bg-gradient-to-br from-purple-500 to-pink-500">
            <NewsIcon className="w-8 h-8 text-white" />
          </div>
          <h1 className="text-4xl md:text-5xl font-headline font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
            Noticias y Relatos
          </h1>
        </div>
        <p className="text-lg text-muted-foreground max-w-2xl mx-auto">
          Descubre las últimas noticias, relatos y fábulas de la cultura Bubi
        </p>
      </div>

      {/* News Grid */}
      <div className="grid gap-6 md:grid-cols-2 lg:grid-cols-1 max-w-4xl mx-auto w-full">
        {newsItems.map((item, index) => (
          <article 
            key={item.id} 
            id={String(item.id)}
            className="animate-fade-in"
            style={{ animationDelay: `${index * 100}ms` }}
          >
            <Card className="glass-card border-2 hover:border-purple-300 dark:hover:border-purple-700 transition-all hover:shadow-xl overflow-hidden group">
              {/* Image/Video */}
              {(item.image || item.video) && (
                <div className="relative overflow-hidden">
                  {item.image && (
                    <div className="relative h-64 md:h-80 overflow-hidden">
                      <Image
                        src={item.image}
                        alt={item.title}
                        fill
                        sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 800px"
                        className="object-cover group-hover:scale-105 transition-transform duration-300"
                        priority={index === 0}
                      />
                      <div className="absolute inset-0 bg-gradient-to-t from-black/60 to-transparent"></div>
                    </div>
                  )}
                  {item.video && !item.image && (
                    item.video.startsWith('/uploads/') ? (
                      <video controls className="w-full h-64 md:h-80 object-cover" src={item.video} />
                    ) : (
                      <div className="h-64 md:h-80">
                        <YouTubeEmbed
                          url={toYouTubeEmbedUrl(item.video) || item.video}
                          title={item.title}
                        />
                      </div>
                    )
                  )}
                </div>
              )}

              <CardContent className="pt-6">
                {/* Date */}
                <div className="flex items-center gap-2 text-sm text-muted-foreground mb-3">
                  <Calendar className="w-4 h-4" />
                  <time dateTime={item.date}>{formatDate(item.date)}</time>
                </div>

                {/* Title */}
                <h2 className="text-2xl md:text-3xl font-headline font-bold mb-4 group-hover:text-purple-600 dark:group-hover:text-purple-400 transition-colors">
                  {item.title}
                </h2>

                {/* Content */}
                <p className="text-muted-foreground leading-relaxed mb-6">
                  {item.content}
                </p>

                {/* Actions */}
                <div className="flex items-center justify-between pt-4 border-t">
                  <div className="flex items-center gap-4">
                    <Button
                      variant="ghost"
                      size="sm"
                      className={`gap-2 ${likedItems.has(item.id) ? 'text-red-500' : ''}`}
                      onClick={() => handleLike(index, item.id)}
                      disabled={likedItems.has(item.id)}
                    >
                      {likedItems.has(item.id) ? (
                        <Heart className="w-5 h-5 fill-current" />
                      ) : (
                        <ThumbsUp className="w-5 h-5" />
                      )}
                      <span className="font-semibold">{item.likes}</span>
                    </Button>
                    <Button
                      variant="ghost"
                      size="sm"
                      className="gap-2"
                      onClick={() => handleShare(item)}
                    >
                      <Share2 className="w-5 h-5" />
                      <span className="hidden sm:inline">Compartir</span>
                    </Button>
                  </div>
                  
                  <div className="flex items-center gap-2 text-sm text-muted-foreground">
                    <MessageCircle className="w-4 h-4" />
                    <span>Comentarios próximamente</span>
                  </div>
                </div>
              </CardContent>
            </Card>
          </article>
        ))}
      </div>

      {/* Empty State */}
      {newsItems.length === 0 && (
        <div className="flex flex-col items-center justify-center text-center py-20 animate-fade-in">
          <div className="p-6 rounded-full bg-gradient-to-br from-purple-100 to-pink-100 dark:from-purple-900 dark:to-pink-900 mb-6">
            <NewsIcon className="w-16 h-16 text-purple-600 dark:text-purple-400" />
          </div>
          <h2 className="text-2xl font-semibold mb-2">No hay noticias aún</h2>
          <p className="text-muted-foreground max-w-md">
            Pronto publicaremos noticias y relatos sobre la cultura Bubi.
          </p>
        </div>
      )}
    </div>
  );
};

export default NewsViewModern;
