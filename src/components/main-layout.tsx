'use client';

import React, { useState } from 'react';
import MainSidebar from './main-sidebar';
import MainHeader from './main-header';
import SiteFooter from './site-footer';

interface MLProps { children: React.ReactNode; isAdmin?: boolean }
const MainLayout = ({ children, isAdmin }: MLProps) => {
  const [sidebarOpen, setSidebarOpen] = useState(false);

  return (
    <div className="flex min-h-dvh bg-background">
      <MainSidebar sidebarOpen={sidebarOpen} setSidebarOpen={setSidebarOpen} />
      <div className="flex-1 flex flex-col overflow-hidden">
  <MainHeader setSidebarOpen={setSidebarOpen} isAdmin={!!isAdmin} />
        <main id="main" role="main" className="flex-1 overflow-x-hidden overflow-y-auto bg-background p-4 sm:p-6 md:p-8">
          <div className="container mx-auto max-w-7xl">
            {children}
          </div>
        </main>
        <SiteFooter />
      </div>
    </div>
  );
};

export default MainLayout;