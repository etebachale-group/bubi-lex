import Link from "next/link";

const SiteFooter = () => {
  const year = new Date().getFullYear();
  return (
    <footer className="border-t mt-8">
      <div className="container mx-auto max-w-7xl p-4 sm:p-6 md:p-8 text-sm text-muted-foreground">
        <div className="flex flex-col md:flex-row items-start md:items-center justify-between gap-4">
          <div>
            <p>
              © {year} BubiLex. Todos los derechos reservados.
            </p>
          </div>
          <nav aria-label="Enlaces de pie de página" className="flex items-center gap-4">
            <Link href="/" className="hover:underline">Inicio</Link>
            <Link href="/dictionary" className="hover:underline">Diccionario</Link>
            <Link href="/news" className="hover:underline">Noticias</Link>
          </nav>
        </div>
      </div>
    </footer>
  );
};

export default SiteFooter;
