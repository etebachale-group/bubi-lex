-- Sistema de Gramática Bubi para IA
-- Este sistema almacena información gramatical que la IA usará como contexto

-- Tabla principal de gramática
CREATE TABLE IF NOT EXISTS bubi_grammar (
  id SERIAL PRIMARY KEY,
  category VARCHAR(100) NOT NULL, -- verbos, sustantivos, adjetivos, pronombres, etc.
  subcategory VARCHAR(100), -- tiempos verbales, género, número, etc.
  title VARCHAR(255) NOT NULL,
  content TEXT NOT NULL,
  examples TEXT, -- Ejemplos en formato JSON
  rules TEXT, -- Reglas específicas
  notes TEXT, -- Notas adicionales
  order_index INTEGER DEFAULT 0, -- Para ordenar
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  created_by VARCHAR(255),
  updated_by VARCHAR(255)
);

-- Índices para búsqueda rápida
CREATE INDEX idx_grammar_category ON bubi_grammar(category);
CREATE INDEX idx_grammar_subcategory ON bubi_grammar(subcategory);
CREATE INDEX idx_grammar_active ON bubi_grammar(is_active);
CREATE INDEX idx_grammar_order ON bubi_grammar(order_index);

-- Tabla de conjugaciones verbales
CREATE TABLE IF NOT EXISTS bubi_verb_conjugations (
  id SERIAL PRIMARY KEY,
  verb_infinitive VARCHAR(100) NOT NULL,
  verb_spanish VARCHAR(100) NOT NULL,
  tense VARCHAR(50) NOT NULL, -- presente, pasado, futuro, etc.
  person VARCHAR(20) NOT NULL, -- yo, tú, él, nosotros, etc.
  conjugation VARCHAR(100) NOT NULL,
  example TEXT,
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Índices para conjugaciones
CREATE INDEX idx_verb_infinitive ON bubi_verb_conjugations(verb_infinitive);
CREATE INDEX idx_verb_tense ON bubi_verb_conjugations(tense);

-- Tabla de patrones gramaticales
CREATE TABLE IF NOT EXISTS bubi_grammar_patterns (
  id SERIAL PRIMARY KEY,
  pattern_type VARCHAR(100) NOT NULL, -- estructura_oracion, orden_palabras, etc.
  pattern_name VARCHAR(255) NOT NULL,
  description TEXT NOT NULL,
  structure TEXT NOT NULL, -- Ej: "Sujeto + Verbo + Objeto"
  examples TEXT, -- Ejemplos en formato JSON
  usage_notes TEXT,
  is_active BOOLEAN DEFAULT true,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Índices para patrones
CREATE INDEX idx_pattern_type ON bubi_grammar_patterns(pattern_type);
CREATE INDEX idx_pattern_active ON bubi_grammar_patterns(is_active);

-- Insertar datos iniciales de ejemplo
INSERT INTO bubi_grammar (category, subcategory, title, content, examples, rules, order_index) VALUES
('verbos', 'tiempos', 'Presente Simple', 
 'El presente simple en Bubi se forma con el verbo en su forma base. Se usa para acciones habituales y estados permanentes.',
 '[{"bubi": "Mɛ́ rí", "spanish": "Yo como", "note": "Acción habitual"}]',
 '1. El verbo no cambia según la persona\n2. Se puede agregar marcadores temporales\n3. El orden es Sujeto-Verbo-Objeto',
 1),

('verbos', 'tiempos', 'Pasado', 
 'El pasado en Bubi se indica mediante partículas o cambios en el verbo. Común usar "a-" como prefijo.',
 '[{"bubi": "Mɛ́ a-rí", "spanish": "Yo comí", "note": "Acción completada"}]',
 '1. Prefijo "a-" indica pasado\n2. Puede variar según el contexto\n3. Algunos verbos irregulares',
 2),

('sustantivos', 'genero', 'Género en Sustantivos', 
 'Los sustantivos en Bubi pueden tener género marcado por prefijos o sufijos.',
 '[{"bubi": "moto", "spanish": "persona", "note": "Neutro"}, {"bubi": "ɛmoto", "spanish": "hombre", "note": "Masculino"}]',
 '1. Prefijos indican género\n2. No todos los sustantivos tienen género marcado\n3. El contexto es importante',
 3),

('pronombres', 'personales', 'Pronombres Personales', 
 'Los pronombres personales en Bubi varían según la función en la oración.',
 '[{"bubi": "mɛ́", "spanish": "yo"}, {"bubi": "wɛ́", "spanish": "tú"}, {"bubi": "ɛ́", "spanish": "él/ella"}]',
 '1. Forma sujeto vs objeto\n2. Pueden omitirse si el contexto es claro\n3. Plural se forma con prefijos',
 4),

('estructura', 'oracion', 'Orden de Palabras', 
 'El orden básico en Bubi es Sujeto-Verbo-Objeto (SVO), similar al español.',
 '[{"bubi": "Mɛ́ rí mba", "spanish": "Yo como agua", "structure": "S-V-O"}]',
 '1. Orden SVO es el más común\n2. Puede variar para énfasis\n3. Preguntas pueden invertir el orden',
 5);

-- Insertar conjugaciones de ejemplo
INSERT INTO bubi_verb_conjugations (verb_infinitive, verb_spanish, tense, person, conjugation, example) VALUES
('rí', 'comer', 'presente', 'yo', 'mɛ́ rí', 'Mɛ́ rí mba (Yo como agua)'),
('rí', 'comer', 'presente', 'tú', 'wɛ́ rí', 'Wɛ́ rí mba (Tú comes agua)'),
('rí', 'comer', 'presente', 'él/ella', 'ɛ́ rí', 'Ɛ́ rí mba (Él/ella come agua)'),
('rí', 'comer', 'pasado', 'yo', 'mɛ́ a-rí', 'Mɛ́ a-rí mba (Yo comí agua)'),
('rí', 'comer', 'pasado', 'tú', 'wɛ́ a-rí', 'Wɛ́ a-rí mba (Tú comiste agua)'),
('rí', 'comer', 'pasado', 'él/ella', 'ɛ́ a-rí', 'Ɛ́ a-rí mba (Él/ella comió agua)');

-- Insertar patrones gramaticales
INSERT INTO bubi_grammar_patterns (pattern_type, pattern_name, description, structure, examples) VALUES
('estructura_oracion', 'Oración Afirmativa Simple', 
 'Estructura básica para oraciones afirmativas en Bubi',
 'Sujeto + Verbo + Objeto',
 '[{"bubi": "Mɛ́ rí mba", "spanish": "Yo como agua", "parts": ["Sujeto: mɛ́", "Verbo: rí", "Objeto: mba"]}]'),

('estructura_oracion', 'Oración Negativa', 
 'Para negar una acción se usa la partícula negativa',
 'Sujeto + Negación + Verbo + Objeto',
 '[{"bubi": "Mɛ́ si rí mba", "spanish": "Yo no como agua", "parts": ["Sujeto: mɛ́", "Negación: si", "Verbo: rí", "Objeto: mba"]}]'),

('estructura_pregunta', 'Pregunta Simple', 
 'Las preguntas pueden formarse con entonación o partículas interrogativas',
 'Partícula + Sujeto + Verbo + Objeto',
 '[{"bubi": "Wɛ́ rí mba?", "spanish": "¿Comes agua?", "note": "Entonación ascendente"}]');

-- RLS (Row Level Security)
ALTER TABLE bubi_grammar ENABLE ROW LEVEL SECURITY;
ALTER TABLE bubi_verb_conjugations ENABLE ROW LEVEL SECURITY;
ALTER TABLE bubi_grammar_patterns ENABLE ROW LEVEL SECURITY;

-- Políticas de lectura (público puede leer)
CREATE POLICY "Gramática es pública para lectura"
  ON bubi_grammar FOR SELECT
  USING (is_active = true);

CREATE POLICY "Conjugaciones son públicas para lectura"
  ON bubi_verb_conjugations FOR SELECT
  USING (true);

CREATE POLICY "Patrones son públicos para lectura"
  ON bubi_grammar_patterns FOR SELECT
  USING (is_active = true);

-- Políticas de escritura (solo admins autenticados)
CREATE POLICY "Solo admins pueden insertar gramática"
  ON bubi_grammar FOR INSERT
  WITH CHECK (auth.role() = 'authenticated');

CREATE POLICY "Solo admins pueden actualizar gramática"
  ON bubi_grammar FOR UPDATE
  USING (auth.role() = 'authenticated');

CREATE POLICY "Solo admins pueden eliminar gramática"
  ON bubi_grammar FOR DELETE
  USING (auth.role() = 'authenticated');

-- Trigger para actualizar updated_at
CREATE OR REPLACE FUNCTION update_grammar_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = CURRENT_TIMESTAMP;
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER grammar_updated_at
  BEFORE UPDATE ON bubi_grammar
  FOR EACH ROW
  EXECUTE FUNCTION update_grammar_updated_at();

CREATE TRIGGER verb_conjugations_updated_at
  BEFORE UPDATE ON bubi_verb_conjugations
  FOR EACH ROW
  EXECUTE FUNCTION update_grammar_updated_at();

-- Comentarios en las tablas
COMMENT ON TABLE bubi_grammar IS 'Almacena información gramatical del idioma Bubi para uso de IA';
COMMENT ON TABLE bubi_verb_conjugations IS 'Conjugaciones verbales del Bubi';
COMMENT ON TABLE bubi_grammar_patterns IS 'Patrones y estructuras gramaticales del Bubi';

-- Verificación
SELECT 'Tablas de gramática creadas exitosamente' AS status;
SELECT COUNT(*) AS grammar_entries FROM bubi_grammar;
SELECT COUNT(*) AS verb_conjugations FROM bubi_verb_conjugations;
SELECT COUNT(*) AS grammar_patterns FROM bubi_grammar_patterns;
