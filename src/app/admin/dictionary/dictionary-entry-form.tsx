"use client";
import { useState, useEffect } from 'react';
import { useRouter } from 'next/navigation';
import { z } from 'zod';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';
import { Info } from 'lucide-react';

const EntrySchema = z.object({
  bubi: z.string().min(1, 'Requerido'),
  spanish: z.string().min(1, 'Requerido'),
  word_type: z.string().optional().nullable(),
  gender: z.string().optional().nullable(),
  number: z.string().optional().nullable(),
  nominal_class: z.string().optional().nullable(),
  plural_form: z.string().optional().nullable(),
  ipa: z.string().optional().nullable(),
  examples: z.string().optional().nullable(),
  variants: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
});

export interface DictionaryEntryFormProps {
  mode: 'create' | 'edit';
  id?: number;
  initial?: { 
    bubi: string; 
    spanish: string; 
    word_type?: string | null;
    gender?: string | null;
    number?: string | null;
    nominal_class?: string | null;
    plural_form?: string | null;
    ipa?: string | null;
    examples?: string | null;
    variants?: string | null;
    notes?: string | null;
  } | null;
  onSaved?: (id: number) => void;
}

export default function DictionaryEntryForm({ mode, id, initial, onSaved }: DictionaryEntryFormProps) {
  const router = useRouter();
  const [form, setForm] = useState({
    bubi: initial?.bubi || '',
    spanish: initial?.spanish || '',
    word_type: initial?.word_type || '',
    gender: initial?.gender || '',
    number: initial?.number || '',
    nominal_class: initial?.nominal_class || '',
    plural_form: initial?.plural_form || '',
    ipa: initial?.ipa || '',
    examples: initial?.examples || '',
    variants: initial?.variants || '',
    notes: initial?.notes || '',
  });
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (initial) {
      setForm({
        bubi: initial.bubi,
        spanish: initial.spanish,
        word_type: initial.word_type || '',
        gender: initial.gender || '',
        number: initial.number || '',
        nominal_class: initial.nominal_class || '',
        plural_form: initial.plural_form || '',
        ipa: initial.ipa || '',
        examples: initial.examples || '',
        variants: initial.variants || '',
        notes: initial.notes || '',
      });
    }
  }, [initial]);

  const handleChange = (e: React.ChangeEvent<HTMLInputElement | HTMLTextAreaElement>) => {
    const { name, value } = e.target;
    setForm(f => ({ ...f, [name]: value }));
  };

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setErrors({});
    const parsed = EntrySchema.safeParse({
      bubi: form.bubi.trim(),
      spanish: form.spanish.trim(),
      word_type: form.word_type.trim() || undefined,
      gender: form.gender.trim() || undefined,
      number: form.number.trim() || undefined,
      nominal_class: form.nominal_class.trim() || undefined,
      plural_form: form.plural_form.trim() || undefined,
      ipa: form.ipa.trim() || undefined,
      examples: form.examples.trim() || undefined,
      variants: form.variants.trim() || undefined,
      notes: form.notes.trim() || undefined,
    });
    if (!parsed.success) {
      const zerr: Record<string, string> = {};
      for (const issue of parsed.error.issues) {
        const k = issue.path[0] as string;
        zerr[k] = issue.message;
      }
      setErrors(zerr);
      return;
    }

    setLoading(true);
    try {
      const body = JSON.stringify(parsed.data);
      let res: Response;
      if (mode === 'edit' && id) {
        res = await fetch(`/api/dictionary/${id}`, { method: 'PUT', headers: { 'Content-Type': 'application/json' }, body });
      } else {
        res = await fetch('/api/dictionary', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body });
      }
      
      if (!res.ok) {
        const errorData = await res.json();
        
        // Manejar error de duplicado específicamente
        if (res.status === 409) {
          const duplicate = errorData.duplicate;
          throw new Error(
            `Ya existe una entrada con la palabra "${duplicate?.bubi}". ` +
            `ID: ${duplicate?.id}, Español: "${duplicate?.spanish}"`
          );
        }
        
        throw new Error(errorData.error || 'Error guardando');
      }
      
      const json = await res.json();
      
      // Llamar callback si existe
      if (onSaved) {
        onSaved(json.id ?? id!);
      }
      
      // Redirigir al panel de diccionario
      router.push('/admin/dictionary');
      router.refresh();
    } catch (err: any) {
      setErrors(e => ({ ...e, root: err.message }));
    } finally {
      setLoading(false);
    }
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-6">
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

        <div>
          <Label htmlFor="bubi">Palabra (Bubi) <span className="text-red-500">*</span></Label>
          <Input id="bubi" name="bubi" value={form.bubi} onChange={handleChange} required placeholder="Ej: botyo, moppé, riallá" />
          {errors.bubi && <p className="text-sm text-destructive mt-1">{errors.bubi}</p>}
          <p className="text-sm text-muted-foreground mt-1">La palabra en el idioma Bubi (respeta acentos y tonos)</p>
        </div>

        <div>
          <Label htmlFor="spanish">Traducción (Español) <span className="text-red-500">*</span></Label>
          <Input id="spanish" name="spanish" value={form.spanish} onChange={handleChange} required placeholder="Ej: persona, agua, mano" />
          {errors.spanish && <p className="text-sm text-destructive mt-1">{errors.spanish}</p>}
          <p className="text-sm text-muted-foreground mt-1">El significado en español</p>
        </div>

        <div>
          <Label htmlFor="ipa">Pronunciación IPA</Label>
          <Input id="ipa" name="ipa" value={form.ipa} onChange={handleChange} placeholder="Ej: bótʃo, moppé" className="font-mono" />
          <p className="text-sm text-muted-foreground mt-1">
            Notación fonética internacional. Usa{' '}
            <a href="https://ipa.typeit.org/" target="_blank" rel="noopener noreferrer" className="text-blue-600 dark:text-blue-400 hover:underline">
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
          <div>
            <Label htmlFor="word_type">Tipo de Palabra</Label>
            <select
              id="word_type"
              name="word_type"
              value={form.word_type}
              onChange={handleChange}
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
            <p className="text-sm text-muted-foreground mt-1">Categoría gramatical</p>
          </div>

          <div>
            <Label htmlFor="nominal_class">Clase Nominal</Label>
            <select
              id="nominal_class"
              name="nominal_class"
              value={form.nominal_class}
              onChange={handleChange}
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
            <p className="text-sm text-muted-foreground mt-1">Sistema de prefijos del Bubi</p>
          </div>

          <div>
            <Label htmlFor="gender">Género</Label>
            <select
              id="gender"
              name="gender"
              value={form.gender}
              onChange={handleChange}
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-700 rounded-md bg-white dark:bg-gray-900"
            >
              <option value="">Seleccionar...</option>
              <option value="masculino">Masculino</option>
              <option value="femenino">Femenino</option>
              <option value="neutro">Neutro</option>
            </select>
            <p className="text-sm text-muted-foreground mt-1">Si aplica</p>
          </div>

          <div>
            <Label htmlFor="number">Número</Label>
            <select
              id="number"
              name="number"
              value={form.number}
              onChange={handleChange}
              className="w-full px-3 py-2 border border-gray-300 dark:border-gray-700 rounded-md bg-white dark:bg-gray-900"
            >
              <option value="">Seleccionar...</option>
              <option value="singular">Singular</option>
              <option value="plural">Plural</option>
            </select>
            <p className="text-sm text-muted-foreground mt-1">Singular o plural</p>
          </div>
        </div>

        <div>
          <Label htmlFor="plural_form">Forma Plural</Label>
          <Input id="plural_form" name="plural_form" value={form.plural_form} onChange={handleChange} placeholder="Ej: batyo (si singular es botyo)" />
          <p className="text-sm text-muted-foreground mt-1">La forma plural de la palabra (si es singular)</p>
        </div>
      </div>

      {/* Sección 3: Información Adicional */}
      <div className="space-y-4 p-4 bg-gradient-to-br from-green-50 to-emerald-50 dark:from-green-950/20 dark:to-emerald-950/20 rounded-lg border border-green-200 dark:border-green-800">
        <h3 className="font-bold text-lg text-green-900 dark:text-green-100">
          💡 Información Adicional
        </h3>

        <div>
          <Label htmlFor="variants">Variantes</Label>
          <Input id="variants" name="variants" value={form.variants} onChange={handleChange} placeholder="Ej: boppé, a moppé" />
          <p className="text-sm text-muted-foreground mt-1">Otras formas de escribir o pronunciar (separadas por comas)</p>
        </div>

        <div>
          <Label htmlFor="examples">Ejemplos de Uso</Label>
          <Textarea id="examples" name="examples" value={form.examples} rows={3} onChange={handleChange} placeholder="Ej: na la rá moppé (yo bebo agua) | o moppé bó lá tó (el agua está fría)" />
          <p className="text-sm text-muted-foreground mt-1">Frases de ejemplo en Bubi con traducción. Separa múltiples ejemplos con " | "</p>
        </div>

        <div>
          <Label htmlFor="notes">Notas Culturales</Label>
          <Textarea id="notes" name="notes" value={form.notes} rows={4} onChange={handleChange} placeholder="Ej: Usado tradicionalmente en ceremonias..." />
          <p className="text-sm text-muted-foreground mt-1">Contexto cultural, etimología, uso tradicional, o información adicional</p>
        </div>
      </div>

      {errors.root && <p className="text-sm text-destructive">{errors.root}</p>}
      
      <div className="flex justify-end gap-2">
        <Button type="submit" disabled={loading}>
          {loading ? 'Guardando...' : (mode === 'edit' ? 'Guardar Cambios' : 'Crear')}
        </Button>
      </div>
    </form>
  );
}
