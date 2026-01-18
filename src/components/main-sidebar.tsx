"use client";

import Link from 'next/link';
import { usePathname } from 'next/navigation';
import { Home, Book, Newspaper, User, X, Sparkles, Shield, Users } from 'lucide-react';
import { cn } from '@/lib/utils';
import { motion, AnimatePresence } from 'framer-motion';
import { Button } from './ui/button';
import { useSession } from 'next-auth/react';
import React from 'react';

interface MainSidebarProps {
  sidebarOpen: boolean;
  setSidebarOpen: (open: boolean) => void;
}

const SidebarContent = ({ setSidebarOpen }: { setSidebarOpen: (open: boolean) => void }) => {
  const pathname = usePathname();
  const { data: session } = useSession();
  const isAdmin = (session as any)?.isAdmin;
  const canEditDictionary = (session as any)?.canEditDictionary;
  
  const handleLinkClick = () => {
    setSidebarOpen(false);
  };

  // Enlaces base para todos los usuarios
  const baseNavItems = [
    { href: '/', label: 'Inicio', icon: Home },
    { href: '/dictionary', label: 'Diccionario', icon: Book },
    { href: '/news', label: 'Noticias', icon: Newspaper },
    { href: '/ai-features', label: 'IA', icon: Sparkles, badge: 'Nuevo' },
  ];

  // Enlaces adicionales según el rol
  const roleNavItems = [];
  
  if (canEditDictionary && !isAdmin) {
    roleNavItems.push({ 
      href: '/collaborator', 
      label: 'Panel Colaborador', 
      icon: Users,
      badge: 'Colaborador'
    });
  }
  
  if (isAdmin) {
    roleNavItems.push({ 
      href: '/admin', 
      label: 'Panel Admin', 
      icon: Shield,
      badge: 'Admin'
    });
  }

  const navItems = [...baseNavItems, ...roleNavItems];

  return (
    <>
      <div className="flex justify-between items-center mb-8">
        <div className="text-2xl font-headline font-bold bg-gradient-to-r from-purple-600 to-pink-600 dark:from-purple-400 dark:to-pink-400 bg-clip-text text-transparent">
          BubiLex
        </div>
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
        <ul className="space-y-1">
          {navItems.map((item) => (
            <li key={item.href}>
              <Link
                href={item.href}
                onClick={handleLinkClick}
                className={cn(
                  'flex items-center justify-between p-3 rounded-lg transition-all hover:bg-muted group',
                  pathname === item.href 
                    ? 'bg-gradient-to-r from-purple-600 to-pink-600 text-white shadow-lg' 
                    : 'hover:shadow-md'
                )}
                aria-current={pathname === item.href ? 'page' : undefined}
              >
                <div className="flex items-center">
                  <item.icon className={cn(
                    "w-5 h-5 mr-3 transition-transform group-hover:scale-110",
                    pathname === item.href ? "text-white" : ""
                  )} />
                  <span className="font-medium">{item.label}</span>
                </div>
                {item.badge && (
                  <span className={cn(
                    "text-xs px-2 py-0.5 rounded-full font-semibold",
                    pathname === item.href 
                      ? "bg-white/20 text-white" 
                      : "bg-gradient-to-r from-purple-600 to-pink-600 text-white"
                  )}>
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