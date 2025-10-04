"use client";
import React, { useState } from 'react';
import Image from 'next/image';
import { SignOutButton } from './signout-button';
import { ThemeToggle } from './theme-toggle';
import { Input } from './ui/input';
import { Search, Menu } from 'lucide-react';
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
    // Por ahora usamos solo la palabra clave para el diccionario; se puede ampliar a filtros adicionales
    const sp = new URLSearchParams();
    if (criteria.keyword) sp.set('q', criteria.keyword);
    // Reinicia a la primera página y usa orden por defecto
    sp.set('page', '1');
    router.push(`/dictionary?${sp.toString()}`);
  };

  return (
    <header className="flex items-center justify-between p-4 bg-card border-b z-10">
      <div className="flex items-center gap-4">
        <a href="/" className="flex items-center gap-2" aria-label="Inicio BubiLex">
          <Image src="/img/logo.svg" alt="BubiLex" width={40} height={40} className="rounded-sm" priority />
          <span className="hidden sm:inline font-headline text-lg font-semibold">BubiLex</span>
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
        <form role="search" className="relative hidden sm:flex items-center" action="/dictionary" method="get" aria-label="Buscar en BubiLex">
          <Search className="absolute left-3 top-1/2 -translate-y-1/2 text-muted-foreground w-5 h-5" />
          <Input name="q" placeholder="Buscar palabras o noticias..." aria-label="Buscar" className="pl-10" />
          <Button 
            type="button"
            variant="ghost" 
            size="icon" 
            className="ml-2"
            onClick={() => setIsModalOpen(true)}
          >
            <Search className="w-5 h-5" />
            <span className="sr-only">Búsqueda Avanzada</span>
          </Button>
        </form>
      </div>
      <div className="flex items-center space-x-4">
        {/* LanguageSwitcher can be added here later */}
        <ThemeToggle />
        {isAdmin && (
          <div className="flex items-center gap-3">
            <a href="/admin/audit" className="text-xs underline text-muted-foreground hover:text-primary hidden sm:inline" aria-label="Ver audit logs">Logs</a>
            {user?.image && (
              <Image
                src={user.image}
                alt={user.name || user.email || 'Avatar'}
                width={32}
                height={32}
                className="rounded-full border border-border"
              />
            )}
            <div className="flex flex-col leading-tight max-w-[140px] truncate">
              <span className="text-xs font-semibold text-primary">Admin</span>
              {user?.email && <span className="text-xs text-muted-foreground truncate" title={user.email}>{user.email}</span>}
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