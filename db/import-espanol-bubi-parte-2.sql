-- Script de importación Español-Bubi (Mejorado)
-- PARTE 2 de 2
-- Entradas: 1201 a 2230
-- Total de entradas en esta parte: 1030
-- Fecha: 2026-01-21

-- ⚠️ IMPORTANTE: Ejecutar las partes en orden (1, 2, 3...)

BEGIN;

-- Lote 1 (entradas 1201 a 1225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('lohúa', 's.', 'f.', NULL, 'Cl. 11', 'hueste', NULL, NULL, 'Español: hueste', 'import-espanol-bubi'),
  ('boheú', 's.', 'm.', NULL, 'Cl. 3', 'huevo', NULL, NULL, 'Español: huevo', 'import-espanol-bubi'),
  ('buíríi', 's.', 'f.', NULL, 'Cl. 3', 'huída', NULL, NULL, 'Español: huída', 'import-espanol-bubi'),
  ('húbbia', 'v.', NULL, NULL, NULL, 'huir', NULL, NULL, 'Español: huir', 'import-espanol-bubi'),
  ('tyokka', 's.', 'f.', NULL, 'Cl. 9', 'humedad', NULL, NULL, 'Español: humedad', 'import-espanol-bubi'),
  ('si''a', 'v.', NULL, NULL, NULL, 'humedecer', NULL, NULL, 'Español: humedecer', 'import-espanol-bubi'),
  ('benná', 'v.', NULL, NULL, NULL, 'humillar', NULL, NULL, 'Español: humillar', 'import-espanol-bubi'),
  ('ehútu', 's.', 'm.', NULL, 'Cl. 7', 'humo', NULL, NULL, 'Español: humo', 'import-espanol-bubi'),
  ('lori''o', 's.', 'm.', NULL, 'Cl. 11', 'hundimiento', NULL, NULL, 'Español: hundimiento', 'import-espanol-bubi'),
  ('ri''ia', 'v.', NULL, NULL, NULL, 'hundir', NULL, NULL, 'Español: hundir', 'import-espanol-bubi'),
  ('pullá', 's.', 'm.', NULL, 'Cl. 9', 'huracán', NULL, NULL, 'Español: huracán', 'import-espanol-bubi'),
  ('sipoppi', 's.', 'm.', NULL, 'Cl. 12', 'huraño', NULL, NULL, 'Español: huraño', 'import-espanol-bubi'),
  ('pakara', 'v.', NULL, NULL, NULL, 'hurgar', NULL, NULL, 'Español: hurgar', 'import-espanol-bubi'),
  ('ubáa', 'v.', NULL, NULL, NULL, 'hurtar', NULL, NULL, 'Español: hurtar', 'import-espanol-bubi'),
  ('eubáa', 's.', 'm.', NULL, 'Cl. 7', 'hurto', NULL, NULL, 'Español: hurto', 'import-espanol-bubi'),
  ('ehánna', 's.', 'm.', NULL, 'Cl. 7', 'icono', NULL, NULL, 'Español: icono', 'import-espanol-bubi'),
  ('anna', 'v.', NULL, NULL, NULL, 'identificar', NULL, NULL, 'Español: identificar', 'import-espanol-bubi'),
  ('lotó''ólló', 's.', 'm.', NULL, 'Cl. 10', 'idioma', NULL, NULL, 'Español: idioma', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 7', 'idiota', NULL, NULL, 'Español: idiota', 'import-espanol-bubi'),
  ('boteríbbo', 's.', 'm.', NULL, 'Cl. 2', 'ídolo', NULL, NULL, 'Español: ídolo', 'import-espanol-bubi'),
  ('como', 'adj.', NULL, NULL, 'Cl. 12', 'ignorante', NULL, NULL, 'Español: ignorante', 'import-espanol-bubi'),
  ('be''ia', 'v.', NULL, NULL, NULL, 'igualar', NULL, NULL, 'Español: igualar', 'import-espanol-bubi'),
  ('etobbo', 's.', 'm.', NULL, 'Cl. 7', 'impedimento', NULL, NULL, 'Español: impedimento', 'import-espanol-bubi'),
  ('ronkótte', 's.', 'm.', NULL, 'Cl. 5', 'impermeable', NULL, NULL, 'Español: impermeable', 'import-espanol-bubi'),
  ('riobbo', 's.', 'm.', NULL, 'Cl. 5', 'impuesto', NULL, NULL, 'Español: impuesto', 'import-espanol-bubi');

-- Lote 2 (entradas 1226 a 1250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribasaisso', 's.', 'm.', NULL, 'Cl. 5', 'incendio', NULL, NULL, 'Español: incendio', 'import-espanol-bubi'),
  ('behollá', 's.', 'm.', NULL, 'Cl. 4', 'incienso', NULL, NULL, 'Español: incienso', 'import-espanol-bubi'),
  ('kokotta', 'v.', NULL, NULL, NULL, 'inclinarse', NULL, NULL, 'Español: inclinarse', 'import-espanol-bubi'),
  ('lehea', 'v.', NULL, NULL, NULL, 'incordiar', NULL, NULL, 'Español: incordiar', 'import-espanol-bubi'),
  ('ekera', 'v.', NULL, NULL, NULL, 'indagar', NULL, NULL, 'Español: indagar', 'import-espanol-bubi'),
  ('ebobo', 's.', 'm.', NULL, 'Cl. 7', 'indicio', NULL, NULL, 'Español: indicio', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'individuo', NULL, NULL, 'Español: individuo', 'import-espanol-bubi'),
  ('eoppa', 's.', 'm.', NULL, 'Cl. 7', 'infecundo', NULL, NULL, 'Español: infecundo', 'import-espanol-bubi'),
  ('bolebóri', 's.', 'm.', NULL, 'Cl. 3', 'ingenio', NULL, NULL, 'Español: ingenio', 'import-espanol-bubi'),
  ('rokáteri', 's.', 'm.', NULL, 'Cl. 5', 'inicio', NULL, NULL, 'Español: inicio', 'import-espanol-bubi'),
  ('ikka', 'v.', NULL, NULL, NULL, 'injuriar', NULL, NULL, 'Español: injuriar', 'import-espanol-bubi'),
  ('bopélla', 's.', 'm.', NULL, 'Cl. 1', 'inquilino', NULL, NULL, 'Español: inquilino', 'import-espanol-bubi'),
  ('kokoppé', 'adj.', NULL, NULL, 'Cl. 9', 'insípido', NULL, NULL, 'Español: insípido', 'import-espanol-bubi'),
  ('ehette', 's.', 'm.', NULL, 'Cl. 7', 'insomnio', NULL, NULL, 'Español: insomnio', 'import-espanol-bubi'),
  ('ralohekka', 's.', 'm.', NULL, 'Cl. 12', 'instante', NULL, NULL, 'Español: instante', 'import-espanol-bubi'),
  ('ekosilalla', 's.', 'm.', NULL, 'Cl. 7', 'insulto', NULL, NULL, 'Español: insulto', 'import-espanol-bubi'),
  ('sulufáto', 's.', 'm.', NULL, 'Cl. 12', 'insumo', NULL, NULL, 'Español: insumo', 'import-espanol-bubi'),
  ('buanna', 'adj.', NULL, NULL, 'Cl. 1', 'inteligente', NULL, NULL, 'Español: inteligente', 'import-espanol-bubi'),
  ('elella', 'v.', NULL, NULL, NULL, 'interpelar', NULL, NULL, 'Español: interpelar', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 1', 'intérprete', NULL, NULL, 'Español: intérprete', 'import-espanol-bubi'),
  ('pI', 's.', NULL, NULL, 'Cl. 10', 'intestinos', NULL, NULL, 'Español: intestinos', 'import-espanol-bubi'),
  ('bOloari', 's.', 'm.', NULL, 'Cl. 1', 'inválido', NULL, NULL, 'Español: inválido', 'import-espanol-bubi'),
  ('bOna''a', 's.', 'm.', NULL, 'Cl. 1', 'investigador', NULL, NULL, 'Español: investigador', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 7', 'invidente', NULL, NULL, 'Español: invidente', 'import-espanol-bubi'),
  ('esubba', 's.', 'm.', NULL, 'Cl. 7', 'invierno', NULL, NULL, 'Español: invierno', 'import-espanol-bubi');

-- Lote 3 (entradas 1251 a 1275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bohekkí', 's.', 'm.', NULL, 'Cl. 1', 'invitado', NULL, NULL, 'Español: invitado', 'import-espanol-bubi'),
  ('bohekkáa', 's.', 'm.', NULL, 'Cl. 1', 'invitante', NULL, NULL, 'Español: invitante', 'import-espanol-bubi'),
  ('hella', 'v.', NULL, NULL, NULL, 'ir', NULL, NULL, 'Español: ir', 'import-espanol-bubi'),
  ('sÍtúllá', 's.', 'm.', NULL, 'Cl. 12', 'islote', NULL, NULL, 'Español: islote', 'import-espanol-bubi'),
  ('bohaí', 's.', 'm.', NULL, 'Cl. 3', 'itinerario', NULL, NULL, 'Español: itinerario', 'import-espanol-bubi'),
  ('keke', 'adj.', NULL, NULL, NULL, 'izquierdo', NULL, NULL, 'Español: izquierdo', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'jabalí', NULL, NULL, 'Español: jabalí', 'import-espanol-bubi'),
  ('sisóló', 's.', 'm.', NULL, 'Cl. 12', 'jabato', NULL, NULL, 'Español: jabato', 'import-espanol-bubi'),
  ('tyebólla', 's.', 'm.', NULL, 'Cl. 9', 'jabón', NULL, NULL, 'Español: jabón', 'import-espanol-bubi'),
  ('bolláa', 's.', 'm.', NULL, 'Cl. 3', 'jaleo', NULL, NULL, 'Español: jaleo', 'import-espanol-bubi'),
  ('kóbbáa', 'v.', NULL, NULL, NULL, 'jamar', NULL, NULL, 'Español: jamar', 'import-espanol-bubi'),
  ('tyornmaa', 'adv.', NULL, NULL, NULL, 'jamás', NULL, NULL, 'Español: jamás', 'import-espanol-bubi'),
  ('tyáa', 's.', 'm.', NULL, 'Cl. 9', 'jarro', NULL, NULL, 'Español: jarro', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'jefe', NULL, NULL, 'Español: jefe', 'import-espanol-bubi'),
  ('sitúkku', 's.', 'm.', NULL, 'Cl. 12', 'jefecillo', NULL, NULL, 'Español: jefecillo', 'import-espanol-bubi'),
  ('dyindyabía', 's.', 'm.', NULL, 'Cl. 10', 'jengibre', NULL, NULL, 'Español: jengibre', 'import-espanol-bubi'),
  ('buesee', 's.', 'm.', NULL, 'Cl. 3', 'jenjén', NULL, NULL, 'Español: jenjén', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'jerarca', NULL, NULL, 'Español: jerarca', 'import-espanol-bubi'),
  ('enárnmoétuepuá', 's.', 'm.', NULL, 'Cl. 7', 'jilguero', NULL, NULL, 'Español: jilguero', 'import-espanol-bubi'),
  ('rikélékélée', 's.', 'm.', NULL, 'Cl. 5', 'jolgorio', NULL, NULL, 'Español: jolgorio', 'import-espanol-bubi'),
  ('bolakóláko', 's.', 'm.', NULL, 'Cl. 1', 'jornalero', NULL, NULL, 'Español: jornalero', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 1', 'joven', NULL, NULL, 'Español: joven', 'import-espanol-bubi'),
  ('riokkó', 's.', 'm.', NULL, 'Cl. 5', 'júbilo', NULL, NULL, 'Español: júbilo', 'import-espanol-bubi'),
  ('opussu', 's.', 'm.', NULL, 'Cl. 3', 'juego', NULL, NULL, 'Español: juego', 'import-espanol-bubi'),
  ('etoleri', 's.', 'm.', NULL, 'Cl. 7', 'jueves', NULL, NULL, 'Español: jueves', 'import-espanol-bubi');

-- Lote 4 (entradas 1276 a 1300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buatébisapá', 's.', 'm.', NULL, 'Cl. 1', 'juez', NULL, NULL, 'Español: juez', 'import-espanol-bubi'),
  ('sipussu', 's.', 'm.', NULL, 'Cl. 12', 'juguete', NULL, NULL, 'Español: juguete', 'import-espanol-bubi'),
  ('koperi', 's.', 'm.', NULL, 'Cl. 9', 'juicio', NULL, NULL, 'Español: juicio', 'import-espanol-bubi'),
  ('bohokko', 's.', 'm.', NULL, 'Cl. 3', 'junco', NULL, NULL, 'Español: junco', 'import-espanol-bubi'),
  ('modadyá', 's.', 'm.', NULL, 'Cl. 3', 'junio', NULL, NULL, 'Español: junio', 'import-espanol-bubi'),
  ('okkáa', 'v.', NULL, NULL, NULL, 'juntar', NULL, NULL, 'Español: juntar', 'import-espanol-bubi'),
  ('bollo', 's.', 'm.', NULL, 'Cl. 3', 'juramento', NULL, NULL, 'Español: juramento', 'import-espanol-bubi'),
  ('karosíi', 's.', 'm.', NULL, 'Cl. 10', 'keroseno', NULL, NULL, 'Español: keroseno', 'import-espanol-bubi'),
  ('kilóo', 's.', 'm.', NULL, 'Cl. 9', 'kilo', NULL, NULL, 'Español: kilo', 'import-espanol-bubi'),
  ('ebebo', 's.', 'm.', NULL, 'Cl. 7', 'labio', NULL, NULL, 'Español: labio', 'import-espanol-bubi'),
  ('bolakóláko', 'adj.', NULL, NULL, 'Cl. 1', 'labrador', NULL, NULL, 'Español: labrador', 'import-espanol-bubi'),
  ('atée', 's.', 'm.', NULL, 'Cl. 7', 'lado', NULL, NULL, 'Español: lado', 'import-espanol-bubi'),
  ('ebóbba', 's.', 'm.', NULL, 'Cl. 7', 'ladrido', NULL, NULL, 'Español: ladrido', 'import-espanol-bubi'),
  ('húbbé', 's.', 'm.', NULL, 'Cl. 9', 'ladrón', NULL, NULL, 'Español: ladrón', 'import-espanol-bubi'),
  ('esolésóle', 's.', 'm.', NULL, 'Cl. 7', 'lagarto', NULL, NULL, 'Español: lagarto', 'import-espanol-bubi'),
  ('okoríbba', 's.', 'm.', NULL, 'Cl. 7', 'lago', NULL, NULL, 'Español: lago', 'import-espanol-bubi'),
  ('IObé''í', 's.', 'm.', NULL, 'Cl. 6', 'lamento', NULL, NULL, 'Español: lamento', 'import-espanol-bubi'),
  ('botyikka', 's.', 'f.', NULL, 'Cl. 3', 'lanza', NULL, NULL, 'Español: lanza', 'import-espanol-bubi'),
  ('tyilla', 'v.', NULL, NULL, NULL, 'largarse', NULL, NULL, 'Español: largarse', 'import-espanol-bubi'),
  ('to', 'adj.', NULL, NULL, 'Cl. 5', 'largo', NULL, NULL, 'Español: largo', 'import-espanol-bubi'),
  ('bohehé', 's.', 'f.', NULL, 'Cl. 3', 'laringe', NULL, NULL, 'Español: laringe', 'import-espanol-bubi'),
  ('bosuisuií', 's.', 'm.', NULL, 'Cl. 3', 'látigo', NULL, NULL, 'Español: látigo', 'import-espanol-bubi'),
  ('papabia', 'v.', NULL, NULL, NULL, 'latir', NULL, NULL, 'Español: latir', 'import-espanol-bubi'),
  ('looa', 's.', 'm.', NULL, 'Cl. 10', 'lavadero', NULL, NULL, 'Español: lavadero', 'import-espanol-bubi'),
  ('ooa', 'v.', NULL, NULL, NULL, 'lavar', NULL, NULL, 'Español: lavar', 'import-espanol-bubi');

-- Lote 5 (entradas 1301 a 1325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ehúto', 's.', 'm.', NULL, 'Cl. 7', 'lazo', NULL, NULL, 'Español: lazo', 'import-espanol-bubi'),
  ('mílikki', 's.', 'f.', NULL, 'Cl. 6', 'leche', NULL, NULL, 'Español: leche', 'import-espanol-bubi'),
  ('raatyé', 's.', 'm.', NULL, 'Cl. 5', 'lecho', NULL, NULL, 'Español: lecho', 'import-espanol-bubi'),
  ('bOsossa', 's.', 'm.', NULL, 'Cl. 1', 'lector', NULL, NULL, 'Español: lector', 'import-espanol-bubi'),
  ('tyiella', 'v.', NULL, NULL, NULL, 'legar', NULL, NULL, 'Español: legar', 'import-espanol-bubi'),
  ('tákkí', 's.', 'm.', NULL, 'Cl. 9', 'legislador', NULL, NULL, 'Español: legislador', 'import-espanol-bubi'),
  ('sotya', 'v.', NULL, NULL, NULL, 'legislar', NULL, NULL, 'Español: legislar', 'import-espanol-bubi'),
  ('orekka', 'adv.', NULL, NULL, NULL, 'lejano', NULL, NULL, 'Español: lejano', 'import-espanol-bubi'),
  ('orekka', 'adv.', NULL, NULL, NULL, 'lejos', NULL, NULL, 'Español: lejos', 'import-espanol-bubi'),
  ('bobotó', 'adj.', NULL, NULL, 'Cl. 3', 'lelo', NULL, NULL, 'Español: lelo', 'import-espanol-bubi'),
  ('lóórÍl', 's.', 'f.', NULL, NULL, 'leña', NULL, NULL, 'Español: leña', 'import-espanol-bubi'),
  ('obatta', 'adj.', NULL, NULL, 'Cl. 3', 'leproso', NULL, NULL, 'Español: leproso', 'import-espanol-bubi'),
  ('eletera', 's.', 'f.', NULL, 'Cl. 7', 'letra', NULL, NULL, 'Español: letra', 'import-espanol-bubi'),
  ('atya', 'v.', NULL, NULL, NULL, 'levantar', NULL, NULL, 'Español: levantar', 'import-espanol-bubi'),
  ('eette', 's.', 'f.', NULL, 'Cl. 7', 'ley', NULL, NULL, 'Español: ley', 'import-espanol-bubi'),
  ('boatta', 's.', 'f.', NULL, 'Cl. 3', 'leyenda', NULL, NULL, 'Español: leyenda', 'import-espanol-bubi'),
  ('petté', 's.', 'f.', NULL, 'Cl. 9', 'liana', NULL, NULL, 'Español: liana', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, 'liar', NULL, NULL, 'Español: liar', 'import-espanol-bubi'),
  ('ossa', 'v.', NULL, NULL, NULL, 'libar', NULL, NULL, 'Español: libar', 'import-espanol-bubi'),
  ('oburo', 's.', 'm.', NULL, 'Cl. 1', 'liberado', NULL, NULL, 'Español: liberado', 'import-espanol-bubi'),
  ('solla', 'v.', NULL, NULL, NULL, 'liberar', NULL, NULL, 'Español: liberar', 'import-espanol-bubi'),
  ('rihori', 's.', 'f.', NULL, 'Cl. 5', 'libertad', NULL, NULL, 'Español: libertad', 'import-espanol-bubi'),
  ('solla', 'v.', NULL, NULL, NULL, 'libertar', NULL, NULL, 'Español: libertar', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 4', 'libertino', NULL, NULL, 'Español: libertino', 'import-espanol-bubi'),
  ('sibúkku', 's.', 'm.', NULL, 'Cl. 12', 'librito', NULL, NULL, 'Español: librito', 'import-espanol-bubi');

-- Lote 6 (entradas 1326 a 1350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribúkku', 's.', 'm.', NULL, 'Cl. 5', 'libro', NULL, NULL, 'Español: libro', 'import-espanol-bubi'),
  ('koroko', 's.', 'm.', NULL, 'Cl. 10', 'licor', NULL, NULL, 'Español: licor', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, 'ligar', NULL, NULL, 'Español: ligar', 'import-espanol-bubi'),
  ('ekasso', 's.', 'm.', NULL, 'Cl. 7', 'ligero', NULL, NULL, 'Español: ligero', 'import-espanol-bubi'),
  ('buello', 's.', 'm.', NULL, 'Cl. 3', 'límite', NULL, NULL, 'Español: límite', 'import-espanol-bubi'),
  ('erem', 's.', 'm.', NULL, 'Cl. 7', 'limón', NULL, NULL, 'Español: limón', 'import-espanol-bubi'),
  ('barem', 's.', 'm.', NULL, 'Cl. 3', 'limonero', NULL, NULL, 'Español: limonero', 'import-espanol-bubi'),
  ('eheá', 's.', 'm.', NULL, 'Cl. 7', 'lío', NULL, NULL, 'Español: lío', 'import-espanol-bubi'),
  ('lotyoa', 's.', 'm.', NULL, 'Cl. 6', 'liquen', NULL, NULL, 'Español: liquen', 'import-espanol-bubi'),
  ('boppé', 's.', 'm.', NULL, 'Cl. 6', 'líquido', NULL, NULL, 'Español: líquido', 'import-espanol-bubi'),
  ('kuppá', 'adj.', NULL, NULL, 'Cl. 9', 'listo', NULL, NULL, 'Español: listo', 'import-espanol-bubi'),
  ('botátoo', 's.', 'm.', NULL, 'Cl. 3', 'listón', NULL, NULL, 'Español: listón', 'import-espanol-bubi'),
  ('tataúlo', 's.', 'm.', NULL, 'Cl. 9', 'litoral', NULL, NULL, 'Español: litoral', 'import-espanol-bubi'),
  ('lopopórera', 's.', 'm.', NULL, 'Cl. 11', 'llano', NULL, NULL, 'Español: llano', 'import-espanol-bubi'),
  ('palláa', 'v.', NULL, NULL, NULL, 'llegar', NULL, NULL, 'Español: llegar', 'import-espanol-bubi'),
  ('era', 'v.', NULL, NULL, NULL, 'llenar', NULL, NULL, 'Español: llenar', 'import-espanol-bubi'),
  ('alláa', 'v.', NULL, NULL, NULL, 'llevar', NULL, NULL, 'Español: llevar', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'm.', NULL, 'Cl. 9', 'loco', NULL, NULL, 'Español: loco', 'import-espanol-bubi'),
  ('etokkó', 's.', 'm.', NULL, 'Cl. 7', 'lodo', NULL, NULL, 'Español: lodo', 'import-espanol-bubi'),
  ('kM', 's.', 'm.', NULL, 'Cl. 9', 'loro', NULL, NULL, 'Español: loro', 'import-espanol-bubi'),
  ('obitábítta', 's.', 'm.', NULL, 'Cl. 1', 'luchador', NULL, NULL, 'Español: luchador', 'import-espanol-bubi'),
  ('buera', 'v.', NULL, NULL, NULL, 'lucir', NULL, NULL, 'Español: lucir', 'import-espanol-bubi'),
  ('sibélló', 'adv.', NULL, NULL, 'Cl. 12', 'luego', NULL, NULL, 'Español: luego', 'import-espanol-bubi'),
  ('eruua', 's.', 'm.', NULL, 'Cl. 7', 'lugar', NULL, NULL, 'Español: lugar', 'import-espanol-bubi'),
  ('loboa', 's.', 'm.', NULL, 'Cl. 11', 'lunar', NULL, NULL, 'Español: lunar', 'import-espanol-bubi');

-- Lote 7 (entradas 1351 a 1375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bokott', 's.', 'm.', NULL, 'Cl. 3', 'luto', NULL, NULL, 'Español: luto', 'import-espanol-bubi'),
  ('po''a', 's.', 'm.', NULL, 'Cl. 9', 'macaco', NULL, NULL, 'Español: macaco', 'import-espanol-bubi'),
  ('kékka', 'v.', NULL, NULL, NULL, 'macerar', NULL, NULL, 'Español: macerar', 'import-espanol-bubi'),
  ('isaké', 's.', 'm.', NULL, 'Cl. 5', 'machete', NULL, NULL, 'Español: machete', 'import-espanol-bubi'),
  ('bObbe', 's.', 'm.', NULL, 'Cl. 1', 'macho', NULL, NULL, 'Español: macho', 'import-espanol-bubi'),
  ('bobbe', 's.', 'm.', NULL, 'Cl. 1', 'machote', NULL, NULL, 'Español: machote', 'import-espanol-bubi'),
  ('rortó', 's.', 'm.', NULL, 'Cl. 5', 'macuto', NULL, NULL, 'Español: macuto', 'import-espanol-bubi'),
  ('hótta', 'v.', NULL, NULL, NULL, 'madurar', NULL, NULL, 'Español: madurar', 'import-espanol-bubi'),
  ('bue''iáa', 's.', 'm.', NULL, 'Cl. 1', 'maestro', NULL, NULL, 'Español: maestro', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'magnate', NULL, NULL, 'Español: magnate', 'import-espanol-bubi'),
  ('konno', 's.', 'm.', NULL, 'Cl. 9', 'maíz', NULL, NULL, 'Español: maíz', 'import-espanol-bubi'),
  ('ebbé', 's.', 'm.', NULL, 'Cl. 7', 'mal', NULL, NULL, 'Español: mal', 'import-espanol-bubi'),
  ('obé', 'adj.', NULL, NULL, NULL, 'mala', NULL, NULL, 'Español: mala', 'import-espanol-bubi'),
  ('ini', 's.', NULL, NULL, 'Cl. 3', 'maldición', NULL, NULL, 'Español: maldición', 'import-espanol-bubi'),
  ('bontyo', 's.', 'm.', NULL, 'Cl. 3', 'maleficio', NULL, NULL, 'Español: maleficio', 'import-espanol-bubi'),
  ('bosalábbe', 'adj.', NULL, NULL, 'Cl. 1', 'malhechor', NULL, NULL, 'Español: malhechor', 'import-espanol-bubi'),
  ('bosalábbe', 'adj.', NULL, NULL, 'Cl. 1', 'malicioso', NULL, NULL, 'Español: malicioso', 'import-espanol-bubi'),
  ('obé', 'adj.', NULL, NULL, NULL, 'malo', NULL, NULL, 'Español: malo', 'import-espanol-bubi'),
  ('poníssi', 's.', 'm.', NULL, 'Cl. 9', 'maltrato', NULL, NULL, 'Español: maltrato', 'import-espanol-bubi'),
  ('bOsalábbe', 'adj.', NULL, NULL, 'Cl. 1', 'malvado', NULL, NULL, 'Español: malvado', 'import-espanol-bubi'),
  ('enyankue', 's.', 'm.', NULL, 'Cl. 7', 'mamarracho', NULL, NULL, 'Español: mamarracho', 'import-espanol-bubi'),
  ('nokké', 's.', 'm.', NULL, 'Cl. 9', 'manantial', NULL, NULL, 'Español: manantial', 'import-espanol-bubi'),
  ('ke''ubbia', 'v.', NULL, NULL, NULL, 'manchar', NULL, NULL, 'Español: manchar', 'import-espanol-bubi'),
  ('ekukuna', 's.', 'm.', NULL, 'Cl. 7', 'manco', NULL, NULL, 'Español: manco', 'import-espanol-bubi'),
  ('lotóbbóo', 's.', 'm.', NULL, 'Cl. 4', 'mandamiento', NULL, NULL, 'Español: mandamiento', 'import-espanol-bubi');

-- Lote 8 (entradas 1376 a 1400)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('roáa', 's.', 'm.', NULL, 'Cl. 5', 'mango', NULL, NULL, 'Español: mango', 'import-espanol-bubi'),
  ('ehéri', 's.', 'm.', NULL, 'Cl. 7', 'manojo', NULL, NULL, 'Español: manojo', 'import-espanol-bubi'),
  ('eopaoppa', 's.', 'm.', NULL, 'Cl. 7', 'manto', NULL, NULL, 'Español: manto', 'import-espanol-bubi'),
  ('eápollo', 's.', 'f.', NULL, 'Cl. 7', 'manzana', NULL, NULL, 'Español: manzana', 'import-espanol-bubi'),
  ('elo''á', 's.', 'm.', NULL, 'Cl. 7', 'mar', NULL, NULL, 'Español: mar', 'import-espanol-bubi'),
  ('sityakalébbO', 's.', 'm.', NULL, 'Cl. 12', 'maraca', NULL, NULL, 'Español: maraca', 'import-espanol-bubi'),
  ('kelle', 's.', 'f.', NULL, 'Cl. 9', 'maravilla', NULL, NULL, 'Español: maravilla', 'import-espanol-bubi'),
  ('tyílláa', 'v.', NULL, NULL, NULL, 'marcharse', NULL, NULL, 'Español: marcharse', 'import-espanol-bubi'),
  ('lokolla', 'v.', NULL, NULL, NULL, 'marchitarse', NULL, NULL, 'Español: marchitarse', 'import-espanol-bubi'),
  ('epa''i', 's.', 'm.', NULL, 'Cl. 7', 'marco', NULL, NULL, 'Español: marco', 'import-espanol-bubi'),
  ('uálea', 'v.', NULL, NULL, NULL, 'marearse', NULL, NULL, 'Español: marearse', 'import-espanol-bubi'),
  ('boleké', 's.', 'm.', NULL, 'Cl. 3', 'mareo', NULL, NULL, 'Español: mareo', 'import-espanol-bubi'),
  ('bobbe', 's.', 'm.', NULL, 'Cl. 1', 'marido', NULL, NULL, 'Español: marido', 'import-espanol-bubi'),
  ('boobbe', 's.', 'm.', NULL, 'Cl. 1', 'marino', NULL, NULL, 'Español: marino', 'import-espanol-bubi'),
  ('eókOóko', 's.', 'f.', NULL, 'Cl. 7', 'mariposa', NULL, NULL, 'Español: mariposa', 'import-espanol-bubi'),
  ('eatyó', 's.', 'm.', NULL, 'Cl. 7', 'marisco', NULL, NULL, 'Español: marisco', 'import-espanol-bubi'),
  ('ribasso', 's.', 'm.', NULL, 'Cl. 5', 'mármol', NULL, NULL, 'Español: mármol', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'marrano', NULL, NULL, 'Español: marrano', 'import-espanol-bubi'),
  ('ilakka', 's.', 'm.', NULL, 'Cl. 5', 'martes', NULL, NULL, 'Español: martes', 'import-espanol-bubi'),
  ('ehámma', 's.', 'm.', NULL, 'Cl. 7', 'martillo', NULL, NULL, 'Español: martillo', 'import-espanol-bubi'),
  ('esuri', 's.', 'm.', NULL, 'Cl. 7', 'martirio', NULL, NULL, 'Español: martirio', 'import-espanol-bubi'),
  ('utaityi', 's.', 'm.', NULL, NULL, 'marzo', NULL, NULL, 'Español: marzo', 'import-espanol-bubi'),
  ('atyí', 'adv.', NULL, NULL, NULL, 'más', NULL, NULL, 'Español: más', 'import-espanol-bubi'),
  ('nótya', 'v.', NULL, NULL, NULL, 'mascar', NULL, NULL, 'Español: mascar', 'import-espanol-bubi'),
  ('bosopO', 's.', 'm.', NULL, 'Cl. 3', 'mástil', NULL, NULL, 'Español: mástil', 'import-espanol-bubi');

-- Lote 9 (entradas 1401 a 1425)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribállá', 's.', 'm.', NULL, 'Cl. 5', 'matrimonio', NULL, NULL, 'Español: matrimonio', 'import-espanol-bubi'),
  ('esubba', 's.', 'm.', NULL, 'Cl. 7', 'mayo', NULL, NULL, 'Español: mayo', 'import-espanol-bubi'),
  ('botyílé', 's.', 'm.', NULL, 'Cl. 1', 'mayor', NULL, NULL, 'Español: mayor', 'import-espanol-bubi'),
  ('ehámma', 's.', 'm.', NULL, 'Cl. 7', 'mazo', NULL, NULL, 'Español: mazo', 'import-espanol-bubi'),
  ('suua', 'v.', NULL, NULL, NULL, 'mecer', NULL, NULL, 'Español: mecer', 'import-espanol-bubi'),
  ('bolaUo', 's.', 'm.', NULL, 'Cl. 3', 'medicamento', NULL, NULL, 'Español: medicamento', 'import-espanol-bubi'),
  ('bOsella', 's.', 'm.', NULL, 'Cl. 1', 'médico', NULL, NULL, 'Español: médico', 'import-espanol-bubi'),
  ('buebue', 'adj.', NULL, NULL, NULL, 'mejor', NULL, NULL, 'Español: mejor', 'import-espanol-bubi'),
  ('ekómposi', 's.', 'm.', NULL, 'Cl. 7', 'mejunje', NULL, NULL, 'Español: mejunje', 'import-espanol-bubi'),
  ('obokkó', 's.', 'm.', NULL, 'Cl. 1', 'mellizo', NULL, NULL, 'Español: mellizo', 'import-espanol-bubi'),
  ('usólla', 'v.', NULL, NULL, NULL, 'mencionar', NULL, NULL, 'Español: mencionar', 'import-espanol-bubi'),
  ('bllÍtyíi', 'adj.', NULL, NULL, 'Cl. 1', 'menor', NULL, NULL, 'Español: menor', 'import-espanol-bubi'),
  ('bosossó', 's.', 'm.', NULL, 'Cl. 3', 'mensaje', NULL, NULL, 'Español: mensaje', 'import-espanol-bubi'),
  ('elobbo', 's.', 'm.', NULL, 'Cl. 7', 'menú', NULL, NULL, 'Español: menú', 'import-espanol-bubi'),
  ('siítyi', 's.', 'm.', NULL, 'Cl. 12', 'meñique', NULL, NULL, 'Español: meñique', 'import-espanol-bubi'),
  ('rótta', 's.', 'm.', NULL, 'Cl. 5', 'mercado', NULL, NULL, 'Español: mercado', 'import-espanol-bubi'),
  ('rioka', 's.', 'm.', NULL, 'Cl. 5', 'mérito', NULL, NULL, 'Español: mérito', 'import-espanol-bubi'),
  ('buéá', 's.', 'm.', NULL, 'Cl. 3', 'mes', NULL, NULL, 'Español: mes', 'import-espanol-bubi'),
  ('bohéle', 's.', 'm.', NULL, 'Cl. 3', 'metal', NULL, NULL, 'Español: metal', 'import-espanol-bubi'),
  ('pos', 'adj.', NULL, NULL, NULL, 'mi', NULL, NULL, 'Español: mi', 'import-espanol-bubi'),
  ('esáríi', 's.', 'm.', NULL, 'Cl. 7', 'miedo', NULL, NULL, 'Español: miedo', 'import-espanol-bubi'),
  ('ruetto', 's.', 'm.', NULL, 'Cl. 5', 'miércoles', NULL, NULL, 'Español: miércoles', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 3', 'mil', NULL, NULL, 'Español: mil', 'import-espanol-bubi'),
  ('eribolla', 's.', 'm.', NULL, 'Cl. 7', 'milagro', NULL, NULL, 'Español: milagro', 'import-espanol-bubi'),
  ('koppé', 's.', 'm.', NULL, 'Cl. 9', 'milano', NULL, NULL, 'Español: milano', 'import-espanol-bubi');

-- Lote 10 (entradas 1426 a 1450)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('obitábítta', 's.', 'm.', NULL, 'Cl. 1', 'militar', NULL, NULL, 'Español: militar', 'import-espanol-bubi'),
  ('lohahá', 's.', 'm.', NULL, 'Cl. 10', 'mimbre', NULL, NULL, 'Español: mimbre', 'import-espanol-bubi'),
  ('ritákko', 's.', 'm.', NULL, 'Cl. 5', 'ministerio', NULL, NULL, 'Español: ministerio', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'ministro', NULL, NULL, 'Español: ministro', 'import-espanol-bubi'),
  ('rekkí', 's.', 'm.', NULL, 'Cl. 5', 'mirador', NULL, NULL, 'Español: mirador', 'import-espanol-bubi'),
  ('pateri', 's.', 'm.', NULL, 'Cl. 9', 'misionero', NULL, NULL, 'Español: misionero', 'import-espanol-bubi'),
  ('bompilla', 's.', 'm.', NULL, 'Cl. 3', 'moco', NULL, NULL, 'Español: moco', 'import-espanol-bubi'),
  ('rihekka', 's.', 'm.', NULL, 'Cl. 5', 'modelo', NULL, NULL, 'Español: modelo', 'import-espanol-bubi'),
  ('buatébisapá', 's.', 'm.', NULL, 'Cl. 1', 'moderador', NULL, NULL, 'Español: moderador', 'import-espanol-bubi'),
  ('pobbá', 'v.', NULL, NULL, NULL, 'mofarse', NULL, NULL, 'Español: mofarse', 'import-espanol-bubi'),
  ('rikekko', 's.', 'm.', NULL, 'Cl. 5', 'moflete', NULL, NULL, 'Español: moflete', 'import-espanol-bubi'),
  ('si''a', 'v.', NULL, NULL, NULL, 'mojar', NULL, NULL, 'Español: mojar', 'import-espanol-bubi'),
  ('tétta', 'v.', NULL, NULL, NULL, 'moler', NULL, NULL, 'Español: moler', 'import-espanol-bubi'),
  ('tyipóbia', 'v.', NULL, NULL, NULL, 'molestar', NULL, NULL, 'Español: molestar', 'import-espanol-bubi'),
  ('etobbí', 'adj.', NULL, NULL, 'Cl. 7', 'molestón', NULL, NULL, 'Español: molestón', 'import-espanol-bubi'),
  ('lolóa', 's.', 'm.', NULL, 'Cl. 10', 'molino', NULL, NULL, 'Español: molino', 'import-espanol-bubi'),
  ('eatyó', 's.', 'm.', NULL, 'Cl. 7', 'molusco', NULL, NULL, 'Español: molusco', 'import-espanol-bubi'),
  ('sibélló', 's.', 'm.', NULL, 'Cl. 12', 'momentito', NULL, NULL, 'Español: momentito', 'import-espanol-bubi'),
  ('ebéló', 's.', 'm.', NULL, 'Cl. 7', 'momento', NULL, NULL, 'Español: momento', 'import-espanol-bubi'),
  ('bohítáari', 's.', 'm.', NULL, 'Cl. 1', 'monarca', NULL, NULL, 'Español: monarca', 'import-espanol-bubi'),
  ('po''a', 's.', 'm.', NULL, 'Cl. 9', 'mono', NULL, NULL, 'Español: mono', 'import-espanol-bubi'),
  ('enokonokko', 's.', 'm.', NULL, 'Cl. 7', 'monstruo', NULL, NULL, 'Español: monstruo', 'import-espanol-bubi'),
  ('loatya', 's.', 'm.', NULL, 'Cl. 5', 'montacarga', NULL, NULL, 'Español: montacarga', 'import-espanol-bubi'),
  ('eó', 's.', 'm.', NULL, 'Cl. 7', 'monte', NULL, NULL, 'Español: monte', 'import-espanol-bubi'),
  ('bouttyi', 's.', 'm.', NULL, 'Cl. 3', 'montículo', NULL, NULL, 'Español: montículo', 'import-espanol-bubi');

-- Lote 11 (entradas 1451 a 1475)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bouttyi', 's.', 'm.', NULL, 'Cl. 3', 'montón', NULL, NULL, 'Español: montón', 'import-espanol-bubi'),
  ('loátta', 'v.', NULL, NULL, NULL, 'morder', NULL, NULL, 'Español: morder', 'import-espanol-bubi'),
  ('eloátyi', 's.', 'm.', NULL, 'Cl. 7', 'mordisco', NULL, NULL, 'Español: mordisco', 'import-espanol-bubi'),
  ('rimpo', 's.', 'm.', NULL, 'Cl. 5', 'morro', NULL, NULL, 'Español: morro', 'import-espanol-bubi'),
  ('bornmátta', 's.', 'm.', NULL, 'Cl. 3', 'mortero', NULL, NULL, 'Español: mortero', 'import-espanol-bubi'),
  ('lobónó', 's.', 'm.', NULL, 'Cl. 12', 'mosquito', NULL, NULL, 'Español: mosquito', 'import-espanol-bubi'),
  ('tappáa', 'v.', NULL, NULL, NULL, 'mostrar', NULL, NULL, 'Español: mostrar', 'import-espanol-bubi'),
  ('sibOtyí', 's.', 'm.', NULL, 'Cl. 12', 'mote', NULL, NULL, 'Español: mote', 'import-espanol-bubi'),
  ('buikílla', 's.', 'm.', NULL, 'Cl. 3', 'movimiento', NULL, NULL, 'Español: movimiento', 'import-espanol-bubi'),
  ('boseseppe', 's.', 'm.', NULL, 'Cl. 1', 'mozo', NULL, NULL, 'Español: mozo', 'import-espanol-bubi'),
  ('bolábóbe', 's.', 'm.', NULL, 'Cl. 1', 'muchacho', NULL, NULL, 'Español: muchacho', 'import-espanol-bubi'),
  ('bíkébíke', 'adj.', NULL, NULL, NULL, 'mucho', NULL, NULL, 'Español: mucho', 'import-espanol-bubi'),
  ('hMmá', 's.', 'm.', NULL, 'Cl. 9', 'mudo', NULL, NULL, 'Español: mudo', 'import-espanol-bubi'),
  ('opelle', 'adj.', NULL, NULL, 'Cl. 3', 'mujeriego', NULL, NULL, 'Español: mujeriego', 'import-espanol-bubi'),
  ('buía', 's.', 'm.', NULL, 'Cl. 3', 'muladar', NULL, NULL, 'Español: muladar', 'import-espanol-bubi'),
  ('tyé', 's.', 'm.', NULL, 'Cl. 9', 'mundo', NULL, NULL, 'Español: mundo', 'import-espanol-bubi'),
  ('ritoperi', 's.', 'm.', NULL, 'Cl. 5', 'municipio', NULL, NULL, 'Español: municipio', 'import-espanol-bubi'),
  ('lokatte', 's.', 'm.', NULL, 'Cl. 10', 'murciélago', NULL, NULL, 'Español: murciélago', 'import-espanol-bubi'),
  ('enokosso', 's.', 'm.', NULL, 'Cl. 7', 'murmullo', NULL, NULL, 'Español: murmullo', 'import-espanol-bubi'),
  ('eteppe', 's.', 'm.', NULL, 'Cl. 7', 'muro', NULL, NULL, 'Español: muro', 'import-espanol-bubi'),
  ('neppí', 's.', 'm.', NULL, 'Cl. 9', 'músico', NULL, NULL, 'Español: músico', 'import-espanol-bubi'),
  ('lolló', 's.', 'm.', NULL, 'Cl. 6', 'muslo', NULL, NULL, 'Español: muslo', 'import-espanol-bubi'),
  ('ribieri', 's.', 'm.', NULL, 'Cl. 5', 'nacimiento', NULL, NULL, 'Español: nacimiento', 'import-espanol-bubi'),
  ('obe''a', 's.', 'm.', NULL, 'Cl. 1', 'nadador', NULL, NULL, 'Español: nadador', 'import-espanol-bubi'),
  ('koppáa', 's.', 'm.', NULL, 'Cl. 9', 'naipe', NULL, NULL, 'Español: naipe', 'import-espanol-bubi');

-- Lote 12 (entradas 1476 a 1500)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOrentya', 's.', 'm.', NULL, 'Cl. 3', 'naranjo', NULL, NULL, 'Español: naranjo', 'import-espanol-bubi'),
  ('lompo', 'adj.', NULL, NULL, 'Cl. 7', 'narigón', NULL, NULL, 'Español: narigón', 'import-espanol-bubi'),
  ('bOsabóatta', 's.', 'm.', NULL, 'Cl. 1', 'narrador', NULL, NULL, 'Español: narrador', 'import-espanol-bubi'),
  ('botyo', 'adj.', NULL, NULL, NULL, 'nativo', NULL, NULL, 'Español: nativo', 'import-espanol-bubi'),
  ('eutó', 's.', 'm.', NULL, 'Cl. 7', 'naufragio', NULL, NULL, 'Español: naufragio', 'import-espanol-bubi'),
  ('eaó', 's.', 'm.', NULL, 'Cl. 7', 'navajazo', NULL, NULL, 'Español: navajazo', 'import-espanol-bubi'),
  ('obe''a', 's.', 'm.', NULL, 'Cl. 1', 'navegador', NULL, NULL, 'Español: navegador', 'import-espanol-bubi'),
  ('sitímma', 's.', 'm.', NULL, 'Cl. 12', 'navío', NULL, NULL, 'Español: navío', 'import-espanol-bubi'),
  ('na''a', 'v.', NULL, NULL, NULL, 'necesitar', NULL, NULL, 'Español: necesitar', 'import-espanol-bubi'),
  ('seké', 's.', 'm.', NULL, 'Cl. 12', 'necio', NULL, NULL, 'Español: necio', 'import-espanol-bubi'),
  ('bísinessi', 's.', 'm.', NULL, 'Cl. 9', 'negocio', NULL, NULL, 'Español: negocio', 'import-espanol-bubi'),
  ('báa', 'v.', NULL, NULL, NULL, 'negociar', NULL, NULL, 'Español: negociar', 'import-espanol-bubi'),
  ('soláe', 's.', 'm.', NULL, 'Cl. 12', 'nene', NULL, NULL, 'Español: nene', 'import-espanol-bubi'),
  ('bOntyí', 's.', 'm.', NULL, 'Cl. 3', 'nervio', NULL, NULL, 'Español: nervio', 'import-espanol-bubi'),
  ('ekonko', 's.', 'm.', NULL, 'Cl. 7', 'neumático', NULL, NULL, 'Español: neumático', 'import-espanol-bubi'),
  ('bukká', 's.', 'm.', NULL, 'Cl. 3', 'nicho', NULL, NULL, 'Español: nicho', 'import-espanol-bubi'),
  ('rubóo', 's.', 'm.', NULL, 'Cl. 5', 'nido', NULL, NULL, 'Español: nido', 'import-espanol-bubi'),
  ('bollá', 's.', 'm.', NULL, 'Cl. 12', 'niño', NULL, NULL, 'Español: niño', 'import-espanol-bubi'),
  ('teppo', 's.', 'm.', NULL, 'Cl. 9', 'nivel', NULL, NULL, 'Español: nivel', 'import-espanol-bubi'),
  ('be''', 'v.', NULL, NULL, NULL, 'nivelar', NULL, NULL, 'Español: nivelar', 'import-espanol-bubi'),
  ('neg', 'adv.', NULL, NULL, NULL, 'no', NULL, NULL, 'Español: no', 'import-espanol-bubi'),
  ('bOitta', 's.', 'm.', NULL, 'Cl. 1', 'noble', NULL, NULL, 'Español: noble', 'import-espanol-bubi'),
  ('nonowé', 's.', 'm.', NULL, 'Cl. 9', 'nómada', NULL, NULL, 'Español: nómada', 'import-espanol-bubi'),
  ('usólla', 'v.', NULL, NULL, NULL, 'nombrar', NULL, NULL, 'Español: nombrar', 'import-espanol-bubi'),
  ('ílIa', 's.', 'm.', NULL, 'Cl. 5', 'nombre', NULL, NULL, 'Español: nombre', 'import-espanol-bubi');

-- Lote 13 (entradas 1501 a 1525)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('be''ia', 'v.', NULL, NULL, NULL, 'normalizar', NULL, NULL, 'Español: normalizar', 'import-espanol-bubi'),
  ('opuá', 'adv.', NULL, NULL, NULL, 'norte', NULL, NULL, 'Español: norte', 'import-espanol-bubi'),
  ('bohue', 's.', 'm.', NULL, 'Cl. 3', 'noticiario', NULL, NULL, 'Español: noticiario', 'import-espanol-bubi'),
  ('bolJá', 'v.', NULL, NULL, NULL, 'notificar', NULL, NULL, 'Español: notificar', 'import-espanol-bubi'),
  ('bosabóatta', 's.', 'm.', NULL, 'Cl. 1', 'novelero', NULL, NULL, 'Español: novelero', 'import-espanol-bubi'),
  ('bisidisiddi', 's.', 'm.', NULL, NULL, 'noviembre', NULL, NULL, 'Español: noviembre', 'import-espanol-bubi'),
  ('sipókkó', 's.', 'm.', NULL, 'Cl. 12', 'novillo', NULL, NULL, 'Español: novillo', 'import-espanol-bubi'),
  ('bona''ie', 's.', 'm.', NULL, 'Cl. 1', 'novio', NULL, NULL, 'Español: novio', 'import-espanol-bubi'),
  ('mmábba', 'v.', NULL, NULL, NULL, 'nublar', NULL, NULL, 'Español: nublar', 'import-espanol-bubi'),
  ('ehúto', 's.', 'm.', NULL, 'Cl. 7', 'nudo', NULL, NULL, 'Español: nudo', 'import-espanol-bubi'),
  ('áó', 'adj.', NULL, NULL, NULL, 'nuestro', NULL, NULL, 'Español: nuestro', 'import-espanol-bubi'),
  ('bohe', 'adj.', NULL, NULL, NULL, 'nueva', NULL, NULL, 'Español: nueva', 'import-espanol-bubi'),
  ('atyí', 'adv.', NULL, NULL, NULL, 'nuevamente', NULL, NULL, 'Español: nuevamente', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'nueve', NULL, NULL, 'Español: nueve', 'import-espanol-bubi'),
  ('katto', 's.', 'm.', NULL, 'Cl. 9', 'número', NULL, NULL, 'Español: número', 'import-espanol-bubi'),
  ('tyornrnaa', 'adv.', NULL, NULL, NULL, 'nunca', NULL, NULL, 'Español: nunca', 'import-espanol-bubi'),
  ('bópáa', 'v.', NULL, NULL, NULL, 'nutrir', NULL, NULL, 'Español: nutrir', 'import-espanol-bubi'),
  ('lollo', 's.', 'm.', NULL, 'Cl. 10', 'ñamal', NULL, NULL, 'Español: ñamal', 'import-espanol-bubi'),
  ('ello', 's.', 'm.', NULL, 'Cl. 7', 'ñame', NULL, NULL, 'Español: ñame', 'import-espanol-bubi'),
  ('elo''o', 'adj.', NULL, NULL, 'Cl. 7', 'ñoña', NULL, NULL, 'Español: ñoña', 'import-espanol-bubi'),
  ('elo''o', 'adj.', NULL, NULL, 'Cl. 7', 'ñoño', NULL, NULL, 'Español: ñoño', 'import-espanol-bubi'),
  ('Oálla', 'v.', NULL, NULL, NULL, 'obedecer', NULL, NULL, 'Español: obedecer', 'import-espanol-bubi'),
  ('dioaebbia', 'v.', NULL, NULL, NULL, 'objetar', NULL, NULL, 'Español: objetar', 'import-espanol-bubi'),
  ('eollé', 's.', 'm.', NULL, 'Cl. 7', 'objeto', NULL, NULL, 'Español: objeto', 'import-espanol-bubi'),
  ('fósibbia', 'v.', NULL, NULL, NULL, 'obligar', NULL, NULL, 'Español: obligar', 'import-espanol-bubi');

-- Lote 14 (entradas 1526 a 1550)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('elako', 's.', 'f.', NULL, 'Cl. 7', 'obra', NULL, NULL, 'Español: obra', 'import-espanol-bubi'),
  ('bókobia', 'v.', NULL, NULL, NULL, 'obrar', NULL, NULL, 'Español: obrar', 'import-espanol-bubi'),
  ('bolakoláko', 's.', 'm.', NULL, 'Cl. 1', 'obrero', NULL, NULL, 'Español: obrero', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 4', 'obsceno', NULL, NULL, 'Español: obsceno', 'import-espanol-bubi'),
  ('ityuheri', 's.', 'm.', NULL, 'Cl. 7', 'obsequio', NULL, NULL, 'Español: obsequio', 'import-espanol-bubi'),
  ('ekkáa', 'v.', NULL, NULL, NULL, 'observar', NULL, NULL, 'Español: observar', 'import-espanol-bubi'),
  ('olólló', 'adj.', NULL, NULL, NULL, 'obsoleto', NULL, NULL, 'Español: obsoleto', 'import-espanol-bubi'),
  ('esibbí', 's.', 'm.', NULL, 'Cl. 7', 'obstáculo', NULL, NULL, 'Español: obstáculo', 'import-espanol-bubi'),
  ('elo''á', 's.', 'm.', NULL, 'Cl. 7', 'océano', NULL, NULL, 'Español: océano', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'ochenta', NULL, NULL, 'Español: ochenta', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'ocho', NULL, NULL, 'Español: ocho', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'ochocientos', NULL, NULL, 'Español: ochocientos', 'import-espanol-bubi'),
  ('IOhebbó', 's.', 'm.', NULL, NULL, 'ocio', NULL, NULL, 'Español: ocio', 'import-espanol-bubi'),
  ('bulabulla', 's.', 'm.', NULL, 'Cl. 3', 'octubre', NULL, NULL, 'Español: octubre', 'import-espanol-bubi'),
  ('héttáa', 'v.', NULL, NULL, NULL, 'ocurrir', NULL, NULL, 'Español: ocurrir', 'import-espanol-bubi'),
  ('kooa', 'v.', NULL, NULL, NULL, 'odiar', NULL, NULL, 'Español: odiar', 'import-espanol-bubi'),
  ('ribolló', 's.', 'm.', NULL, 'Cl. 5', 'odio', NULL, NULL, 'Español: odio', 'import-espanol-bubi'),
  ('oríe', 'adv.', NULL, NULL, NULL, 'oeste', NULL, NULL, 'Español: oeste', 'import-espanol-bubi'),
  ('elako', 's.', 'm.', NULL, 'Cl. 7', 'oficio', NULL, NULL, 'Español: oficio', 'import-espanol-bubi'),
  ('páa', 'v.', NULL, NULL, NULL, 'ofrecer', NULL, NULL, 'Español: ofrecer', 'import-espanol-bubi'),
  ('enokoookko', 's.', 'm.', NULL, 'Cl. 7', 'ogro', NULL, NULL, 'Español: ogro', 'import-espanol-bubi'),
  ('lotóo', 's.', 'm.', NULL, 'Cl. 6', 'oído', NULL, NULL, 'Español: oído', 'import-espanol-bubi'),
  ('nokkó', 's.', 'm.', NULL, 'Cl. 9', 'ojo', NULL, NULL, 'Español: ojo', 'import-espanol-bubi'),
  ('biitá', 's.', 'm.', NULL, 'Cl. 6', 'óleo', NULL, NULL, 'Español: óleo', 'import-espanol-bubi'),
  ('hMmua', 'v.', NULL, NULL, NULL, 'oler', NULL, NULL, 'Español: oler', 'import-espanol-bubi');

-- Lote 15 (entradas 1551 a 1575)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('hMmuatella', 'v.', NULL, NULL, NULL, 'olfatear', NULL, NULL, 'Español: olfatear', 'import-espanol-bubi'),
  ('bompo', 's.', 'm.', NULL, 'Cl. 3', 'olfato', NULL, NULL, 'Español: olfato', 'import-espanol-bubi'),
  ('etéro', 's.', NULL, NULL, 'Cl. 7', 'olla', NULL, NULL, 'Español: olla', 'import-espanol-bubi'),
  ('bobbó', 's.', 'm.', NULL, 'Cl. 3', 'olor', NULL, NULL, 'Español: olor', 'import-espanol-bubi'),
  ('lebálla', 'v.', NULL, NULL, NULL, 'olvidar', NULL, NULL, 'Español: olvidar', 'import-espanol-bubi'),
  ('elebári', 's.', 'm.', NULL, 'Cl. 7', 'olvido', NULL, NULL, 'Español: olvido', 'import-espanol-bubi'),
  ('tyekkú', 's.', 'm.', NULL, 'Cl. 9', 'ombligo', NULL, NULL, 'Español: ombligo', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'once', NULL, NULL, 'Español: once', 'import-espanol-bubi'),
  ('tatáa', 'v.', NULL, NULL, NULL, 'operar', NULL, NULL, 'Español: operar', 'import-espanol-bubi'),
  ('bitta', 'v.', NULL, NULL, NULL, 'oprimir', NULL, NULL, 'Español: oprimir', 'import-espanol-bubi'),
  ('po''a', 's.', 'm.', NULL, 'Cl. 9', 'orangután', NULL, NULL, 'Español: orangután', 'import-espanol-bubi'),
  ('étta', 'v.', NULL, NULL, NULL, 'orar', NULL, NULL, 'Español: orar', 'import-espanol-bubi'),
  ('róhiáa', 's.', 'm.', NULL, 'Cl. 5', 'oratorio', NULL, NULL, 'Español: oratorio', 'import-espanol-bubi'),
  ('eette', 's.', 'f.', NULL, 'Cl. 7', 'orden', NULL, NULL, 'Español: orden', 'import-espanol-bubi'),
  ('bolekkia', 's.', 'm.', NULL, 'Cl. 1', 'organizador', NULL, NULL, 'Español: organizador', 'import-espanol-bubi'),
  ('lekkia', 'v.', NULL, NULL, NULL, 'organizar', NULL, NULL, 'Español: organizar', 'import-espanol-bubi'),
  ('eubé', 's.', 'm.', NULL, 'Cl. 7', 'órgano', NULL, NULL, 'Español: órgano', 'import-espanol-bubi'),
  ('ityokkó', 's.', 'm.', NULL, 'Cl. 5', 'orgullo', NULL, NULL, 'Español: orgullo', 'import-espanol-bubi'),
  ('huella', 'v.', NULL, NULL, NULL, 'orientar', NULL, NULL, 'Español: orientar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'orientador', NULL, NULL, 'Español: orientador', 'import-espanol-bubi'),
  ('ripúríi', 's.', 'm.', NULL, 'Cl. 5', 'origen', NULL, NULL, 'Español: origen', 'import-espanol-bubi'),
  ('tokká', 'v.', NULL, NULL, NULL, 'originar', NULL, NULL, 'Español: originar', 'import-espanol-bubi'),
  ('bahNneri', 's.', 'f.', NULL, 'Cl. 6', 'orina', NULL, NULL, 'Español: orina', 'import-espanol-bubi'),
  ('epó', 's.', 'm.', NULL, 'Cl. 7', 'orinal', NULL, NULL, 'Español: orinal', 'import-espanol-bubi'),
  ('hNnera', 'v.', NULL, NULL, NULL, 'orinar', NULL, NULL, 'Español: orinar', 'import-espanol-bubi');

-- Lote 16 (entradas 1576 a 1600)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('opúríi', 's.', 'm.', NULL, 'Cl. 1', 'oriundo', NULL, NULL, 'Español: oriundo', 'import-espanol-bubi'),
  ('pippa', 'v.', NULL, NULL, NULL, 'ornamentar', NULL, NULL, 'Español: ornamentar', 'import-espanol-bubi'),
  ('lopippo', 's.', 'm.', NULL, NULL, 'ornamento', NULL, NULL, 'Español: ornamento', 'import-espanol-bubi'),
  ('bOlollo', 's.', 'm.', NULL, 'Cl. 3', 'oro', NULL, NULL, 'Español: oro', 'import-espanol-bubi'),
  ('buenna', 's.', 'm.', NULL, 'Cl. 3', 'orzuelo', NULL, NULL, 'Español: orzuelo', 'import-espanol-bubi'),
  ('buelá', 'adj.', NULL, NULL, NULL, 'otra', NULL, NULL, 'Español: otra', 'import-espanol-bubi'),
  ('topiánna', 's.', 'm.', NULL, 'Cl. 9', 'ovario', NULL, NULL, 'Español: ovario', 'import-espanol-bubi'),
  ('bOátyera', 's.', 'm.', NULL, 'Cl. 1', 'oyente', NULL, NULL, 'Español: oyente', 'import-espanol-bubi'),
  ('lollá', 'v.', NULL, NULL, NULL, 'pacer', NULL, NULL, 'Español: pacer', 'import-espanol-bubi'),
  ('buatébisapá', 's.', 'm.', NULL, 'Cl. 1', 'pacificador', NULL, NULL, 'Español: pacificador', 'import-espanol-bubi'),
  ('ehattá', 's.', 'm.', NULL, 'Cl. 7', 'pacto', NULL, NULL, 'Español: pacto', 'import-espanol-bubi'),
  ('bOie', 's.', 'm.', NULL, 'Cl. 1', 'padre', NULL, NULL, 'Español: padre', 'import-espanol-bubi'),
  ('tyé', 's.', 'm.', NULL, 'Cl. 9', 'país', NULL, NULL, 'Español: país', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, NULL, 'paisano', NULL, NULL, 'Español: paisano', 'import-espanol-bubi'),
  ('sinorí', 's.', 'm.', NULL, 'Cl. 12', 'pájaro', NULL, NULL, 'Español: pájaro', 'import-espanol-bubi'),
  ('rihattá', 's.', 'm.', NULL, 'Cl. 5', 'palacio', NULL, NULL, 'Español: palacio', 'import-espanol-bubi'),
  ('eapaolla', 's.', 'm.', NULL, 'Cl. 7', 'paladar', NULL, NULL, 'Español: paladar', 'import-espanol-bubi'),
  ('bOtyo', 's.', 'm.', NULL, 'Cl. 1', 'paleto', NULL, NULL, 'Español: paleto', 'import-espanol-bubi'),
  ('buuko', 's.', 'm.', NULL, 'Cl. 3', 'palillo', NULL, NULL, 'Español: palillo', 'import-espanol-bubi'),
  ('buá', 'v.', NULL, NULL, NULL, 'palmar', NULL, NULL, 'Español: palmar', 'import-espanol-bubi'),
  ('bOabílla', 's.', 'm.', NULL, 'Cl. 3', 'palmeral', NULL, NULL, 'Español: palmeral', 'import-espanol-bubi'),
  ('Mtté', 's.', 'm.', NULL, 'Cl. 3', 'palo', NULL, NULL, 'Español: palo', 'import-espanol-bubi'),
  ('bi''ó', 's.', 'm.', NULL, NULL, 'paludismo', NULL, NULL, 'Español: paludismo', 'import-espanol-bubi'),
  ('borannó', 's.', 'm.', NULL, 'Cl. 1', 'pamue', NULL, NULL, 'Español: pamue', 'import-espanol-bubi'),
  ('isoppo', 's.', 'm.', NULL, 'Cl. 5', 'pan', NULL, NULL, 'Español: pan', 'import-espanol-bubi');

-- Lote 17 (entradas 1601 a 1625)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('elakka', 's.', 'm.', NULL, 'Cl. 7', 'panal', NULL, NULL, 'Español: panal', 'import-espanol-bubi'),
  ('sisoppo', 's.', 'm.', NULL, 'Cl. 12', 'panecillo', NULL, NULL, 'Español: panecillo', 'import-espanol-bubi'),
  ('kallá', 's.', 'm.', NULL, 'Cl. 9', 'pangolín', NULL, NULL, 'Español: pangolín', 'import-espanol-bubi'),
  ('esára', 's.', 'm.', NULL, 'Cl. 7', 'pánico', NULL, NULL, 'Español: pánico', 'import-espanol-bubi'),
  ('torosíssi', 's.', 'm.', NULL, 'Cl. 9', 'pantalón', NULL, NULL, 'Español: pantalón', 'import-espanol-bubi'),
  ('eribba', 's.', 'm.', NULL, 'Cl. 7', 'pantano', NULL, NULL, 'Español: pantano', 'import-espanol-bubi'),
  ('pisíssi', 's.', 'm.', NULL, 'Cl. 9', 'paño', NULL, NULL, 'Español: paño', 'import-espanol-bubi'),
  ('ankítya', 's.', 'm.', NULL, 'Cl. 7', 'pañuelo', NULL, NULL, 'Español: pañuelo', 'import-espanol-bubi'),
  ('ntá', 's.', 'm.', NULL, 'Cl. 1', 'papá', NULL, NULL, 'Español: papá', 'import-espanol-bubi'),
  ('koo', 's.', 'm.', NULL, 'Cl. 9', 'papagayo', NULL, NULL, 'Español: papagayo', 'import-espanol-bubi'),
  ('sinta', 's.', 'm.', NULL, 'Cl. 12', 'papel', NULL, NULL, 'Español: papel', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'paquete', NULL, NULL, 'Español: paquete', 'import-espanol-bubi'),
  ('esa''o', 's.', 'm.', NULL, 'Cl. 7', 'parabién', NULL, NULL, 'Español: parabién', 'import-espanol-bubi'),
  ('lobetté', 's.', 'm.', NULL, 'Cl. 11', 'paraguas', NULL, NULL, 'Español: paraguas', 'import-espanol-bubi'),
  ('lobetté', 's.', 'm.', NULL, NULL, 'parasol', NULL, NULL, 'Español: parasol', 'import-espanol-bubi'),
  ('etyíétyíé', 's.', 'm.', NULL, 'Cl. 7', 'parche', NULL, NULL, 'Español: parche', 'import-espanol-bubi'),
  ('tohám', 'adj.', NULL, NULL, 'Cl. 13', 'parecido', NULL, NULL, 'Español: parecido', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'pariente', NULL, NULL, 'Español: pariente', 'import-espanol-bubi'),
  ('bella', 'v.', NULL, NULL, NULL, 'parir', NULL, NULL, 'Español: parir', 'import-espanol-bubi'),
  ('pobba', 'v.', NULL, NULL, NULL, 'parlamentar', NULL, NULL, 'Español: parlamentar', 'import-espanol-bubi'),
  ('rihattá', 's.', 'm.', NULL, 'Cl. 5', 'parlamento', NULL, NULL, 'Español: parlamento', 'import-espanol-bubi'),
  ('to''óleri', 's.', 'm.', NULL, 'Cl. 9', 'parlanchín', NULL, NULL, 'Español: parlanchín', 'import-espanol-bubi'),
  ('to''ólla', 'v.', NULL, NULL, NULL, 'parlar', NULL, NULL, 'Español: parlar', 'import-espanol-bubi'),
  ('bokibakibba', 's.', 'm.', NULL, 'Cl. 3', 'paro', NULL, NULL, 'Español: paro', 'import-espanol-bubi'),
  ('buruburu', 's.', 'm.', NULL, 'Cl. 9', 'párpado', NULL, NULL, 'Español: párpado', 'import-espanol-bubi');

-- Lote 18 (entradas 1626 a 1650)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('kubbá', 's.', 'm.', NULL, 'Cl. 9', 'parque', NULL, NULL, 'Español: parque', 'import-espanol-bubi'),
  ('obera', 's.', 'm.', NULL, 'Cl. 1', 'partero', NULL, NULL, 'Español: partero', 'import-espanol-bubi'),
  ('tyílláa', 'v.', NULL, NULL, NULL, 'partir', NULL, NULL, 'Español: partir', 'import-espanol-bubi'),
  ('ribieri', 's.', 'm.', NULL, 'Cl. 5', 'parto', NULL, NULL, 'Español: parto', 'import-espanol-bubi'),
  ('boía', 's.', 'm.', NULL, 'Cl. 1', 'pasajero', NULL, NULL, 'Español: pasajero', 'import-espanol-bubi'),
  ('hettáa', 'v.', NULL, NULL, NULL, 'pasar', NULL, NULL, 'Español: pasar', 'import-espanol-bubi'),
  ('opussu', 's.', 'm.', NULL, 'Cl. 3', 'pasatiempo', NULL, NULL, 'Español: pasatiempo', 'import-espanol-bubi'),
  ('boetta', 's.', 'm.', NULL, 'Cl. 1', 'paseante', NULL, NULL, 'Español: paseante', 'import-espanol-bubi'),
  ('hokkáa', 'v.', NULL, NULL, NULL, 'pasear', NULL, NULL, 'Español: pasear', 'import-espanol-bubi'),
  ('wákka', 's.', 'm.', NULL, 'Cl. 3', 'paseo', NULL, NULL, 'Español: paseo', 'import-espanol-bubi'),
  ('atyálla', 'v.', NULL, NULL, NULL, 'pasmar', NULL, NULL, 'Español: pasmar', 'import-espanol-bubi'),
  ('telle', 's.', 'm.', NULL, 'Cl. 9', 'paso', NULL, NULL, 'Español: paso', 'import-espanol-bubi'),
  ('el', 's.', 'm.', NULL, 'Cl. 7', 'pasto', NULL, NULL, 'Español: pasto', 'import-espanol-bubi'),
  ('epatto', 's.', 'm.', NULL, 'Cl. 7', 'patio', NULL, NULL, 'Español: patio', 'import-espanol-bubi'),
  ('baetya', 's.', 'm.', NULL, 'Cl. 6', 'patizambo', NULL, NULL, 'Español: patizambo', 'import-espanol-bubi'),
  ('epotyopotyo', 's.', 'm.', NULL, 'Cl. 7', 'pato', NULL, NULL, 'Español: pato', 'import-espanol-bubi'),
  ('tyé', 's.', 'f.', NULL, 'Cl. 9', 'patria', NULL, NULL, 'Español: patria', 'import-espanol-bubi'),
  ('ka''ó', 's.', 'm.', NULL, 'Cl. 9', 'patrimonio', NULL, NULL, 'Español: patrimonio', 'import-espanol-bubi'),
  ('rnrnása', 's.', 'm.', NULL, 'Cl. 1', 'patrón', NULL, NULL, 'Español: patrón', 'import-espanol-bubi'),
  ('lohúa', 's.', 'f.', NULL, 'Cl. 11', 'patrulla', NULL, NULL, 'Español: patrulla', 'import-espanol-bubi'),
  ('sibólló', 'adj.', NULL, NULL, 'Cl. 12', 'paupérrimo', NULL, NULL, 'Español: paupérrimo', 'import-espanol-bubi'),
  ('nalle', 's.', 'm.', NULL, 'Cl. 9', 'pavimento', NULL, NULL, 'Español: pavimento', 'import-espanol-bubi'),
  ('etolótOló', 's.', 'm.', NULL, 'Cl. 7', 'pavo', NULL, NULL, 'Español: pavo', 'import-espanol-bubi'),
  ('esára', 's.', 'm.', NULL, 'Cl. 7', 'pavor', NULL, NULL, 'Español: pavor', 'import-espanol-bubi'),
  ('mmetya', 's.', 'm.', NULL, 'Cl. 1', 'payaso', NULL, NULL, 'Español: payaso', 'import-espanol-bubi');

-- Lote 19 (entradas 1651 a 1675)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boi''o', 's.', 'f.', NULL, 'Cl. 3', 'peca', NULL, NULL, 'Español: peca', 'import-espanol-bubi'),
  ('eheká', 's.', 'm.', NULL, 'Cl. 7', 'pedazo', NULL, NULL, 'Español: pedazo', 'import-espanol-bubi'),
  ('étta', 'v.', NULL, NULL, NULL, 'pedir', NULL, NULL, 'Español: pedir', 'import-espanol-bubi'),
  ('buítya', 's.', 'm.', NULL, 'Cl. 3', 'pedo', NULL, NULL, 'Español: pedo', 'import-espanol-bubi'),
  ('riatte', 's.', 'm.', NULL, 'Cl. 5', 'pedregal', NULL, NULL, 'Español: pedregal', 'import-espanol-bubi'),
  ('ite', 's.', 'm.', NULL, 'Cl. 5', 'pedrusco', NULL, NULL, 'Español: pedrusco', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'pegar', NULL, NULL, 'Español: pegar', 'import-espanol-bubi'),
  ('botyiori', 's.', 'm.', NULL, 'Cl. 3', 'peinado', NULL, NULL, 'Español: peinado', 'import-espanol-bubi'),
  ('etyiori', 's.', 'm.', NULL, 'Cl. 7', 'peine', NULL, NULL, 'Español: peine', 'import-espanol-bubi'),
  ('itolla', 'v.', NULL, NULL, NULL, 'pelar', NULL, NULL, 'Español: pelar', 'import-espanol-bubi'),
  ('bOlakka', 's.', 'm.', NULL, 'Cl. 3', 'peldaño', NULL, NULL, 'Español: peldaño', 'import-espanol-bubi'),
  ('botattá', 's.', 'm.', NULL, 'Cl. 3', 'pellejo', NULL, NULL, 'Español: pellejo', 'import-espanol-bubi'),
  ('sibíkinnó', 's.', 'm.', NULL, 'Cl. 13', 'pellizco', NULL, NULL, 'Español: pellizco', 'import-espanol-bubi'),
  ('ekokopíppo', 's.', 'm.', NULL, 'Cl. 7', 'pelmazo', NULL, NULL, 'Español: pelmazo', 'import-espanol-bubi'),
  ('loribáa', 's.', 'm.', NULL, 'Cl. 4', 'pelo', NULL, NULL, 'Español: pelo', 'import-espanol-bubi'),
  ('tyaróm', 's.', 'm.', NULL, 'Cl. 9', 'penal', NULL, NULL, 'Español: penal', 'import-espanol-bubi'),
  ('booppá', 's.', 'm.', NULL, 'Cl. 3', 'pene', NULL, NULL, 'Español: pene', 'import-espanol-bubi'),
  ('tálla', 'v.', NULL, NULL, NULL, 'penetrar', NULL, NULL, 'Español: penetrar', 'import-espanol-bubi'),
  ('bOtapánna', 's.', 'm.', NULL, 'Cl. 1', 'pensador', NULL, NULL, 'Español: pensador', 'import-espanol-bubi'),
  ('botapáeró', 's.', 'm.', NULL, 'Cl. 3', 'pensamiento', NULL, NULL, 'Español: pensamiento', 'import-espanol-bubi'),
  ('tapánna', 'v.', NULL, NULL, NULL, 'pensar', NULL, NULL, 'Español: pensar', 'import-espanol-bubi'),
  ('Oátyera', 'v.', NULL, NULL, NULL, 'percibir', NULL, NULL, 'Español: percibir', 'import-espanol-bubi'),
  ('ribbiáa', 'v.', NULL, NULL, NULL, 'perder', NULL, NULL, 'Español: perder', 'import-espanol-bubi'),
  ('bOnná', 's.', 'm.', NULL, 'Cl. 3', 'perdigón', NULL, NULL, 'Español: perdigón', 'import-espanol-bubi'),
  ('etyieri', 's.', 'm.', NULL, 'Cl. 7', 'perdón', NULL, NULL, 'Español: perdón', 'import-espanol-bubi');

-- Lote 20 (entradas 1676 a 1700)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tyiálella', 'v.', NULL, NULL, NULL, 'perdonar', NULL, NULL, 'Español: perdonar', 'import-espanol-bubi'),
  ('oppa', 'v.', NULL, NULL, NULL, 'perdurar', NULL, NULL, 'Español: perdurar', 'import-espanol-bubi'),
  ('buá', 'v.', NULL, NULL, NULL, 'perecer', NULL, NULL, 'Español: perecer', 'import-espanol-bubi'),
  ('boríbáa', 's.', 'm.', NULL, 'Cl. 1', 'peregrino', NULL, NULL, 'Español: peregrino', 'import-espanol-bubi'),
  ('eeppé', 's.', 'm.', NULL, 'Cl. 7', 'perezoso', NULL, NULL, 'Español: perezoso', 'import-espanol-bubi'),
  ('butólla', 'v.', NULL, NULL, NULL, 'perforar', NULL, NULL, 'Español: perforar', 'import-espanol-bubi'),
  ('hakkiáa', 'v.', NULL, NULL, NULL, 'perfumar', NULL, NULL, 'Español: perfumar', 'import-espanol-bubi'),
  ('senti', 's.', 'm.', NULL, 'Cl. 12', 'perfume', NULL, NULL, 'Español: perfume', 'import-espanol-bubi'),
  ('ebelló', 's.', 'm.', NULL, 'Cl. 7', 'periodo', NULL, NULL, 'Español: periodo', 'import-espanol-bubi'),
  ('to''ú', 's.', 'm.', NULL, 'Cl. 13', 'permiso', NULL, NULL, 'Español: permiso', 'import-espanol-bubi'),
  ('puá', 's.', 'm.', NULL, 'Cl. 9', 'perro', NULL, NULL, 'Español: perro', 'import-espanol-bubi'),
  ('rite''í', 's.', 'm.', NULL, 'Cl. 5', 'pésame', NULL, NULL, 'Español: pésame', 'import-espanol-bubi'),
  ('wéánna', 'v.', NULL, NULL, NULL, 'pesar', NULL, NULL, 'Español: pesar', 'import-espanol-bubi'),
  ('tyué', 's.', 'm.', NULL, 'Cl. 9', 'pescado', NULL, NULL, 'Español: pescado', 'import-espanol-bubi'),
  ('boobbe', 's.', 'm.', NULL, 'Cl. 1', 'pescador', NULL, NULL, 'Español: pescador', 'import-espanol-bubi'),
  ('lobbáa', 'v.', NULL, NULL, NULL, 'pescar', NULL, NULL, 'Español: pescar', 'import-espanol-bubi'),
  ('boritto', 's.', 'm.', NULL, 'Cl. 3', 'peso', NULL, NULL, 'Español: peso', 'import-espanol-bubi'),
  ('karosíi', 's.', 'm.', NULL, 'Cl. 10', 'petróleo', NULL, NULL, 'Español: petróleo', 'import-espanol-bubi'),
  ('tyué', 's.', 'm.', NULL, 'Cl. 9', 'pez', NULL, NULL, 'Español: pez', 'import-espanol-bubi'),
  ('bosósó', 's.', 'm.', NULL, 'Cl. 3', 'pezón', NULL, NULL, 'Español: pezón', 'import-espanol-bubi'),
  ('e''e', 's.', 'f.', NULL, 'Cl. 7', 'pezuña', NULL, NULL, 'Español: pezuña', 'import-espanol-bubi'),
  ('bolláa', 'v.', NULL, NULL, NULL, 'piar', NULL, NULL, 'Español: piar', 'import-espanol-bubi'),
  ('botyikka', 's.', 'f.', NULL, 'Cl. 3', 'pica', NULL, NULL, 'Español: pica', 'import-espanol-bubi'),
  ('siokollo', 's.', 'm.', NULL, 'Cl. 12', 'picante', NULL, NULL, 'Español: picante', 'import-espanol-bubi'),
  ('esií', 's.', 'f.', NULL, 'Cl. 7', 'picardía', NULL, NULL, 'Español: picardía', 'import-espanol-bubi');

-- Lote 21 (entradas 1701 a 1725)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bosií', 'adj.', NULL, NULL, 'Cl. 1', 'pícaro', NULL, NULL, 'Español: pícaro', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'f.', NULL, 'Cl. 11', 'picazón', NULL, NULL, 'Español: picazón', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'm.', NULL, 'Cl. 3', 'picor', NULL, NULL, 'Español: picor', 'import-espanol-bubi'),
  ('rikotto', 's.', 'm.', NULL, 'Cl. 5', 'pie', NULL, NULL, 'Español: pie', 'import-espanol-bubi'),
  ('ite', 's.', 'f.', NULL, 'Cl. 5', 'piedra', NULL, NULL, 'Español: piedra', 'import-espanol-bubi'),
  ('elolló', 's.', 'm.', NULL, 'Cl. 7', 'pienso', NULL, NULL, 'Español: pienso', 'import-espanol-bubi'),
  ('ebabé', 's.', 'f.', NULL, 'Cl. 7', 'pieza', NULL, NULL, 'Español: pieza', 'import-espanol-bubi'),
  ('epatyí', 's.', 'f.', NULL, 'Cl. 7', 'pila', NULL, NULL, 'Español: pila', 'import-espanol-bubi'),
  ('eho''o', 's.', 'm.', NULL, 'Cl. 7', 'pilar', NULL, NULL, 'Español: pilar', 'import-espanol-bubi'),
  ('esussa', 's.', 'm.', NULL, 'Cl. 7', 'pillo', NULL, NULL, 'Español: pillo', 'import-espanol-bubi'),
  ('eokollo', 's.', 'm.', NULL, 'Cl. 7', 'pimiento', NULL, NULL, 'Español: pimiento', 'import-espanol-bubi'),
  ('pitta', 'v.', NULL, NULL, NULL, 'pintar', NULL, NULL, 'Español: pintar', 'import-espanol-bubi'),
  ('opeppa', 's.', 'm.', NULL, 'Cl. 1', 'pintor', NULL, NULL, 'Español: pintor', 'import-espanol-bubi'),
  ('pena', 's.', 'f.', NULL, 'Cl. 9', 'pintura', NULL, NULL, 'Español: pintura', 'import-espanol-bubi'),
  ('bOakki', 's.', 'm.', NULL, 'Cl. 3', 'piojo', NULL, NULL, 'Español: piojo', 'import-espanol-bubi'),
  ('bookátta', 's.', 'm.', NULL, 'Cl. 1', 'pionero', NULL, NULL, 'Español: pionero', 'import-espanol-bubi'),
  ('kunnú', 's.', 'f.', NULL, 'Cl. 9', 'piragua', NULL, NULL, 'Español: piragua', 'import-espanol-bubi'),
  ('bOlóppa', 's.', 'm.', NULL, 'Cl. 1', 'pirómano', NULL, NULL, 'Español: pirómano', 'import-espanol-bubi'),
  ('ritolállo', 's.', 'm.', NULL, 'Cl. 5', 'piropo', NULL, NULL, 'Español: piropo', 'import-espanol-bubi'),
  ('binenna', 'v.', NULL, NULL, NULL, 'pisar', NULL, NULL, 'Español: pisar', 'import-espanol-bubi'),
  ('itella', 'v.', NULL, NULL, NULL, 'pisotear', NULL, NULL, 'Español: pisotear', 'import-espanol-bubi'),
  ('bosekka', 's.', 'f.', NULL, 'Cl. 3', 'pista', NULL, NULL, 'Español: pista', 'import-espanol-bubi'),
  ('sikkiáa', 's.', 'm.', NULL, 'Cl. 12', 'pitillo', NULL, NULL, 'Español: pitillo', 'import-espanol-bubi'),
  ('botuttú', 's.', 'm.', NULL, 'Cl. 3', 'pito', NULL, NULL, 'Español: pito', 'import-espanol-bubi'),
  ('erukurukku', 's.', 'm.', NULL, 'Cl. 7', 'pitón', NULL, NULL, 'Español: pitón', 'import-espanol-bubi');

-- Lote 22 (entradas 1726 a 1750)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rimmammabi''o', 's.', 'm.', NULL, 'Cl. 5', 'placer', NULL, NULL, 'Español: placer', 'import-espanol-bubi'),
  ('haíara', 'v.', NULL, NULL, NULL, 'planchar', NULL, NULL, 'Español: planchar', 'import-espanol-bubi'),
  ('eppa', 'v.', NULL, NULL, NULL, 'plantar', NULL, NULL, 'Español: plantar', 'import-espanol-bubi'),
  ('rikobbe', 's.', 'm.', NULL, 'Cl. 6', 'platanero', NULL, NULL, 'Español: platanero', 'import-espanol-bubi'),
  ('bokobbe', 's.', 'm.', NULL, 'Cl. 3', 'plátano', NULL, NULL, 'Español: plátano', 'import-espanol-bubi'),
  ('tO''ólla', 'v.', NULL, NULL, NULL, 'platicar', NULL, NULL, 'Español: platicar', 'import-espanol-bubi'),
  ('ehá', 's.', 'm.', NULL, 'Cl. 7', 'plato', NULL, NULL, 'Español: plato', 'import-espanol-bubi'),
  ('ebéló', 's.', 'm.', NULL, 'Cl. 7', 'plazo', NULL, NULL, 'Español: plazo', 'import-espanol-bubi'),
  ('lobárí', 's.', 'm.', NULL, NULL, 'pleito', NULL, NULL, 'Español: pleito', 'import-espanol-bubi'),
  ('epépo', 's.', 'm.', NULL, 'Cl. 7', 'pliego', NULL, NULL, 'Español: pliego', 'import-espanol-bubi'),
  ('bosotte', 's.', 'm.', NULL, 'Cl. 3', 'plomo', NULL, NULL, 'Español: plomo', 'import-espanol-bubi'),
  ('eriia', 's.', 'm.', NULL, 'Cl. 7', 'poblado', NULL, NULL, 'Español: poblado', 'import-espanol-bubi'),
  ('sibólló', 's.', 'm.', NULL, 'Cl. 12', 'pobre', NULL, NULL, 'Español: pobre', 'import-espanol-bubi'),
  ('beóo', 's.', 'm.', NULL, NULL, 'pocos', NULL, NULL, 'Español: pocos', 'import-espanol-bubi'),
  ('in', 's.', NULL, NULL, 'Cl. 13', 'podar', NULL, NULL, 'Español: podar', 'import-espanol-bubi'),
  ('bobó', 'adj.', NULL, NULL, NULL, 'poderoso', NULL, NULL, 'Español: poderoso', 'import-espanol-bubi'),
  ('eporoporo', 's.', 'm.', NULL, 'Cl. 7', 'policía', NULL, NULL, 'Español: policía', 'import-espanol-bubi'),
  ('ko''e', 's.', 'm.', NULL, 'Cl. 9', 'pollo', NULL, NULL, 'Español: pollo', 'import-espanol-bubi'),
  ('bubuu', 's.', 'm.', NULL, 'Cl. 9', 'polvo', NULL, NULL, 'Español: polvo', 'import-espanol-bubi'),
  ('bolláa', 's.', 'm.', NULL, 'Cl. 1', 'portador', NULL, NULL, 'Español: portador', 'import-espanol-bubi'),
  ('inf', 's.', NULL, NULL, NULL, 'portar', NULL, NULL, 'Español: portar', 'import-espanol-bubi'),
  ('to''óleri', 's.', 'm.', NULL, 'Cl. 9', 'portavoz', NULL, NULL, 'Español: portavoz', 'import-espanol-bubi'),
  ('opotokkí', 'adj.', NULL, NULL, 'Cl. 1', 'portugués', NULL, NULL, 'Español: portugués', 'import-espanol-bubi'),
  ('bokkáa', 's.', 'm.', NULL, 'Cl. 1', 'poseedor', NULL, NULL, 'Español: poseedor', 'import-espanol-bubi'),
  ('okkáa', 'v.', NULL, NULL, NULL, 'poseer', NULL, NULL, 'Español: poseer', 'import-espanol-bubi');

-- Lote 23 (entradas 1751 a 1775)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bohiarnmó', 's.', 'm.', NULL, 'Cl. 1', 'poseso', NULL, NULL, 'Español: poseso', 'import-espanol-bubi'),
  ('erularulla', 's.', 'm.', NULL, 'Cl. 7', 'poso', NULL, NULL, 'Español: poso', 'import-espanol-bubi'),
  ('eho''ó', 's.', 'm.', NULL, 'Cl. 7', 'poste', NULL, NULL, 'Español: poste', 'import-espanol-bubi'),
  ('ro''ú', 'adj.', NULL, NULL, 'Cl. 13', 'potente', NULL, NULL, 'Español: potente', 'import-espanol-bubi'),
  ('ekórÍlposi', 's.', 'm.', NULL, 'Cl. 7', 'potingue', NULL, NULL, 'Español: potingue', 'import-espanol-bubi'),
  ('ossi', 's.', 'm.', NULL, 'Cl. 7', 'potro', NULL, NULL, 'Español: potro', 'import-espanol-bubi'),
  ('esessé', 's.', 'm.', NULL, 'Cl. 7', 'pozo', NULL, NULL, 'Español: pozo', 'import-espanol-bubi'),
  ('katto', 's.', 'm.', NULL, 'Cl. 9', 'precio', NULL, NULL, 'Español: precio', 'import-espanol-bubi'),
  ('etemtem', 's.', 'm.', NULL, 'Cl. 7', 'precipicio', NULL, NULL, 'Español: precipicio', 'import-espanol-bubi'),
  ('bookátta', 's.', 'm.', NULL, 'Cl. 1', 'precursor', NULL, NULL, 'Español: precursor', 'import-espanol-bubi'),
  ('bosabóatta', 's.', 'm.', NULL, 'Cl. 1', 'predicador', NULL, NULL, 'Español: predicador', 'import-espanol-bubi'),
  ('takkáa', 'v.', NULL, NULL, NULL, 'predominar', NULL, NULL, 'Español: predominar', 'import-espanol-bubi'),
  ('lobóllo', 's.', 'm.', NULL, 'Cl. 11', 'pregón', NULL, NULL, 'Español: pregón', 'import-espanol-bubi'),
  ('íha', 'v.', NULL, NULL, NULL, 'preguntar', NULL, NULL, 'Español: preguntar', 'import-espanol-bubi'),
  ('buihéro', 's.', 'm.', NULL, 'Cl. 1', 'preguntón', NULL, NULL, 'Español: preguntón', 'import-espanol-bubi'),
  ('riobbo', 's.', 'm.', NULL, 'Cl. 5', 'premio', NULL, NULL, 'Español: premio', 'import-espanol-bubi'),
  ('uolla', 'v.', NULL, NULL, NULL, 'preparar', NULL, NULL, 'Español: preparar', 'import-espanol-bubi'),
  ('etyotyo', 's.', 'm.', NULL, 'Cl. 7', 'prepucio', NULL, NULL, 'Español: prepucio', 'import-espanol-bubi'),
  ('bélla', 'v.', NULL, NULL, NULL, 'presentar', NULL, NULL, 'Español: presentar', 'import-espanol-bubi'),
  ('botákityé', 's.', 'm.', NULL, 'Cl. 1', 'presidente', NULL, NULL, 'Español: presidente', 'import-espanol-bubi'),
  ('bOtyelemán', 's.', 'm.', NULL, 'Cl. 1', 'presidiario', NULL, NULL, 'Español: presidiario', 'import-espanol-bubi'),
  ('tyaróm', 's.', 'm.', NULL, 'Cl. 9', 'presidio', NULL, NULL, 'Español: presidio', 'import-espanol-bubi'),
  ('botyelemán', 's.', 'm.', NULL, 'Cl. 1', 'preso', NULL, NULL, 'Español: preso', 'import-espanol-bubi'),
  ('ebotto', 's.', 'm.', NULL, 'Cl. 7', 'pretexto', NULL, NULL, 'Español: pretexto', 'import-espanol-bubi'),
  ('laotyalaotya', 'adv.', NULL, NULL, NULL, 'primeramente', NULL, NULL, 'Español: primeramente', 'import-espanol-bubi');

-- Lote 24 (entradas 1776 a 1800)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bObelle', 's.', 'm.', NULL, 'Cl. 1', 'primo', NULL, NULL, 'Español: primo', 'import-espanol-bubi'),
  ('eotya', 's.', 'm.', NULL, 'Cl. 7', 'primogénito', NULL, NULL, 'Español: primogénito', 'import-espanol-bubi'),
  ('haotya', 's.', 'm.', NULL, NULL, 'principio', NULL, NULL, 'Español: principio', 'import-espanol-bubi'),
  ('bOtyelemán', 's.', 'm.', NULL, 'Cl. 1', 'prisionero', NULL, NULL, 'Español: prisionero', 'import-espanol-bubi'),
  ('epallo', 's.', 'm.', NULL, 'Cl. 7', 'problema', NULL, NULL, 'Español: problema', 'import-espanol-bubi'),
  ('kelle', 's.', 'm.', NULL, 'Cl. 9', 'prodigio', NULL, NULL, 'Español: prodigio', 'import-espanol-bubi'),
  ('bue''iáa', 's.', 'm.', NULL, 'Cl. 1', 'profesor', NULL, NULL, 'Español: profesor', 'import-espanol-bubi'),
  ('ekasso', 'adj.', NULL, NULL, 'Cl. 7', 'pronto', NULL, NULL, 'Español: pronto', 'import-espanol-bubi'),
  ('botapáero', 's.', 'm.', NULL, 'Cl. 3', 'propósito', NULL, NULL, 'Español: propósito', 'import-espanol-bubi'),
  ('nonowé', 's.', 'm.', NULL, 'Cl. 9', 'proscrito', NULL, NULL, 'Español: proscrito', 'import-espanol-bubi'),
  ('kobbe', 's.', 'm.', NULL, 'Cl. 9', 'protagonista', NULL, NULL, 'Español: protagonista', 'import-espanol-bubi'),
  ('bulla', 'v.', NULL, NULL, NULL, 'proteger', NULL, NULL, 'Español: proteger', 'import-espanol-bubi'),
  ('puella', 'v.', NULL, NULL, NULL, 'provenir', NULL, NULL, 'Español: provenir', 'import-espanol-bubi'),
  ('pe''o', 's.', 'm.', NULL, 'Cl. 9', 'proverbio', NULL, NULL, 'Español: proverbio', 'import-espanol-bubi'),
  ('lehea', 'v.', NULL, NULL, NULL, 'provocar', NULL, NULL, 'Español: provocar', 'import-espanol-bubi'),
  ('bOnná', 's.', 'm.', NULL, 'Cl. 3', 'proyectil', NULL, NULL, 'Español: proyectil', 'import-espanol-bubi'),
  ('lopetyípetyíi', 's.', 'm.', NULL, 'Cl. 10', 'prurito', NULL, NULL, 'Español: prurito', 'import-espanol-bubi'),
  ('ise''e', 's.', 'm.', NULL, 'Cl. 5', 'pubis', NULL, NULL, 'Español: pubis', 'import-espanol-bubi'),
  ('lobólla', 'v.', NULL, NULL, NULL, 'publicar', NULL, NULL, 'Español: publicar', 'import-espanol-bubi'),
  ('húúa', 's.', 'm.', NULL, 'Cl. 10', 'público', NULL, NULL, 'Español: público', 'import-espanol-bubi'),
  ('etéIÍl', 's.', 'm.', NULL, 'Cl. 7', 'puchero', NULL, NULL, 'Español: puchero', 'import-espanol-bubi'),
  ('bora', 'v.', NULL, NULL, NULL, 'pudrir', NULL, NULL, 'Español: pudrir', 'import-espanol-bubi'),
  ('siriia', 's.', 'm.', NULL, NULL, 'pueblecito', NULL, NULL, 'Español: pueblecito', 'import-espanol-bubi'),
  ('eriia', 's.', 'm.', NULL, 'Cl. 7', 'pueblo', NULL, NULL, 'Español: pueblo', 'import-espanol-bubi'),
  ('ré''óo', 's.', 'm.', NULL, 'Cl. 5', 'puente', NULL, NULL, 'Español: puente', 'import-espanol-bubi');

-- Lote 25 (entradas 1801 a 1825)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'puerco', NULL, NULL, 'Español: puerco', 'import-espanol-bubi'),
  ('epa''á', 's.', 'm.', NULL, 'Cl. 7', 'puercoespín', NULL, NULL, 'Español: puercoespín', 'import-espanol-bubi'),
  ('bookuallo', 's.', 'm.', NULL, 'Cl. 3', 'puerto', NULL, NULL, 'Español: puerto', 'import-espanol-bubi'),
  ('eruua', 's.', 'm.', NULL, 'Cl. 7', 'puesto', NULL, NULL, 'Español: puesto', 'import-espanol-bubi'),
  ('boóte', 's.', 'm.', NULL, 'Cl. 3', 'pulgar', NULL, NULL, 'Español: pulgar', 'import-espanol-bubi'),
  ('boilolla', 's.', 'm.', NULL, 'Cl. 1', 'pulidor', NULL, NULL, 'Español: pulidor', 'import-espanol-bubi'),
  ('ehulahúla', 's.', 'm.', NULL, 'Cl. 7', 'pulmón', NULL, NULL, 'Español: pulmón', 'import-espanol-bubi'),
  ('lopóppo', 's.', 'm.', NULL, 'Cl. 10', 'pulpo', NULL, NULL, 'Español: pulpo', 'import-espanol-bubi'),
  ('ripétyóo', 's.', 'm.', NULL, 'Cl. 5', 'puntal', NULL, NULL, 'Español: puntal', 'import-espanol-bubi'),
  ('rikottó', 's.', 'm.', NULL, 'Cl. 5', 'puntapié', NULL, NULL, 'Español: puntapié', 'import-espanol-bubi'),
  ('ityotyo', 's.', 'm.', NULL, 'Cl. 5', 'puñado', NULL, NULL, 'Español: puñado', 'import-espanol-bubi'),
  ('rikottó', 's.', 'm.', NULL, 'Cl. 5', 'puñetazo', NULL, NULL, 'Español: puñetazo', 'import-espanol-bubi'),
  ('rikottó', 's.', 'm.', NULL, 'Cl. 5', 'puño', NULL, NULL, 'Español: puño', 'import-espanol-bubi'),
  ('rusollo', 's.', 'm.', NULL, 'Cl. 5', 'purgante', NULL, NULL, 'Español: purgante', 'import-espanol-bubi'),
  ('boháo', 's.', 'm.', NULL, 'Cl. 3', 'pus', NULL, NULL, 'Español: pus', 'import-espanol-bubi'),
  ('ehólolló', 's.', 'm.', NULL, 'Cl. 7', 'puto', NULL, NULL, 'Español: puto', 'import-espanol-bubi'),
  ('botyappú', 's.', 'm.', NULL, 'Cl. 3', 'puterío', NULL, NULL, 'Español: puterío', 'import-espanol-bubi'),
  ('elakó', 's.', 'm.', NULL, 'Cl. 10', 'quehacer', NULL, NULL, 'Español: quehacer', 'import-espanol-bubi'),
  ('borutyo', 's.', 'm.', NULL, 'Cl. 3', 'quejido', NULL, NULL, 'Español: quejido', 'import-espanol-bubi'),
  ('bosepaseppa', 's.', 'm.', NULL, 'Cl. 1', 'quejón', NULL, NULL, 'Español: quejón', 'import-espanol-bubi'),
  ('tokka', 'v.', NULL, NULL, NULL, 'quemar', NULL, NULL, 'Español: quemar', 'import-espanol-bubi'),
  ('obálla', 'v.', NULL, NULL, NULL, 'querellarse', NULL, NULL, 'Español: querellarse', 'import-espanol-bubi'),
  ('hOlIáa', 'v.', NULL, NULL, NULL, 'querer', NULL, NULL, 'Español: querer', 'import-espanol-bubi'),
  ('ehólle', 's.', 'm.', NULL, 'Cl. 7', 'querido', NULL, NULL, 'Español: querido', 'import-espanol-bubi'),
  ('karosíi', 's.', 'm.', NULL, 'Cl. 10', 'queroseno', NULL, NULL, 'Español: queroseno', 'import-espanol-bubi');

-- Lote 26 (entradas 1826 a 1850)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('numo', 'adj.', NULL, NULL, NULL, 'quince', NULL, NULL, 'Español: quince', 'import-espanol-bubi'),
  ('láppo', 's.', 'm.', NULL, 'Cl. 9', 'quinqué', NULL, NULL, 'Español: quinqué', 'import-espanol-bubi'),
  ('boálla', 'v.', NULL, NULL, NULL, 'quitar', NULL, NULL, 'Español: quitar', 'import-espanol-bubi'),
  ('lobetté', 's.', 'm.', NULL, 'Cl. 10', 'quitasol', NULL, NULL, 'Español: quitasol', 'import-espanol-bubi'),
  ('metá', 'adv.', NULL, NULL, NULL, 'quizá', NULL, NULL, 'Español: quizá', 'import-espanol-bubi'),
  ('bosikké', 's.', 'm.', NULL, 'Cl. 3', 'rabo', NULL, NULL, 'Español: rabo', 'import-espanol-bubi'),
  ('rikikká', 's.', 'm.', NULL, 'Cl. 5', 'racimo', NULL, NULL, 'Español: racimo', 'import-espanol-bubi'),
  ('rietyó', 's.', 'm.', NULL, 'Cl. 5', 'raíl', NULL, NULL, 'Español: raíl', 'import-espanol-bubi'),
  ('ekerétta', 's.', 'm.', NULL, 'Cl. 7', 'rallador', NULL, NULL, 'Español: rallador', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 1', 'ramero', NULL, NULL, 'Español: ramero', 'import-espanol-bubi'),
  ('etabbé', 's.', 'm.', NULL, 'Cl. 7', 'ramo', NULL, NULL, 'Español: ramo', 'import-espanol-bubi'),
  ('sinópi', 's.', 'm.', NULL, 'Cl. 12', 'rape', NULL, NULL, 'Español: rape', 'import-espanol-bubi'),
  ('ebíla', 's.', 'm.', NULL, 'Cl. 7', 'raquis', NULL, NULL, 'Español: raquis', 'import-espanol-bubi'),
  ('ubolla', 'v.', NULL, NULL, NULL, 'rastrear', NULL, NULL, 'Español: rastrear', 'import-espanol-bubi'),
  ('obitya', 's.', 'm.', NULL, 'Cl. 3', 'ratón', NULL, NULL, 'Español: ratón', 'import-espanol-bubi'),
  ('sibitya', 's.', 'm.', NULL, 'Cl. 12', 'ratoncito', NULL, NULL, 'Español: ratoncito', 'import-espanol-bubi'),
  ('bOsotyi', 's.', 'm.', NULL, 'Cl. 3', 'rayo', NULL, NULL, 'Español: rayo', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', 'recado', NULL, NULL, 'Español: recado', 'import-espanol-bubi'),
  ('riturera', 's.', 'f.', NULL, 'Cl. 5', 'recepción', NULL, NULL, 'Español: recepción', 'import-espanol-bubi'),
  ('nakká', 'v.', NULL, NULL, NULL, 'rechazar', NULL, NULL, 'Español: rechazar', 'import-espanol-bubi'),
  ('ritáperi', 's.', 'm.', NULL, 'Cl. 5', 'recibidor', NULL, NULL, 'Español: recibidor', 'import-espanol-bubi'),
  ('ritáperi', 's.', 'm.', NULL, 'Cl. 5', 'recibimiento', NULL, NULL, 'Español: recibimiento', 'import-espanol-bubi'),
  ('isillo', 's.', 'm.', NULL, 'Cl. 5', 'recodo', NULL, NULL, 'Español: recodo', 'import-espanol-bubi'),
  ('ukka', 'v.', NULL, NULL, NULL, 'recoger', NULL, NULL, 'Español: recoger', 'import-espanol-bubi'),
  ('boulla', 's.', 'f.', NULL, 'Cl. 3', 'ecolecta', NULL, NULL, 'Español: ecolecta', 'import-espanol-bubi');

-- Lote 27 (entradas 1851 a 1875)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('betólla', 'v.', NULL, NULL, NULL, 'reconciliar', NULL, NULL, 'Español: reconciliar', 'import-espanol-bubi'),
  ('bosakóo', 's.', 'm.', NULL, 'Cl. 3', 'reconocimiento', NULL, NULL, 'Español: reconocimiento', 'import-espanol-bubi'),
  ('riettyi', 's.', 'm.', NULL, 'Cl. 5', 'recorrido', NULL, NULL, 'Español: recorrido', 'import-espanol-bubi'),
  ('eriko', 's.', 'm.', NULL, 'Cl. 7', 'recoveco', NULL, NULL, 'Español: recoveco', 'import-espanol-bubi'),
  ('esolló', 's.', 'm.', NULL, 'Cl. 7', 'recreo', NULL, NULL, 'Español: recreo', 'import-espanol-bubi'),
  ('buetákíó', 's.', 'm.', NULL, 'Cl. 1', 'rector', NULL, NULL, 'Español: rector', 'import-espanol-bubi'),
  ('bolebóri', 's.', 'm.', NULL, 'Cl. 3', 'recuerdo', NULL, NULL, 'Español: recuerdo', 'import-espanol-bubi'),
  ('riheleri', 's.', 'm.', NULL, 'Cl. 5', 'recurso', NULL, NULL, 'Español: recurso', 'import-espanol-bubi'),
  ('bi''í', 'adj.', NULL, NULL, NULL, 'redondo', NULL, NULL, 'Español: redondo', 'import-espanol-bubi'),
  ('sikkiáa', 'v.', NULL, NULL, NULL, 'reducir', NULL, NULL, 'Español: reducir', 'import-espanol-bubi'),
  ('bélla', 'v.', NULL, NULL, NULL, 'referir', NULL, NULL, 'Español: referir', 'import-espanol-bubi'),
  ('ebuerabuera', 's.', 'm.', NULL, 'Cl. 7', 'reflejo', NULL, NULL, 'Español: reflejo', 'import-espanol-bubi'),
  ('kesse', 's.', 'm.', NULL, 'Cl. 9', 'refrán', NULL, NULL, 'Español: refrán', 'import-espanol-bubi'),
  ('rileppo', 's.', 'm.', NULL, 'Cl. 5', 'refugio', NULL, NULL, 'Español: refugio', 'import-espanol-bubi'),
  ('bOtuhó', 's.', 'm.', NULL, 'Cl. 3', 'regalo', NULL, NULL, 'Español: regalo', 'import-espanol-bubi'),
  ('tówálla', 'v.', NULL, NULL, NULL, 'egañar', NULL, NULL, 'Español: egañar', 'import-espanol-bubi'),
  ('rekeri', 's.', 'm.', NULL, 'Cl. 5', 'régimen', NULL, NULL, 'Español: régimen', 'import-espanol-bubi'),
  ('hMmabi''o', 'v.', NULL, NULL, NULL, 'regocijarse', NULL, NULL, 'Español: regocijarse', 'import-espanol-bubi'),
  ('ehMmabi''o', 's.', 'm.', NULL, 'Cl. 7', 'regocijo', NULL, NULL, 'Español: regocijo', 'import-espanol-bubi'),
  ('rihóra', 's.', 'm.', NULL, 'Cl. 5', 'regreso', NULL, NULL, 'Español: regreso', 'import-espanol-bubi'),
  ('hella', 'v.', NULL, NULL, NULL, 'rehabilitar', NULL, NULL, 'Español: rehabilitar', 'import-espanol-bubi'),
  ('rihattá', 's.', 'm.', NULL, 'Cl. 5', 'reino', NULL, NULL, 'Español: reino', 'import-espanol-bubi'),
  ('ekasokasso', 's.', 'm.', NULL, 'Cl. 7', 'relámpago', NULL, NULL, 'Español: relámpago', 'import-espanol-bubi'),
  ('bOsossó', 's.', 'm.', NULL, 'Cl. 3', 'relato', NULL, NULL, 'Español: relato', 'import-espanol-bubi'),
  ('bososuella', 's.', 'm.', NULL, 'Cl. 1', 'relator', NULL, NULL, 'Español: relator', 'import-espanol-bubi');

-- Lote 28 (entradas 1876 a 1900)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('isutto', 's.', 'm.', NULL, 'Cl. 3', 'reloj', NULL, NULL, 'Español: reloj', 'import-espanol-bubi'),
  ('ribétto', 's.', 'm.', NULL, 'Cl. 5', 'remanso', NULL, NULL, 'Español: remanso', 'import-espanol-bubi'),
  ('bOlallo', 's.', 'm.', NULL, 'Cl. 3', 'remedio', NULL, NULL, 'Español: remedio', 'import-espanol-bubi'),
  ('bohella', 's.', 'm.', NULL, 'Cl. 1', 'remendador', NULL, NULL, 'Español: remendador', 'import-espanol-bubi'),
  ('kappí', 's.', 'm.', NULL, 'Cl. 9', 'remo', NULL, NULL, 'Español: remo', 'import-espanol-bubi'),
  ('susulla', 'v.', NULL, NULL, NULL, 'remolcar', NULL, NULL, 'Español: remolcar', 'import-espanol-bubi'),
  ('tukka', 'v.', NULL, NULL, NULL, 'remover', NULL, NULL, 'Español: remover', 'import-espanol-bubi'),
  ('peálla', 'v.', NULL, NULL, NULL, 'remunerar', NULL, NULL, 'Español: remunerar', 'import-espanol-bubi'),
  ('etuepópo', 's.', 'm.', NULL, 'Cl. 7', 'renacuajo', NULL, NULL, 'Español: renacuajo', 'import-espanol-bubi'),
  ('ribolló', 's.', 'm.', NULL, 'Cl. 5', 'rencor', NULL, NULL, 'Español: rencor', 'import-espanol-bubi'),
  ('buiko', 's.', 'm.', NULL, 'Cl. 3', 'reniego', NULL, NULL, 'Español: reniego', 'import-espanol-bubi'),
  ('esálero', 's.', 'm.', NULL, 'Cl. 7', 'renombre', NULL, NULL, 'Español: renombre', 'import-espanol-bubi'),
  ('boabba', 's.', 'm.', NULL, 'Cl. 1', 'repartidor', NULL, NULL, 'Español: repartidor', 'import-espanol-bubi'),
  ('abba', 'v.', NULL, NULL, NULL, 'repartir', NULL, NULL, 'Español: repartir', 'import-espanol-bubi'),
  ('riabbi', 's.', 'm.', NULL, 'Cl. 5', 'reparto', NULL, NULL, 'Español: reparto', 'import-espanol-bubi'),
  ('eleaeró', 's.', 'm.', NULL, 'Cl. 7', 'reposacabezas', NULL, NULL, 'Español: reposacabezas', 'import-espanol-bubi'),
  ('eheOOri', 's.', 'm.', NULL, 'Cl. 7', 'reposo', NULL, NULL, 'Español: reposo', 'import-espanol-bubi'),
  ('ooa', 'v.', NULL, NULL, NULL, 'reprobar', NULL, NULL, 'Español: reprobar', 'import-espanol-bubi'),
  ('akió', 's.', 'm.', NULL, 'Cl. 7', 'réprobo', NULL, NULL, 'Español: réprobo', 'import-espanol-bubi'),
  ('nebba', 's.', 'm.', NULL, 'Cl. 9', 'reptil', NULL, NULL, 'Español: reptil', 'import-espanol-bubi'),
  ('bosutta', 's.', 'm.', NULL, 'Cl. 3', 'resbalón', NULL, NULL, 'Español: resbalón', 'import-espanol-bubi'),
  ('suppiáa', 'v.', NULL, NULL, NULL, 'reservar', NULL, NULL, 'Español: reservar', 'import-espanol-bubi'),
  ('bohorÍ', 's.', 'm.', NULL, 'Cl. 3', 'resfriado', NULL, NULL, 'Español: resfriado', 'import-espanol-bubi'),
  ('biálla', 'v.', NULL, NULL, NULL, 'resistir', NULL, NULL, 'Español: resistir', 'import-espanol-bubi'),
  ('eléálo', 's.', 'm.', NULL, 'Cl. 7', 'respaldo', NULL, NULL, 'Español: respaldo', 'import-espanol-bubi');

-- Lote 29 (entradas 1901 a 1925)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOtó''ia', 's.', 'm.', NULL, 'Cl. 3', 'respeto', NULL, NULL, 'Español: respeto', 'import-espanol-bubi'),
  ('ekasokasso', 's.', 'm.', NULL, 'Cl. 7', 'resplandor', NULL, NULL, 'Español: resplandor', 'import-espanol-bubi'),
  ('bOettyi', 's.', 'm.', NULL, 'Cl. 3', 'resquicio', NULL, NULL, 'Español: resquicio', 'import-espanol-bubi'),
  ('iréi', 's.', 'm.', NULL, 'Cl. 5', 'restaurante', NULL, NULL, 'Español: restaurante', 'import-espanol-bubi'),
  ('eiábanna', 's.', 'm.', NULL, 'Cl. 7', 'resto', NULL, NULL, 'Español: resto', 'import-espanol-bubi'),
  ('luua', 's.', 'm.', NULL, 'Cl. 11', 'retal', NULL, NULL, 'Español: retal', 'import-espanol-bubi'),
  ('pisíssi', 's.', 'm.', NULL, 'Cl. 9', 'retazo', NULL, NULL, 'Español: retazo', 'import-espanol-bubi'),
  ('bó''a', 'v.', NULL, NULL, NULL, 'retirar', NULL, NULL, 'Español: retirar', 'import-espanol-bubi'),
  ('rileppo', 's.', 'm.', NULL, 'Cl. 5', 'retiro', NULL, NULL, 'Español: retiro', 'import-espanol-bubi'),
  ('ripe''u', 's.', 'm.', NULL, 'Cl. 5', 'retoño', NULL, NULL, 'Español: retoño', 'import-espanol-bubi'),
  ('esubari', 's.', 'm.', NULL, 'Cl. 7', 'retraso', NULL, NULL, 'Español: retraso', 'import-espanol-bubi'),
  ('ehánna', 's.', 'm.', NULL, 'Cl. 7', 'retrato', NULL, NULL, 'Español: retrato', 'import-espanol-bubi'),
  ('rioom', 's.', 'm.', NULL, 'Cl. 5', 'etrete', NULL, NULL, 'Español: etrete', 'import-espanol-bubi'),
  ('bokóso', 's.', 'f.', NULL, 'Cl. 3', 'reuma', NULL, NULL, 'Español: reuma', 'import-espanol-bubi'),
  ('eoperi', 's.', 'f.', NULL, 'Cl. 7', 'reunión', NULL, NULL, 'Español: reunión', 'import-espanol-bubi'),
  ('púbbia', 'v.', NULL, NULL, NULL, 'reventar', NULL, NULL, 'Español: reventar', 'import-espanol-bubi'),
  ('ebo', 's.', 'm.', NULL, 'Cl. 7', 'reverso', NULL, NULL, 'Español: reverso', 'import-espanol-bubi'),
  ('rihóteri', 's.', 'm.', NULL, 'Cl. 5', 'revés', NULL, NULL, 'Español: revés', 'import-espanol-bubi'),
  ('papara', 'v.', NULL, NULL, NULL, 'evolcar', NULL, NULL, 'Español: evolcar', 'import-espanol-bubi'),
  ('ribákeri', 's.', 'f.', NULL, 'Cl. 5', 'revuelta', NULL, NULL, 'Español: revuelta', 'import-espanol-bubi'),
  ('bOsókkó', 's.', 'm.', NULL, 'Cl. 1', 'rey', NULL, NULL, 'Español: rey', 'import-espanol-bubi'),
  ('bOsubari', 's.', 'm.', NULL, 'Cl. 1', 'rezagado', NULL, NULL, 'Español: rezagado', 'import-espanol-bubi'),
  ('etoppe', 's.', 'm.', NULL, 'Cl. 7', 'ricino', NULL, NULL, 'Español: ricino', 'import-espanol-bubi'),
  ('korí', 's.', 'm.', NULL, 'Cl. 9', 'rico', NULL, NULL, 'Español: rico', 'import-espanol-bubi'),
  ('ebekabékka', 's.', 'm.', NULL, 'Cl. 7', 'rifle', NULL, NULL, 'Español: rifle', 'import-espanol-bubi');

-- Lote 30 (entradas 1926 a 1950)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('isillo', 's.', 'm.', NULL, 'Cl. 5', 'rincón', NULL, NULL, 'Español: rincón', 'import-espanol-bubi'),
  ('pi''o', 's.', 'm.', NULL, 'Cl. 9', 'riñón', NULL, NULL, 'Español: riñón', 'import-espanol-bubi'),
  ('ríe', 's.', 'm.', NULL, 'Cl. 5', 'río', NULL, NULL, 'Español: río', 'import-espanol-bubi'),
  ('robbo', 's.', 'm.', NULL, 'Cl. 5', 'rito', NULL, NULL, 'Español: rito', 'import-espanol-bubi'),
  ('ubáa', 'v.', NULL, NULL, NULL, 'robar', NULL, NULL, 'Español: robar', 'import-espanol-bubi'),
  ('ribba', 's.', 'm.', NULL, 'Cl. 5', 'rocío', NULL, NULL, 'Español: rocío', 'import-espanol-bubi'),
  ('loutaeri', 's.', 'm.', NULL, 'Cl. 10', 'rodeo', NULL, NULL, 'Español: rodeo', 'import-espanol-bubi'),
  ('kallo', 's.', 'm.', NULL, 'Cl. 9', 'rodete', NULL, NULL, 'Español: rodete', 'import-espanol-bubi'),
  ('boallo', 's.', 'm.', NULL, 'Cl. 3', 'rodillo', NULL, NULL, 'Español: rodillo', 'import-espanol-bubi'),
  ('tolatolla', 'adj.', NULL, NULL, NULL, 'rojizo', NULL, NULL, 'Español: rojizo', 'import-espanol-bubi'),
  ('tolatolla', 'adj.', NULL, NULL, NULL, 'rojo', NULL, NULL, 'Español: rojo', 'import-espanol-bubi'),
  ('ribaIlá', 's.', 'm.', NULL, 'Cl. 5', 'rollito', NULL, NULL, 'Español: rollito', 'import-espanol-bubi'),
  ('epéppa', 's.', 'm.', NULL, 'Cl. 7', 'rollo', NULL, NULL, 'Español: rollo', 'import-espanol-bubi'),
  ('boátta', 's.', 'm.', NULL, 'Cl. 1', 'rompedor', NULL, NULL, 'Español: rompedor', 'import-espanol-bubi'),
  ('kólló', 's.', 'm.', NULL, 'Cl. 9', 'rompiz', NULL, NULL, 'Español: rompiz', 'import-espanol-bubi'),
  ('ukkiáa', 'v.', NULL, NULL, NULL, 'roncar', NULL, NULL, 'Español: roncar', 'import-espanol-bubi'),
  ('tyákobia', 'v.', NULL, NULL, NULL, 'ronchar', NULL, NULL, 'Español: ronchar', 'import-espanol-bubi'),
  ('rukkió', 's.', 'm.', NULL, 'Cl. 6', 'ronquido', NULL, NULL, 'Español: ronquido', 'import-espanol-bubi'),
  ('petté', 's.', 'm.', NULL, 'Cl. 9', 'ronzal', NULL, NULL, 'Español: ronzal', 'import-espanol-bubi'),
  ('korokoroo', 's.', 'f.', NULL, 'Cl. 10', 'roña', NULL, NULL, 'Español: roña', 'import-espanol-bubi'),
  ('lohétyá', 's.', 'f.', NULL, 'Cl. 9', 'ropa', NULL, NULL, 'Español: ropa', 'import-espanol-bubi'),
  ('bossó', 's.', 'm.', NULL, 'Cl. 3', 'rostro', NULL, NULL, 'Español: rostro', 'import-espanol-bubi'),
  ('etatari', 's.', 'm.', NULL, 'Cl. 7', 'roto', NULL, NULL, 'Español: roto', 'import-espanol-bubi'),
  ('tyóóm', 's.', 'm.', NULL, 'Cl. 9', 'rubor', NULL, NULL, 'Español: rubor', 'import-espanol-bubi'),
  ('ehCleri', 's.', 'm.', NULL, 'Cl. 7', 'ruego', NULL, NULL, 'Español: ruego', 'import-espanol-bubi');

-- Lote 31 (entradas 1951 a 1975)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buitító', 's.', 'm.', NULL, 'Cl. 3', 'ruido', NULL, NULL, 'Español: ruido', 'import-espanol-bubi'),
  ('bólláa', 'v.', NULL, NULL, NULL, 'rumiar', NULL, NULL, 'Español: rumiar', 'import-espanol-bubi'),
  ('siporóko', 's.', 'm.', NULL, 'Cl. 12', 'rumor', NULL, NULL, 'Español: rumor', 'import-espanol-bubi'),
  ('sátiré', 's.', 'm.', NULL, 'Cl. 12', 'sábado', NULL, NULL, 'Español: sábado', 'import-espanol-bubi'),
  ('kuppá', 's.', 'm.', NULL, 'Cl. 9', 'sabio', NULL, NULL, 'Español: sabio', 'import-espanol-bubi'),
  ('bonotyó', 's.', 'm.', NULL, 'Cl. 3', 'sabor', NULL, NULL, 'Español: sabor', 'import-espanol-bubi'),
  ('bohiammo', 's.', 'm.', NULL, 'Cl. 1', 'sacerdote', NULL, NULL, 'Español: sacerdote', 'import-espanol-bubi'),
  ('ribéki', 's.', 'm.', NULL, 'Cl. 5', 'saco', NULL, NULL, 'Español: saco', 'import-espanol-bubi'),
  ('solobbia', 'v.', NULL, NULL, NULL, 'salar', NULL, NULL, 'Español: salar', 'import-espanol-bubi'),
  ('palláa', 's.', 'm.', NULL, 'Cl. 9', 'salón', NULL, NULL, 'Español: salón', 'import-espanol-bubi'),
  ('patyípatyí', 's.', 'm.', NULL, 'Cl. 9', 'saltamontes', NULL, NULL, 'Español: saltamontes', 'import-espanol-bubi'),
  ('patyíbba', 'v.', NULL, NULL, NULL, 'saltar', NULL, NULL, 'Español: saltar', 'import-espanol-bubi'),
  ('bosorá', 's.', 'm.', NULL, 'Cl. 3', 'salto', NULL, NULL, 'Español: salto', 'import-espanol-bubi'),
  ('ebóállo', 's.', 'm.', NULL, 'Cl. 7', 'saludo', NULL, NULL, 'Español: saludo', 'import-espanol-bubi'),
  ('oburó', 's.', 'm.', NULL, 'Cl. 1', 'salvado', NULL, NULL, 'Español: salvado', 'import-espanol-bubi'),
  ('bonnya', 's.', 'm.', NULL, 'Cl. 1', 'sanador', NULL, NULL, 'Español: sanador', 'import-espanol-bubi'),
  ('boilori', 's.', 'm.', NULL, 'Cl. 3', 'saneamiento', NULL, NULL, 'Español: saneamiento', 'import-espanol-bubi'),
  ('enyekábityi', 's.', 'm.', NULL, 'Cl. 7', 'sapo', NULL, NULL, 'Español: sapo', 'import-espanol-bubi'),
  ('loantyotyo', 's.', 'm.', NULL, 'Cl. 10', 'sarampión', NULL, NULL, 'Español: sarampión', 'import-espanol-bubi'),
  ('bohe', 's.', 'm.', NULL, 'Cl. 1', 'sastre', NULL, NULL, 'Español: sastre', 'import-espanol-bubi'),
  ('ebanda', 's.', 'm.', NULL, 'Cl. 7', 'secadero', NULL, NULL, 'Español: secadero', 'import-espanol-bubi'),
  ('bookko', 's.', 'm.', NULL, 'Cl. 3', 'secreto', NULL, NULL, 'Español: secreto', 'import-espanol-bubi'),
  ('hótya', 'v.', NULL, NULL, NULL, 'segar', NULL, NULL, 'Español: segar', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'seis', NULL, NULL, 'Español: seis', 'import-espanol-bubi'),
  ('tomólekke', 's.', 'm.', NULL, 'Cl. 9', 'semáforo', NULL, NULL, 'Español: semáforo', 'import-espanol-bubi');

-- Lote 32 (entradas 1976 a 2000)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boeppa', 's.', 'm.', NULL, 'Cl. 1', 'sembrador', NULL, NULL, 'Español: sembrador', 'import-espanol-bubi'),
  ('losorá', 's.', 'm.', NULL, 'Cl. 6', 'semen', NULL, NULL, 'Español: semen', 'import-espanol-bubi'),
  ('elobbe', 's.', 'm.', NULL, 'Cl. 7', 'semillero', NULL, NULL, 'Español: semillero', 'import-espanol-bubi'),
  ('inooá', 's.', 'm.', NULL, 'Cl. 5', 'senado', NULL, NULL, 'Español: senado', 'import-espanol-bubi'),
  ('bosekka', 's.', 'm.', NULL, 'Cl. 3', 'sendero', NULL, NULL, 'Español: sendero', 'import-espanol-bubi'),
  ('ribelle', 's.', 'm.', NULL, 'Cl. 5', 'seno', NULL, NULL, 'Español: seno', 'import-espanol-bubi'),
  ('o''áa', 'v.', NULL, NULL, NULL, 'sentir', NULL, NULL, 'Español: sentir', 'import-espanol-bubi'),
  ('ntá', 's.', 'm.', NULL, 'Cl. 1', 'señor', NULL, NULL, 'Español: señor', 'import-espanol-bubi'),
  ('tomaityi', 's.', 'm.', NULL, 'Cl. 13', 'septiembre', NULL, NULL, 'Español: septiembre', 'import-espanol-bubi'),
  ('enno', 's.', 'm.', NULL, 'Cl. 7', 'sepulcro', NULL, NULL, 'Español: sepulcro', 'import-espanol-bubi'),
  ('tyilella', 'v.', NULL, NULL, NULL, 'sepultar', NULL, NULL, 'Español: sepultar', 'import-espanol-bubi'),
  ('botyilella', 's.', 'm.', NULL, 'Cl. 1', 'sepulturero', NULL, NULL, 'Español: sepulturero', 'import-espanol-bubi'),
  ('erísaríssa', 's.', 'm.', NULL, 'Cl. 7', 'serrucho', NULL, NULL, 'Español: serrucho', 'import-espanol-bubi'),
  ('etyubbá', 's.', 'm.', NULL, 'Cl. 7', 'servicio', NULL, NULL, 'Español: servicio', 'import-espanol-bubi'),
  ('tokko', 's.', 'm.', NULL, 'Cl. 13', 'sesos', NULL, NULL, 'Español: sesos', 'import-espanol-bubi'),
  ('ee', 'adv.', NULL, NULL, NULL, 'sí', NULL, NULL, 'Español: sí', 'import-espanol-bubi'),
  ('pittóo', 's.', 'm.', NULL, 'Cl. 9', 'silbato', NULL, NULL, 'Español: silbato', 'import-espanol-bubi'),
  ('buetyíi', 's.', 'm.', NULL, 'Cl. 3', 'silbido', NULL, NULL, 'Español: silbido', 'import-espanol-bubi'),
  ('bOhMma', 's.', 'm.', NULL, 'Cl. 3', 'silencio', NULL, NULL, 'Español: silencio', 'import-espanol-bubi'),
  ('esélásélá', 's.', 'm.', NULL, 'Cl. 7', 'síncope', NULL, NULL, 'Español: síncope', 'import-espanol-bubi'),
  ('eoso', 's.', 'm.', NULL, 'Cl. 7', 'sistema', NULL, NULL, 'Español: sistema', 'import-espanol-bubi'),
  ('eruua', 's.', 'm.', NULL, 'Cl. 7', 'sitio', NULL, NULL, 'Español: sitio', 'import-espanol-bubi'),
  ('rippá', 's.', 'm.', NULL, 'Cl. 5', 'sobaco', NULL, NULL, 'Español: sobaco', 'import-espanol-bubi'),
  ('boseppa', 's.', 'm.', NULL, 'Cl. 1', 'soberbio', NULL, NULL, 'Español: soberbio', 'import-espanol-bubi'),
  ('sibotyílla', 's.', 'm.', NULL, 'Cl. 12', 'sobrenombre', NULL, NULL, 'Español: sobrenombre', 'import-espanol-bubi');

-- Lote 33 (entradas 2001 a 2025)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('neppó', 's.', 'm.', NULL, 'Cl. 9', 'sobrino', NULL, NULL, 'Español: sobrino', 'import-espanol-bubi'),
  ('bulaella', 'v.', NULL, NULL, NULL, 'socorrer', NULL, NULL, 'Español: socorrer', 'import-espanol-bubi'),
  ('eiállo', 's.', 'm.', NULL, 'Cl. 7', 'socorro', NULL, NULL, 'Español: socorro', 'import-espanol-bubi'),
  ('etetémpa', 's.', 'm.', NULL, 'Cl. 7', 'sofá', NULL, NULL, 'Español: sofá', 'import-espanol-bubi'),
  ('itohí', 's.', 'm.', NULL, 'Cl. 5', 'sol', NULL, NULL, 'Español: sol', 'import-espanol-bubi'),
  ('bOsobbá', 's.', 'm.', NULL, 'Cl. 1', 'soldado', NULL, NULL, 'Español: soldado', 'import-espanol-bubi'),
  ('bótanna', 'v.', NULL, NULL, NULL, 'soldar', NULL, NULL, 'Español: soldar', 'import-espanol-bubi'),
  ('se''úbba', 'v.', NULL, NULL, NULL, 'sollozar', NULL, NULL, 'Español: sollozar', 'import-espanol-bubi'),
  ('ese''úballa', 's.', 'm.', NULL, 'Cl. 7', 'sollozo', NULL, NULL, 'Español: sollozo', 'import-espanol-bubi'),
  ('obélle', 's.', 'm.', NULL, 'Cl. 7', 'soltero', NULL, NULL, 'Español: soltero', 'import-espanol-bubi'),
  ('ebuttá', 's.', 'm.', NULL, 'Cl. 5', 'sombrero', NULL, NULL, 'Español: sombrero', 'import-espanol-bubi'),
  ('sityappa', 's.', 'm.', NULL, 'Cl. 12', 'sonajero', NULL, NULL, 'Español: sonajero', 'import-espanol-bubi'),
  ('katyábba', 'v.', NULL, NULL, NULL, 'sonar', NULL, NULL, 'Español: sonar', 'import-espanol-bubi'),
  ('bOmpá', 's.', 'm.', NULL, 'Cl. 3', 'sonido', NULL, NULL, 'Español: sonido', 'import-espanol-bubi'),
  ('haa', 'v.', NULL, NULL, NULL, 'sonsacar', NULL, NULL, 'Español: sonsacar', 'import-espanol-bubi'),
  ('seballa', 'v.', NULL, NULL, NULL, 'soñar', NULL, NULL, 'Español: soñar', 'import-espanol-bubi'),
  ('ehulá', 's.', 'm.', NULL, 'Cl. 7', 'soplo', NULL, NULL, 'Español: soplo', 'import-espanol-bubi'),
  ('etupiáeri', 's.', 'm.', NULL, 'Cl. 7', 'soporte', NULL, NULL, 'Español: soporte', 'import-espanol-bubi'),
  ('tyotyóbia', 'v.', NULL, NULL, NULL, 'sorber', NULL, NULL, 'Español: sorber', 'import-espanol-bubi'),
  ('kinatto', 's.', 'm.', NULL, 'Cl. 9', 'sordo', NULL, NULL, 'Español: sordo', 'import-espanol-bubi'),
  ('ebotyu', 's.', 'm.', NULL, 'Cl. 7', 'sosiego', NULL, NULL, 'Español: sosiego', 'import-espanol-bubi'),
  ('buikka', 's.', 'm.', NULL, 'Cl. 3', 'sostén', NULL, NULL, 'Español: sostén', 'import-espanol-bubi'),
  ('hMmota', 'v.', NULL, NULL, NULL, 'sostener', NULL, NULL, 'Español: sostener', 'import-espanol-bubi'),
  ('botákkí', 's.', 'm.', NULL, 'Cl. 1', 'súbdito', NULL, NULL, 'Español: súbdito', 'import-espanol-bubi'),
  ('obba', 'v.', NULL, NULL, NULL, 'subir', NULL, NULL, 'Español: subir', 'import-espanol-bubi');

-- Lote 34 (entradas 2026 a 2050)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('epueri', 's.', 'm.', NULL, 'Cl. 7', 'subordinado', NULL, NULL, 'Español: subordinado', 'import-espanol-bubi'),
  ('hettá', 'v.', NULL, NULL, NULL, 'suceder', NULL, NULL, 'Español: suceder', 'import-espanol-bubi'),
  ('sokko', 's.', 'm.', NULL, 'Cl. 12', 'suceso', NULL, NULL, 'Español: suceso', 'import-espanol-bubi'),
  ('n''é', 's.', 'm.', NULL, 'Cl. 9', 'sudor', NULL, NULL, 'Español: sudor', 'import-espanol-bubi'),
  ('boiebó''o', 's.', 'm.', NULL, 'Cl. 1', 'suegro', NULL, NULL, 'Español: suegro', 'import-espanol-bubi'),
  ('bobba', 's.', 'm.', NULL, 'Cl. 3', 'suelo', NULL, NULL, 'Español: suelo', 'import-espanol-bubi'),
  ('tyebbá', 's.', 'm.', NULL, 'Cl. 9', 'sueño', NULL, NULL, 'Español: sueño', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'sufrir', NULL, NULL, 'Español: sufrir', 'import-espanol-bubi'),
  ('ripá''a', 's.', 'm.', NULL, 'Cl. 5', 'sujetador', NULL, NULL, 'Español: sujetador', 'import-espanol-bubi'),
  ('sulufato', 's.', 'm.', NULL, 'Cl. 12', 'sulfato', NULL, NULL, 'Español: sulfato', 'import-espanol-bubi'),
  ('okalla', 'v.', NULL, NULL, NULL, 'sumar', NULL, NULL, 'Español: sumar', 'import-espanol-bubi'),
  ('bosókkó', 's.', 'm.', NULL, 'Cl. 1', 'supremo', NULL, NULL, 'Español: supremo', 'import-espanol-bubi'),
  ('oríe', 's.', 'm.', NULL, NULL, 'sur', NULL, NULL, 'Español: sur', 'import-espanol-bubi'),
  ('hebella', 'v.', NULL, NULL, NULL, 'suspirar', NULL, NULL, 'Español: suspirar', 'import-espanol-bubi'),
  ('eh', 's.', 'm.', NULL, 'Cl. 7', 'suspiro', NULL, NULL, 'Español: suspiro', 'import-espanol-bubi'),
  ('siosso', 's.', 'f.', NULL, 'Cl. 12', 'taba', NULL, NULL, 'Español: taba', 'import-espanol-bubi'),
  ('obáka', 's.', 'm.', NULL, 'Cl. 3', 'tabaco', NULL, NULL, 'Español: tabaco', 'import-espanol-bubi'),
  ('lopásala', 's.', 'm.', NULL, 'Cl. 7', 'tábano', NULL, NULL, 'Español: tábano', 'import-espanol-bubi'),
  ('eteppe', 's.', 'm.', NULL, 'Cl. 7', 'tabique', NULL, NULL, 'Español: tabique', 'import-espanol-bubi'),
  ('bosekke', 's.', 'm.', NULL, 'Cl. 3', 'tablero', NULL, NULL, 'Español: tablero', 'import-espanol-bubi'),
  ('siseke', 's.', 'f.', NULL, 'Cl. 12', 'tablilla', NULL, NULL, 'Español: tablilla', 'import-espanol-bubi'),
  ('simpa', 's.', 'm.', NULL, 'Cl. 12', 'taburete', NULL, NULL, 'Español: taburete', 'import-espanol-bubi'),
  ('sipoppi', 's.', 'm.', NULL, 'Cl. 12', 'tacaño', NULL, NULL, 'Español: tacaño', 'import-espanol-bubi'),
  ('bOsií', 's.', 'm.', NULL, 'Cl. 1', 'taimado', NULL, NULL, 'Español: taimado', 'import-espanol-bubi'),
  ('ríkuku', 's.', 'f.', NULL, 'Cl. 5', 'tajada', NULL, NULL, 'Español: tajada', 'import-espanol-bubi');

-- Lote 35 (entradas 2051 a 2075)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('etyikóri', 's.', 'f.', NULL, 'Cl. 7', 'tala', NULL, NULL, 'Español: tala', 'import-espanol-bubi'),
  ('ebulla', 's.', 'm.', NULL, 'Cl. 7', 'talado', NULL, NULL, 'Español: talado', 'import-espanol-bubi'),
  ('butólla', 'v.', NULL, NULL, NULL, 'taladrar', NULL, NULL, 'Español: taladrar', 'import-espanol-bubi'),
  ('tyikólla', 'v.', NULL, NULL, NULL, 'talar', NULL, NULL, 'Español: talar', 'import-espanol-bubi'),
  ('ribéki', 's.', 'm.', NULL, 'Cl. 5', 'talego', NULL, NULL, 'Español: talego', 'import-espanol-bubi'),
  ('bolebóri', 's.', 'm.', NULL, 'Cl. 3', 'talento', NULL, NULL, 'Español: talento', 'import-espanol-bubi'),
  ('bOlallo', 's.', 'm.', NULL, 'Cl. 3', 'talismán', NULL, NULL, 'Español: talismán', 'import-espanol-bubi'),
  ('tyikeleelé', 's.', 'm.', NULL, 'Cl. 9', 'talón', NULL, NULL, 'Español: talón', 'import-espanol-bubi'),
  ('álle', 'adv.', NULL, NULL, NULL, 'también', NULL, NULL, 'Español: también', 'import-espanol-bubi'),
  ('kunké', 's.', 'm.', NULL, 'Cl. 9', 'tambor', NULL, NULL, 'Español: tambor', 'import-espanol-bubi'),
  ('ribatyu', 's.', 'm.', NULL, 'Cl. 5', 'taparrabo', NULL, NULL, 'Español: taparrabo', 'import-espanol-bubi'),
  ('rule''o', 's.', 'm.', NULL, 'Cl. 5', 'tapón', NULL, NULL, 'Español: tapón', 'import-espanol-bubi'),
  ('sitó''o', 's.', 'm.', NULL, 'Cl. 12', 'tarro', NULL, NULL, 'Español: tarro', 'import-espanol-bubi'),
  ('bo''ú', 's.', 'm.', NULL, 'Cl. 1', 'tartamudo', NULL, NULL, 'Español: tartamudo', 'import-espanol-bubi'),
  ('tyinálolláa', 's.', 'm.', NULL, 'Cl. 9', 'tataranieto', NULL, NULL, 'Español: tataranieto', 'import-espanol-bubi'),
  ('kolokollo', 's.', 'm.', NULL, 'Cl. 9', 'tataratataranieto', NULL, NULL, 'Español: tataratataranieto', 'import-espanol-bubi'),
  ('lopappo', 's.', 'm.', NULL, 'Cl. 9', 'techado', NULL, NULL, 'Español: techado', 'import-espanol-bubi'),
  ('lobityo', 's.', 'm.', NULL, 'Cl. 11', 'techo', NULL, NULL, 'Español: techo', 'import-espanol-bubi'),
  ('luua', 's.', 'm.', NULL, 'Cl. 10', 'tejido', NULL, NULL, 'Español: tejido', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'tema', NULL, NULL, 'Español: tema', 'import-espanol-bubi'),
  ('botyíberi', 's.', 'm.', NULL, 'Cl. 3', 'temblor', NULL, NULL, 'Español: temblor', 'import-espanol-bubi'),
  ('esáríi', 's.', 'm.', NULL, 'Cl. 7', 'temor', NULL, NULL, 'Español: temor', 'import-espanol-bubi'),
  ('werí', 's.', 'm.', NULL, 'Cl. 3', 'temperamento', NULL, NULL, 'Español: temperamento', 'import-espanol-bubi'),
  ('tyótyi', 's.', 'm.', NULL, 'Cl. 9', 'templo', NULL, NULL, 'Español: templo', 'import-espanol-bubi'),
  ('rikko', 's.', 'm.', NULL, 'Cl. 5', 'tenedor', NULL, NULL, 'Español: tenedor', 'import-espanol-bubi');

-- Lote 36 (entradas 2076 a 2100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sétya', 'v.', NULL, NULL, NULL, 'terminar', NULL, NULL, 'Español: terminar', 'import-espanol-bubi'),
  ('illáa', 's.', 'm.', NULL, 'Cl. 5', 'término', NULL, NULL, 'Español: término', 'import-espanol-bubi'),
  ('bokotyí', 's.', 'm.', NULL, 'Cl. 3', 'termo', NULL, NULL, 'Español: termo', 'import-espanol-bubi'),
  ('bobba', 's.', 'm.', NULL, 'Cl. 3', 'terreno', NULL, NULL, 'Español: terreno', 'import-espanol-bubi'),
  ('bobba', 's.', 'm.', NULL, 'Cl. 3', 'territorio', NULL, NULL, 'Español: territorio', 'import-espanol-bubi'),
  ('esáráa', 's.', 'm.', NULL, 'Cl. 7', 'terror', NULL, NULL, 'Español: terror', 'import-espanol-bubi'),
  ('bOsáráa', 's.', 'm.', NULL, 'Cl. 1', 'terrorista', NULL, NULL, 'Español: terrorista', 'import-espanol-bubi'),
  ('bommotye', 's.', 'm.', NULL, 'Cl. 1', 'tertuliano', NULL, NULL, 'Español: tertuliano', 'import-espanol-bubi'),
  ('bonokkó', 's.', 'm.', NULL, 'Cl. 3', 'tesón', NULL, NULL, 'Español: tesón', 'import-espanol-bubi'),
  ('epopollo', 's.', 'm.', NULL, 'Cl. 7', 'tesoro', NULL, NULL, 'Español: tesoro', 'import-espanol-bubi'),
  ('bOloe', 's.', 'm.', NULL, 'Cl. 3', 'testamento', NULL, NULL, 'Español: testamento', 'import-espanol-bubi'),
  ('botya''á', 's.', 'm.', NULL, 'Cl. 3', 'testículo', NULL, NULL, 'Español: testículo', 'import-espanol-bubi'),
  ('sOsOlla', 'v.', NULL, NULL, NULL, 'testificar', NULL, NULL, 'Español: testificar', 'import-espanol-bubi'),
  ('emmaeri', 's.', 'm.', NULL, 'Cl. 7', 'testigo', NULL, NULL, 'Español: testigo', 'import-espanol-bubi'),
  ('bOsossó', 's.', 'm.', NULL, 'Cl. 3', 'testimonio', NULL, NULL, 'Español: testimonio', 'import-espanol-bubi'),
  ('bosossó', 's.', 'm.', NULL, 'Cl. 3', 'texto', NULL, NULL, 'Español: texto', 'import-espanol-bubi'),
  ('koppá', 's.', 'm.', NULL, 'Cl. 9', 'tiburón', NULL, NULL, 'Español: tiburón', 'import-espanol-bubi'),
  ('ebéló', 's.', 'm.', NULL, 'Cl. 7', 'tiempo', NULL, NULL, 'Español: tiempo', 'import-espanol-bubi'),
  ('sataté', 's.', 'm.', NULL, 'Cl. 12', 'tiesto', NULL, NULL, 'Español: tiesto', 'import-espanol-bubi'),
  ('silebbó', 's.', 'm.', NULL, 'Cl. 12', 'timbre', NULL, NULL, 'Español: timbre', 'import-espanol-bubi'),
  ('rella', 's.', 'm.', NULL, 'Cl. 5', 'timón', NULL, NULL, 'Español: timón', 'import-espanol-bubi'),
  ('nl', 's.', NULL, NULL, 'Cl. 10', 'tinglado', NULL, NULL, 'Español: tinglado', 'import-espanol-bubi'),
  ('boióppé', 's.', 'm.', NULL, 'Cl. 1', 'tío', NULL, NULL, 'Español: tío', 'import-espanol-bubi'),
  ('bOtyo', 's.', 'm.', NULL, 'Cl. 1', 'tipo', NULL, NULL, 'Español: tipo', 'import-espanol-bubi'),
  ('efélétya', 's.', 'm.', NULL, 'Cl. 7', 'tirachinas', NULL, NULL, 'Español: tirachinas', 'import-espanol-bubi');

-- Lote 37 (entradas 2101 a 2125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eoppe', 's.', 'm.', NULL, 'Cl. 7', 'tísico', NULL, NULL, 'Español: tísico', 'import-espanol-bubi'),
  ('tyotyó', 's.', 'm.', NULL, 'Cl. 9', 'tizón', NULL, NULL, 'Español: tizón', 'import-espanol-bubi'),
  ('kekessé', 's.', 'm.', NULL, 'Cl. 9', 'tobillo', NULL, NULL, 'Español: tobillo', 'import-espanol-bubi'),
  ('risopuára', 's.', 'm.', NULL, 'Cl. 5', 'tobogán', NULL, NULL, 'Español: tobogán', 'import-espanol-bubi'),
  ('bahabbáa', 's.', 'm.', NULL, 'Cl. 6', 'tocino', NULL, NULL, 'Español: tocino', 'import-espanol-bubi'),
  ('né''a', 'adv.', NULL, NULL, NULL, 'todavía', NULL, NULL, 'Español: todavía', 'import-espanol-bubi'),
  ('ne''í', 's.', 'm.', NULL, 'Cl. 9', 'tomate', NULL, NULL, 'Español: tomate', 'import-espanol-bubi'),
  ('bolonká', 's.', 'm.', NULL, 'Cl. 3', 'tonel', NULL, NULL, 'Español: tonel', 'import-espanol-bubi'),
  ('ekké', 's.', 'm.', NULL, 'Cl. 7', 'tonto', NULL, NULL, 'Español: tonto', 'import-espanol-bubi'),
  ('péláká', 's.', 'm.', NULL, 'Cl. 9', 'topo', NULL, NULL, 'Español: topo', 'import-espanol-bubi'),
  ('rikkáa', 'v.', NULL, NULL, NULL, 'torcer', NULL, NULL, 'Español: torcer', 'import-espanol-bubi'),
  ('rioppo', 's.', 'm.', NULL, 'Cl. 5', 'tormento', NULL, NULL, 'Español: tormento', 'import-espanol-bubi'),
  ('pullá', 's.', 'm.', NULL, 'Cl. 9', 'tomado', NULL, NULL, 'Español: tomado', 'import-espanol-bubi'),
  ('kóppó', 's.', 'm.', NULL, 'Cl. 9', 'toro', NULL, NULL, 'Español: toro', 'import-espanol-bubi'),
  ('lopatta', 's.', 'm.', NULL, 'Cl. 11', 'tortazo', NULL, NULL, 'Español: tortazo', 'import-espanol-bubi'),
  ('sibekabékka', 's.', 'm.', NULL, 'Cl. 12', 'tortolito', NULL, NULL, 'Español: tortolito', 'import-espanol-bubi'),
  ('bOlakóláko', 's.', 'm.', NULL, 'Cl. 1', 'trabajador', NULL, NULL, 'Español: trabajador', 'import-espanol-bubi'),
  ('elakó', 's.', 'm.', NULL, 'Cl. 7', 'trabajo', NULL, NULL, 'Español: trabajo', 'import-espanol-bubi'),
  ('obélló', 's.', 'm.', NULL, 'Cl. 1', 'traductor', NULL, NULL, 'Español: traductor', 'import-espanol-bubi'),
  ('ekunna', 's.', 'm.', NULL, 'Cl. 7', 'trago', NULL, NULL, 'Español: trago', 'import-espanol-bubi'),
  ('boossó', 's.', 'm.', NULL, 'Cl. 1', 'tragón', NULL, NULL, 'Español: tragón', 'import-espanol-bubi'),
  ('tyio', 's.', 'm.', NULL, 'Cl. 9', 'traidor', NULL, NULL, 'Español: traidor', 'import-espanol-bubi'),
  ('bohétyo', 's.', 'm.', NULL, 'Cl. 3', 'traje', NULL, NULL, 'Español: traje', 'import-espanol-bubi'),
  ('bosorá', 's.', 'm.', NULL, 'Cl. 3', 'tramo', NULL, NULL, 'Español: tramo', 'import-espanol-bubi'),
  ('boetelló', 's.', 'm.', NULL, 'Cl. 1', 'transeúnte', NULL, NULL, 'Español: transeúnte', 'import-espanol-bubi');

-- Lote 38 (entradas 2126 a 2150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eoleri', 's.', 'm.', NULL, 'Cl. 7', 'transportador', NULL, NULL, 'Español: transportador', 'import-espanol-bubi'),
  ('eoleri', 's.', 'm.', NULL, 'Cl. 7', 'transporte', NULL, NULL, 'Español: transporte', 'import-espanol-bubi'),
  ('pisíssi', 's.', 'm.', NULL, 'Cl. 9', 'trapo', NULL, NULL, 'Español: trapo', 'import-espanol-bubi'),
  ('battáa', 's.', 'm.', NULL, 'Cl. 6', 'trasero', NULL, NULL, 'Español: trasero', 'import-espanol-bubi'),
  ('ekollé', 's.', 'm.', NULL, 'Cl. 7', 'trasto', NULL, NULL, 'Español: trasto', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'm.', NULL, 'Cl. 9', 'trastornado', NULL, NULL, 'Español: trastornado', 'import-espanol-bubi'),
  ('ehuáeri', 's.', 'm.', NULL, 'Cl. 7', 'trato', NULL, NULL, 'Español: trato', 'import-espanol-bubi'),
  ('bolakka', 's.', 'm.', NULL, 'Cl. 3', 'travesaño', NULL, NULL, 'Español: travesaño', 'import-espanol-bubi'),
  ('wihó', 's.', 'm.', NULL, 'Cl. 3', 'travieso', NULL, NULL, 'Español: travieso', 'import-espanol-bubi'),
  ('loettyi', 's.', 'm.', NULL, 'Cl. 3', 'trayecto', NULL, NULL, 'Español: trayecto', 'import-espanol-bubi'),
  ('rikotye', 's.', 'm.', NULL, 'Cl. 5', 'tren', NULL, NULL, 'Español: tren', 'import-espanol-bubi'),
  ('eotyi', 's.', 'm.', NULL, 'Cl. 7', 'trenzado', NULL, NULL, 'Español: trenzado', 'import-espanol-bubi'),
  ('itohó', 's.', 'm.', NULL, 'Cl. 5', 'tribunal', NULL, NULL, 'Español: tribunal', 'import-espanol-bubi'),
  ('ribatya', 's.', 'm.', NULL, 'Cl. 5', 'tridente', NULL, NULL, 'Español: tridente', 'import-espanol-bubi'),
  ('ubáa', 'v.', NULL, NULL, NULL, 'trincar', NULL, NULL, 'Español: trincar', 'import-espanol-bubi'),
  ('kétya', 'v.', NULL, NULL, NULL, 'trinchar', NULL, NULL, 'Español: trinchar', 'import-espanol-bubi'),
  ('etó''a', 's.', 'm.', NULL, 'Cl. 7', 'triunfo', NULL, NULL, 'Español: triunfo', 'import-espanol-bubi'),
  ('kétya', 'v.', NULL, NULL, NULL, 'trocear', NULL, NULL, 'Español: trocear', 'import-espanol-bubi'),
  ('sihékká', 's.', 'm.', NULL, 'Cl. 12', 'trocito', NULL, NULL, 'Español: trocito', 'import-espanol-bubi'),
  ('ekonna', 's.', 'm.', NULL, 'Cl. 7', 'tronco', NULL, NULL, 'Español: tronco', 'import-espanol-bubi'),
  ('eottá', 's.', 'm.', NULL, 'Cl. 7', 'trono', NULL, NULL, 'Español: trono', 'import-espanol-bubi'),
  ('ekúbari', 's.', 'm.', NULL, 'Cl. 7', 'tropezón', NULL, NULL, 'Español: tropezón', 'import-espanol-bubi'),
  ('ekúbari', 's.', 'm.', NULL, 'Cl. 7', 'tropiezo', NULL, NULL, 'Español: tropiezo', 'import-espanol-bubi'),
  ('atée', 's.', 'm.', NULL, 'Cl. 7', 'trozo', NULL, NULL, 'Español: trozo', 'import-espanol-bubi'),
  ('ekukuu', 's.', 'm.', NULL, 'Cl. 7', 'trueno', NULL, NULL, 'Español: trueno', 'import-espanol-bubi');

-- Lote 39 (entradas 2151 a 2175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bosossó', 's.', 'm.', NULL, 'Cl. 3', 'tubo', NULL, NULL, 'Español: tubo', 'import-espanol-bubi'),
  ('bOlebbáa', 's.', 'm.', NULL, 'Cl. 1', 'tuerto', NULL, NULL, 'Español: tuerto', 'import-espanol-bubi'),
  ('bopáko''e', 's.', 'm.', NULL, 'Cl. 3', 'tulipanero', NULL, NULL, 'Español: tulipanero', 'import-espanol-bubi'),
  ('enná', 's.', 'm.', NULL, 'Cl. 7', 'tumor', NULL, NULL, 'Español: tumor', 'import-espanol-bubi'),
  ('bosií', 's.', 'm.', NULL, 'Cl. 1', 'tunante', NULL, NULL, 'Español: tunante', 'import-espanol-bubi'),
  ('ketto', 's.', 'm.', NULL, 'Cl. 9', 'turno', NULL, NULL, 'Español: turno', 'import-espanol-bubi'),
  ('bolakka', 's.', 'm.', NULL, 'Cl. 3', 'umbral', NULL, NULL, 'Español: umbral', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'una', NULL, NULL, 'Español: una', 'import-espanol-bubi'),
  ('otyé', 's.', 'm.', NULL, 'Cl. 3', 'universo', NULL, NULL, 'Español: universo', 'import-espanol-bubi'),
  ('pitta', 'v.', NULL, NULL, NULL, 'untar', NULL, NULL, 'Español: untar', 'import-espanol-bubi'),
  ('lohahá', 's.', 'm.', NULL, 'Cl. 4', 'uñero', NULL, NULL, 'Español: uñero', 'import-espanol-bubi'),
  ('bohNnó', 's.', 'm.', NULL, 'Cl. 3', 'uso', NULL, NULL, 'Español: uso', 'import-espanol-bubi'),
  ('ope', 's.', 'm.', NULL, 'Cl. 7', 'vagabundeo', NULL, NULL, 'Español: vagabundeo', 'import-espanol-bubi'),
  ('bákko', 's.', 'm.', NULL, 'Cl. 9', 'vagabundo', NULL, NULL, 'Español: vagabundo', 'import-espanol-bubi'),
  ('eppé', 's.', 'm.', NULL, 'Cl. 7', 'vago', NULL, NULL, 'Español: vago', 'import-espanol-bubi'),
  ('bálebbia', 'v.', NULL, NULL, NULL, 'valer', NULL, NULL, 'Español: valer', 'import-espanol-bubi'),
  ('kottó', 's.', 'm.', NULL, 'Cl. 9', 'valiente', NULL, NULL, 'Español: valiente', 'import-espanol-bubi'),
  ('atyátya', 's.', 'm.', NULL, 'Cl. 7', 'valle', NULL, NULL, 'Español: valle', 'import-espanol-bubi'),
  ('bobbe', 's.', 'm.', NULL, 'Cl. 1', 'varón', NULL, NULL, 'Español: varón', 'import-espanol-bubi'),
  ('esa''', 's.', 'm.', NULL, 'Cl. 7', 'vasallaje', NULL, NULL, 'Español: vasallaje', 'import-espanol-bubi'),
  ('botákkí', 's.', 'm.', NULL, 'Cl. 1', 'vasallo', NULL, NULL, 'Español: vasallo', 'import-espanol-bubi'),
  ('akákka', 's.', 'm.', NULL, 'Cl. 7', 'vaso', NULL, NULL, 'Español: vaso', 'import-espanol-bubi'),
  ('boítám', 's.', 'm.', NULL, 'Cl. 1', 'vecino', NULL, NULL, 'Español: vecino', 'import-espanol-bubi'),
  ('euláúla', 's.', 'm.', NULL, 'Cl. 7', 'vehículo', NULL, NULL, 'Español: vehículo', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 5', 'veinte', NULL, NULL, 'Español: veinte', 'import-espanol-bubi');

-- Lote 40 (entradas 2176 a 2200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('numo', 'adj.', NULL, NULL, NULL, 'veinticinco', NULL, NULL, 'Español: veinticinco', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veinticuatro', NULL, NULL, 'Español: veinticuatro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veintidós', NULL, NULL, 'Español: veintidós', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veintinueve', NULL, NULL, 'Español: veintinueve', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veintiocho', NULL, NULL, 'Español: veintiocho', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veintiséis', NULL, NULL, 'Español: veintiséis', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veintisiete', NULL, NULL, 'Español: veintisiete', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veintitrés', NULL, NULL, 'Español: veintitrés', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'veintiuno', NULL, NULL, 'Español: veintiuno', 'import-espanol-bubi'),
  ('elottyí', 's.', 'm.', NULL, 'Cl. 7', 'velador', NULL, NULL, 'Español: velador', 'import-espanol-bubi'),
  ('hiiló''a', 's.', 'm.', NULL, 'Cl. 2', 'vencedor', NULL, NULL, 'Español: vencedor', 'import-espanol-bubi'),
  ('tó''a', 'v.', NULL, NULL, NULL, 'vencer', NULL, NULL, 'Español: vencer', 'import-espanol-bubi'),
  ('suua', 's.', 'f.', NULL, 'Cl. 12', 'venda', NULL, NULL, 'Español: venda', 'import-espanol-bubi'),
  ('ótta', 'v.', NULL, NULL, NULL, 'vender', NULL, NULL, 'Español: vender', 'import-espanol-bubi'),
  ('bOntánna', 's.', 'f.', NULL, 'Cl. 3', 'ventana', NULL, NULL, 'Español: ventana', 'import-espanol-bubi'),
  ('buítya', 's.', 'm.', NULL, 'Cl. 3', 'ventosidad', NULL, NULL, 'Español: ventosidad', 'import-espanol-bubi'),
  ('elláa', 'v.', NULL, NULL, NULL, 'ver', NULL, NULL, 'Español: ver', 'import-espanol-bubi'),
  ('tyokkó', 's.', 'm.', NULL, 'Cl. 9', 'verano', NULL, NULL, 'Español: verano', 'import-espanol-bubi'),
  ('ilatto', 's.', 'm.', NULL, 'Cl. 5', 'verbo', NULL, NULL, 'Español: verbo', 'import-espanol-bubi'),
  ('ette', 's.', 'f.', NULL, 'Cl. 7', 'verdad', NULL, NULL, 'Español: verdad', 'import-espanol-bubi'),
  ('boka''ó', 's.', 'f.', NULL, 'Cl. 3', 'verdura', NULL, NULL, 'Español: verdura', 'import-espanol-bubi'),
  ('tyoom', 's.', 'f.', NULL, 'Cl. 9', 'vergüenza', NULL, NULL, 'Español: vergüenza', 'import-espanol-bubi'),
  ('botuttá', 's.', 'm.', NULL, 'Cl. 3', 'vertedero', NULL, NULL, 'Español: vertedero', 'import-espanol-bubi'),
  ('lohétyá', 's.', 'm.', NULL, NULL, 'vestido', NULL, NULL, 'Español: vestido', 'import-espanol-bubi'),
  ('bolólló', 's.', 'm.', NULL, 'Cl. 1', 'veterano', NULL, NULL, 'Español: veterano', 'import-espanol-bubi');

-- Lote 41 (entradas 2201 a 2225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('lobatto', 's.', 'm.', NULL, 'Cl. 10', 'veto', NULL, NULL, 'Español: veto', 'import-espanol-bubi'),
  ('loettyi', 's.', 'm.', NULL, 'Cl. 11', 'viaje', NULL, NULL, 'Español: viaje', 'import-espanol-bubi'),
  ('bosalóetyi', 's.', 'm.', NULL, 'Cl. 1', 'viajero', NULL, NULL, 'Español: viajero', 'import-espanol-bubi'),
  ('bOyólatyuíi', 's.', 'm.', NULL, 'Cl. 1', 'vidente', NULL, NULL, 'Español: vidente', 'import-espanol-bubi'),
  ('sobeolla', 's.', 'm.', NULL, 'Cl. 12', 'viejecito', NULL, NULL, 'Español: viejecito', 'import-espanol-bubi'),
  ('obéolla', 's.', 'm.', NULL, 'Cl. 7', 'viejo', NULL, NULL, 'Español: viejo', 'import-espanol-bubi'),
  ('ehurúru', 's.', 'm.', NULL, 'Cl. 7', 'viento', NULL, NULL, 'Español: viento', 'import-espanol-bubi'),
  ('buellá', 's.', 'm.', NULL, 'Cl. 3', 'vientre', NULL, NULL, 'Español: vientre', 'import-espanol-bubi'),
  ('rakka', 's.', 'm.', NULL, 'Cl. 6', 'viernes', NULL, NULL, 'Español: viernes', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'vigilante', NULL, NULL, 'Español: vigilante', 'import-espanol-bubi'),
  ('sito''ú', 's.', 'm.', NULL, 'Cl. 13', 'vigor', NULL, NULL, 'Español: vigor', 'import-espanol-bubi'),
  ('boebba', 's.', 'm.', NULL, 'Cl. 1', 'vinatero', NULL, NULL, 'Español: vinatero', 'import-espanol-bubi'),
  ('ritolló', 's.', 'm.', NULL, 'Cl. 5', 'vínculo', NULL, NULL, 'Español: vínculo', 'import-espanol-bubi'),
  ('boebba', 's.', 'm.', NULL, 'Cl. 1', 'vinicultor', NULL, NULL, 'Español: vinicultor', 'import-espanol-bubi'),
  ('weem', 's.', 'm.', NULL, 'Cl. 3', 'vino', NULL, NULL, 'Español: vino', 'import-espanol-bubi'),
  ('boheppo', 's.', 'm.', NULL, 'Cl. 1', 'visitante', NULL, NULL, 'Español: visitante', 'import-espanol-bubi'),
  ('eyéíyébba', 's.', 'm.', NULL, 'Cl. 7', 'vítor', NULL, NULL, 'Español: vítor', 'import-espanol-bubi'),
  ('hükiiluún', 's.', 'f.', NULL, 'Cl. 2', 'viuda', NULL, NULL, 'Español: viuda', 'import-espanol-bubi'),
  ('bokolto', 's.', 'f.', NULL, 'Cl. 3', 'viudedad', NULL, NULL, 'Español: viudedad', 'import-espanol-bubi'),
  ('tobba', 'v.', NULL, NULL, NULL, 'volcar', NULL, NULL, 'Español: volcar', 'import-espanol-bubi'),
  ('ehoro', 's.', 'm.', NULL, 'Cl. 7', 'vómito', NULL, NULL, 'Español: vómito', 'import-espanol-bubi'),
  ('balabba', 'v.', NULL, NULL, NULL, 'yacer', NULL, NULL, 'Español: yacer', 'import-espanol-bubi'),
  ('ráa', 'v.', NULL, NULL, NULL, 'yantar', NULL, NULL, 'Español: yantar', 'import-espanol-bubi'),
  ('bolabó''o', 's.', 'm.', NULL, 'Cl. 1', 'yerno', NULL, NULL, 'Español: yerno', 'import-espanol-bubi'),
  ('bOnabba', 's.', 'm.', NULL, 'Cl. 1', 'zafio', NULL, NULL, 'Español: zafio', 'import-espanol-bubi');

-- Lote 42 (entradas 2226 a 2230)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('piéssa', 's.', 'm.', NULL, 'Cl. 9', 'zaguán', NULL, NULL, 'Español: zaguán', 'import-espanol-bubi'),
  ('sússu', 's.', 'm.', NULL, 'Cl. 9', 'zapato', NULL, NULL, 'Español: zapato', 'import-espanol-bubi'),
  ('sisússu', 's.', 'm.', NULL, 'Cl. 13', 'zapatito', NULL, NULL, 'Español: zapatito', 'import-espanol-bubi'),
  ('bükckc', 's.', 'm.', NULL, 'Cl. 2', 'zurdo', NULL, NULL, 'Español: zurdo', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'zurrar', NULL, NULL, 'Español: zurrar', 'import-espanol-bubi');

COMMIT;

-- ✅ Parte 2 de 2 completada
-- Total de entradas en esta parte: 1030