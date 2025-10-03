-- Supabase (Postgres) Schema for Bubi-Lex
-- Run this in the Supabase SQL Editor to create the tables and policies

-- Enable necessary extensions
CREATE EXTENSION IF NOT EXISTS pg_trgm;

-- Table: dictionary_entries
CREATE TABLE IF NOT EXISTS public.dictionary_entries (
  id BIGSERIAL PRIMARY KEY,
  bubi TEXT NOT NULL,
  spanish TEXT NOT NULL,
  ipa VARCHAR(255),
  notes TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ,
  -- Computed unique key for idempotent upserts
  entry_key TEXT GENERATED ALWAYS AS (MD5(LOWER(TRIM(bubi)) || '|' || LOWER(TRIM(spanish)))) STORED UNIQUE
);

-- Add comments
COMMENT ON TABLE public.dictionary_entries IS 'Bubi-Spanish dictionary entries';
COMMENT ON COLUMN public.dictionary_entries.entry_key IS 'Unique key based on bubi and spanish terms for idempotent upserts';

-- Table: news
CREATE TABLE IF NOT EXISTS public.news (
  id BIGSERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  date DATE NOT NULL,
  image VARCHAR(512),
  video VARCHAR(512),
  likes INTEGER NOT NULL DEFAULT 0,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ
);

COMMENT ON TABLE public.news IS 'News articles about Bubi culture and language';

-- Create updated_at trigger function
CREATE OR REPLACE FUNCTION public.update_updated_at_column()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Apply updated_at triggers
DROP TRIGGER IF EXISTS set_updated_at ON public.dictionary_entries;
CREATE TRIGGER set_updated_at
  BEFORE UPDATE ON public.dictionary_entries
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();

DROP TRIGGER IF EXISTS set_updated_at ON public.news;
CREATE TRIGGER set_updated_at
  BEFORE UPDATE ON public.news
  FOR EACH ROW
  EXECUTE FUNCTION public.update_updated_at_column();

-- Add tsvector column for full-text search on dictionary_entries
ALTER TABLE public.dictionary_entries
  ADD COLUMN IF NOT EXISTS search_vector tsvector
  GENERATED ALWAYS AS (
    setweight(to_tsvector('spanish', COALESCE(bubi, '')), 'A') ||
    setweight(to_tsvector('spanish', COALESCE(spanish, '')), 'A') ||
    setweight(to_tsvector('spanish', COALESCE(notes, '')), 'B')
  ) STORED;

-- Create GIN index for full-text search
CREATE INDEX IF NOT EXISTS idx_dictionary_search_vector
  ON public.dictionary_entries USING GIN (search_vector);

-- Create trigram indexes for fuzzy search
CREATE INDEX IF NOT EXISTS idx_dictionary_bubi_trgm
  ON public.dictionary_entries USING GIN (bubi gin_trgm_ops);

CREATE INDEX IF NOT EXISTS idx_dictionary_spanish_trgm
  ON public.dictionary_entries USING GIN (spanish gin_trgm_ops);

-- Create index on news date
CREATE INDEX IF NOT EXISTS idx_news_date
  ON public.news (date DESC);

-- Add tsvector for news
ALTER TABLE public.news
  ADD COLUMN IF NOT EXISTS search_vector tsvector
  GENERATED ALWAYS AS (
    setweight(to_tsvector('spanish', COALESCE(title, '')), 'A') ||
    setweight(to_tsvector('spanish', COALESCE(content, '')), 'B')
  ) STORED;

CREATE INDEX IF NOT EXISTS idx_news_search_vector
  ON public.news USING GIN (search_vector);

-- Enable Row Level Security
ALTER TABLE public.dictionary_entries ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.news ENABLE ROW LEVEL SECURITY;

-- Create public read-only policies
-- Anyone can SELECT from dictionary_entries
DROP POLICY IF EXISTS "Public read access to dictionary_entries" ON public.dictionary_entries;
CREATE POLICY "Public read access to dictionary_entries"
  ON public.dictionary_entries
  FOR SELECT
  USING (true);

-- Anyone can SELECT from news
DROP POLICY IF EXISTS "Public read access to news" ON public.news;
CREATE POLICY "Public read access to news"
  ON public.news
  FOR SELECT
  USING (true);

-- Note: INSERT, UPDATE, DELETE operations require service role or authenticated users with proper permissions
-- These operations should be handled through API routes using the service role key
