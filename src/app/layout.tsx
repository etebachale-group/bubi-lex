import type { Metadata } from "next";
import { getServerSession } from 'next-auth';
import { authOptions } from '@/lib/auth-options';
import { Providers } from "@/components/providers";
import MainLayout from "@/components/main-layout";
import "./globals.css";
import { Playfair_Display, PT_Sans } from "next/font/google";


const siteUrl = process.env.NEXT_PUBLIC_SITE_URL ?? "http://localhost:3000";

const playfair = Playfair_Display({
  subsets: ["latin"],
  variable: "--font-headline",
});

const ptSans = PT_Sans({
  subsets: ["latin"],
  weight: ["400", "700"],
  variable: "--font-body",
});

export const metadata: Metadata = {
  metadataBase: new URL(siteUrl),
  title: "BubiLex - Diccionario Bubi-Español",
  description: "Diccionario Bubi-Español y Archivo Cultural",
  keywords: [
    "Diccionario Bubi",
    "Lengua Bubi",
    "Cultura Bubi",
    "Bubi Español",
    "Pueblo Bubi",
  ],
  alternates: {
    canonical: "/",
  },
  openGraph: {
    url: siteUrl,
    siteName: "BubiLex",
    type: "website",
    locale: "es_ES",
    title: "BubiLex - Diccionario Bubi-Español",
    description: "Diccionario Bubi-Español y Archivo Cultural",
  },
  twitter: {
    card: "summary_large_image",
    title: "BubiLex - Diccionario Bubi-Español",
    description: "Diccionario Bubi-Español y Archivo Cultural",
  },
  icons: {
    icon: [
      { url: '/img/logo.png', type: 'image/png' },
      { url: '/favicon.ico' },
    ],
    apple: [
      { url: '/img/logo.png', type: 'image/png' },
    ],
    shortcut: [
      { url: '/img/logo.png', type: 'image/png' },
    ],
  },
};

export default async function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  let isAdmin = false;
  const hasAuthEnv = !!(process.env.GOOGLE_CLIENT_ID && process.env.GOOGLE_CLIENT_SECRET && process.env.NEXTAUTH_SECRET);
  if (hasAuthEnv) {
    try {
      const session = await getServerSession(authOptions);
      isAdmin = !!(session as any)?.isAdmin;
    } catch (e) {
      if (process.env.NODE_ENV !== 'production') {
        // eslint-disable-next-line no-console
        console.warn('[layout] getServerSession falló, continuando sin sesión:', (e as Error).message);
      }
    }
  }
  return (
    <html lang="es" suppressHydrationWarning>
      <body className={`${ptSans.className} ${playfair.variable} font-body bg-background`}>
        <a href="#main" className="skip-link">Saltar al contenido principal</a>
        <Providers>
          <MainLayout isAdmin={isAdmin}>{children}</MainLayout>
        </Providers>
      </body>
    </html>
  );
}