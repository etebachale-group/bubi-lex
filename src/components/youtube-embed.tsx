interface YouTubeEmbedProps {
  url: string;
  title?: string;
  className?: string;
}

// Componente simple para iframes de YouTube asegurando atributos recomendados
export default function YouTubeEmbed({ url, title, className }: YouTubeEmbedProps) {
  return (
    <div className={className + ' relative w-full aspect-video'}>
      <iframe
        key={url}
        src={url}
        title={title || 'YouTube video'}
        loading="lazy"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
        referrerPolicy="strict-origin-when-cross-origin"
        allowFullScreen
        className="absolute inset-0 w-full h-full rounded-lg"
      />
    </div>
  );
}