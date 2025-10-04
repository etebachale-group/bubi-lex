import { type ClassValue, clsx } from "clsx"
import { twMerge } from "tailwind-merge"

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs))
}

// Normaliza diferentes formatos de URL de YouTube a la forma embebible
// Soporta:
// - https://www.youtube.com/watch?v=VIDEO_ID
// - https://youtu.be/VIDEO_ID
// - https://www.youtube.com/embed/VIDEO_ID
// - URLs con parámetros extra (&t=30s, etc.)
export function toYouTubeEmbedUrl(raw?: string | null): string | null {
  if (!raw) return null;
  try {
    const url = new URL(raw.trim());
    const host = url.hostname.toLowerCase();
    let videoId: string | null = null;

    if (host.endsWith('youtu.be')) {
      videoId = url.pathname.slice(1) || null; // /VIDEO_ID
    } else if (host.includes('youtube.com')) {
      if (url.pathname === '/watch') {
        videoId = url.searchParams.get('v');
      } else if (url.pathname.startsWith('/embed/')) {
        videoId = url.pathname.split('/embed/')[1] || null;
      } else if (url.pathname.startsWith('/shorts/')) {
        videoId = url.pathname.split('/shorts/')[1] || null;
      }
    }

    if (!videoId) return raw; // Devuelve original si no se detecta

    // Sanitiza el ID (YouTube IDs suelen ser 11 caracteres [A-Za-z0-9_-])
    if (!/^[A-Za-z0-9_-]{6,}$/i.test(videoId)) return raw;

    return `https://www.youtube.com/embed/${videoId}`;
  } catch {
    return raw;
  }
}
