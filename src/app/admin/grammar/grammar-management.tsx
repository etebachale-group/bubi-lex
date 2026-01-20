'use client';

import { useState, useEffect } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Label } from '@/components/ui/label';
import { Textarea } from '@/components/ui/textarea';
import { 
  Plus, 
  Edit, 
  Trash2, 
  Save, 
  X, 
  BookOpen,
  Search,
  Filter,
  Eye,
  EyeOff
} from 'lucide-react';

interface GrammarEntry {
  id: number;
  category: string;
  subcategory: string | null;
  title: string;
  content: string;
  examples: string | null;
  rules: string | null;
  notes: string | null;
  order_index: number;
  is_active: boolean;
  created_at: string;
  updated_at: string;
}

export default function GrammarManagement() {
  const [entries, setEntries] = useState<GrammarEntry[]>([]);
  const [loading, setLoading] = useState(true);
  const [editingId, setEditingId] = useState<number | null>(null);
  const [showForm, setShowForm] = useState(false);
  const [searchTerm, setSearchTerm] = useState('');
  const [filterCategory, setFilterCategory] = useState('');
  
  const [formData, setFormData] = useState({
    category: '',
    subcategory: '',
    title: '',
    content: '',
    examples: '',
    rules: '',
    notes: '',
    order_index: 0,
    is_active: true,
  });

  useEffect(() => {
    loadEntries();
  }, []);

  const loadEntries = async () => {
    try {
      const res = await fetch('/api/admin/grammar');
      const data = await res.json();
      setEntries(data.items || []);
    } catch (error) {
      console.error('Error loading grammar:', error);
    } finally {
      setLoading(false);
    }
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();
    
    try {
      const url = editingId 
        ? `/api/admin/grammar/${editingId}`
        : '/api/admin/grammar';
      
      const method = editingId ? 'PUT' : 'POST';
      
      const res = await fetch(url, {
        method,
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify(formData),
      });

      if (res.ok) {
        await loadEntries();
        resetForm();
      } else {
        const error = await res.json();
        alert(`Error: ${error.error}`);
      }
    } catch (error) {
      console.error('Error saving grammar:', error);
      alert('Error al guardar');
    }
  };

  const handleEdit = (entry: GrammarEntry) => {
    setFormData({
      category: entry.category,
      subcategory: entry.subcategory || '',
      title: entry.title,
      content: entry.content,
      examples: entry.examples || '',
      rules: entry.rules || '',
      notes: entry.notes || '',
      order_index: entry.order_index,
      is_active: entry.is_active,
    });
    setEditingId(entry.id);
    setShowForm(true);
  };

  const handleDelete = async (id: number) => {
    if (!confirm('¿Eliminar esta entrada de gramática?')) return;
    
    try {
      const res = await fetch(`/api/admin/grammar/${id}`, {
        method: 'DELETE',
      });

      if (res.ok) {
        await loadEntries();
      }
    } catch (error) {
      console.error('Error deleting grammar:', error);
    }
  };

  const resetForm = () => {
    setFormData({
      category: '',
      subcategory: '',
      title: '',
      content: '',
      examples: '',
      rules: '',
      notes: '',
      order_index: 0,
      is_active: true,
    });
    setEditingId(null);
    setShowForm(false);
  };

  const categories = Array.from(new Set(entries.map(e => e.category)));
  
  const filteredEntries = entries.filter(entry => {
    const matchesSearch = entry.title.toLowerCase().includes(searchTerm.toLowerCase()) ||
                         entry.content.toLowerCase().includes(searchTerm.toLowerCase());
    const matchesCategory = !filterCategory || entry.category === filterCategory;
    return matchesSearch && matchesCategory;
  });

  if (loading) {
    return <div className="text-center py-8">Cargando...</div>;
  }

  return (
    <div className="space-y-6">
      {/* Header Actions */}
      <div className="flex flex-col gap-3 sm:gap-4">
        <div className="w-full">
          <div className="relative">
            <Search className="absolute left-3 top-1/2 transform -translate-y-1/2 text-muted-foreground w-4 h-4" />
            <Input
              placeholder="Buscar en gramática..."
              value={searchTerm}
              onChange={(e) => setSearchTerm(e.target.value)}
              className="pl-10 w-full"
            />
          </div>
        </div>
        
        <div className="flex flex-col sm:flex-row gap-2 w-full">
          <select
            value={filterCategory}
            onChange={(e) => setFilterCategory(e.target.value)}
            className="flex-1 px-3 py-2 border rounded-md bg-background text-sm"
          >
            <option value="">Todas las categorías</option>
            {categories.map(cat => (
              <option key={cat} value={cat}>{cat}</option>
            ))}
          </select>
          
          <Button onClick={() => setShowForm(!showForm)} className="gap-2 w-full sm:w-auto">
            {showForm ? <X className="w-4 h-4" /> : <Plus className="w-4 h-4" />}
            <span className="whitespace-nowrap">{showForm ? 'Cancelar' : 'Nueva Entrada'}</span>
          </Button>
        </div>
      </div>

      {/* Form */}
      {showForm && (
        <Card className="border-2 border-blue-200 dark:border-blue-800">
          <CardContent className="pt-6">
            <form onSubmit={handleSubmit} className="space-y-4">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <Label htmlFor="category">Categoría *</Label>
                  <Input
                    id="category"
                    value={formData.category}
                    onChange={(e) => setFormData({...formData, category: e.target.value})}
                    placeholder="verbos, sustantivos, pronombres..."
                    required
                  />
                </div>
                
                <div>
                  <Label htmlFor="subcategory">Subcategoría</Label>
                  <Input
                    id="subcategory"
                    value={formData.subcategory}
                    onChange={(e) => setFormData({...formData, subcategory: e.target.value})}
                    placeholder="tiempos, género, número..."
                  />
                </div>
              </div>

              <div>
                <Label htmlFor="title">Título *</Label>
                <Input
                  id="title"
                  value={formData.title}
                  onChange={(e) => setFormData({...formData, title: e.target.value})}
                  placeholder="Ej: Presente Simple"
                  required
                />
              </div>

              <div>
                <Label htmlFor="content">Contenido *</Label>
                <Textarea
                  id="content"
                  value={formData.content}
                  onChange={(e) => setFormData({...formData, content: e.target.value})}
                  placeholder="Explicación detallada de la regla gramatical..."
                  rows={4}
                  required
                />
              </div>

              <div>
                <Label htmlFor="rules">Reglas</Label>
                <Textarea
                  id="rules"
                  value={formData.rules}
                  onChange={(e) => setFormData({...formData, rules: e.target.value})}
                  placeholder="1. Primera regla&#10;2. Segunda regla..."
                  rows={3}
                />
              </div>

              <div>
                <Label htmlFor="examples">Ejemplos (JSON)</Label>
                <Textarea
                  id="examples"
                  value={formData.examples}
                  onChange={(e) => setFormData({...formData, examples: e.target.value})}
                  placeholder='[{"bubi": "...", "spanish": "...", "note": "..."}]'
                  rows={3}
                />
              </div>

              <div>
                <Label htmlFor="notes">Notas adicionales</Label>
                <Textarea
                  id="notes"
                  value={formData.notes}
                  onChange={(e) => setFormData({...formData, notes: e.target.value})}
                  placeholder="Información adicional..."
                  rows={2}
                />
              </div>

              <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div>
                  <Label htmlFor="order_index">Orden</Label>
                  <Input
                    id="order_index"
                    type="number"
                    value={formData.order_index}
                    onChange={(e) => setFormData({...formData, order_index: parseInt(e.target.value)})}
                  />
                </div>
                
                <div className="flex items-center gap-2 pt-8">
                  <input
                    type="checkbox"
                    id="is_active"
                    checked={formData.is_active}
                    onChange={(e) => setFormData({...formData, is_active: e.target.checked})}
                    className="w-4 h-4"
                  />
                  <Label htmlFor="is_active">Activo</Label>
                </div>
              </div>

              <div className="flex flex-col sm:flex-row gap-2 justify-end">
                <Button type="button" variant="outline" onClick={resetForm} className="w-full sm:w-auto">
                  Cancelar
                </Button>
                <Button type="submit" className="gap-2 w-full sm:w-auto">
                  <Save className="w-4 h-4" />
                  {editingId ? 'Actualizar' : 'Crear'}
                </Button>
              </div>
            </form>
          </CardContent>
        </Card>
      )}

      {/* Entries List */}
      <div className="space-y-4">
        <h2 className="text-lg sm:text-xl font-bold">
          Entradas de Gramática ({filteredEntries.length})
        </h2>
        
        {filteredEntries.length === 0 ? (
          <Card>
            <CardContent className="py-12 text-center text-muted-foreground">
              <BookOpen className="w-12 h-12 mx-auto mb-4 opacity-50" />
              <p className="text-sm sm:text-base">No hay entradas de gramática</p>
            </CardContent>
          </Card>
        ) : (
          filteredEntries.map((entry) => (
            <Card key={entry.id} className="border-2">
              <CardContent className="pt-4 sm:pt-6 px-3 sm:px-6">
                <div className="flex flex-col sm:flex-row items-start gap-3 sm:gap-4">
                  <div className="flex-1 w-full">
                    <div className="flex flex-wrap items-center gap-2 mb-2">
                      <span className="px-2 py-1 bg-blue-100 dark:bg-blue-900 text-blue-800 dark:text-blue-200 text-xs font-semibold rounded">
                        {entry.category}
                      </span>
                      {entry.subcategory && (
                        <span className="px-2 py-1 bg-purple-100 dark:bg-purple-900 text-purple-800 dark:text-purple-200 text-xs font-semibold rounded">
                          {entry.subcategory}
                        </span>
                      )}
                      {entry.is_active ? (
                        <Eye className="w-4 h-4 text-green-600" />
                      ) : (
                        <EyeOff className="w-4 h-4 text-gray-400" />
                      )}
                    </div>
                    
                    <h3 className="text-base sm:text-lg font-bold mb-2 break-words">{entry.title}</h3>
                    <p className="text-xs sm:text-sm text-muted-foreground mb-3 break-words">{entry.content}</p>
                    
                    {entry.rules && (
                      <div className="mb-2">
                        <p className="text-xs font-semibold mb-1">Reglas:</p>
                        <pre className="text-xs text-muted-foreground whitespace-pre-wrap break-words overflow-x-auto">{entry.rules}</pre>
                      </div>
                    )}
                    
                    {entry.examples && (
                      <details className="text-xs">
                        <summary className="cursor-pointer font-semibold mb-1">Ver ejemplos</summary>
                        <pre className="text-muted-foreground whitespace-pre-wrap break-words overflow-x-auto mt-1 max-w-full">{entry.examples}</pre>
                      </details>
                    )}
                  </div>
                  
                  <div className="flex sm:flex-col gap-2 w-full sm:w-auto">
                    <Button
                      size="sm"
                      variant="outline"
                      onClick={() => handleEdit(entry)}
                      className="flex-1 sm:flex-none gap-1"
                    >
                      <Edit className="w-4 h-4" />
                      <span className="sm:hidden">Editar</span>
                    </Button>
                    <Button
                      size="sm"
                      variant="outline"
                      onClick={() => handleDelete(entry.id)}
                      className="flex-1 sm:flex-none text-red-600 hover:text-red-700 gap-1"
                    >
                      <Trash2 className="w-4 h-4" />
                      <span className="sm:hidden">Eliminar</span>
                    </Button>
                  </div>
                </div>
              </CardContent>
            </Card>
          ))
        )}
      </div>
    </div>
  );
}
