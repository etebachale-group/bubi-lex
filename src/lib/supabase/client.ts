import { createClient } from '@supabase/supabase-js';

/**
 * Browser-safe Supabase client using public/anon key.
 * Safe to use in client components and API routes.
 */
export function getSupabaseClient() {
  const url =
    process.env.NEXT_PUBLIC_SUPABASE_URL ||
    process.env.SUPABASE_URL;
  const anonKey =
    process.env.NEXT_PUBLIC_SUPABASE_ANON_KEY ||
    process.env.SUPABASE_ANON_KEY;

  if (!url || !anonKey) {
    throw new Error(
      'Missing Supabase environment variables. Please set NEXT_PUBLIC_SUPABASE_URL and NEXT_PUBLIC_SUPABASE_ANON_KEY (or SUPABASE_URL and SUPABASE_ANON_KEY).'
    );
  }

  return createClient(url, anonKey);
}

export const supabase = getSupabaseClient();
