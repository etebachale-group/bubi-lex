'use client';

import { useState } from 'react';
import { Card, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Users, UserPlus, Trash2, Mail, Calendar, Shield } from 'lucide-react';

interface Collaborator {
  user_id: string;
  email: string;
  can_edit_dictionary: boolean;
  created_at: string;
}

interface CollaboratorsManagementProps {
  initialCollaborators: Collaborator[];
}

export default function CollaboratorsManagement({ initialCollaborators }: CollaboratorsManagementProps) {
  const [collaborators, setCollaborators] = useState<Collaborator[]>(initialCollaborators);
  const [newEmail, setNewEmail] = useState('');
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState('');

  const handleAddCollaborator = async (e: React.FormEvent) => {
    e.preventDefault();
    
    if (!newEmail.trim() || !newEmail.includes('@')) {
      setError('Por favor ingresa un email válido');
      return;
    }

    setLoading(true);
    setError('');

    try {
      const res = await fetch('/api/admin/collaborators', {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ email: newEmail.trim() }),
      });

      const data = await res.json();

      if (!res.ok) {
        throw new Error(data.error || 'Error al agregar colaborador');
      }

      setCollaborators([data.collaborator, ...collaborators]);
      setNewEmail('');
      alert('Colaborador agregado exitosamente');
    } catch (err) {
      setError(err instanceof Error ? err.message : 'Error al agregar colaborador');
    } finally {
      setLoading(false);
    }
  };

  const handleRemoveCollaborator = async (userId: string, email: string) => {
    if (!confirm(`¿Estás seguro de remover a ${email} como colaborador?`)) {
      return;
    }

    try {
      const res = await fetch(`/api/admin/collaborators/${userId}`, {
        method: 'DELETE',
      });

      if (!res.ok) {
        const data = await res.json();
        throw new Error(data.error || 'Error al remover colaborador');
      }

      setCollaborators(collaborators.filter(c => c.user_id !== userId));
      alert('Colaborador removido exitosamente');
    } catch (err) {
      alert(err instanceof Error ? err.message : 'Error al remover colaborador');
    }
  };

  const formatDate = (dateString: string) => {
    const date = new Date(dateString);
    return date.toLocaleDateString('es-ES', { 
      year: 'numeric', 
      month: 'long', 
      day: 'numeric' 
    });
  };

  return (
    <div className="container mx-auto py-8 px-4 max-w-4xl">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center gap-3 mb-4">
          <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
            <Users className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-3xl md:text-4xl font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
              Gestión de Colaboradores
            </h1>
            <p className="text-muted-foreground text-sm md:text-base">
              Administra los usuarios que pueden agregar palabras al diccionario
            </p>
          </div>
        </div>
      </div>

      {/* Add Collaborator Form */}
      <Card className="border-2 border-blue-200 dark:border-blue-800 mb-8">
        <CardContent className="pt-6">
          <form onSubmit={handleAddCollaborator} className="space-y-4">
            <div>
              <label className="text-sm font-medium mb-2 block">
                Agregar Nuevo Colaborador
              </label>
              <div className="flex gap-2">
                <Input
                  type="email"
                  placeholder="email@ejemplo.com"
                  value={newEmail}
                  onChange={(e) => setNewEmail(e.target.value)}
                  disabled={loading}
                  className="flex-1"
                />
                <Button
                  type="submit"
                  disabled={loading}
                  className="bg-gradient-to-r from-blue-600 to-cyan-600 hover:from-blue-700 hover:to-cyan-700"
                >
                  <UserPlus className="w-4 h-4 mr-2" />
                  {loading ? 'Agregando...' : 'Agregar'}
                </Button>
              </div>
              {error && (
                <p className="text-sm text-red-500 mt-2">{error}</p>
              )}
            </div>
            <div className="bg-blue-50 dark:bg-blue-900/20 p-3 rounded-lg">
              <p className="text-xs text-blue-800 dark:text-blue-200">
                <Shield className="w-4 h-4 inline mr-1" />
                Los colaboradores podrán agregar nuevas palabras al diccionario desde su panel.
              </p>
            </div>
          </form>
        </CardContent>
      </Card>

      {/* Collaborators List */}
      <div className="space-y-4">
        <h2 className="text-xl font-bold mb-4">
          Colaboradores Activos ({collaborators.length})
        </h2>

        {collaborators.length === 0 ? (
          <Card className="border-2 border-dashed">
            <CardContent className="pt-6 text-center py-12">
              <Users className="w-12 h-12 text-muted-foreground mx-auto mb-3" />
              <p className="text-muted-foreground">
                No hay colaboradores registrados aún
              </p>
            </CardContent>
          </Card>
        ) : (
          <div className="space-y-3">
            {collaborators.map((collaborator) => (
              <Card 
                key={collaborator.user_id}
                className="border-2 hover:border-blue-300 dark:hover:border-blue-700 transition-all"
              >
                <CardContent className="pt-6">
                  <div className="flex items-center justify-between">
                    <div className="flex-1">
                      <div className="flex items-center gap-2 mb-2">
                        <Mail className="w-4 h-4 text-muted-foreground" />
                        <span className="font-medium">{collaborator.email}</span>
                      </div>
                      <div className="flex items-center gap-2 text-sm text-muted-foreground">
                        <Calendar className="w-3 h-3" />
                        <span>Agregado el {formatDate(collaborator.created_at)}</span>
                      </div>
                    </div>
                    <Button
                      variant="ghost"
                      size="sm"
                      className="text-red-500 hover:text-red-700 hover:bg-red-50 dark:hover:bg-red-900/20"
                      onClick={() => handleRemoveCollaborator(collaborator.user_id, collaborator.email)}
                    >
                      <Trash2 className="w-4 h-4" />
                    </Button>
                  </div>
                </CardContent>
              </Card>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}
