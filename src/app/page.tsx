import WordOfTheDay from "@/components/word-of-the-day";
import { Card, CardContent, CardHeader, CardTitle } from "@/components/ui/card";
import Link from "next/link";
import news from '@/lib/news-data.json';
import { Button } from "@/components/ui/button";
import { ArrowRight } from "lucide-react";
import StructuredData from "@/components/seo/structured-data";

const DashboardPage = () => {
  const recentNews = [...news].sort((a, b) => new Date(b.date).getTime() - new Date(a.date).getTime()).slice(0, 3);

  return (
    <div className="flex flex-col gap-8">
      <StructuredData data={{
        '@context': 'https://schema.org',
        '@type': 'WebSite',
        name: 'BubiLex',
        url: process.env.NEXT_PUBLIC_SITE_URL ?? 'http://localhost:3000',
        potentialAction: {
          '@type': 'SearchAction',
          target: `${process.env.NEXT_PUBLIC_SITE_URL ?? 'http://localhost:3000'}/dictionary?q={search_term_string}`,
          'query-input': 'required name=search_term_string',
        },
      }} />
      <div>
        <h1 className="text-3xl font-bold font-headline">Dashboard</h1>
        <p className="text-muted-foreground">
          Bienvenido a BubiLex. Aquí tienes un resumen y la palabra del día.
        </p>
      </div>

      <div className="grid gap-8 md:grid-cols-3">
        <div className="md:col-span-2">
          <Card>
            <CardHeader>
              <CardTitle>Noticias Recientes</CardTitle>
            </CardHeader>
            <CardContent className="space-y-4">
              {recentNews.map(item => (
                <div key={item.id} className="flex justify-between items-center">
                  <div>
                    <Link href={`/news#${item.id}`} className="font-semibold hover:underline">{item.title}</Link>
                    <p className="text-sm text-muted-foreground">{new Date(item.date).toLocaleDateString('es-ES', { month: 'long', day: 'numeric' })}</p>
                  </div>
                  <Button variant="outline" size="sm" asChild>
                    <Link href={`/news#${item.id}`}>
                      Ver <ArrowRight className="w-4 h-4 ml-2" />
                    </Link>
                  </Button>
                </div>
              ))}
            </CardContent>
          </Card>
        </div>

        <div className="md:col-span-1">
          <WordOfTheDay />
        </div>
      </div>
    </div>
  );
}

export default DashboardPage;
