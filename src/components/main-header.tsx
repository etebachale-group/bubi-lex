import React, { useState } from 'react';
import { ThemeToggle } from './theme-toggle';
import { Input } from './ui/input';
import { Search, Menu } from 'lucide-react';
import { Button } from './ui/button';
import AdvancedSearchModal from './advanced-search-modal';
import { useRouter } from 'next/navigation';

interface MainHeaderProps {
  setSidebarOpen: (open: boolean) => void;
}

const MainHeader = ({ setSidebarOpen }: MainHeaderProps) => {
  const [isModalOpen, setIsModalOpen] = useState(false);
  const router = useRouter();

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