"use client";
import { useState, useEffect } from 'react';
import { z } from 'zod';
import { Input } from '@/components/ui/input';
import { Textarea } from '@/components/ui/textarea';
import { Button } from '@/components/ui/button';
import { Label } from '@/components/ui/label';

const EntrySchema = z.object({
  bubi: z.string().min(1, 'Requerido'),
  spanish: z.string().min(1, 'Requerido'),
  ipa: z.string().optional().nullable(),
  notes: z.string().optional().nullable(),
});

export interface DictionaryEntryFormProps {
  mode: 'create' | 'edit';
  id?: number;
  initial?: { bubi: string; spanish: string; ipa: string | null; notes: string | null } | null;
  onSaved?: (id: number) => void;
}

export default function DictionaryEntryForm({ mode, id, initial, onSaved }: DictionaryEntryFormProps) {
  const [form, setForm] = useState({
    bubi: initial?.bubi || '',
    spanish: initial?.spanish || '',
    ipa: initial?.ipa || '',
    notes: initial?.notes || '',
  });
  const [errors, setErrors] = useState<Record<string, string>>({});
  const [loading, setLoading] = useState(false);

  useEffect(() => {
    if (initial) {
      setForm({
        bubi: initial.bubi,
        spanish: initial.spanish,
        ipa: initial.ipa || '',
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
      ipa: form.ipa.trim() || undefined,
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
      if (onSaved) onSaved(json.id ?? id!);
    } catch (err: any) {
      setErrors(e => ({ ...e, root: err.message }));
    } finally {
      setLoading(false);
    }
  }

  return (
    <form onSubmit={handleSubmit} className="space-y-6">
      <div>
        <Label htmlFor="bubi">Palabra (Bubi)</Label>
        <Input id="bubi" name="bubi" value={form.bubi} onChange={handleChange} required />
        {errors.bubi && <p className="text-sm text-destructive mt-1">{errors.bubi}</p>}
      </div>
      <div>
        <Label htmlFor="spanish">Traducción (Español)</Label>
        <Input id="spanish" name="spanish" value={form.spanish} onChange={handleChange} required />
        {errors.spanish && <p className="text-sm text-destructive mt-1">{errors.spanish}</p>}
      </div>
      <div>
        <Label htmlFor="ipa">IPA (Opcional)</Label>
        <Input id="ipa" name="ipa" value={form.ipa} onChange={handleChange} />
      </div>
      <div>
        <Label htmlFor="notes">Notas (Opcional)</Label>
        <Textarea id="notes" name="notes" value={form.notes} rows={4} onChange={handleChange} />
      </div>
      {errors.root && <p className="text-sm text-destructive">{errors.root}</p>}
      <div className="flex justify-end gap-2">
        <Button type="submit" disabled={loading}>{loading ? 'Guardando...' : (mode === 'edit' ? 'Guardar Cambios' : 'Crear')}</Button>
      </div>
    </form>
  );
}
