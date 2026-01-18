"use client";
import React, { useState } from 'react';
import Image from 'next/image';
import { SignOutButton } from './signout-button';
import { ThemeToggle } from './theme-toggle';
import { Input } from './ui/input';
import { Search, Menu, Sparkles } from 'lucide-react';
import { Button } from './ui/button';
import AdvancedSearchModal from './advanced-search-modal';
import { useRouter } from 'next/navigation';
import { useSession } from 'next-auth/react';

interface MainHeaderProps { setSidebarOpen: (open: boolean) => void; isAdmin: boolean }

const MainHeader = ({ setSidebarOpen, isAdmin }: MainHeaderProps) => {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const router = useRouter();
  const sessionResult = useSession?.();
  const session = sessionResult?.data;
  const user = session?.user;

  const handleAdvancedSearch = (criteria: { keyword: string; category: string; dateRange: string }) => {
    const sp = new URLSearchParams();
    if (criteria.keyword) sp.set('q', criteria.keyword);
    sp.set('page', '1');
    router.push(`/dictionary?${sp.toString()}`);
  };

  return (
    <header className="sticky top-0 z-50 flex items-center justify-between p-4 glass-card border-b backdrop-blur-xl">
      <div className="flex items-center gap-4">
        <a href="/" className="flex items-center gap-2 group" aria-label="Inicio BubiLex">
          <div className="relative">
            <Image 
              src="/img/logo.png" 
              alt="BubiLex" 
              width={40} 
              height={40} 
              className="rounded-lg transition-transform group-hover:scale-110" 
              priority 
            />
            <div className="absolute inset-0 bg-gradient-to-br from-purple-600/20 to-pink-600/20 rounded-lg opacity-0 group-hover:opacity-100 transition-opacity"></div>
          </div>
          <span className="hidden sm:inline font-headline text-xl font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
            BubiLex
          </span>
        </a>
        <Button 
          variant="ghost" 
          size="icon" 
          className="md:hidden"
          onClick={() => setSidebarOpen(true)}
        >
          <Menu className="w-6 h-6" />
          <span className="sr-only">Abrir menú</span>
        </Button>
        <form 
          role="search" 
          className="relative hidden sm:flex items-center" 
          action="/dictionary" 
          method="get" 
          aria-label="Buscar en BubiLex"
        >
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground w-5 h-5" />
          <Input 
            name="q" 
            placeholder="Buscar palabras..." 
            aria-label="Buscar" 
            className="pl-10 w-64 lg:w-80 bg-background/50 backdrop-blur-sm border-2 focus:border-primary transition-all" 
          />
          <Button 
            type="button"
            variant="ghost" 
            size="icon" 
            className="ml-2 hover:bg-purple-100 dark:hover:bg-purple-900/30"
            onClick={() => setIsModalOpen(true)}
          >
            <Sparkles className="w-5 h-5 text-purple-600 dark:text-purple-400" />
            <span className="sr-only">Búsqueda Avanzada</span>
          </Button>
        </form>
      </div>
      <div className="flex items-center space-x-3">
        <ThemeToggle />
        {session ? (
          // Usuario autenticado
          <div className="flex items-center gap-3 pl-3 border-l border-border">
            {isAdmin && (
              <a 
                href="/admin/audit" 
                className="text-xs font-medium text-muted-foreground hover:text-primary transition-colors hidden sm:inline" 
                aria-label="Ver audit logs"
              >
                Logs
              </a>
            )}
            {user?.image && (
              <div className="relative">
                <Image
                  src={user.image}
                  alt={user.name || user.email || 'Avatar'}
                  width={36}
                  height={36}
                  className="rounded-full border-2 border-purple-200 dark:border-purple-800 hover:border-purple-400 dark:hover:border-purple-600 transition-colors"
                />
                <div className="absolute -bottom-1 -right-1 w-3 h-3 bg-green-500 rounded-full border-2 border-background"></div>
              </div>
            )}
            <div className="flex flex-col leading-tight max-w-[140px] truncate">
              {isAdmin ? (
                <span className="text-xs font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
                  Admin
                </span>
              ) : (session as any)?.canEditDictionary ? (
                <span className="text-xs font-bold bg-gradient-to-r from-blue-600 to-cyan-600 dark:from-blue-400 dark:to-cyan-400 bg-clip-text text-transparent">
                  Colaborador
                </span>
              ) : (
                <span className="text-xs font-bold text-muted-foreground">
                  Usuario
                </span>
              )}
              {user?.email && (
                <span className="text-xs text-muted-foreground truncate" title={user.email}>
                  {user.email}
                </span>
              )}
            </div>
            <SignOutButton />
          </div>
        ) : (
          // Usuario no autenticado - Mostrar botón de login
          <div className="flex items-center gap-2 pl-3 border-l border-border">
            <Button
              onClick={() => router.push('/admin/login')}
              className="bg-gradient-to-r from-purple-600 to-pink-600 hover:from-purple-700 hover:to-pink-700 text-white shadow-lg hover:shadow-xl transition-all"
              size="sm"
            >
              <svg className="w-4 h-4 mr-2" viewBox="0 0 24 24" fill="currentColor">
                <path d="M22.56 12.25c0-.78-.07-1.53-.2-2.25H12v4.26h5.92c-.26 1.37-1.04 2.53-2.21 3.31v2.77h3.57c2.08-1.92 3.28-4.74 3.28-8.09z" fill="#4285F4"/>
                <path d="M12 23c2.97 0 5.46-.98 7.28-2.66l-3.57-2.77c-.98.66-2.23 1.06-3.71 1.06-2.86 0-5.29-1.93-6.16-4.53H2.18v2.84C3.99 20.53 7.7 23 12 23z" fill="#34A853"/>
                <path d="M5.84 14.09c-.22-.66-.35-1.36-.35-2.09s.13-1.43.35-2.09V7.07H2.18C1.43 8.55 1 10.22 1 12s.43 3.45 1.18 4.93l2.85-2.22.81-.62z" fill="#FBBC05"/>
                <path d="M12 5.38c1.62 0 3.06.56 4.21 1.64l3.15-3.15C17.45 2.09 14.97 1 12 1 7.7 1 3.99 3.47 2.18 7.07l3.66 2.84c.87-2.6 3.3-4.53 6.16-4.53z" fill="#EA4335"/>
              </svg>
              <span className="hidden sm:inline">Iniciar Sesión</span>
              <span className="sm:hidden">Login</span>
            </Button>
          </div>
        )}
      </div>
      <AdvancedSearchModal 
        isOpen={isModalOpen} 
        onClose={() => setIsModalOpen(false)} 
        onSearch={handleAdvancedSearch} 
      />
    </header>
  );
};

export default MainHeader;