import Link from 'next/link';
import { Card, CardHeader, CardTitle, CardContent } from '@/components/ui/card';

export default function AdminPage() {
  return (
    <div className="container mx-auto py-8">
      <h1 className="text-3xl font-bold mb-6">Panel de Administración</h1>
      <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
        <Link href="/admin/news">
          <Card className="hover:shadow-lg transition-shadow">
            <CardHeader>
              <CardTitle>Gestionar Noticias</CardTitle>
            </CardHeader>
            <CardContent>
              <p>Crear, editar y eliminar noticias y relatos.</p>
            </CardContent>
          </Card>
        </Link>
        {/* Otros enlaces de administración se pueden añadir aquí */}
      </div>
    </div>
  );
}