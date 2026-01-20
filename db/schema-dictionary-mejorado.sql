-- Schema mejorado para el diccionario Bubi
-- Basado en la estructura de un diccionario español profesional

-- Tabla principal del diccionario
CREATE TABLE IF NOT EXISTS dictionary (
  id SERIAL PRIMARY KEY,
  
  -- Palabra en Bubi (entrada principal)
  bubi VARCHAR(255) NOT NULL,
  
  -- Tipo gramatical
  word_type VARCHAR(50), -- s., v., adj., adv., prep., conj., interj., pron., loc., morf., antrop.
  
  -- Género (para sustantivos)
  gender VARCHAR(20), -- m., f., m/f
  
  -- Número
  number VARCHAR(20), -- sing., pl.
  
  -- Clase nominal (específico del Bubi)
  nominal_class VARCHAR(50), -- Cl. 1, Cl. 2, etc.
  
  -- Forma plural (si aplica)
  plural_form VARCHAR(255),
  
  -- Traducción/Definición en español
  spanish TEXT NOT NULL,
  
  -- Pronunciación IPA
  ipa VARCHAR(255),
  
  -- Ejemplos de uso
  examples TEXT,
  
  -- Expresiones idiomáticas
  expressions TEXT,
  
  -- Sinónimos en Bubi
  synonyms TEXT,
  
  -- Variantes
  variants TEXT,
  
  -- Notas adicionales
  notes TEXT,
  
  -- Etimología
  etymology TEXT,
  
  -- Categoría semántica
  semantic_category VARCHAR(100),
  
  -- Nivel de uso (formal, coloquial, arcaico, etc.)
  usage_level VARCHAR(50),
  
  -- Región/dialecto
  region VARCHAR(100),
  
  -- Frecuencia de uso (1-5)
  frequency_score INTEGER DEFAULT 3,
  
  -- Metadatos
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  created_by VARCHAR(255),
  updated_by VARCHAR(255),
  verified BOOLEAN DEFAULT FALSE,
  verified_by VARCHAR(255),
  verified_at TIMESTAMP,
  
  -- Índices para búsqueda rápida
  CONSTRAINT unique_bubi_entry UNIQUE (bubi, word_type, number)
);

-- Índices para optimizar búsquedas
CREATE INDEX idx_dictionary_bubi ON dictionary(bubi);
CREATE INDEX idx_dictionary_word_type ON dictionary(word_type);
CREATE INDEX idx_dictionary_spanish ON dictionary USING gin(to_tsvector('spanish', spanish));
CREATE INDEX idx_dictionary_nominal_class ON dictionary(nominal_class);
CREATE INDEX idx_dictionary_verified ON dictionary(verified);

-- Índice de texto completo para búsqueda avanzada
CREATE INDEX idx_dictionary_fulltext ON dictionary 
USING gin(to_tsvector('spanish', bubi || ' ' || spanish || ' ' || COALESCE(examples, '') || ' ' || COALESCE(notes, '')));

-- Tabla de abreviaturas (para referencia)
CREATE TABLE IF NOT EXISTS dictionary_abbreviations (
  id SERIAL PRIMARY KEY,
  abbreviation VARCHAR(20) NOT NULL UNIQUE,
  full_form VARCHAR(100) NOT NULL,
  category VARCHAR(50), -- grammatical, linguistic, general
  description TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar abreviaturas estándar
INSERT INTO dictionary_abbreviations (abbreviation, full_form, category, description) VALUES
  ('adj.', 'adjetivo', 'grammatical', 'Palabra que califica o determina al sustantivo'),
  ('adv.', 'adverbio', 'grammatical', 'Palabra que modifica al verbo, adjetivo u otro adverbio'),
  ('antrop.', 'antropónimo', 'linguistic', 'Nombre propio de persona'),
  ('aum.', 'aumento', 'linguistic', 'Elemento que actualiza o especifica el nombre'),
  ('Cl.', 'clase', 'linguistic', 'Clase nominal (sistema bantú)'),
  ('conec.', 'conectivo', 'grammatical', 'Elemento que conecta palabras o frases'),
  ('conj.', 'conjunción', 'grammatical', 'Palabra que une elementos de la oración'),
  ('dem.', 'demostrativo', 'grammatical', 'Indica proximidad o lejanía'),
  ('expr.', 'expresión', 'general', 'Frase o locución'),
  ('f.', 'femenino', 'grammatical', 'Género femenino'),
  ('imp.', 'imperativo', 'grammatical', 'Modo verbal de mandato'),
  ('inf.', 'infinitivo', 'grammatical', 'Forma no personal del verbo'),
  ('interj.', 'interjección', 'grammatical', 'Expresión de emoción o sentimiento'),
  ('loc.', 'locución', 'grammatical', 'Grupo de palabras con significado unitario'),
  ('m.', 'masculino', 'grammatical', 'Género masculino'),
  ('morf.', 'morfema', 'linguistic', 'Unidad mínima con significado'),
  ('neg.', 'negación', 'grammatical', 'Expresa negación'),
  ('pl.', 'plural', 'grammatical', 'Número plural'),
  ('pos.', 'posesivo', 'grammatical', 'Indica posesión'),
  ('prep.', 'preposición', 'grammatical', 'Relaciona palabras en la oración'),
  ('pres.', 'presente', 'grammatical', 'Tiempo presente'),
  ('pret.', 'pretérito', 'grammatical', 'Tiempo pasado'),
  ('pron.', 'pronombre', 'grammatical', 'Sustituye al nombre'),
  ('s.', 'sustantivo', 'grammatical', 'Palabra que nombra seres, objetos o conceptos'),
  ('sing.', 'singular', 'grammatical', 'Número singular'),
  ('tb.', 'también', 'general', 'Indica variante o sinónimo'),
  ('topo.', 'topónimo', 'linguistic', 'Nombre propio de lugar'),
  ('v.', 'verbo', 'grammatical', 'Palabra que expresa acción, estado o proceso')
ON CONFLICT (abbreviation) DO NOTHING;

-- Comentarios en las columnas
COMMENT ON TABLE dictionary IS 'Diccionario bilingüe Bubi-Español con estructura profesional';
COMMENT ON COLUMN dictionary.bubi IS 'Palabra en idioma Bubi (entrada principal)';
COMMENT ON COLUMN dictionary.word_type IS 'Tipo gramatical: s., v., adj., adv., etc.';
COMMENT ON COLUMN dictionary.gender IS 'Género gramatical: m., f., m/f';
COMMENT ON COLUMN dictionary.number IS 'Número gramatical: sing., pl.';
COMMENT ON COLUMN dictionary.nominal_class IS 'Clase nominal del sistema bantú (Cl. 1-16)';
COMMENT ON COLUMN dictionary.spanish IS 'Definición o traducción en español';
COMMENT ON COLUMN dictionary.examples IS 'Ejemplos de uso en contexto';
COMMENT ON COLUMN dictionary.expressions IS 'Expresiones idiomáticas o frases hechas';
COMMENT ON COLUMN dictionary.synonyms IS 'Sinónimos en Bubi';
COMMENT ON COLUMN dictionary.variants IS 'Variantes ortográficas o dialectales';
COMMENT ON COLUMN dictionary.frequency_score IS 'Frecuencia de uso: 1=raro, 5=muy común';
