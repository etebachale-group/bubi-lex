import { createClient, type SupabaseClient } from '@supabase/supabase-js';

let supabaseSingleton: SupabaseClient | null = null;

function buildClient(): SupabaseClient {
  const url = process.env.NEXT_PUBLIC_SUPABASE_URL;
  const anon = process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY;

  if (!url || !anon) {
    // No lanzamos inmediatamente durante build estático; devolvemos un proxy que fallará perezosamente.
    throw new Error('Supabase env vars missing: define NEXT_PUBLIC_SUPABASE_URL y NEXT_PUBLIC_SUPABASE_ANON_KEY');
  }
  return createClient(url, anon);
}

export function getSupabase(): SupabaseClient {
  if (!supabaseSingleton) {
    supabaseSingleton = buildClient();
  }
  return supabaseSingleton;
}

// Compatibilidad con importaciones existentes
// Nota: ya no exportamos una instancia directa para evitar fallos en tiempo de build
// Usa: const supabase = getSupabase(); dentro de funciones/handlers.