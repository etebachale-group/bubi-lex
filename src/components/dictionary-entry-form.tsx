'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Save, Loader2 } from 'lucide-react';

interface DictionaryEntryFormProps {
  mode: 'create' | 'edit';
  initialData?: {
    id?: number;
    bubi: string;
    spanish: string;
    ipa?: string;
    notes?: string;
  };
  redirectTo?: string;
}

export default function DictionaryEntryForm({ mode, initialData, redirectTo = '/collaborator' }: DictionaryEntryFormProps) {
  const router = useRouter();
  const [isSubmitting, setIsSubmitting] = useState(false);
  const [error, setError] = useState<string | null>(null);
  
  const [formData, setFormData] = useState({
    bubi: initialData?.bubi || '',
    spanish: initialData?.spanish || '',
    ipa: initialData?.ipa || '',
    notes: initialData?.notes || '',
  });

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    setIsSubmitting(true);
    setError(null);

    try {
      const url = mode === 'create' 
        ? '/api/dictionary' 
        : `/api/dictionary/${initialData?.id}`;
      
      const method = mode === 'create' ? 'POST' : 'PUT';

      const response = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      });

      if (!response.ok) {
        const data = await response.json();
        throw new Error(data.error || 'Error al guardar');
      }

      // Redirigir después de guardar
      router.push(redirectTo);
      router.refresh();
    } catch (err: any) {
      setError(err.message || 'Error al guardar la palabra');
      setIsSubmitting(false);
    }
  };

  return (
    <Card className="glass-card border-2">
      <CardContent className="pt-6">
        <form onSubmit={handleSubmit} className="space-y-6">
          {/* Error Message */}
          {error && (
            <div className="p-4 rounded-lg bg-red-50 dark:bg-red-950/30 border-2 border-red-200 dark:border-red-800 text-red-900 dark:text-red-100">
              {error}
            </div>
          )}

          {/* Palabra en Bubi */}
          <div className="space-y-2">
            <Label htmlFor="bubi" className="text-base font-semibold">
              Palabra en Bubi <span className="text-red-500">*</span>
            </Label>
            <Input
              id="bubi"
              value={formData.bubi}
              onChange={(e) => setFormData({ ...formData, bubi: e.target.value })}
              placeholder="Ej: mbolo"
              required
              className="text-lg"
            />
            <p className="text-sm text-muted-foreground">
              La palabra en el idioma Bubi
            </p>
          </div>

          {/* Traducción al Español */}
          <div className="space-y-2">
            <Label htmlFor="spanish" className="text-base font-semibold">
              Traducción al Español <span className="text-red-500">*</span>
            </Label>
            <Input
              id="spanish"
              value={formData.spanish}
              onChange={(e) => setFormData({ ...formData, spanish: e.target.value })}
              placeholder="Ej: saludo, hola"
              required
              className="text-lg"
            />
            <p className="text-sm text-muted-foreground">
              El significado en español
            </p>
          </div>

          {/* Pronunciación IPA */}
          <div className="space-y-2">
            <Label htmlFor="ipa" className="text-base font-semibold">
              Pronunciación IPA (opcional)
            </Label>
            <Input
              id="ipa"
              value={formData.ipa}
              onChange={(e) => setFormData({ ...formData, ipa: e.target.value })}
              placeholder="Ej: ˈmbolo"
              className="font-mono"
            />
            <p className="text-sm text-muted-foreground">
              Notación fonética internacional (IPA). Puedes usar{' '}
              <a 
                href="https://ipa.typeit.org/" 
                target="_blank" 
                rel="noopener noreferrer"
                className="text-blue-600 dark:text-blue-400 hover:underline"
              >
                este teclado IPA
              </a>
            </p>
          </div>

          {/* Notas Culturales */}
          <div className="space-y-2">
            <Label htmlFor="notes" className="text-base font-semibold">
              Notas Culturales (opcional)
            </Label>
            <Textarea
              id="notes"
              value={formData.notes}
              onChange={(e) => setFormData({ ...formData, notes: e.target.value })}
              placeholder="Ej: Usado tradicionalmente como saludo matutino entre familiares..."
              rows={4}
            />
            <p className="text-sm text-muted-foreground">
              Contexto cultural, uso tradicional, o información adicional sobre la palabra
            </p>
          </div>

          {/* Buttons */}
          <div className="flex gap-4 pt-4">
            <Button
              type="submit"
              disabled={isSubmitting || !formData.bubi || !formData.spanish}
              className="flex-1 bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700"
            >
              {isSubmitting ? (
                <>
                  <Loader2 className="w-4 h-4 mr-2 animate-spin" />
                  Guardando...
                </>
              ) : (
                <>
                  <Save className="w-4 h-4 mr-2" />
                  {mode === 'create' ? 'Agregar Palabra' : 'Guardar Cambios'}
                </>
              )}
            </Button>
            <Button
              type="button"
              variant="outline"
              onClick={() => router.push(redirectTo)}
              disabled={isSubmitting}
            >
              Cancelar
            </Button>
          </div>
        </form>
      </CardContent>
    </Card>
  );
}
