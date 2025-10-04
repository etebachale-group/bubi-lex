import type { Metadata } from "next";
import { ThemeProvider } from "@/components/theme-provider";
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

export default function RootLayout({
  children,
}: Readonly<{
  children: React.ReactNode;
}>) {
  // isAdmin ahora proviene de NextAuth en server componentes específicos; aquí pasamos false y se evaluará en runtime si se requiere.
  const isAdmin = false;
  return (
    <html lang="es" suppressHydrationWarning>
      <body className={`${ptSans.className} ${playfair.variable} font-body bg-background`}>
        <a href="#main" className="skip-link">Saltar al contenido principal</a>
        <ThemeProvider
          attribute="class"
          defaultTheme="system"
          enableSystem
          disableTransitionOnChange
        >
          <MainLayout isAdmin={isAdmin}>{children}</MainLayout>
        </ThemeProvider>
      </body>
    </html>
  );
}