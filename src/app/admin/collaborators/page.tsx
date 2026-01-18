'use client';

import { useState, useEffect } from 'react';
import { Card, CardHeader, CardTitle, CardContent } from '@/components/ui/card';
import { Button } from '@/components/ui/button';
import { Input } from '@/components/ui/input';
import { Users, UserPlus, Shield, Edit, Trash2, RefreshCw } from 'lucide-react';

interface Collaborator {
  email: string;
  role: 'user' | 'collaborator' | 'admin';
  wordCount: number;
  lastContribution?: string;
}

export default function CollaboratorsPage() {
  const [collaborators, setCollaborators] = useState<Collaborator[]>([]);
  const [loading, setLoading] = useState(true);
  const [newEmail, setNewEmail] = useState('');
  const [adding, setAdding] = useState(false);

  const fetchCollaborators = async () => {
    setLoading(true);
    try {
      // Llamar a un endpoint API en lugar de usar getSupabase directamente
      const res = await fetch('/api/admin/collaborators');
      if (!res.ok) throw new Error('Error al cargar colaboradores');
      
      const data = await res.json();
      setCollaborators(data.collaborators || []);
    } catch (err) {
      console.error('Error al cargar colaboradores:', err);
      // Datos de ejemplo mientras se implementa el endpoint
      setCollaborators([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchCollaborators();
  }, []);

  const handleAddCollaborator = async () => {
    if (!newEmail.trim()) {
      alert('Por favor ingresa un email válido');
      return;
    }

    setAdding(true);
    try {
      // En producción, esto debería llamar a un endpoint API
      // POST /api/admin/collaborators con el email
      alert(`Funcionalidad en desarrollo: Agregar ${newEmail} como colaborador`);
      setNewEmail('');
    } catch (err) {
      alert('Error al agregar colaborador');
    } finally {
      setAdding(false);
    }
  };

  const getRoleBadge = (role: string) => {
    const styles = {
      admin: 'bg-purple-100 dark:bg-purple-900/30 text-purple-700 dark:text-purple-300',
      collaborator: 'bg-blue-100 dark:bg-blue-900/30 text-blue-700 dark:text-blue-300',
      user: 'bg-gray-100 dark:bg-gray-900/30 text-gray-700 dark:text-gray-300'
    };
    
    const labels = {
      admin: 'Administrador',
      collaborator: 'Colaborador',
      user: 'Usuario'
    };

    return (
      <span className={`px-3 py-1 rounded-full text-xs font-medium ${styles[role as keyof typeof styles]}`}>
        {labels[role as keyof typeof labels]}
      </span>
    );
  };

  if (loading) {
    return (
      <div className="container mx-auto py-8 px-4">
        <div className="flex items-center justify-center min-h-[400px]">
          <RefreshCw className="w-8 h-8 animate-spin text-purple-500" />
        </div>
      </div>
    );
  }

  return (
    <div className="container mx-auto py-8 px-4 animate-fade-in">
      {/* Header */}
      <div className="mb-8">
        <div className="flex items-center gap-3 mb-2">
          <div className="p-3 rounded-xl bg-gradient-to-br from-blue-500 to-cyan-500">
            <Users className="w-8 h-8 text-white" />
          </div>
          <div>
            <h1 className="text-4xl font-headline font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
              Gestión de Colaboradores
            </h1>
            <p className="text-muted-foreground">Administra permisos y roles de usuarios</p>
          </div>
        </div>
      </div>

      {/* Stats */}
      <div className="grid grid-cols-1 md:grid-cols-3 gap-4 mb-8">
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Total Colaboradores</p>
                <p className="text-3xl font-bold">{collaborators.length}</p>
              </div>
              <Users className="w-8 h-8 text-blue-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Contribuciones Totales</p>
                <p className="text-3xl font-bold">
                  {collaborators.reduce((sum, c) => sum + c.wordCount, 0)}
                </p>
              </div>
              <Edit className="w-8 h-8 text-green-500" />
            </div>
          </CardContent>
        </Card>
        <Card className="glass-card">
          <CardContent className="pt-6">
            <div className="flex items-center justify-between">
              <div>
                <p className="text-sm text-muted-foreground">Administradores</p>
                <p className="text-3xl font-bold">
                  {collaborators.filter(c => c.role === 'admin').length}
                </p>
              </div>
              <Shield className="w-8 h-8 text-purple-500" />
            </div>
          </CardContent>
        </Card>
      </div>

      {/* Add Collaborator */}
      <Card className="glass-card mb-8">
        <CardHeader>
          <CardTitle className="flex items-center gap-2">
            <UserPlus className="w-5 h-5" />
            Agregar Nuevo Colaborador
          </CardTitle>
        </CardHeader>
        <CardContent>
          <div className="flex gap-4">
            <Input
              type="email"
              placeholder="email@ejemplo.com"
              value={newEmail}
              onChange={(e) => setNewEmail(e.target.value)}
              onKeyDown={(e) => e.key === 'Enter' && handleAddCollaborator()}
              className="flex-1"
            />
            <Button
              onClick={handleAddCollaborator}
              disabled={adding || !newEmail.trim()}
              className="bg-gradient-to-r from-blue-500 to-cyan-500 hover:from-blue-600 hover:to-cyan-600"
            >
              <UserPlus className="w-5 h-5 mr-2" />
              {adding ? 'Agregando...' : 'Agregar'}
            </Button>
          </div>
          <p className="text-sm text-muted-foreground mt-2">
            💡 El usuario recibirá permisos de colaborador y podrá agregar/editar palabras
          </p>
        </CardContent>
      </Card>

      {/* Collaborators List */}
      <Card className="glass-card">
        <CardHeader>
          <div className="flex items-center justify-between">
            <CardTitle>Lista de Colaboradores</CardTitle>
            <Button
              onClick={fetchCollaborators}
              variant="outline"
              size="sm"
            >
              <RefreshCw className="w-4 h-4 mr-2" />
              Actualizar
            </Button>
          </div>
        </CardHeader>
        <CardContent>
          {collaborators.length === 0 ? (
            <div className="text-center py-12 text-muted-foreground">
              <Users className="w-16 h-16 mx-auto mb-4 opacity-50" />
              <p>No hay colaboradores registrados aún</p>
            </div>
          ) : (
            <div className="space-y-4">
              {collaborators.map((collab, idx) => (
                <div
                  key={collab.email}
                  className="flex items-center justify-between p-4 rounded-lg border-2 border-gray-200 dark:border-gray-800 hover:border-blue-300 dark:hover:border-blue-700 transition-all"
                >
                  <div className="flex-1">
                    <div className="flex items-center gap-3 mb-2">
                      <div className="w-10 h-10 rounded-full bg-gradient-to-br from-blue-500 to-cyan-500 flex items-center justify-center text-white font-bold">
                        {collab.email.charAt(0).toUpperCase()}
                      </div>
                      <div>
                        <p className="font-semibold">{collab.email}</p>
                        <p className="text-sm text-muted-foreground">
                          {collab.wordCount} contribuciones
                          {collab.lastContribution && (
                            <> · Última: {new Date(collab.lastContribution).toLocaleDateString('es-ES')}</>
                          )}
                        </p>
                      </div>
                    </div>
                  </div>
                  <div className="flex items-center gap-3">
                    {getRoleBadge(collab.role)}
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => alert('Funcionalidad en desarrollo: Cambiar rol')}
                    >
                      <Edit className="w-4 h-4" />
                    </Button>
                    <Button
                      variant="outline"
                      size="sm"
                      onClick={() => {
                        if (confirm(`¿Remover permisos de colaborador a ${collab.email}?`)) {
                          alert('Funcionalidad en desarrollo: Remover colaborador');
                        }
                      }}
                    >
                      <Trash2 className="w-4 h-4 text-red-500" />
                    </Button>
                  </div>
                </div>
              ))}
            </div>
          )}
        </CardContent>
      </Card>

      {/* Info Card */}
      <Card className="glass-card mt-8 border-2 border-blue-300 dark:border-blue-700">
        <CardContent className="pt-6">
          <h3 className="font-semibold mb-2 flex items-center gap-2">
            <Shield className="w-5 h-5 text-blue-500" />
            Información sobre Roles
          </h3>
          <div className="space-y-2 text-sm text-muted-foreground">
            <p><strong>Usuario:</strong> Solo puede ver el diccionario y noticias</p>
            <p><strong>Colaborador:</strong> Puede agregar y editar sus propias palabras</p>
            <p><strong>Administrador:</strong> Acceso completo a todas las funcionalidades</p>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
