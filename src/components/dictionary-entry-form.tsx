'use client';

import { useState } from 'react';
import { useRouter } from 'next/navigation';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { Save, Loader2, Info } from 'lucide-react';

interface DictionaryEntryFormProps {
  mode: 'create' | 'edit';
  initialData?: {
    id?: number;
    bubi: string;
    spanish: string;
    word_type?: string;
    gender?: string;
    number?: string;
    nominal_class?: string;
    plural_form?: string;
    ipa?: string;
    examples?: string;
    variants?: string;
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
    word_type: initialData?.word_type || '',
    gender: initialData?.gender || '',
    number: initialData?.number || '',
    nominal_class: initialData?.nominal_class || '',
    plural_form: initialData?.plural_form || '',
    ipa: initialData?.ipa || '',
    examples: initialData?.examples || '',
    variants: initialData?.variants || '',
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

          {/* Información de ayuda */}
          <div className="p-4 rounded-lg bg-blue-50 dark:bg-blue-950/30 border border-blue-200 dark:border-blue-800">
            <div className="flex items-start gap-2">
              <Info className="w-5 h-5 text-blue-600 dark:text-blue-400 flex-shrink-0 mt-0.5" />
              <div className="text-sm text-blue-900 dark:text-blue-100">
                <p className="font-semibold mb-1">Guía para agregar palabras:</p>
                <ul className="list-disc list-inside space-y-1 text-xs">
                  <li>Los campos marcados con * son obligatorios</li>
                  <li>Completa la información gramatical para mejor precisión</li>
                  <li>Usa el formato IPA para la pronunciación</li>
                  <li>Separa ejemplos con " | " (barra vertical)</li>
                </ul>
              </div>
            </div>
          </div>

          {/* Sección 1: Información Básica */}
          <div className="space-y-4 p-4 bg-gradient-to-br from-purple-50 to-pink-50 dark:from-purple-950/20 dark:to-pink-950/20 rounded-lg border border-purple-200 dark:border-purple-800">
            <h3 className="font-bold text-lg text-purple-900 dark:text-purple-100">
              📝 Información Básica
            </h3>

            {/* Palabra en Bubi */}
            <div className="space-y-2">
              <Label htmlFor="bubi" className="text-base font-semibold">
                Palabra en Bubi <span className="text-red-500">*</span>
              </Label>
              <Input
                id="bubi"
                value={formData.bubi}
                onChange={(e) => setFormData({ ...formData, bubi: e.target.value })}
                placeholder="Ej: botyo, moppé, riallá"
                required
                className="text-lg"
              />
              <p className="text-sm text-muted-foreground">
                La palabra en el idioma Bubi (respeta acentos y tonos)
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
                placeholder="Ej: persona, agua, mano"
                required
                className="text-lg"
              />
              <p className="text-sm text-muted-foreground">
                El significado en español (solo la palabra, sin explicaciones)
              </p>
            </div>

            {/* Pronunciación IPA */}
            <div className="space-y-2">
              <Label htmlFor="ipa" className="text-base font-semibold">
                Pronunciación IPA
              </Label>
              <Input
                id="ipa"
                value={formData.ipa}
                onChange={(e) => setFormData({ ...formData, ipa: e.target.value })}
                placeholder="Ej: bótʃo, moppé, riállá"
                className="font-mono"
              />
              <p className="text-sm text-muted-foreground">
                Notación fonética internacional. Usa{' '}
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
          </div>

          {/* Sección 2: Información Gramatical */}
          <div className="space-y-4 p-4 bg-gradient-to-br from-blue-50 to-cyan-50 dark:from-blue-950/20 dark:to-cyan-950/20 rounded-lg border border-blue-200 dark:border-blue-800">
            <h3 className="font-bold text-lg text-blue-900 dark:text-blue-100">
              📚 Información Gramatical
            </h3>

            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
              {/* Tipo de Palabra */}
              <div className="space-y-2">
                <Label htmlFor="word_type" className="text-base font-semibold">
                  Tipo de Palabra
                </Label>
                <select
                  id="word_type"
                  value={formData.word_type}
                  onChange={(e) => setFormData({ ...formData, word_type: e.target.value })}
                  className="w-full px-3 py-2 border border-gray-300 dark:border-gray-700 rounded-md bg-white dark:bg-gray-900"
                >
                  <option value="">Seleccionar...</option>
                  <option value="sustantivo">Sustantivo</option>
                  <option value="verbo">Verbo</option>
                  <option value="adjetivo">Adjetivo</option>
                  <option value="adverbio">Adverbio</option>
                  <option value="pronombre">Pronombre</option>
                  <option value="preposición">Preposición</option>
                  <option value="conjunción">Conjunción</option>
                  <option value="interjección">Interjección</option>
                </select>
                <p className="text-sm text-muted-foreground">
                  Categoría gramatical de la palabra
                </p>
              </div>

              {/* Clase Nominal */}
              <div className="space-y-2">
                <Label htmlFor="nominal_class" className="text-base font-semibold">
                  Clase Nominal
                </Label>
                <select
                  id="nominal_class"
                  value={formData.nominal_class}
                  onChange={(e) => setFormData({ ...formData, nominal_class: e.target.value })}
                  className="w-full px-3 py-2 border border-gray-300 dark:border-gray-700 rounded-md bg-white dark:bg-gray-900"
                >
                  <option value="">Seleccionar...</option>
                  <option value="Cl. 1">Cl. 1 (bo-, personas sing.)</option>
                  <option value="Cl. 2">Cl. 2 (ba-, personas pl.)</option>
                  <option value="Cl. 3">Cl. 3 (bo-, objetos sing.)</option>
                  <option value="Cl. 4">Cl. 4 (be-, objetos pl.)</option>
                  <option value="Cl. 5">Cl. 5 (ri-, diversos sing.)</option>
                  <option value="Cl. 6">Cl. 6 (ba-, diversos pl.)</option>
                  <option value="Cl. 7">Cl. 7 (e-, diversos sing.)</option>
                  <option value="Cl. 8">Cl. 8 (bi-, diversos pl.)</option>
                  <option value="Cl. 9">Cl. 9 (Ø, diversos sing.)</option>
                  <option value="Cl. 10">Cl. 10 (Ø, diversos pl.)</option>
                  <option value="Cl. 11">Cl. 11 (lo-, diversos sing.)</option>
                  <option value="Cl. 12">Cl. 12 (si-, diminutivos sing.)</option>
                  <option value="Cl. 13">Cl. 13 (to-, diminutivos pl.)</option>
                  <option value="Cl. 15">Cl. 15 (o, infinitivos)</option>
                  <option value="Cl. 16">Cl. 16 (ha-, lugares)</option>
                </select>
                <p className="text-sm text-muted-foreground">
                  Sistema de prefijos del Bubi
                </p>
              </div>

              {/* Género */}
              <div className="space-y-2">
                <Label htmlFor="gender" className="text-base font-semibold">
                  Género
                </Label>
                <select
                  id="gender"
                  value={formData.gender}
                  onChange={(e) => setFormData({ ...formData, gender: e.target.value })}
                  className="w-full px-3 py-2 border border-gray-300 dark:border-gray-700 rounded-md bg-white dark:bg-gray-900"
                >
                  <option value="">Seleccionar...</option>
                  <option value="masculino">Masculino</option>
                  <option value="femenino">Femenino</option>
                  <option value="neutro">Neutro</option>
                </select>
                <p className="text-sm text-muted-foreground">
                  Si aplica (no todas las palabras tienen género)
                </p>
              </div>

              {/* Número */}
              <div className="space-y-2">
                <Label htmlFor="number" className="text-base font-semibold">
                  Número
                </Label>
                <select
                  id="number"
                  value={formData.number}
                  onChange={(e) => setFormData({ ...formData, number: e.target.value })}
                  className="w-full px-3 py-2 border border-gray-300 dark:border-gray-700 rounded-md bg-white dark:bg-gray-900"
                >
                  <option value="">Seleccionar...</option>
                  <option value="singular">Singular</option>
                  <option value="plural">Plural</option>
                </select>
                <p className="text-sm text-muted-foreground">
                  Singular o plural
                </p>
              </div>
            </div>

            {/* Forma Plural */}
            <div className="space-y-2">
              <Label htmlFor="plural_form" className="text-base font-semibold">
                Forma Plural
              </Label>
              <Input
                id="plural_form"
                value={formData.plural_form}
                onChange={(e) => setFormData({ ...formData, plural_form: e.target.value })}
                placeholder="Ej: batyo (si singular es botyo)"
              />
              <p className="text-sm text-muted-foreground">
                La forma plural de la palabra (si es singular)
              </p>
            </div>
          </div>

          {/* Sección 3: Información Adicional */}
          <div className="space-y-4 p-4 bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-950/20 dark:to-emerald-950/20 rounded-lg border border-green-200 dark:border-green-800">
            <h3 className="font-bold text-lg text-green-900 dark:text-green-100">
              💡 Información Adicional
            </h3>

            {/* Variantes */}
            <div className="space-y-2">
              <Label htmlFor="variants" className="text-base font-semibold">
                Variantes
              </Label>
              <Input
                id="variants"
                value={formData.variants}
                onChange={(e) => setFormData({ ...formData, variants: e.target.value })}
                placeholder="Ej: boppé, a moppé"
              />
              <p className="text-sm text-muted-foreground">
                Otras formas de escribir o pronunciar la palabra (separadas por comas)
              </p>
            </div>

            {/* Ejemplos de Uso */}
            <div className="space-y-2">
              <Label htmlFor="examples" className="text-base font-semibold">
                Ejemplos de Uso
              </Label>
              <Textarea
                id="examples"
                value={formData.examples}
                onChange={(e) => setFormData({ ...formData, examples: e.target.value })}
                placeholder="Ej: na la rá moppé (yo bebo agua) | o moppé bó lá tó (el agua está fría)"
                rows={3}
              />
              <p className="text-sm text-muted-foreground">
                Frases de ejemplo en Bubi con traducción. Separa múltiples ejemplos con " | "
              </p>
            </div>

            {/* Notas Culturales */}
            <div className="space-y-2">
              <Label htmlFor="notes" className="text-base font-semibold">
                Notas Culturales
              </Label>
              <Textarea
                id="notes"
                value={formData.notes}
                onChange={(e) => setFormData({ ...formData, notes: e.target.value })}
                placeholder="Ej: Usado tradicionalmente en ceremonias. Palabra de origen bantú..."
                rows={4}
              />
              <p className="text-sm text-muted-foreground">
                Contexto cultural, etimología, uso tradicional, o información adicional
              </p>
            </div>
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
