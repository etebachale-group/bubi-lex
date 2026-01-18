"use client";

import { useState } from 'react';
import { signIn, useSession } from 'next-auth/react';
import { Dialog, DialogContent, DialogHeader, DialogTitle, DialogDescription, DialogFooter } from '@/components/ui/dialog';
import { Button } from '@/components/ui/button';
import { Shield, Chrome, X } from 'lucide-react';
import { useRouter } from 'next/navigation';

interface LoginModalProps {
  isOpen: boolean;
  onClose: () => void;
}

export function LoginModal({ isOpen, onClose }: LoginModalProps) {
  const { data: session } = useSession();
  const router = useRouter();
  const [isLoading, setIsLoading] = useState(false);

  const handleGoogleSignIn = async () => {
    setIsLoading(true);
    try {
      await signIn('google', { callbackUrl: '/' });
    } catch (error) {
      console.error('Error al iniciar sesión:', error);
      setIsLoading(false);
    }
  };

  const handleGoToPanel = () => {
    const isAdmin = (session as any)?.isAdmin;
    const canEdit = (session as any)?.canEditDictionary;
    
    if (isAdmin) {
      router.push('/admin');
    } else if (canEdit) {
      router.push('/collaborator');
    }
    onClose();
  };

  return (
    <Dialog open={isOpen} onOpenChange={onClose}>
      <DialogContent className="sm:max-w-md">
        {session ? (
          // Usuario ya autenticado
          <>
            <DialogHeader>
              <DialogTitle className="text-center text-2xl">
                ¡Bienvenido! 👋
              </DialogTitle>
              <DialogDescription className="text-center">
                Ya has iniciado sesión
              </DialogDescription>
            </DialogHeader>
            
            <div className="flex flex-col items-center gap-4 py-4">
              {session.user?.image && (
                <div className="relative">
                  <img
                    src={session.user.image}
                    alt={session.user.name || 'Avatar'}
                    className="w-20 h-20 rounded-full border-4 border-purple-200 dark:border-purple-800"
                  />
                  <div className="absolute -bottom-1 -right-1 w-5 h-5 bg-green-500 rounded-full border-2 border-background"></div>
                </div>
              )}
              
              <div className="text-center">
                <p className="font-semibold text-lg">{session.user?.name}</p>
                <p className="text-sm text-muted-foreground">{session.user?.email}</p>
                
                {(session as any)?.isAdmin && (
                  <div className="mt-2 inline-block px-3 py-1 rounded-full bg-gradient-to-r from-purple-600 to-pink-600 text-white text-xs font-bold">
                    Administrador
                  </div>
                )}
                {(session as any)?.canEditDictionary && !(session as any)?.isAdmin && (
                  <div className="mt-2 inline-block px-3 py-1 rounded-full bg-gradient-to-r from-blue-600 to-cyan-600 text-white text-xs font-bold">
                    Colaborador
                  </div>
                )}
              </div>
            </div>

            <DialogFooter className="flex-col sm:flex-row gap-2">
              {((session as any)?.isAdmin || (session as any)?.canEditDictionary) && (
                <Button
                  onClick={handleGoToPanel}
                  className="w-full bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white"
                >
                  Ir al Panel
                </Button>
              )}
              <Button
                onClick={onClose}
                variant="outline"
                className="w-full"
              >
                Cerrar
              </Button>
            </DialogFooter>
          </>
        ) : (
          // Usuario no autenticado
          <>
            <DialogHeader>
              <div className="flex items-center justify-center mb-4">
                <div className="p-4 rounded-2xl bg-gradient-to-br from-purple-500 to-pink-500">
                  <Shield className="w-10 h-10 text-white" />
                </div>
              </div>
              <DialogTitle className="text-center text-2xl font-headline bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
                Iniciar Sesión
              </DialogTitle>
              <DialogDescription className="text-center">
                Accede con tu cuenta de Google para continuar
              </DialogDescription>
            </DialogHeader>

            <div className="space-y-4 py-4">
              <Button
                onClick={handleGoogleSignIn}
                disabled={isLoading}
                className="w-full h-12 text-base bg-white hover:bg-gray-50 text-gray-900 border-2 border-gray-300 shadow-sm"
              >
                {isLoading ? (
                  <div className="w-5 h-5 border-2 border-gray-300 border-t-gray-900 rounded-full animate-spin mr-3"></div>
                ) : (
                  <svg className="w-5 h-5 mr-3" viewBox="0 0 24 24">
                    <path fill="#4285F4" d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z"/>
                    <path fill="#34A853" d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z"/>
                    <path fill="#FBBC05" d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z"/>
                    <path fill="#EA4335" d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z"/>
                  </svg>
                )}
                {isLoading ? 'Iniciando sesión...' : 'Continuar con Google'}
              </Button>

              <div className="space-y-2 pt-2 border-t">
                <div className="flex items-start gap-2 text-xs text-muted-foreground">
                  <Shield className="w-4 h-4 mt-0.5 flex-shrink-0" />
                  <p>Solo cuentas de Google autorizadas pueden acceder</p>
                </div>
                <div className="flex items-start gap-2 text-xs text-muted-foreground">
                  <Chrome className="w-4 h-4 mt-0.5 flex-shrink-0" />
                  <p>Usa tu cuenta de Google corporativa o personal</p>
                </div>
              </div>
            </div>

            <DialogFooter className="text-center text-xs text-muted-foreground">
              <p className="w-full">🔒 Conexión segura • Protegido por NextAuth</p>
            </DialogFooter>
          </>
        )}
      </DialogContent>
    </Dialog>
  );
}
