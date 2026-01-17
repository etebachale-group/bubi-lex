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
        {isAdmin && (
          <div className="flex items-center gap-3 pl-3 border-l border-border">
            <a 
              href="/admin/audit" 
              className="text-xs font-medium text-muted-foreground hover:text-primary transition-colors hidden sm:inline" 
              aria-label="Ver audit logs"
            >
              Logs
            </a>
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
              <span className="text-xs font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
                Admin
              </span>
              {user?.email && (
                <span className="text-xs text-muted-foreground truncate" title={user.email}>
                  {user.email}
                </span>
              )}
            </div>
            <SignOutButton />
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