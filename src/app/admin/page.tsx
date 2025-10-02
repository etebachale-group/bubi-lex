"use client";

import { useState } from 'react';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Card, CardContent, CardHeader, CardTitle } from '@/components/ui/card';

// Note: No metadata export in client components. Robots for /admin are handled in robots.ts

const AdminPage = () => {
  const [newsTitle, setNewsTitle] = useState('');
  const [newsContent, setNewsContent] = useState('');
  const [newsMediaUrl, setNewsMediaUrl] = useState('');
  const [newsVideoUrl, setNewsVideoUrl] = useState('');
  const [uploadingImage, setUploadingImage] = useState(false);
  const [uploadingVideo, setUploadingVideo] = useState(false);
  const [bubiWord, setBubiWord] = useState('');
  const [spanishWord, setSpanishWord] = useState('');
  const [ipa, setIpa] = useState('');
  const [savingNews, setSavingNews] = useState(false);
  const [savingWord, setSavingWord] = useState(false);

  const handleAddNews = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      setSavingNews(true);
      const payload = {
        title: newsTitle,
        content: newsContent,
        date: new Date().toISOString().slice(0,10),
        image: newsMediaUrl || null,
        video: newsVideoUrl || null,
      };
      const res = await fetch('/api/news', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload),
      });
      if (!res.ok) throw new Error('Error al guardar la noticia');
      alert('Noticia añadida correctamente');
      setNewsTitle('');
      setNewsContent('');
  setNewsMediaUrl('');
  setNewsVideoUrl('');
    } catch (err) {
      console.error(err);
      alert('No se pudo añadir la noticia');
    } finally {
      setSavingNews(false);
    }
  };

  const handleLocalUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const f = e.target.files?.[0];
    if (!f) return;
    try {
      setUploadingImage(true);
      const fd = new FormData();
      fd.append('file', f);
      fd.append('kind', 'image');
      const res = await fetch('/api/upload', { method: 'POST', body: fd });
      if (!res.ok) throw new Error('Error al subir la imagen');
      const data = await res.json();
      setNewsMediaUrl(data.url);
    } catch (err) {
      console.error(err);
      alert('No se pudo subir la imagen');
    } finally {
      setUploadingImage(false);
      // limpia el input para permitir re-seleccionar el mismo archivo
      e.target.value = '';
    }
  };

  const handleLocalVideoUpload = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const f = e.target.files?.[0];
    if (!f) return;
    try {
      setUploadingVideo(true);
      const fd = new FormData();
      fd.append('file', f);
      fd.append('kind', 'video');
      const res = await fetch('/api/upload', { method: 'POST', body: fd });
      if (!res.ok) throw new Error('Error al subir el video');
      const data = await res.json();
      setNewsVideoUrl(data.url);
    } catch (err) {
      console.error(err);
      alert('No se pudo subir el video');
    } finally {
      setUploadingVideo(false);
      e.target.value = '';
    }
  };

  const handleAddWord = async (e: React.FormEvent) => {
    e.preventDefault();
    try {
      setSavingWord(true);
  const payload = { bubi: bubiWord, spanish: spanishWord, ipa: ipa || null, notes: null };
      const res = await fetch('/api/dictionary', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(payload),
      });
      if (!res.ok) throw new Error('Error al guardar la palabra');
      alert('Palabra añadida correctamente');
      setBubiWord('');
  setSpanishWord('');
  setIpa('');
    } catch (err) {
      console.error(err);
      alert('No se pudo añadir la palabra');
    } finally {
      setSavingWord(false);
    }
  };

  return (
    <div className="flex flex-col gap-8">
      <h1 className="text-3xl font-bold font-headline">Panel de Administración</h1>
      <div className="grid gap-8 md:grid-cols-2">
        <Card>
          <CardHeader>
            <CardTitle>Añadir Nueva Noticia</CardTitle>
          </CardHeader>
          <CardContent>
            <form onSubmit={handleAddNews} className="space-y-4">
              <div className="space-y-2">
                <Label htmlFor="news-title">Título</Label>
                <Input
                  id="news-title"
                  value={newsTitle}
                  onChange={(e) => setNewsTitle(e.target.value)}
                  placeholder="Título de la noticia"
                  required
                />
              </div>
              <div className="space-y-2">
                <Label htmlFor="news-content">Contenido</Label>
                <Textarea
                  id="news-content"
                  value={newsContent}
                  onChange={(e) => setNewsContent(e.target.value)}
                  placeholder="Escribe el contenido aquí..."
                  required
                />
              </div>
              <div className="space-y-2">
                <Label htmlFor="news-media">URL de Imagen</Label>
                <Input
                  id="news-media"
                  value={newsMediaUrl}
                  onChange={(e) => setNewsMediaUrl(e.target.value)}
                  placeholder="https://ejemplo.com/imagen.jpg o /uploads/images/archivo.jpg"
                />
                <div className="flex items-center gap-2">
                  <Input type="file" accept="image/*" onChange={handleLocalUpload} aria-label="Subir imagen" />
                  <Button type="button" variant="secondary" disabled={uploadingImage}>{uploadingImage ? 'Subiendo…' : 'Subir imagen'}</Button>
                </div>
              </div>
              <div className="space-y-2">
                <Label htmlFor="news-video">URL de Video</Label>
                <Input
                  id="news-video"
                  value={newsVideoUrl}
                  onChange={(e) => setNewsVideoUrl(e.target.value)}
                  placeholder="https://youtube.com/embed/... o /uploads/videos/archivo.mp4"
                />
                <div className="flex items-center gap-2">
                  <Input type="file" accept="video/*" onChange={handleLocalVideoUpload} aria-label="Subir video" />
                  <Button type="button" variant="secondary" disabled={uploadingVideo}>{uploadingVideo ? 'Subiendo…' : 'Subir video'}</Button>
                </div>
              </div>
              <Button type="submit" disabled={savingNews}>{savingNews ? 'Guardando…' : 'Añadir Noticia'}</Button>
            </form>
          </CardContent>
        </Card>

        <Card>
          <CardHeader>
            <CardTitle>Añadir Palabra al Diccionario</CardTitle>
          </CardHeader>
          <CardContent>
            <form onSubmit={handleAddWord} className="space-y-4">
              <div className="space-y-2">
                <Label htmlFor="bubi-word">Palabra en Bubi</Label>
                <Input
                  id="bubi-word"
                  value={bubiWord}
                  onChange={(e) => setBubiWord(e.target.value)}
                  placeholder="Escribe la palabra en Bubi"
                  required
                />
              </div>
              <div className="space-y-2">
                <Label htmlFor="spanish-word">Significado en Español</Label>
                <Textarea
                  id="spanish-word"
                  value={spanishWord}
                  onChange={(e) => setSpanishWord(e.target.value)}
                  placeholder="Escribe el significado y contexto"
                  required
                />
              </div>
              <div className="space-y-2">
                <Label htmlFor="ipa">Pronunciación (AFI / IPA) - opcional</Label>
                <Input
                  id="ipa"
                  value={ipa}
                  onChange={(e) => setIpa(e.target.value)}
                  placeholder="p.ej. bɾa, bø.'e, ka.t͡ʃa"
                />
              </div>
              <Button type="submit" disabled={savingWord}>{savingWord ? 'Guardando…' : 'Añadir Palabra'}</Button>
            </form>
          </CardContent>
        </Card>
      </div>
    </div>
  );
};

export default AdminPage;
