"use client";

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Home, Book, Newspaper, User, X, Sparkles } from 'lucide-react';
import { cn } from '@/lib/utils';
import { motion, AnimatePresence } from 'framer-motion';
import { Button } from './ui/button';
import React from 'react';

const navItems = [
  { href: '/', label: 'Dashboard', icon: Home },
  { href: '/dictionary', label: 'Diccionario', icon: Book },
  { href: '/news', label: 'Noticias', icon: Newspaper },
  { href: '/ai-features', label: 'IA', icon: Sparkles, badge: 'Nuevo' },
  { href: '/admin', label: 'Admin', icon: User },
];

interface MainSidebarProps {
  sidebarOpen: boolean;
  setSidebarOpen: (open: boolean) => void;
}

const SidebarContent = ({ setSidebarOpen }: { setSidebarOpen: (open: boolean) => void }) => {
  const pathname = usePathname();
  const handleLinkClick = () => {
    setSidebarOpen(false);
  };

  return (
    <>
      <div className="flex justify-between items-center mb-8">
        <div className="text-2xl font-headline font-bold">BubiLex</div>
        <Button
          variant="ghost"
          size="icon"
          className="md:hidden"
          onClick={() => setSidebarOpen(false)}
        >
          <X className="w-6 h-6" />
          <span className="sr-only">Cerrar menú</span>
        </Button>
      </div>
      <nav>
        <ul>
          {navItems.map((item) => (
            <li key={item.href}>
              <Link
                href={item.href}
                onClick={handleLinkClick}
                className={cn(
                  'flex items-center justify-between p-3 rounded-lg transition-colors hover:bg-muted',
                  pathname === item.href ? 'bg-primary text-primary-foreground' : ''
                )}
                aria-current={pathname === item.href ? 'page' : undefined}
              >
                <div className="flex items-center">
                  <item.icon className="w-5 h-5 mr-3" />
                  {item.label}
                </div>
                {item.badge && (
                  <span className="text-xs px-2 py-0.5 bg-gradient-to-r from-purple-600 to-pink-600 text-white rounded-full">
                    {item.badge}
                  </span>
                )}
              </Link>
            </li>
          ))}
        </ul>
      </nav>
    </>
  );
};

const MainSidebar = ({ sidebarOpen, setSidebarOpen }: MainSidebarProps) => {
  return (
    <>
      {/* Mobile Sidebar */}
      <AnimatePresence>
        {sidebarOpen && (
          <>
            <motion.div
              initial={{ opacity: 0 }}
              animate={{ opacity: 1 }}
              exit={{ opacity: 0 }}
              transition={{ duration: 0.3 }}
              className="fixed inset-0 bg-black/50 z-40 md:hidden"
              onClick={() => setSidebarOpen(false)}
            />
            <motion.aside
              initial={{ x: '-100%' }}
              animate={{ x: 0 }}
              exit={{ x: '-100%' }}
              transition={{ duration: 0.3, ease: 'easeInOut' }}
              className="fixed top-0 left-0 h-full w-64 bg-card text-card-foreground p-4 border-r z-50 md:hidden"
            >
              <SidebarContent setSidebarOpen={setSidebarOpen} />
            </motion.aside>
          </>
        )}
      </AnimatePresence>

      {/* Desktop Sidebar */}
      <aside className="hidden md:block w-64 flex-shrink-0 bg-card text-card-foreground p-4 border-r">
        {/* The desktop sidebar doesn't need the close button, so we pass a dummy function */}
        <SidebarContent setSidebarOpen={() => {}} />
      </aside>
    </>
  );
};

export default MainSidebar;