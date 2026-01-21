-- Script de importación Español-Bubi (Mejorado)
-- PARTE 1 de 2
-- Entradas: 1 a 1200
-- Total de entradas en esta parte: 1200
-- Fecha: 2026-01-21

-- ⚠️ IMPORTANTE: Ejecutar las partes en orden (1, 2, 3...)

BEGIN;

-- Lote 1 (entradas 1 a 25)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('onno', 'adv.', NULL, NULL, NULL, 'abajo', NULL, NULL, 'Español: abajo', 'import-espanol-bubi'),
  ('bototto', 's.', 'm.', NULL, 'Cl. 3', 'abalorio', NULL, NULL, 'Español: abalorio', 'import-espanol-bubi'),
  ('tyí''a', 'v.', NULL, NULL, NULL, 'abandonar', NULL, NULL, 'Español: abandonar', 'import-espanol-bubi'),
  ('eOOllá', 's.', 'm.', NULL, 'Cl. 7', 'abanico', NULL, NULL, 'Español: abanico', 'import-espanol-bubi'),
  ('okanna', 'v.', NULL, NULL, NULL, 'abarcar', NULL, NULL, 'Español: abarcar', 'import-espanol-bubi'),
  ('riotta', 's.', 'm.', NULL, 'Cl. 5', 'abatimiento', NULL, NULL, 'Español: abatimiento', 'import-espanol-bubi'),
  ('oHáa', 'v.', NULL, NULL, NULL, 'abatir', NULL, NULL, 'Español: abatir', 'import-espanol-bubi'),
  ('buellá', 's.', 'm.', NULL, 'Cl. 3', 'abdomen', NULL, NULL, 'Español: abdomen', 'import-espanol-bubi'),
  ('bonkinki', 's.', 'm.', NULL, 'Cl. 3', 'abejorro', NULL, NULL, 'Español: abejorro', 'import-espanol-bubi'),
  ('bono''u', 's.', 'm.', NULL, 'Cl. 3', 'abismo', NULL, NULL, 'Español: abismo', 'import-espanol-bubi'),
  ('seké', 'adj.', NULL, NULL, 'Cl. 12', 'abobado', NULL, NULL, 'Español: abobado', 'import-espanol-bubi'),
  ('obulaella', 's.', 'm.', NULL, 'Cl. 1', 'abogado', NULL, NULL, 'Español: abogado', 'import-espanol-bubi'),
  ('esokobbi', 's.', 'm.', NULL, 'Cl. 7', 'aborto', NULL, NULL, 'Español: aborto', 'import-espanol-bubi'),
  ('apála', 'v.', NULL, NULL, NULL, 'abrazar', NULL, NULL, 'Español: abrazar', 'import-espanol-bubi'),
  ('boappo', 's.', 'm.', NULL, 'Cl. 3', 'abrazo', NULL, NULL, 'Español: abrazo', 'import-espanol-bubi'),
  ('kobba', 's.', 'm.', NULL, 'Cl. 9', 'abrigo', NULL, NULL, 'Español: abrigo', 'import-espanol-bubi'),
  ('ityaribba', 's.', 'm.', NULL, 'Cl. 5', 'abril', NULL, NULL, 'Español: abril', 'import-espanol-bubi'),
  ('tyotyóbia', 'v.', NULL, NULL, NULL, 'absorber', NULL, NULL, 'Español: absorber', 'import-espanol-bubi'),
  ('ilIa', 'v.', NULL, NULL, NULL, 'abstener', NULL, NULL, 'Español: abstener', 'import-espanol-bubi'),
  ('boyolIa', 's.', 'm.', NULL, 'Cl. 1', 'abuelo', NULL, NULL, 'Español: abuelo', 'import-espanol-bubi'),
  ('ulla', 'v.', NULL, NULL, NULL, 'abultar', NULL, NULL, 'Español: abultar', 'import-espanol-bubi'),
  ('bíke', 'adj.', NULL, NULL, 'Cl. 10', 'abundante', NULL, NULL, 'Español: abundante', 'import-espanol-bubi'),
  ('bukká', 'v.', NULL, NULL, NULL, 'abundar', NULL, NULL, 'Español: abundar', 'import-espanol-bubi'),
  ('etyitre', 's.', 'm.', NULL, 'Cl. 7', 'abuso', NULL, NULL, 'Español: abuso', 'import-espanol-bubi'),
  ('háIlo', 'adv.', NULL, NULL, NULL, 'acá', NULL, NULL, 'Español: acá', 'import-espanol-bubi');

-- Lote 2 (entradas 26 a 50)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('héttáa', 'v.', NULL, NULL, NULL, 'acaecer', NULL, NULL, 'Español: acaecer', 'import-espanol-bubi'),
  ('boello', 's.', 'm.', NULL, 'Cl. 3', 'acantilado', NULL, NULL, 'Español: acantilado', 'import-espanol-bubi'),
  ('ebbia', 'v.', NULL, NULL, NULL, 'acatar', NULL, NULL, 'Español: acatar', 'import-espanol-bubi'),
  ('tápella', 'v.', NULL, NULL, NULL, 'acoger', NULL, NULL, 'Español: acoger', 'import-espanol-bubi'),
  ('ritutera', 'adj.', NULL, NULL, 'Cl. 5', 'acogida', NULL, NULL, 'Español: acogida', 'import-espanol-bubi'),
  ('eseríi', 's.', 'm.', NULL, 'Cl. 7', 'acontecimiento', NULL, NULL, 'Español: acontecimiento', 'import-espanol-bubi'),
  ('ribósekka', 's.', 'm.', NULL, 'Cl. 5', 'acordeón', NULL, NULL, 'Español: acordeón', 'import-espanol-bubi'),
  ('lokkia', 'v.', NULL, NULL, NULL, 'acostar', NULL, NULL, 'Español: acostar', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'acto', NULL, NULL, 'Español: acto', 'import-espanol-bubi'),
  ('sá', 'v.', NULL, NULL, NULL, 'actuar', NULL, NULL, 'Español: actuar', 'import-espanol-bubi'),
  ('ehattá', 's.', 'm.', NULL, 'Cl. 7', 'acuerdo', NULL, NULL, 'Español: acuerdo', 'import-espanol-bubi'),
  ('etyakaké', 's.', 'm.', NULL, 'Cl. 7', 'adefesio', NULL, NULL, 'Español: adefesio', 'import-espanol-bubi'),
  ('obosso', 'adv.', NULL, NULL, NULL, 'adelante', NULL, NULL, 'Español: adelante', 'import-espanol-bubi'),
  ('borillo', 's.', 'm.', NULL, 'Cl. 3', 'ademán', NULL, NULL, 'Español: ademán', 'import-espanol-bubi'),
  ('bosoko', 's.', 'm.', NULL, 'Cl. 1', 'adolescente', NULL, NULL, 'Español: adolescente', 'import-espanol-bubi'),
  ('ké', 'adv.', NULL, NULL, NULL, 'adónde', NULL, NULL, 'Español: adónde', 'import-espanol-bubi'),
  ('tápella', 'v.', NULL, NULL, NULL, 'adoptar', NULL, NULL, 'Español: adoptar', 'import-espanol-bubi'),
  ('ite', 's.', 'm.', NULL, 'Cl. 7', 'adoquín', NULL, NULL, 'Español: adoquín', 'import-espanol-bubi'),
  ('mpessó', 's.', 'm.', NULL, 'Cl. 3', 'adoquinado', NULL, NULL, 'Español: adoquinado', 'import-espanol-bubi'),
  ('looppo', 's.', 'm.', NULL, 'Cl. 10', 'adorno', NULL, NULL, 'Español: adorno', 'import-espanol-bubi'),
  ('riori', 's.', 'f.', NULL, 'Cl. 5', 'adquisición', NULL, NULL, 'Español: adquisición', 'import-espanol-bubi'),
  ('eosso', 'adv.', NULL, NULL, 'Cl. 7', 'adrede', NULL, NULL, 'Español: adrede', 'import-espanol-bubi'),
  ('obotyíbótyi', 'adj.', NULL, NULL, 'Cl. 1', 'adulador', NULL, NULL, 'Español: adulador', 'import-espanol-bubi'),
  ('bekolla', 'v.', NULL, NULL, NULL, 'adular', NULL, NULL, 'Español: adular', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'adversario', NULL, NULL, 'Español: adversario', 'import-espanol-bubi');

-- Lote 3 (entradas 51 a 75)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('wewe', 'adj.', NULL, NULL, 'Cl. 1', 'afable', NULL, NULL, 'Español: afable', 'import-espanol-bubi'),
  ('ebotyera', 's.', 'm.', NULL, 'Cl. 7', 'afecto', NULL, NULL, 'Español: afecto', 'import-espanol-bubi'),
  ('booa', 'v.', NULL, NULL, NULL, 'afeitar', NULL, NULL, 'Español: afeitar', 'import-espanol-bubi'),
  ('bassáa', 'v.', NULL, NULL, NULL, 'afilar', NULL, NULL, 'Español: afilar', 'import-espanol-bubi'),
  ('e''ee', 's.', 'f.', NULL, 'Cl. 7', 'mación', NULL, NULL, 'Español: mación', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'afligir', NULL, NULL, 'Español: afligir', 'import-espanol-bubi'),
  ('ríe', 's.', 'm.', NULL, 'Cl. 5', 'afluente', NULL, NULL, 'Español: afluente', 'import-espanol-bubi'),
  ('pe''o', 's.', 'm.', NULL, 'Cl. 9', 'aforismo', NULL, NULL, 'Español: aforismo', 'import-espanol-bubi'),
  ('walállo', 'adv.', NULL, NULL, 'Cl. 8', 'afuera', NULL, NULL, 'Español: afuera', 'import-espanol-bubi'),
  ('kokotta', 'v.', NULL, NULL, NULL, 'agacharse', NULL, NULL, 'Español: agacharse', 'import-espanol-bubi'),
  ('ebalabala', 's.', 'f.', NULL, 'Cl. 7', 'agalla', NULL, NULL, 'Español: agalla', 'import-espanol-bubi'),
  ('lorá', 's.', 'm.', NULL, 'Cl. 4', 'ágape', NULL, NULL, 'Español: ágape', 'import-espanol-bubi'),
  ('bolotta', 's.', 'm.', NULL, 'Cl. 1', 'agente', NULL, NULL, 'Español: agente', 'import-espanol-bubi'),
  ('ekasso', 'adj.', NULL, NULL, 'Cl. 7', 'ágil', NULL, NULL, 'Español: ágil', 'import-espanol-bubi'),
  ('maityi', 's.', 'm.', NULL, 'Cl. 6', 'agosto', NULL, NULL, 'Español: agosto', 'import-espanol-bubi'),
  ('bOtyibíi', 's.', 'm.', NULL, 'Cl. 3', 'agotamiento', NULL, NULL, 'Español: agotamiento', 'import-espanol-bubi'),
  ('buébué', 'adj.', NULL, NULL, 'Cl. 5', 'agradable', NULL, NULL, 'Español: agradable', 'import-espanol-bubi'),
  ('bosákko', 's.', 'm.', NULL, 'Cl. 3', 'agradecimiento', NULL, NULL, 'Español: agradecimiento', 'import-espanol-bubi'),
  ('lopéllo', 's.', 'm.', NULL, 'Cl. 10', 'agravio', NULL, NULL, 'Español: agravio', 'import-espanol-bubi'),
  ('káké', 'adj.', NULL, NULL, NULL, 'agrio', NULL, NULL, 'Español: agrio', 'import-espanol-bubi'),
  ('epiiá', 's.', 'm.', NULL, 'Cl. 7', 'aguacate', NULL, NULL, 'Español: aguacate', 'import-espanol-bubi'),
  ('biálla', 'v.', NULL, NULL, 'Cl. 2', 'aguantar', NULL, NULL, 'Español: aguantar', 'import-espanol-bubi'),
  ('betella', 'v.', NULL, NULL, NULL, 'aguardar', NULL, NULL, 'Español: aguardar', 'import-espanol-bubi'),
  ('koróko', 's.', 'm.', NULL, 'Cl. 10', 'aguardiente', NULL, NULL, 'Español: aguardiente', 'import-espanol-bubi'),
  ('ehokko', 's.', 'm.', NULL, 'Cl. 7', 'aguijón', NULL, NULL, 'Español: aguijón', 'import-espanol-bubi');

-- Lote 4 (entradas 76 a 100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bolló', 's.', 'm.', NULL, 'Cl. 3', 'agujero', NULL, NULL, 'Español: agujero', 'import-espanol-bubi'),
  ('aho', 'adv.', NULL, NULL, NULL, 'ahí', NULL, NULL, 'Español: ahí', 'import-espanol-bubi'),
  ('kóbbia', 'v.', NULL, NULL, NULL, 'ahogar', NULL, NULL, 'Español: ahogar', 'import-espanol-bubi'),
  ('nkuáaó', 'adv.', NULL, NULL, NULL, 'ahora', NULL, NULL, 'Español: ahora', 'import-espanol-bubi'),
  ('heñkalla', 'v.', NULL, NULL, NULL, 'ahorcar', NULL, NULL, 'Español: ahorcar', 'import-espanol-bubi'),
  ('naríbia', 'v.', NULL, NULL, NULL, 'ahuyentar', NULL, NULL, 'Español: ahuyentar', 'import-espanol-bubi'),
  ('ehurú', 's.', 'm.', NULL, 'Cl. 7', 'aire', NULL, NULL, 'Español: aire', 'import-espanol-bubi'),
  ('erippí', 's.', 'm.', NULL, 'Cl. 7', 'aislamiento', NULL, NULL, 'Español: aislamiento', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'ajar', NULL, NULL, 'Español: ajar', 'import-espanol-bubi'),
  ('buaéa', 's.', 'm.', NULL, 'Cl. 3', 'alambre', NULL, NULL, 'Español: alambre', 'import-espanol-bubi'),
  ('rilokko', 's.', 'm.', NULL, 'Cl. 5', 'albergue', NULL, NULL, 'Español: albergue', 'import-espanol-bubi'),
  ('ekerikeri', 'adj.', NULL, NULL, 'Cl. 7', 'albino', NULL, NULL, 'Español: albino', 'import-espanol-bubi'),
  ('nokonoko', 's.', 'm.', NULL, 'Cl. 9', 'alboroto', NULL, NULL, 'Español: alboroto', 'import-espanol-bubi'),
  ('pi', 's.', 'm.', NULL, 'Cl. 7', 'albricias', NULL, NULL, 'Español: albricias', 'import-espanol-bubi'),
  ('bOtúkku', 's.', 'm.', NULL, 'Cl. 1', 'alcalde', NULL, NULL, 'Español: alcalde', 'import-espanol-bubi'),
  ('bOkóppi', 's.', 'm.', NULL, 'Cl. 1', 'alcohólico', NULL, NULL, 'Español: alcohólico', 'import-espanol-bubi'),
  ('botyo', 'adj.', NULL, NULL, 'Cl. 12', 'aldeano', NULL, NULL, 'Español: aldeano', 'import-espanol-bubi'),
  ('ollé', 's.', 'm.', NULL, 'Cl. 7', 'algo', NULL, NULL, 'Español: algo', 'import-espanol-bubi'),
  ('eserubba', 's.', 'm.', NULL, 'Cl. 7', 'algodón', NULL, NULL, 'Español: algodón', 'import-espanol-bubi'),
  ('bOhó''o', 's.', 'm.', NULL, 'Cl. 4', 'algodonero', NULL, NULL, 'Español: algodonero', 'import-espanol-bubi'),
  ('eporoporo', 's.', 'm.', NULL, 'Cl. 7', 'alguacil', NULL, NULL, 'Español: alguacil', 'import-espanol-bubi'),
  ('siapa', 's.', 'm.', NULL, 'Cl. 12', 'alicate', NULL, NULL, 'Español: alicate', 'import-espanol-bubi'),
  ('boo', 's.', 'm.', NULL, 'Cl. 3', 'aliento', NULL, NULL, 'Español: aliento', 'import-espanol-bubi'),
  ('lorá', 's.', 'm.', NULL, 'Cl. 11', 'alimento', NULL, NULL, 'Español: alimento', 'import-espanol-bubi'),
  ('bolekko', 's.', 'f.', NULL, 'Cl. 3', 'alineación', NULL, NULL, 'Español: alineación', 'import-espanol-bubi');

-- Lote 5 (entradas 101 a 125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sotya', 'v.', NULL, NULL, NULL, 'alinear', NULL, NULL, 'Español: alinear', 'import-espanol-bubi'),
  ('irera', 'v.', NULL, NULL, NULL, 'alistar', NULL, NULL, 'Español: alistar', 'import-espanol-bubi'),
  ('botupori', 's.', 'm.', NULL, 'Cl. 3', 'alivio', NULL, NULL, 'Español: alivio', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, NULL, 'allegado', NULL, NULL, 'Español: allegado', 'import-espanol-bubi'),
  ('hallé', 'adv.', NULL, NULL, NULL, 'allí', NULL, NULL, 'Español: allí', 'import-espanol-bubi'),
  ('bOle''ú', 's.', 'm.', NULL, 'Cl. 3', 'almacén', NULL, NULL, 'Español: almacén', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, 'almacenar', NULL, NULL, 'Español: almacenar', 'import-espanol-bubi'),
  ('bole''o', 's.', 'm.', NULL, 'Cl. 1', 'almacenista', NULL, NULL, 'Español: almacenista', 'import-espanol-bubi'),
  ('ribélo', 's.', 'm.', NULL, 'Cl. 5', 'almanaque', NULL, NULL, 'Español: almanaque', 'import-espanol-bubi'),
  ('bOakká', 's.', 'f.', NULL, 'Cl. 3', 'almendra', NULL, NULL, 'Español: almendra', 'import-espanol-bubi'),
  ('sakká', 's.', 'm.', NULL, 'Cl. 12', 'almendrillo', NULL, NULL, 'Español: almendrillo', 'import-espanol-bubi'),
  ('sitátyi', 's.', 'm.', NULL, 'Cl. 12', 'almidón', NULL, NULL, 'Español: almidón', 'import-espanol-bubi'),
  ('sitátyibbia', 'v.', NULL, NULL, NULL, 'almidonar', NULL, NULL, 'Español: almidonar', 'import-espanol-bubi'),
  ('rihatta', 's.', 'm.', NULL, 'Cl. 5', 'almuerzo', NULL, NULL, 'Español: almuerzo', 'import-espanol-bubi'),
  ('bOlokia', 's.', 'm.', NULL, 'Cl. 1', 'alojador', NULL, NULL, 'Español: alojador', 'import-espanol-bubi'),
  ('rilokko', 's.', 'm.', NULL, 'Cl. 5', 'alojamiento', NULL, NULL, 'Español: alojamiento', 'import-espanol-bubi'),
  ('wettya', 's.', 'm.', NULL, 'Cl. 3', 'alquería', NULL, NULL, 'Español: alquería', 'import-espanol-bubi'),
  ('bóra', 'v.', NULL, NULL, NULL, 'alquilar', NULL, NULL, 'Español: alquilar', 'import-espanol-bubi'),
  ('renti', 's.', 'm.', NULL, 'Cl. 5', 'alquiler', NULL, NULL, 'Español: alquiler', 'import-espanol-bubi'),
  ('kolottá', 's.', 'm.', NULL, 'Cl. 10', 'alquitrán', NULL, NULL, 'Español: alquitrán', 'import-espanol-bubi'),
  ('bi''o', 'adv.', NULL, NULL, NULL, 'alrededor', NULL, NULL, 'Español: alrededor', 'import-espanol-bubi'),
  ('bosalelle', 'adj.', NULL, NULL, 'Cl. 1', 'altruista', NULL, NULL, 'Español: altruista', 'import-espanol-bubi'),
  ('rikókko', 's.', 'm.', NULL, 'Cl. 5', 'alumbrado', NULL, NULL, 'Español: alumbrado', 'import-espanol-bubi'),
  ('bue''á', 's.', 'm.', NULL, 'Cl. 1', 'alumno', NULL, NULL, 'Español: alumno', 'import-espanol-bubi'),
  ('baoppó', 's.', 'm.', NULL, 'Cl. 6', 'aluvión', NULL, NULL, 'Español: aluvión', 'import-espanol-bubi');

-- Lote 6 (entradas 126 a 150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ebotyera', 'adj.', NULL, NULL, 'Cl. 7', 'amable', NULL, NULL, 'Español: amable', 'import-espanol-bubi'),
  ('sehehí', 's.', 'm.', NULL, 'Cl. 12', 'amaine', NULL, NULL, 'Español: amaine', 'import-espanol-bubi'),
  ('mil', 's.', NULL, NULL, 'Cl. 1', 'amante', NULL, NULL, 'Español: amante', 'import-espanol-bubi'),
  ('hOlláa', 'v.', NULL, NULL, NULL, 'amar', NULL, NULL, 'Español: amar', 'import-espanol-bubi'),
  ('lopetyípetyíi', 'adj.', NULL, NULL, 'Cl. 7', 'amargo', NULL, NULL, 'Español: amargo', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'm.', NULL, 'Cl. 4', 'amargor', NULL, NULL, 'Español: amargor', 'import-espanol-bubi'),
  ('ebotúbotu', 'adj.', NULL, NULL, 'Cl. 7', 'ambiguo', NULL, NULL, 'Español: ambiguo', 'import-espanol-bubi'),
  ('alo', 's.', 'm.', NULL, NULL, 'amén', NULL, NULL, 'Español: amén', 'import-espanol-bubi'),
  ('mmása', 's.', 'm.', NULL, 'Cl. 1', 'amo', NULL, NULL, 'Español: amo', 'import-espanol-bubi'),
  ('bassáa', 'v.', NULL, NULL, NULL, 'amolar', NULL, NULL, 'Español: amolar', 'import-espanol-bubi'),
  ('rihólé', 's.', 'm.', NULL, 'Cl. 6', 'amor', NULL, NULL, 'Español: amor', 'import-espanol-bubi'),
  ('io', 's.', 'm.', NULL, 'Cl. 1', 'amorcito', NULL, NULL, 'Español: amorcito', 'import-espanol-bubi'),
  ('eburi', 's.', 'm.', NULL, 'Cl. 7', 'amparo', NULL, NULL, 'Español: amparo', 'import-espanol-bubi'),
  ('robbo', 's.', 'm.', NULL, 'Cl. 5', 'amuleto', NULL, NULL, 'Español: amuleto', 'import-espanol-bubi'),
  ('epanapénne', 's.', 'm.', NULL, 'Cl. 7', 'ananás', NULL, NULL, 'Español: ananás', 'import-espanol-bubi'),
  ('bOtyílé', 's.', 'm.', NULL, 'Cl. 1', 'ancestro', NULL, NULL, 'Español: ancestro', 'import-espanol-bubi'),
  ('boyólla', 's.', 'm.', NULL, 'Cl. 1', 'anciano', NULL, NULL, 'Español: anciano', 'import-espanol-bubi'),
  ('uánna', 'v.', NULL, NULL, NULL, 'anegar', NULL, NULL, 'Español: anegar', 'import-espanol-bubi'),
  ('bOhekkáa', 's.', 'm.', NULL, 'Cl. 1', 'anfitrión', NULL, NULL, 'Español: anfitrión', 'import-espanol-bubi'),
  ('boatyo', 's.', 'm.', NULL, 'Cl. 3', 'anguilero', NULL, NULL, 'Español: anguilero', 'import-espanol-bubi'),
  ('elella', 'v.', NULL, NULL, NULL, 'anhelar', NULL, NULL, 'Español: anhelar', 'import-espanol-bubi'),
  ('eeleri', 's.', 'm.', NULL, 'Cl. 7', 'anhelo', NULL, NULL, 'Español: anhelo', 'import-espanol-bubi'),
  ('mmetya', 'adj.', NULL, NULL, 'Cl. 1', 'animador', NULL, NULL, 'Español: animador', 'import-espanol-bubi'),
  ('nabba', 's.', 'm.', NULL, 'Cl. 9', 'animal', NULL, NULL, 'Español: animal', 'import-espanol-bubi'),
  ('ehaé', 's.', 'm.', NULL, 'Cl. 7', 'ánimo', NULL, NULL, 'Español: ánimo', 'import-espanol-bubi');

-- Lote 7 (entradas 151 a 175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOambó', 'adj.', NULL, NULL, 'Cl. 1', 'annobonés', NULL, NULL, 'Español: annobonés', 'import-espanol-bubi'),
  ('itoMri', 's.', 'm.', NULL, 'Cl. 5', 'ano', NULL, NULL, 'Español: ano', 'import-espanol-bubi'),
  ('irera', 'v.', NULL, NULL, NULL, 'anotar', NULL, NULL, 'Español: anotar', 'import-espanol-bubi'),
  ('mmalé', 'adv.', NULL, NULL, NULL, 'antaño', NULL, NULL, 'Español: antaño', 'import-espanol-bubi'),
  ('lobbó', 's.', 'm.', NULL, 'Cl. 11', 'antebrazo', NULL, NULL, 'Español: antebrazo', 'import-espanol-bubi'),
  ('okátya', 'v.', NULL, NULL, NULL, 'anteponer', NULL, NULL, 'Español: anteponer', 'import-espanol-bubi'),
  ('aotya', 'adv.', NULL, NULL, NULL, 'antes', NULL, NULL, 'Español: antes', 'import-espanol-bubi'),
  ('mmalé', 'adv.', NULL, NULL, 'Cl. 5', 'antiguamente', NULL, NULL, 'Español: antiguamente', 'import-espanol-bubi'),
  ('sétyi', 's.', 'm.', NULL, 'Cl. 12', 'antílope', NULL, NULL, 'Español: antílope', 'import-espanol-bubi'),
  ('bonokoa', 'adj.', NULL, NULL, 'Cl. 3', 'antipático', NULL, NULL, 'Español: antipático', 'import-espanol-bubi'),
  ('ekulekulé', 's.', 'm.', NULL, 'Cl. 7', 'antro', NULL, NULL, 'Español: antro', 'import-espanol-bubi'),
  ('sétyanna', 'v.', NULL, NULL, NULL, 'anular', NULL, NULL, 'Español: anular', 'import-espanol-bubi'),
  ('obélló', 'adj.', NULL, NULL, 'Cl. 1', 'anunciador', NULL, NULL, 'Español: anunciador', 'import-espanol-bubi'),
  ('belélla', 'v.', NULL, NULL, NULL, 'anunciar', NULL, NULL, 'Español: anunciar', 'import-espanol-bubi'),
  ('ribélla', 's.', 'm.', NULL, 'Cl. 6', 'anuncio', NULL, NULL, 'Español: anuncio', 'import-espanol-bubi'),
  ('sihúku', 's.', 'm.', NULL, 'Cl. 12', 'anzuelo', NULL, NULL, 'Español: anzuelo', 'import-espanol-bubi'),
  ('heráa', 'v.', NULL, NULL, NULL, 'añadir', NULL, NULL, 'Español: añadir', 'import-espanol-bubi'),
  ('loa', 's.', 'm.', NULL, 'Cl. 11', 'año', NULL, NULL, 'Español: año', 'import-espanol-bubi'),
  ('bohuláhúlla', 'adj.', NULL, NULL, 'Cl. 1', 'apaciguador', NULL, NULL, 'Español: apaciguador', 'import-espanol-bubi'),
  ('hobbia', 'v.', NULL, NULL, NULL, 'apaciguar', NULL, NULL, 'Español: apaciguar', 'import-espanol-bubi'),
  ('mMpe', 'adj.', NULL, NULL, 'Cl. 1', 'apaleador', NULL, NULL, 'Español: apaleador', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'apalear', NULL, NULL, 'Español: apalear', 'import-espanol-bubi'),
  ('emasíín', 's.', 'm.', NULL, 'Cl. 7', 'aparato', NULL, NULL, 'Español: aparato', 'import-espanol-bubi'),
  ('leporea', 'v.', NULL, NULL, NULL, 'aparecer', NULL, NULL, 'Español: aparecer', 'import-espanol-bubi'),
  ('kossá', 'v.', NULL, NULL, NULL, 'aparejar', NULL, NULL, 'Español: aparejar', 'import-espanol-bubi');

-- Lote 8 (entradas 176 a 200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('koppia', 'v.', NULL, NULL, NULL, 'apartar', NULL, NULL, 'Español: apartar', 'import-espanol-bubi'),
  ('etyupiáera', 's.', 'm.', NULL, 'Cl. 7', 'apellido', NULL, NULL, 'Español: apellido', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'apenar', NULL, NULL, 'Español: apenar', 'import-espanol-bubi'),
  ('ehólle', 's.', 'f.', NULL, 'Cl. 7', 'apetencia', NULL, NULL, 'Español: apetencia', 'import-espanol-bubi'),
  ('eotyú', 's.', 'm.', NULL, 'Cl. 7', 'apetito', NULL, NULL, 'Español: apetito', 'import-espanol-bubi'),
  ('ó''ia', 'v.', NULL, NULL, NULL, 'apiadar', NULL, NULL, 'Español: apiadar', 'import-espanol-bubi'),
  ('ebinaeri', 's.', 'm.', NULL, 'Cl. 7', 'aplastamiento', NULL, NULL, 'Español: aplastamiento', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'aplaudir', NULL, NULL, 'Español: aplaudir', 'import-espanol-bubi'),
  ('ebátyo', 's.', 'm.', NULL, 'Cl. 7', 'aplauso', NULL, NULL, 'Español: aplauso', 'import-espanol-bubi'),
  ('heráa', 'v.', NULL, NULL, NULL, 'aplicar', NULL, NULL, 'Español: aplicar', 'import-espanol-bubi'),
  ('ekakká', 'adj.', NULL, NULL, 'Cl. 7', 'apocado', NULL, NULL, 'Español: apocado', 'import-espanol-bubi'),
  ('sikkiáa', 'v.', NULL, NULL, NULL, 'apocar', NULL, NULL, 'Español: apocar', 'import-espanol-bubi'),
  ('inf', 's.', NULL, NULL, NULL, 'apoderarse', NULL, NULL, 'Español: apoderarse', 'import-espanol-bubi'),
  ('sibotyílla', 's.', 'm.', NULL, 'Cl. 12', 'apodo', NULL, NULL, 'Español: apodo', 'import-espanol-bubi'),
  ('etyubbá', 's.', 'm.', NULL, 'Cl. 7', 'aposento', NULL, NULL, 'Español: aposento', 'import-espanol-bubi'),
  ('petta', 'v.', NULL, NULL, NULL, 'apostar', NULL, NULL, 'Español: apostar', 'import-espanol-bubi'),
  ('leára', 'v.', NULL, NULL, NULL, 'apoyar', NULL, NULL, 'Español: apoyar', 'import-espanol-bubi'),
  ('etyuppo', 's.', 'm.', NULL, 'Cl. 7', 'apoyo', NULL, NULL, 'Español: apoyo', 'import-espanol-bubi'),
  ('bue''á', 's.', 'm.', NULL, 'Cl. 1', 'aprendiz', NULL, NULL, 'Español: aprendiz', 'import-espanol-bubi'),
  ('bakasso', 'adv.', NULL, NULL, NULL, 'aprisa', NULL, NULL, 'Español: aprisa', 'import-espanol-bubi'),
  ('ebbiera', 'v.', NULL, NULL, NULL, 'aprobar', NULL, NULL, 'Español: aprobar', 'import-espanol-bubi'),
  ('ripétyoo', 's.', 'm.', NULL, 'Cl. 5', 'apuntalamiento', NULL, NULL, 'Español: apuntalamiento', 'import-espanol-bubi'),
  ('hállo', 'adv.', NULL, NULL, NULL, 'aquí', NULL, NULL, 'Español: aquí', 'import-espanol-bubi'),
  ('apatta', 'v.', NULL, NULL, NULL, 'arañar', NULL, NULL, 'Español: arañar', 'import-espanol-bubi'),
  ('bOityé', 's.', 'm.', NULL, 'Cl. 1', 'árbitro', NULL, NULL, 'Español: árbitro', 'import-espanol-bubi');

-- Lote 9 (entradas 201 a 225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('botté', 's.', 'm.', NULL, 'Cl. 3', 'árbol', NULL, NULL, 'Español: árbol', 'import-espanol-bubi'),
  ('sitté', 's.', 'm.', NULL, 'Cl. 12', 'arbusto', NULL, NULL, 'Español: arbusto', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, 'archivar', NULL, NULL, 'Español: archivar', 'import-espanol-bubi'),
  ('bolakka', 's.', 'm.', NULL, 'Cl. 3', 'arco', NULL, NULL, 'Español: arco', 'import-espanol-bubi'),
  ('nokko', 's.', 'm.', NULL, 'Cl. 9', 'arcoiris', NULL, NULL, 'Español: arcoiris', 'import-espanol-bubi'),
  ('ruppa', 'v.', NULL, NULL, NULL, 'arder', NULL, NULL, 'Español: arder', 'import-espanol-bubi'),
  ('eburí', 'adj.', NULL, NULL, 'Cl. 7', 'ardiente', NULL, NULL, 'Español: ardiente', 'import-espanol-bubi'),
  ('ehalle', 's.', 'm.', NULL, 'Cl. 7', 'arenque', NULL, NULL, 'Español: arenque', 'import-espanol-bubi'),
  ('eleppo', 's.', 'm.', NULL, 'Cl. 7', 'armario', NULL, NULL, 'Español: armario', 'import-espanol-bubi'),
  ('ekollé', 's.', 'm.', NULL, 'Cl. 7', 'armazón', NULL, NULL, 'Español: armazón', 'import-espanol-bubi'),
  ('lopáa', 's.', 'm.', NULL, 'Cl. 7', 'aro', NULL, NULL, 'Español: aro', 'import-espanol-bubi'),
  ('ehokko', 's.', 'm.', NULL, 'Cl. 7', 'arpón', NULL, NULL, 'Español: arpón', 'import-espanol-bubi'),
  ('riheri', 's.', 'm.', NULL, 'Cl. 5', 'arreglo', NULL, NULL, 'Español: arreglo', 'import-espanol-bubi'),
  ('oOO''ó', 'adv.', NULL, NULL, NULL, 'arriba', NULL, NULL, 'Español: arriba', 'import-espanol-bubi'),
  ('ríe', 's.', 'm.', NULL, 'Cl. 5', 'arroyo', NULL, NULL, 'Español: arroyo', 'import-espanol-bubi'),
  ('ressi', 's.', 'm.', NULL, 'Cl. 10', 'arroz', NULL, NULL, 'Español: arroz', 'import-espanol-bubi'),
  ('OOnoa', 'adj.', NULL, NULL, 'Cl. 3', 'asado', NULL, NULL, 'Español: asado', 'import-espanol-bubi'),
  ('loatya', 's.', 'm.', NULL, 'Cl. 5', 'ascensor', NULL, NULL, 'Español: ascensor', 'import-espanol-bubi'),
  ('eiloom', 's.', 'm.', NULL, 'Cl. 7', 'aseo', NULL, NULL, 'Español: aseo', 'import-espanol-bubi'),
  ('olláa', 'v.', NULL, NULL, NULL, 'asesinar', NULL, NULL, 'Español: asesinar', 'import-espanol-bubi'),
  ('lállo', 'adv.', NULL, NULL, 'Cl. 5', 'así', NULL, NULL, 'Español: así', 'import-espanol-bubi'),
  ('eakko', 's.', 'm.', NULL, 'Cl. 7', 'asidero', NULL, NULL, 'Español: asidero', 'import-espanol-bubi'),
  ('empa', 's.', 'm.', NULL, 'Cl. 7', 'asiento', NULL, NULL, 'Español: asiento', 'import-espanol-bubi'),
  ('bopuératá', 'adj.', NULL, NULL, 'Cl. 1', 'asistente', NULL, NULL, 'Español: asistente', 'import-espanol-bubi'),
  ('sihám', 's.', 'm.', NULL, 'Cl. 12', 'aspecto', NULL, NULL, 'Español: aspecto', 'import-espanol-bubi');

-- Lote 10 (entradas 226 a 250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOkottó', 's.', 'm.', NULL, 'Cl. 3', 'asueto', NULL, NULL, 'Español: asueto', 'import-espanol-bubi'),
  ('bo', 's.', 'm.', NULL, 'Cl. 3', 'asunto', NULL, NULL, 'Español: asunto', 'import-espanol-bubi'),
  ('bosáráa', 's.', 'm.', NULL, 'Cl. 1', 'asustador', NULL, NULL, 'Español: asustador', 'import-espanol-bubi'),
  ('loakke', 's.', 'm.', NULL, 'Cl. 11', 'atado', NULL, NULL, 'Español: atado', 'import-espanol-bubi'),
  ('ipuaera', 's.', 'm.', NULL, 'Cl. 5', 'atajo', NULL, NULL, 'Español: atajo', 'import-espanol-bubi'),
  ('rioppo', 's.', 'm.', NULL, 'Cl. 5', 'ataque', NULL, NULL, 'Español: ataque', 'import-espanol-bubi'),
  ('buatotyio', 's.', 'm.', NULL, 'Cl. 3', 'atardecer', NULL, NULL, 'Español: atardecer', 'import-espanol-bubi'),
  ('lobakka', 's.', 'm.', NULL, 'Cl. 3', 'ataúd', NULL, NULL, 'Español: ataúd', 'import-espanol-bubi'),
  ('bosáráa', 'adj.', NULL, NULL, 'Cl. 1', 'aterrador', NULL, NULL, 'Español: aterrador', 'import-espanol-bubi'),
  ('sára', 'v.', NULL, NULL, NULL, 'aterrar', NULL, NULL, 'Español: aterrar', 'import-espanol-bubi'),
  ('áppia', 'v.', NULL, NULL, NULL, 'atetar', NULL, NULL, 'Español: atetar', 'import-espanol-bubi'),
  ('elláa', 'v.', NULL, NULL, NULL, 'atisbar', NULL, NULL, 'Español: atisbar', 'import-espanol-bubi'),
  ('kóbba', 'v.', NULL, NULL, NULL, 'atizar', NULL, NULL, 'Español: atizar', 'import-espanol-bubi'),
  ('ekébbia', 'v.', NULL, NULL, NULL, 'atontar', NULL, NULL, 'Español: atontar', 'import-espanol-bubi'),
  ('tyipóbia', 'v.', NULL, NULL, NULL, 'atormentar', NULL, NULL, 'Español: atormentar', 'import-espanol-bubi'),
  ('oppa', 'v.', NULL, NULL, NULL, 'atragantar', NULL, NULL, 'Español: atragantar', 'import-espanol-bubi'),
  ('rnmetta', 'v.', NULL, NULL, NULL, 'atrapar', NULL, NULL, 'Español: atrapar', 'import-espanol-bubi'),
  ('nná', 'adv.', NULL, NULL, NULL, 'atrás', NULL, NULL, 'Español: atrás', 'import-espanol-bubi'),
  ('péréa', 'v.', NULL, NULL, NULL, 'atravesar', NULL, NULL, 'Español: atravesar', 'import-espanol-bubi'),
  ('elasálássá', 's.', 'm.', NULL, 'Cl. 7', 'atrevimiento', NULL, NULL, 'Español: atrevimiento', 'import-espanol-bubi'),
  ('pá', 'v.', NULL, NULL, NULL, 'atribuir', NULL, NULL, 'Español: atribuir', 'import-espanol-bubi'),
  ('binna', 'v.', NULL, NULL, NULL, 'atropellar', NULL, NULL, 'Español: atropellar', 'import-espanol-bubi'),
  ('bOhétyo', 's.', 'm.', NULL, 'Cl. 3', 'atuendo', NULL, NULL, 'Español: atuendo', 'import-espanol-bubi'),
  ('hóbba', 'v.', NULL, NULL, NULL, 'aullar', NULL, NULL, 'Español: aullar', 'import-espanol-bubi'),
  ('ebé''i', 's.', 'm.', NULL, 'Cl. 7', 'aullido', NULL, NULL, 'Español: aullido', 'import-espanol-bubi');

-- Lote 11 (entradas 251 a 275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('owera', 'v.', NULL, NULL, NULL, 'aumentar', NULL, NULL, 'Español: aumentar', 'import-espanol-bubi'),
  ('elotolottó', 's.', 'm.', NULL, 'Cl. 7', 'auricular', NULL, NULL, 'Español: auricular', 'import-espanol-bubi'),
  ('roorí', 's.', 'm.', NULL, 'Cl. 5', 'autogobierno', NULL, NULL, 'Español: autogobierno', 'import-espanol-bubi'),
  ('euláúla', 's.', 'm.', NULL, 'Cl. 7', 'automóvil', NULL, NULL, 'Español: automóvil', 'import-espanol-bubi'),
  ('bulaerea', 'v.', NULL, NULL, NULL, 'autoprotegerse', NULL, NULL, 'Español: autoprotegerse', 'import-espanol-bubi'),
  ('opénera', 'adj.', NULL, NULL, 'Cl. 1', 'autor', NULL, NULL, 'Español: autor', 'import-espanol-bubi'),
  ('eiállo', 's.', 'm.', NULL, 'Cl. 7', 'auxilio', NULL, NULL, 'Español: auxilio', 'import-espanol-bubi'),
  ('sipoppi', 'adj.', NULL, NULL, 'Cl. 12', 'avaro', NULL, NULL, 'Español: avaro', 'import-espanol-bubi'),
  ('bokáa', 's.', 'm.', NULL, 'Cl. 1', 'aviador', NULL, NULL, 'Español: aviador', 'import-espanol-bubi'),
  ('bokáa', 's.', 'm.', NULL, 'Cl. 3', 'avión', NULL, NULL, 'Español: avión', 'import-espanol-bubi'),
  ('riborí', 's.', 'm.', NULL, 'Cl. 5', 'aviso', NULL, NULL, 'Español: aviso', 'import-espanol-bubi'),
  ('riotótto', 's.', 'm.', NULL, 'Cl. 5', 'avispero', NULL, NULL, 'Español: avispero', 'import-espanol-bubi'),
  ('boapí', 's.', 'm.', NULL, 'Cl. 3', 'avispón', NULL, NULL, 'Español: avispón', 'import-espanol-bubi'),
  ('mpári', 'adv.', NULL, NULL, 'Cl. 7', 'ayer', NULL, NULL, 'Español: ayer', 'import-espanol-bubi'),
  ('bOpueratá', 'adj.', NULL, NULL, 'Cl. 1', 'ayudante', NULL, NULL, 'Español: ayudante', 'import-espanol-bubi'),
  ('bebabebba', 'adj.', NULL, NULL, 'Cl. 9', 'azul', NULL, NULL, 'Español: azul', 'import-espanol-bubi'),
  ('kóbba', 'v.', NULL, NULL, NULL, 'azuzar', NULL, NULL, 'Español: azuzar', 'import-espanol-bubi'),
  ('hókobbia', 'v.', NULL, NULL, NULL, 'babear', NULL, NULL, 'Español: babear', 'import-espanol-bubi'),
  ('bohókko', 'adj.', NULL, NULL, 'Cl. 1', 'baboso', NULL, NULL, 'Español: baboso', 'import-espanol-bubi'),
  ('píssi', 's.', 'm.', NULL, 'Cl. 9', 'bacalao', NULL, NULL, 'Español: bacalao', 'import-espanol-bubi'),
  ('eppó', 's.', 'm.', NULL, 'Cl. 7', 'bacín', NULL, NULL, 'Español: bacín', 'import-espanol-bubi'),
  ('sa''á', 's.', 'm.', NULL, 'Cl. 12', 'báculo', NULL, NULL, 'Español: báculo', 'import-espanol-bubi'),
  ('boakká', 's.', 'm.', NULL, 'Cl. 3', 'badén', NULL, NULL, 'Español: badén', 'import-espanol-bubi'),
  ('inf', 's.', NULL, NULL, NULL, 'bailar', NULL, NULL, 'Español: bailar', 'import-espanol-bubi'),
  ('lobileri', 's.', 'm.', NULL, 'Cl. 9', 'baile', NULL, NULL, 'Español: baile', 'import-espanol-bubi');

-- Lote 12 (entradas 276 a 300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('esotyo', 's.', 'f.', NULL, 'Cl. 7', 'bajada', NULL, NULL, 'Español: bajada', 'import-espanol-bubi'),
  ('bOnná', 's.', 'f.', NULL, 'Cl. 3', 'bala', NULL, NULL, 'Español: bala', 'import-espanol-bubi'),
  ('ikíra', 'v.', NULL, NULL, NULL, 'balancear', NULL, NULL, 'Español: balancear', 'import-espanol-bubi'),
  ('ke''o', 's.', 'f.', NULL, 'Cl. 9', 'balanza', NULL, NULL, 'Español: balanza', 'import-espanol-bubi'),
  ('kuakuabia', 'v.', NULL, NULL, NULL, 'balbucear', NULL, NULL, 'Español: balbucear', 'import-espanol-bubi'),
  ('lokuakua', 's.', 'm.', NULL, 'Cl. 4', 'balbuceo', NULL, NULL, 'Español: balbuceo', 'import-espanol-bubi'),
  ('sityotyo', 's.', 'm.', NULL, 'Cl. 12', 'ballenato', NULL, NULL, 'Español: ballenato', 'import-espanol-bubi'),
  ('suppá', 's.', 'm.', NULL, 'Cl. 12', 'balón', NULL, NULL, 'Español: balón', 'import-espanol-bubi'),
  ('ebo''u', 's.', 'f.', NULL, 'Cl. 7', 'balsa', NULL, NULL, 'Español: balsa', 'import-espanol-bubi'),
  ('bOtyerú', 's.', 'm.', NULL, 'Cl. 3', 'bambú', NULL, NULL, 'Español: bambú', 'import-espanol-bubi'),
  ('inanáa', 's.', 'f.', NULL, 'Cl. 5', 'banana', NULL, NULL, 'Español: banana', 'import-espanol-bubi'),
  ('eberí', 's.', 'm.', NULL, NULL, 'bananal', NULL, NULL, 'Español: bananal', 'import-espanol-bubi'),
  ('rikobbe', 's.', 'm.', NULL, 'Cl. 5', 'banano', NULL, NULL, 'Español: banano', 'import-espanol-bubi'),
  ('reppo', 's.', 'm.', NULL, 'Cl. 56', 'banco', NULL, NULL, 'Español: banco', 'import-espanol-bubi'),
  ('sikuua', 's.', 'm.', NULL, 'Cl. 12', 'banderín', NULL, NULL, 'Español: banderín', 'import-espanol-bubi'),
  ('bákko', 'adj.', NULL, NULL, 'Cl. 9', 'bandido', NULL, NULL, 'Español: bandido', 'import-espanol-bubi'),
  ('eette', 's.', 'm.', NULL, 'Cl. 7', 'bando', NULL, NULL, 'Español: bando', 'import-espanol-bubi'),
  ('bákkO', 'adj.', NULL, NULL, 'Cl. 9', 'bandolero', NULL, NULL, 'Español: bandolero', 'import-espanol-bubi'),
  ('bueppo', 's.', 'm.', NULL, 'Cl. 1', 'banquero', NULL, NULL, 'Español: banquero', 'import-espanol-bubi'),
  ('loréi', 's.', 'm.', NULL, 'Cl. 9', 'banquete', NULL, NULL, 'Español: banquete', 'import-espanol-bubi'),
  ('simpa', 's.', 'm.', NULL, 'Cl. 12', 'banquillo', NULL, NULL, 'Español: banquillo', 'import-espanol-bubi'),
  ('isubbó', 's.', 'm.', NULL, 'Cl. 5', 'baño', NULL, NULL, 'Español: baño', 'import-espanol-bubi'),
  ('riebba', 's.', 'm.', NULL, 'Cl. 5', 'bar', NULL, NULL, 'Español: bar', 'import-espanol-bubi'),
  ('boseruseru', 'adj.', NULL, NULL, 'Cl. 1', 'barbado', NULL, NULL, 'Español: barbado', 'import-espanol-bubi'),
  ('kelle', 's.', 'f.', NULL, 'Cl. 9', 'barbaridad', NULL, NULL, 'Español: barbaridad', 'import-espanol-bubi');

-- Lote 13 (entradas 301 a 325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('nabba', 'adj.', NULL, NULL, 'Cl. 9', 'bárbaro', NULL, NULL, 'Español: bárbaro', 'import-espanol-bubi'),
  ('boseruseru', 'adj.', NULL, NULL, 'Cl. 1', 'barbudo', NULL, NULL, 'Español: barbudo', 'import-espanol-bubi'),
  ('bOitta', 's.', 'm.', NULL, 'Cl. 1', 'barón', NULL, NULL, 'Español: barón', 'import-espanol-bubi'),
  ('bone''u', 's.', 'm.', NULL, 'Cl. 3', 'barranco', NULL, NULL, 'Español: barranco', 'import-espanol-bubi'),
  ('ribbia', 'v.', NULL, NULL, NULL, 'barrar', NULL, NULL, 'Español: barrar', 'import-espanol-bubi'),
  ('ehá', 's.', 'm.', NULL, 'Cl. 7', 'barreño', NULL, NULL, 'Español: barreño', 'import-espanol-bubi'),
  ('ruelláa', 's.', 'm.', NULL, 'Cl. 5', 'barrigón', NULL, NULL, 'Español: barrigón', 'import-espanol-bubi'),
  ('ribetté', 's.', 'm.', NULL, 'Cl. 5', 'barril', NULL, NULL, 'Español: barril', 'import-espanol-bubi'),
  ('epatto', 's.', 'm.', NULL, 'Cl. 7', 'barrio', NULL, NULL, 'Español: barrio', 'import-espanol-bubi'),
  ('etokotokko', 's.', 'm.', NULL, 'Cl. 7', 'barrizal', NULL, NULL, 'Español: barrizal', 'import-espanol-bubi'),
  ('etokkó', 's.', 'm.', NULL, 'Cl. 7', 'barro', NULL, NULL, 'Español: barro', 'import-espanol-bubi'),
  ('lokkó', 's.', 'm.', NULL, NULL, 'bártulos', NULL, NULL, 'Español: bártulos', 'import-espanol-bubi'),
  ('bOmpá', 's.', 'm.', NULL, 'Cl. 3', 'barullo', NULL, NULL, 'Español: barullo', 'import-espanol-bubi'),
  ('bosakatoo', 'adj.', NULL, NULL, 'Cl. 1', 'basakateño', NULL, NULL, 'Español: basakateño', 'import-espanol-bubi'),
  ('botyúppo', 's.', 'm.', NULL, 'Cl. 3', 'bastón', NULL, NULL, 'Español: bastón', 'import-espanol-bubi'),
  ('boá', 's.', 'm.', NULL, 'Cl. 3', 'basurero', NULL, NULL, 'Español: basurero', 'import-espanol-bubi'),
  ('ekétekéte', 's.', 'f.', NULL, 'Cl. 7', 'batalla', NULL, NULL, 'Español: batalla', 'import-espanol-bubi'),
  ('obitábítta', 'adj.', NULL, NULL, 'Cl. 1', 'batallador', NULL, NULL, 'Español: batallador', 'import-espanol-bubi'),
  ('olá', 'v.', NULL, NULL, NULL, 'batallar', NULL, NULL, 'Español: batallar', 'import-espanol-bubi'),
  ('lohúa', 's.', 'm.', NULL, 'Cl. 11', 'batallón', NULL, NULL, 'Español: batallón', 'import-espanol-bubi'),
  ('isoppó', 's.', 'f.', NULL, 'Cl. 5', 'batata', NULL, NULL, 'Español: batata', 'import-espanol-bubi'),
  ('lobakka', 's.', 'm.', NULL, 'Cl. 11', 'baúl', NULL, NULL, 'Español: baúl', 'import-espanol-bubi'),
  ('ebatto', 's.', 'm.', NULL, 'Cl. 7', 'bautismo', NULL, NULL, 'Español: bautismo', 'import-espanol-bubi'),
  ('sáppo', 's.', 'm.', NULL, 'Cl. 12', 'bazar', NULL, NULL, 'Español: bazar', 'import-espanol-bubi'),
  ('sine''e', 's.', 'm.', NULL, 'Cl. 12', 'bebé', NULL, NULL, 'Español: bebé', 'import-espanol-bubi');

-- Lote 14 (entradas 326 a 350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boebba', 'adj.', NULL, NULL, 'Cl. 1', 'bebedor', NULL, NULL, 'Español: bebedor', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 12', 'becerro', NULL, NULL, 'Español: becerro', 'import-espanol-bubi'),
  ('obellá', 's.', 'm.', NULL, 'Cl. 3', 'bejuco', NULL, NULL, 'Español: bejuco', 'import-espanol-bubi'),
  ('buebue', 's.', 'f.', NULL, 'Cl. 3', 'beldad', NULL, NULL, 'Español: beldad', 'import-espanol-bubi'),
  ('bOnya''o', 'adj.', NULL, NULL, 'Cl. 9', 'belicoso', NULL, NULL, 'Español: belicoso', 'import-espanol-bubi'),
  ('buebue', 's.', 'f.', NULL, 'Cl. 3', 'belleza', NULL, NULL, 'Español: belleza', 'import-espanol-bubi'),
  ('bohulahúlla', 'adj.', NULL, NULL, 'Cl. 1', 'bendiciente', NULL, NULL, 'Español: bendiciente', 'import-espanol-bubi'),
  ('ripeám', 's.', 'm.', NULL, 'Cl. 5', 'beneficio', NULL, NULL, 'Español: beneficio', 'import-espanol-bubi'),
  ('to''ú', 's.', 'm.', NULL, 'Cl. 13', 'beneplácito', NULL, NULL, 'Español: beneplácito', 'import-espanol-bubi'),
  ('buébué', 'adj.', NULL, NULL, 'Cl. 3', 'benigno', NULL, NULL, 'Español: benigno', 'import-espanol-bubi'),
  ('bOsubóbbe', 's.', 'm.', NULL, 'Cl. 1', 'benjamín', NULL, NULL, 'Español: benjamín', 'import-espanol-bubi'),
  ('kapátya', 'v.', NULL, NULL, NULL, 'berrear', NULL, NULL, 'Español: berrear', 'import-espanol-bubi'),
  ('bonobbe', 's.', 'm.', NULL, 'Cl. 3', 'berrinche', NULL, NULL, 'Español: berrinche', 'import-espanol-bubi'),
  ('esóppiáa', 's.', 'm.', NULL, 'Cl. 7', 'beso', NULL, NULL, 'Español: beso', 'import-espanol-bubi'),
  ('ribetté', 's.', 'm.', NULL, 'Cl. 5', 'bidón', NULL, NULL, 'Español: bidón', 'import-espanol-bubi'),
  ('léllé', 'adv.', NULL, NULL, 'Cl. 10', 'bien', NULL, NULL, 'Español: bien', 'import-espanol-bubi'),
  ('bohOlátyo', 'adj.', NULL, NULL, 'Cl. 1', 'bienhechor', NULL, NULL, 'Español: bienhechor', 'import-espanol-bubi'),
  ('atyí', 'adv.', NULL, NULL, NULL, 'bis', NULL, NULL, 'Español: bis', 'import-espanol-bubi'),
  ('rietyá', 'adj.', NULL, NULL, 'Cl. 5', 'bizco', NULL, NULL, 'Español: bizco', 'import-espanol-bubi'),
  ('bisikittí', 's.', 'm.', NULL, 'Cl. 9', 'bizcocho', NULL, NULL, 'Español: bizcocho', 'import-espanol-bubi'),
  ('seké', 'adj.', NULL, NULL, 'Cl. 12', 'bobalicón', NULL, NULL, 'Español: bobalicón', 'import-espanol-bubi'),
  ('ekakká', 'adj.', NULL, NULL, 'Cl. 7', 'bobo', NULL, NULL, 'Español: bobo', 'import-espanol-bubi'),
  ('pofopofu', 's.', 'm.', NULL, 'Cl. 9', 'bollo', NULL, NULL, 'Español: bollo', 'import-espanol-bubi'),
  ('pokette', 's.', 'm.', NULL, 'Cl. 9', 'bolsillo', NULL, NULL, 'Español: bolsillo', 'import-espanol-bubi'),
  ('etyu''a', 's.', 'm.', NULL, 'Cl. 7', 'bolso', NULL, NULL, 'Español: bolso', 'import-espanol-bubi');

-- Lote 15 (entradas 351 a 375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('kunké', 's.', 'm.', NULL, 'Cl. 9', 'bombo', NULL, NULL, 'Español: bombo', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 9', 'bombón', NULL, NULL, 'Español: bombón', 'import-espanol-bubi'),
  ('botyo', 'adj.', NULL, NULL, 'Cl. 1', 'bondadoso', NULL, NULL, 'Español: bondadoso', 'import-espanol-bubi'),
  ('isoppó', 's.', 'm.', NULL, 'Cl. 5', 'boniato', NULL, NULL, 'Español: boniato', 'import-espanol-bubi'),
  ('pI', 'adj.', NULL, NULL, 'Cl. 13', 'as', NULL, NULL, 'Español: as', 'import-espanol-bubi'),
  ('toom', 's.', 'm.', NULL, 'Cl. 13', 'boñigo', NULL, NULL, 'Español: boñigo', 'import-espanol-bubi'),
  ('bOnko', 'adj.', NULL, NULL, 'Cl. 2', 'borracho', NULL, NULL, 'Español: borracho', 'import-espanol-bubi'),
  ('kassáa', 'v.', NULL, NULL, NULL, 'borrar', NULL, NULL, 'Español: borrar', 'import-espanol-bubi'),
  ('etyubbo', 's.', 'f.', NULL, 'Cl. 9', 'borrasca', NULL, NULL, 'Español: borrasca', 'import-espanol-bubi'),
  ('buía', 's.', 'm.', NULL, 'Cl. 3', 'bosque', NULL, NULL, 'Español: bosque', 'import-espanol-bubi'),
  ('nobba', 'v.', NULL, NULL, NULL, 'bostezar', NULL, NULL, 'Español: bostezar', 'import-espanol-bubi'),
  ('nobanoba', 's.', 'm.', NULL, 'Cl. 9', 'bostezo', NULL, NULL, 'Español: bostezo', 'import-espanol-bubi'),
  ('ekakká', 's.', 'm.', NULL, 'Cl. 7', 'botarate', NULL, NULL, 'Español: botarate', 'import-espanol-bubi'),
  ('bOkoteri', 's.', 'f.', NULL, 'Cl. 3', 'botella', NULL, NULL, 'Español: botella', 'import-espanol-bubi'),
  ('kullá', 's.', 'm.', NULL, 'Cl. 9', 'botijo', NULL, NULL, 'Español: botijo', 'import-espanol-bubi'),
  ('bOtiin', 's.', 'm.', NULL, 'Cl. 3', 'botón', NULL, NULL, 'Español: botón', 'import-espanol-bubi'),
  ('bokoé', 's.', 'm.', NULL, 'Cl. 1', 'bracero', NULL, NULL, 'Español: bracero', 'import-espanol-bubi'),
  ('kapátya', 'v.', NULL, NULL, NULL, 'bramar', NULL, NULL, 'Español: bramar', 'import-espanol-bubi'),
  ('ebankolosi', 's.', 'm.', NULL, 'Cl. 7', 'brazalete', NULL, NULL, 'Español: brazalete', 'import-espanol-bubi'),
  ('bOsoí', 's.', 'm.', NULL, 'Cl. 1', 'bribón', NULL, NULL, 'Español: bribón', 'import-espanol-bubi'),
  ('erera', 'v.', NULL, NULL, NULL, 'brillar', NULL, NULL, 'Español: brillar', 'import-espanol-bubi'),
  ('watyatya', 's.', 'm.', NULL, 'Cl. 3', 'brillo', NULL, NULL, 'Español: brillo', 'import-espanol-bubi'),
  ('patyíbba', 'v.', NULL, NULL, NULL, 'brincar', NULL, NULL, 'Español: brincar', 'import-espanol-bubi'),
  ('bosorá', 's.', 'm.', NULL, 'Cl. 3', 'brinco', NULL, NULL, 'Español: brinco', 'import-espanol-bubi'),
  ('batté', 's.', 'm.', NULL, 'Cl. 6', 'brío', NULL, NULL, 'Español: brío', 'import-espanol-bubi');

-- Lote 16 (entradas 376 a 400)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ehul', 's.', 'm.', NULL, 'Cl. 7', 'brote', NULL, NULL, 'Español: brote', 'import-espanol-bubi'),
  ('botyiálÍtyo', 'adj.', NULL, NULL, 'Cl. 1', 'brujo', NULL, NULL, 'Español: brujo', 'import-espanol-bubi'),
  ('nabba', 's.', 'm.', NULL, 'Cl. 9', 'bruto', NULL, NULL, 'Español: bruto', 'import-espanol-bubi'),
  ('obObée', 'adj.', NULL, NULL, 'Cl. 1', 'bubi', NULL, NULL, 'Español: bubi', 'import-espanol-bubi'),
  ('ehetúhéttu', 's.', 'm.', NULL, 'Cl. 7', 'buche', NULL, NULL, 'Español: buche', 'import-espanol-bubi'),
  ('Vid', 'adj.', NULL, NULL, NULL, 'buen', NULL, NULL, 'Español: buen', 'import-espanol-bubi'),
  ('kóppó', 's.', 'm.', NULL, 'Cl. 9', 'buey', NULL, NULL, 'Español: buey', 'import-espanol-bubi'),
  ('opello', 'adj.', NULL, NULL, 'Cl. 1', 'bufón', NULL, NULL, 'Español: bufón', 'import-espanol-bubi'),
  ('ka''á', 's.', 'm.', NULL, 'Cl. 9', 'buitre', NULL, NULL, 'Español: buitre', 'import-espanol-bubi'),
  ('bOatyó', 's.', 'm.', NULL, 'Cl. 3', 'buitrón', NULL, NULL, 'Español: buitrón', 'import-espanol-bubi'),
  ('okkó', 's.', 'm.', NULL, 'Cl. 3', 'búho', NULL, NULL, 'Español: búho', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'bulto', NULL, NULL, 'Español: bulto', 'import-espanol-bubi'),
  ('pofopofo', 's.', 'm.', NULL, 'Cl. 9', 'buñuelo', NULL, NULL, 'Español: buñuelo', 'import-espanol-bubi'),
  ('buátto', 's.', 'm.', NULL, 'Cl. 3', 'buque', NULL, NULL, 'Español: buque', 'import-espanol-bubi'),
  ('pobbá', 'v.', NULL, NULL, NULL, 'burlar', NULL, NULL, 'Español: burlar', 'import-espanol-bubi'),
  ('opello', 'adj.', NULL, NULL, 'Cl. 1', 'burlón', NULL, NULL, 'Español: burlón', 'import-espanol-bubi'),
  ('bona''a', 'adj.', NULL, NULL, 'Cl. 1', 'buscador', NULL, NULL, 'Español: buscador', 'import-espanol-bubi'),
  ('ekera', 'v.', NULL, NULL, NULL, 'buscar', NULL, NULL, 'Español: buscar', 'import-espanol-bubi'),
  ('bokíssi', 's.', 'm.', NULL, 'Cl. 3', 'buzón', NULL, NULL, 'Español: buzón', 'import-espanol-bubi'),
  ('boie', 's.', 'm.', NULL, 'Cl. 1', 'caballero', NULL, NULL, 'Español: caballero', 'import-espanol-bubi'),
  ('ossi', 's.', 'm.', NULL, 'Cl. 7', 'caballo', NULL, NULL, 'Español: caballo', 'import-espanol-bubi'),
  ('esílla', 's.', 'm.', NULL, 'Cl. 7', 'cabello', NULL, NULL, 'Español: cabello', 'import-espanol-bubi'),
  ('olláa', 'v.', NULL, NULL, NULL, 'caber', NULL, NULL, 'Español: caber', 'import-espanol-bubi'),
  ('wihó', 'adj.', NULL, NULL, 'Cl. 3', 'cabezudo', NULL, NULL, 'Español: cabezudo', 'import-espanol-bubi'),
  ('bosappo', 's.', 'm.', NULL, 'Cl. 3', 'cable', NULL, NULL, 'Español: cable', 'import-espanol-bubi');

-- Lote 17 (entradas 401 a 425)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boalla', 's.', 'm.', NULL, 'Cl. 3', 'cabo', NULL, NULL, 'Español: cabo', 'import-espanol-bubi'),
  ('nobbe', 's.', 'm.', NULL, 'Cl. 9', 'cabreo', NULL, NULL, 'Español: cabreo', 'import-espanol-bubi'),
  ('ernmáloto', 's.', 'm.', NULL, 'Cl. 7', 'cacao', NULL, NULL, 'Español: cacao', 'import-espanol-bubi'),
  ('lopatta', 's.', 'm.', NULL, 'Cl. 10', 'cachete', NULL, NULL, 'Español: cachete', 'import-espanol-bubi'),
  ('epatapatta', 's.', 'm.', NULL, 'Cl. 7', 'cachetón', NULL, NULL, 'Español: cachetón', 'import-espanol-bubi'),
  ('eheká', 's.', 'm.', NULL, 'Cl. 7', 'cacho', NULL, NULL, 'Español: cacho', 'import-espanol-bubi'),
  ('rityakápe''e', 's.', 'm.', NULL, 'Cl. 5', 'cachondeo', NULL, NULL, 'Español: cachondeo', 'import-espanol-bubi'),
  ('húbbé', 's.', 'm.', NULL, 'Cl. 9', 'caco', NULL, NULL, 'Español: caco', 'import-espanol-bubi'),
  ('eleppé', 's.', 'm.', NULL, 'Cl. 7', 'cadáver', NULL, NULL, 'Español: cadáver', 'import-espanol-bubi'),
  ('kuá', 'v.', NULL, NULL, NULL, 'caer', NULL, NULL, 'Español: caer', 'import-espanol-bubi'),
  ('botoom', 's.', 'm.', NULL, 'Cl. 1', 'cagón', NULL, NULL, 'Español: cagón', 'import-espanol-bubi'),
  ('rikettá', 's.', 'm.', NULL, 'Cl. 5', 'caimán', NULL, NULL, 'Español: caimán', 'import-espanol-bubi'),
  ('bokíssi', 's.', 'm.', NULL, 'Cl. 3', 'cajón', NULL, NULL, 'Español: cajón', 'import-espanol-bubi'),
  ('tyélle', 's.', 'm.', NULL, 'Cl. 9', 'calabozo', NULL, NULL, 'Español: calabozo', 'import-espanol-bubi'),
  ('tyí', 's.', 'm.', NULL, 'Cl. 9', 'calamar', NULL, NULL, 'Español: calamar', 'import-espanol-bubi'),
  ('bo''á', 's.', 'm.', NULL, 'Cl. 12', 'caldo', NULL, NULL, 'Español: caldo', 'import-espanol-bubi'),
  ('ribélo', 's.', 'm.', NULL, 'Cl. 5', 'calendario', NULL, NULL, 'Español: calendario', 'import-espanol-bubi'),
  ('no''iáa', 'v.', NULL, NULL, NULL, 'calentar', NULL, NULL, 'Español: calentar', 'import-espanol-bubi'),
  ('húé', 'adj.', NULL, NULL, 'Cl. 9', 'cálido', NULL, NULL, 'Español: cálido', 'import-espanol-bubi'),
  ('húé', 'adj.', NULL, NULL, 'Cl. 9', 'caliente', NULL, NULL, 'Español: caliente', 'import-espanol-bubi'),
  ('etyakka', 's.', 'm.', NULL, 'Cl. 7', 'cáliz', NULL, NULL, 'Español: cáliz', 'import-espanol-bubi'),
  ('húé', 's.', 'm.', NULL, 'Cl. 9', 'calor', NULL, NULL, 'Español: calor', 'import-espanol-bubi'),
  ('sússu', 's.', 'm.', NULL, 'Cl. 9', 'calzado', NULL, NULL, 'Español: calzado', 'import-espanol-bubi'),
  ('ribatyu', 's.', 'm.', NULL, 'Cl. 5', 'calzoncillo', NULL, NULL, 'Español: calzoncillo', 'import-espanol-bubi'),
  ('lowátéte', 's.', 'm.', NULL, 'Cl. 11', 'camaleón', NULL, NULL, 'Español: camaleón', 'import-espanol-bubi');

-- Lote 18 (entradas 426 a 450)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bueá', 's.', 'm.', NULL, 'Cl. 3', 'camarón', NULL, NULL, 'Español: camarón', 'import-espanol-bubi'),
  ('tyentyi', 's.', 'm.', NULL, 'Cl. 9', 'cambio', NULL, NULL, 'Español: cambio', 'import-espanol-bubi'),
  ('ooetta', 's.', 'm.', NULL, 'Cl. 1', 'caminante', NULL, NULL, 'Español: caminante', 'import-espanol-bubi'),
  ('etta', 'v.', NULL, NULL, NULL, 'caminar', NULL, NULL, 'Español: caminar', 'import-espanol-bubi'),
  ('sitelle', 's.', 'm.', NULL, 'Cl. 12', 'caminito', NULL, NULL, 'Español: caminito', 'import-espanol-bubi'),
  ('bosekka', 's.', 'm.', NULL, 'Cl. 3', 'camino', NULL, NULL, 'Español: camino', 'import-espanol-bubi'),
  ('simmí', 's.', 'm.', NULL, 'Cl. 12', 'camisón', NULL, NULL, 'Español: camisón', 'import-espanol-bubi'),
  ('buéllo', 's.', 'f.', NULL, 'Cl. 3', 'camorra', NULL, NULL, 'Español: camorra', 'import-espanol-bubi'),
  ('botuppó', 's.', 'm.', NULL, 'Cl. 1', 'camorrista', NULL, NULL, 'Español: camorrista', 'import-espanol-bubi'),
  ('riossa', 's.', 'm.', NULL, 'Cl. 5', 'campo', NULL, NULL, 'Español: campo', 'import-espanol-bubi'),
  ('bOle''o', 's.', 'm.', NULL, 'Cl. 3', 'camposanto', NULL, NULL, 'Español: camposanto', 'import-espanol-bubi'),
  ('puá', 's.', 'm.', NULL, 'Cl. 9', 'can', NULL, NULL, 'Español: can', 'import-espanol-bubi'),
  ('lotyánnó', 's.', 'f.', NULL, 'Cl. 11', 'cana', NULL, NULL, 'Español: cana', 'import-espanol-bubi'),
  ('bolekké', 's.', 'm.', NULL, 'Cl. 3', 'canal', NULL, NULL, 'Español: canal', 'import-espanol-bubi'),
  ('bOakká', 's.', 'm.', NULL, 'Cl. 3', 'canalón', NULL, NULL, 'Español: canalón', 'import-espanol-bubi'),
  ('parlold', 's.', 'm.', NULL, 'Cl. 9', 'candado', NULL, NULL, 'Español: candado', 'import-espanol-bubi'),
  ('siláppo', 's.', 'm.', NULL, 'Cl. 12', 'candil', NULL, NULL, 'Español: candil', 'import-espanol-bubi'),
  ('riballá', 's.', 'm.', NULL, 'Cl. 5', 'canelón', NULL, NULL, 'Español: canelón', 'import-espanol-bubi'),
  ('lokká', 's.', 'm.', NULL, 'Cl. 11', 'cangrejo', NULL, NULL, 'Español: cangrejo', 'import-espanol-bubi'),
  ('opepúu', 's.', 'f.', NULL, 'Cl. 3', 'canilla', NULL, NULL, 'Español: canilla', 'import-espanol-bubi'),
  ('botyibíi', 's.', 'm.', NULL, 'Cl. 3', 'cansancio', NULL, NULL, 'Español: cansancio', 'import-espanol-bubi'),
  ('neppí', 's.', 'm.', NULL, 'Cl. 9', 'cantante', NULL, NULL, 'Español: cantante', 'import-espanol-bubi'),
  ('bella', 'v.', NULL, NULL, NULL, 'cantar', NULL, NULL, 'Español: cantar', 'import-espanol-bubi'),
  ('kullá', 's.', 'm.', NULL, 'Cl. 9', 'cántaro', NULL, NULL, 'Español: cántaro', 'import-espanol-bubi'),
  ('IOberí', 's.', 'm.', NULL, 'Cl. 11', 'cántico', NULL, NULL, 'Español: cántico', 'import-espanol-bubi');

-- Lote 19 (entradas 451 a 475)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eeppí', 's.', 'm.', NULL, 'Cl. 7', 'canto', NULL, NULL, 'Español: canto', 'import-espanol-bubi'),
  ('neppí', 's.', 'm.', NULL, 'Cl. 9', 'cantor', NULL, NULL, 'Español: cantor', 'import-espanol-bubi'),
  ('loko''ó', 's.', 'f.', NULL, 'Cl. 3', 'caña', NULL, NULL, 'Español: caña', 'import-espanol-bubi'),
  ('peppa', 's.', 'm.', NULL, 'Cl. 9', 'caolín', NULL, NULL, 'Español: caolín', 'import-espanol-bubi'),
  ('epoppó', 's.', 'm.', NULL, 'Cl. 8', 'caparazón', NULL, NULL, 'Español: caparazón', 'import-espanol-bubi'),
  ('wakóo', 's.', 'm.', NULL, 'Cl. 3', 'capón', NULL, NULL, 'Español: capón', 'import-espanol-bubi'),
  ('eeleri', 's.', 'm.', NULL, 'Cl. 7', 'capricho', NULL, NULL, 'Español: capricho', 'import-espanol-bubi'),
  ('hMmóta', 'v.', NULL, NULL, NULL, 'capturar', NULL, NULL, 'Español: capturar', 'import-espanol-bubi'),
  ('tottyí', 's.', 'm.', NULL, 'Cl. 9', 'caracol', NULL, NULL, 'Español: caracol', 'import-espanol-bubi'),
  ('bokeú', 's.', 'm.', NULL, 'Cl. 3', 'carácter', NULL, NULL, 'Español: carácter', 'import-espanol-bubi'),
  ('suítti', 's.', 'm.', NULL, 'Cl. 9', 'caramelo', NULL, NULL, 'Español: caramelo', 'import-espanol-bubi'),
  ('emasosso', 's.', 'm.', NULL, 'Cl. 7', 'carbón', NULL, NULL, 'Español: carbón', 'import-espanol-bubi'),
  ('ritoatooa', 's.', 'f.', NULL, 'Cl. 5', 'carcajada', NULL, NULL, 'Español: carcajada', 'import-espanol-bubi'),
  ('tyaróm', 's.', 'f.', NULL, 'Cl. 9', 'cárcel', NULL, NULL, 'Español: cárcel', 'import-espanol-bubi'),
  ('bolobbó', 's.', 'f.', NULL, 'Cl. 3', 'careta', NULL, NULL, 'Español: careta', 'import-espanol-bubi'),
  ('boritto', 's.', 'f.', NULL, 'Cl. 3', 'carga', NULL, NULL, 'Español: carga', 'import-espanol-bubi'),
  ('ebotyera', 's.', 'm.', NULL, 'Cl. 7', 'cariño', NULL, NULL, 'Español: cariño', 'import-espanol-bubi'),
  ('rn', 's.', NULL, NULL, 'Cl. 5', 'carnero', NULL, NULL, 'Español: carnero', 'import-espanol-bubi'),
  ('ría', 'adv.', NULL, NULL, NULL, 'caro', NULL, NULL, 'Español: caro', 'import-espanol-bubi'),
  ('kapinta', 's.', 'm.', NULL, 'Cl. 9', 'carpintero', NULL, NULL, 'Español: carpintero', 'import-espanol-bubi'),
  ('rn', 's.', NULL, NULL, 'Cl. 7', 'carraspeo', NULL, NULL, 'Español: carraspeo', 'import-espanol-bubi'),
  ('kárityi', 's.', 'm.', NULL, 'Cl. 9', 'carro', NULL, NULL, 'Español: carro', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'cartucho', NULL, NULL, 'Español: cartucho', 'import-espanol-bubi'),
  ('ribállá', 's.', 'm.', NULL, 'Cl. 5', 'casamiento', NULL, NULL, 'Español: casamiento', 'import-espanol-bubi'),
  ('silebbó', 's.', 'm.', NULL, 'Cl. 12', 'cascabel', NULL, NULL, 'Español: cascabel', 'import-espanol-bubi');

-- Lote 20 (entradas 476 a 500)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Ji', 's.', 'm.', NULL, 'Cl. 7', 'caserío', NULL, NULL, 'Español: caserío', 'import-espanol-bubi'),
  ('sikápáa', 's.', 'm.', NULL, 'Cl. 12', 'castaña', NULL, NULL, 'Español: castaña', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, 'castigar', NULL, NULL, 'Español: castigar', 'import-espanol-bubi'),
  ('riakkí', 's.', 'm.', NULL, 'Cl. 5', 'castigo', NULL, NULL, 'Español: castigo', 'import-espanol-bubi'),
  ('botya''á', 's.', 'm.', NULL, 'Cl. 1', 'cataplín', NULL, NULL, 'Español: cataplín', 'import-espanol-bubi'),
  ('bohom', 's.', 'm.', NULL, 'Cl. 3', 'catarro', NULL, NULL, 'Español: catarro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 2', 'catorce', NULL, NULL, 'Español: catorce', 'import-espanol-bubi'),
  ('raatyé', 's.', 'm.', NULL, 'Cl. 5', 'catre', NULL, NULL, 'Español: catre', 'import-espanol-bubi'),
  ('buátto', 's.', 'm.', NULL, 'Cl. 3', 'cayuco', NULL, NULL, 'Español: cayuco', 'import-espanol-bubi'),
  ('obébá', 's.', 'm.', NULL, 'Cl. 1', 'cazador', NULL, NULL, 'Español: cazador', 'import-espanol-bubi'),
  ('esello', 's.', 'm.', NULL, 'Cl. 7', 'cebo', NULL, NULL, 'Español: cebo', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'celador', NULL, NULL, 'Español: celador', 'import-espanol-bubi'),
  ('tyélle', 's.', 'm.', NULL, 'Cl. 9', 'celda', NULL, NULL, 'Español: celda', 'import-espanol-bubi'),
  ('sokolityé', 'adj.', NULL, NULL, 'Cl. 12', 'célebre', NULL, NULL, 'Español: célebre', 'import-espanol-bubi'),
  ('biile''o', 's.', 'm.', NULL, 'Cl. 3', 'cementerio', NULL, NULL, 'Español: cementerio', 'import-espanol-bubi'),
  ('simenti', 's.', 'm.', NULL, 'Cl. 12', 'cemento', NULL, NULL, 'Español: cemento', 'import-espanol-bubi'),
  ('silebbó', 's.', 'm.', NULL, 'Cl. 12', 'cencerro', NULL, NULL, 'Español: cencerro', 'import-espanol-bubi'),
  ('elopa', 's.', 'm.', NULL, 'Cl. 7', 'cenizo', NULL, NULL, 'Español: cenizo', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'centinela', NULL, NULL, 'Español: centinela', 'import-espanol-bubi'),
  ('iteke', 's.', 'm.', NULL, 'Cl. 5', 'centollo', NULL, NULL, 'Español: centollo', 'import-espanol-bubi'),
  ('wela', 's.', 'm.', NULL, NULL, 'centro', NULL, NULL, 'Español: centro', 'import-espanol-bubi'),
  ('kuttyá', 's.', 'm.', NULL, 'Cl. 9', 'cepillo', NULL, NULL, 'Español: cepillo', 'import-espanol-bubi'),
  ('rikkí', 's.', 'm.', NULL, 'Cl. 5', 'cercado', NULL, NULL, 'Español: cercado', 'import-espanol-bubi'),
  ('rikkí', 's.', 'm.', NULL, 'Cl. 5', 'cerco', NULL, NULL, 'Español: cerco', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'cerdo', NULL, NULL, 'Español: cerdo', 'import-espanol-bubi');

-- Lote 21 (entradas 501 a 525)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tokko', 's.', 'm.', NULL, NULL, 'cerebro', NULL, NULL, 'Español: cerebro', 'import-espanol-bubi'),
  ('soko', 's.', 'm.', NULL, 'Cl. 12', 'cero', NULL, NULL, 'Español: cero', 'import-espanol-bubi'),
  ('lobityo', 's.', 'm.', NULL, NULL, 'cerrojo', NULL, NULL, 'Español: cerrojo', 'import-espanol-bubi'),
  ('sitúkká', 's.', 'm.', NULL, 'Cl. 12', 'cesto', NULL, NULL, 'Español: cesto', 'import-espanol-bubi'),
  ('sakká', 's.', 'm.', NULL, 'Cl. 12', 'cetro', NULL, NULL, 'Español: cetro', 'import-espanol-bubi'),
  ('elobalóbba', 's.', 'm.', NULL, 'Cl. 8', 'champiñón', NULL, NULL, 'Español: champiñón', 'import-espanol-bubi'),
  ('etyubbo', 's.', 'm.', NULL, 'Cl. 7', 'chaparrón', NULL, NULL, 'Español: chaparrón', 'import-espanol-bubi'),
  ('pobba', 'v.', NULL, NULL, NULL, 'charlar', NULL, NULL, 'Español: charlar', 'import-espanol-bubi'),
  ('tóritóri', 's.', 'm.', NULL, 'Cl. 9', 'charlatán', NULL, NULL, 'Español: charlatán', 'import-espanol-bubi'),
  ('bóllá', 's.', 'm.', NULL, 'Cl. 1', 'chaval', NULL, NULL, 'Español: chaval', 'import-espanol-bubi'),
  ('bonní', 's.', 'm.', NULL, 'Cl. 9', 'chavo', NULL, NULL, 'Español: chavo', 'import-espanol-bubi'),
  ('waakká', 's.', 'm.', NULL, 'Cl. 8', 'chichón', NULL, NULL, 'Español: chichón', 'import-espanol-bubi'),
  ('bollá', 's.', 'm.', NULL, 'Cl. 1', 'chico', NULL, NULL, 'Español: chico', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'm.', NULL, 'Cl. 9', 'chiflado', NULL, NULL, 'Español: chiflado', 'import-espanol-bubi'),
  ('etábatábba', 's.', 'm.', NULL, 'Cl. 7', 'chillido', NULL, NULL, 'Español: chillido', 'import-espanol-bubi'),
  ('tatapó''a', 's.', 'm.', NULL, 'Cl. 9', 'chimpancé', NULL, NULL, 'Español: chimpancé', 'import-espanol-bubi'),
  ('soláe', 's.', 'm.', NULL, 'Cl. 12', 'chiquillo', NULL, NULL, 'Español: chiquillo', 'import-espanol-bubi'),
  ('ribba', 's.', 'm.', NULL, 'Cl. 5', 'chirimiri', NULL, NULL, 'Español: chirimiri', 'import-espanol-bubi'),
  ('bosawasawá', 's.', 'm.', NULL, 'Cl. 3', 'chirimoyo', NULL, NULL, 'Español: chirimoyo', 'import-espanol-bubi'),
  ('sityatyó', 's.', 'm.', NULL, 'Cl. 12', 'chismoso', NULL, NULL, 'Español: chismoso', 'import-espanol-bubi'),
  ('sityatyó', 's.', 'm.', NULL, 'Cl. 12', 'chivato', NULL, NULL, 'Español: chivato', 'import-espanol-bubi'),
  ('eppí', 's.', 'm.', NULL, 'Cl. 7', 'chocho', NULL, NULL, 'Español: chocho', 'import-espanol-bubi'),
  ('botté', 's.', 'm.', NULL, 'Cl. 3', 'chopo', NULL, NULL, 'Español: chopo', 'import-espanol-bubi'),
  ('etyubbo', 's.', 'm.', NULL, 'Cl. 7', 'chubasco', NULL, NULL, 'Español: chubasco', 'import-espanol-bubi'),
  ('sipuá', 's.', 'm.', NULL, 'Cl. 12', 'chucho', NULL, NULL, 'Español: chucho', 'import-espanol-bubi');

-- Lote 22 (entradas 526 a 550)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('enokonokko', 's.', 'm.', NULL, 'Cl. 7', 'cíclope', NULL, NULL, 'Español: cíclope', 'import-espanol-bubi'),
  ('eboránókko', 's.', 'm.', NULL, 'Cl. 7', 'ciego', NULL, NULL, 'Español: ciego', 'import-espanol-bubi'),
  ('lobákko', 's.', 'm.', NULL, 'Cl. 10', 'cielo', NULL, NULL, 'Español: cielo', 'import-espanol-bubi'),
  ('esokólla', 's.', 'm.', NULL, 'Cl. 7', 'ciempiés', NULL, NULL, 'Español: ciempiés', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 5', 'cien', NULL, NULL, 'Español: cien', 'import-espanol-bubi'),
  ('ripello', 's.', 'm.', NULL, 'Cl. 5', 'cierre', NULL, NULL, 'Español: cierre', 'import-espanol-bubi'),
  ('sikkiáa', 's.', 'm.', NULL, 'Cl. 12', 'cigarrillo', NULL, NULL, 'Español: cigarrillo', 'import-espanol-bubi'),
  ('sikkiáa', 's.', 'm.', NULL, 'Cl. 12', 'cigarro', NULL, NULL, 'Español: cigarro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 4', 'cinco', NULL, NULL, 'Español: cinco', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'cincuenta', NULL, NULL, 'Español: cincuenta', 'import-espanol-bubi'),
  ('birikirikki', 's.', 'm.', NULL, 'Cl. 8', 'cine', NULL, NULL, 'Español: cine', 'import-espanol-bubi'),
  ('ebelefte', 's.', 'm.', NULL, 'Cl. 7', 'cinturón', NULL, NULL, 'Español: cinturón', 'import-espanol-bubi'),
  ('ele''o', 's.', 'm.', NULL, 'Cl. 7', 'círculo', NULL, NULL, 'Español: círculo', 'import-espanol-bubi'),
  ('epólla', 'v.', NULL, NULL, NULL, 'circuncidar', NULL, NULL, 'Español: circuncidar', 'import-espanol-bubi'),
  ('botyubbe', 's.', 'm.', NULL, 'Cl. 3', 'ciruelo', NULL, NULL, 'Español: ciruelo', 'import-espanol-bubi'),
  ('itappá', 's.', 'm.', NULL, 'Cl. 5', 'clan', NULL, NULL, 'Español: clan', 'import-espanol-bubi'),
  ('nélalla', 'v.', NULL, NULL, NULL, 'clavar', NULL, NULL, 'Español: clavar', 'import-espanol-bubi'),
  ('tokko', 's.', 'm.', NULL, 'Cl. 9', 'clavo', NULL, NULL, 'Español: clavo', 'import-espanol-bubi'),
  ('pittóo', 's.', 'm.', NULL, 'Cl. 9', 'claxon', NULL, NULL, 'Español: claxon', 'import-espanol-bubi'),
  ('pateri', 's.', 'm.', NULL, 'Cl. 9', 'clérigo', NULL, NULL, 'Español: clérigo', 'import-espanol-bubi'),
  ('bo''olla', 's.', 'm.', NULL, 'Cl. 1', 'cliente', NULL, NULL, 'Español: cliente', 'import-espanol-bubi'),
  ('bonappí', 's.', 'm.', NULL, 'Cl. 3', 'clítoris', NULL, NULL, 'Español: clítoris', 'import-espanol-bubi'),
  ('wallá', 's.', 'm.', NULL, 'Cl. 3', 'club', NULL, NULL, 'Español: club', 'import-espanol-bubi'),
  ('lopatto', 's.', 'm.', NULL, 'Cl. 10', 'cobertizo', NULL, NULL, 'Español: cobertizo', 'import-espanol-bubi'),
  ('lokkia', 'v.', NULL, NULL, NULL, 'cobijar', NULL, NULL, 'Español: cobijar', 'import-espanol-bubi');

-- Lote 23 (entradas 551 a 575)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('kokotya', 'v.', NULL, NULL, NULL, 'cocer', NULL, NULL, 'Español: cocer', 'import-espanol-bubi'),
  ('motóO', 's.', 'm.', NULL, 'Cl. 3', 'coche', NULL, NULL, 'Español: coche', 'import-espanol-bubi'),
  ('bolapá''ó', 'adj.', NULL, NULL, 'Cl. 1', 'cocinero', NULL, NULL, 'Español: cocinero', 'import-espanol-bubi'),
  ('bokóko', 's.', 'm.', NULL, 'Cl. 3', 'coco', NULL, NULL, 'Español: coco', 'import-espanol-bubi'),
  ('rikettá', 's.', 'm.', NULL, 'Cl. 5', 'cocodrilo', NULL, NULL, 'Español: cocodrilo', 'import-espanol-bubi'),
  ('wakalekko', 's.', 'm.', NULL, 'Cl. 3', 'cocotero', NULL, NULL, 'Español: cocotero', 'import-espanol-bubi'),
  ('obeké', 's.', 'm.', NULL, 'Cl. 3', 'codo', NULL, NULL, 'Español: codo', 'import-espanol-bubi'),
  ('etuónná', 's.', 'm.', NULL, 'Cl. 7', 'cogote', NULL, NULL, 'Español: cogote', 'import-espanol-bubi'),
  ('bohMmeri', 's.', 'm.', NULL, 'Cl. 3', 'coito', NULL, NULL, 'Español: coito', 'import-espanol-bubi'),
  ('botya''á', 's.', 'm.', NULL, 'Cl. 3', 'cojón', NULL, NULL, 'Español: cojón', 'import-espanol-bubi'),
  ('bosikké', 's.', 'f.', NULL, 'Cl. 3', 'cola', NULL, NULL, 'Español: cola', 'import-espanol-bubi'),
  ('buéso''o', 's.', 'm.', NULL, 'Cl. 1', 'colega', NULL, NULL, 'Español: colega', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 12', 'colegio', NULL, NULL, 'Español: colegio', 'import-espanol-bubi'),
  ('bOhonno', 's.', 'm.', NULL, 'Cl. 3', 'cólera', NULL, NULL, 'Español: cólera', 'import-espanol-bubi'),
  ('buttú', 's.', 'm.', NULL, 'Cl. 9', 'cólico', NULL, NULL, 'Español: cólico', 'import-espanol-bubi'),
  ('esokka', 's.', 'm.', NULL, 'Cl. 7', 'collar', NULL, NULL, 'Español: collar', 'import-espanol-bubi'),
  ('botólló', 's.', 'm.', NULL, 'Cl. 3', 'coloquio', NULL, NULL, 'Español: coloquio', 'import-espanol-bubi'),
  ('wikíra', 's.', 'm.', NULL, 'Cl. 3', 'columpio', NULL, NULL, 'Español: columpio', 'import-espanol-bubi'),
  ('buéllo', 's.', 'm.', NULL, 'Cl. 3', 'combate', NULL, NULL, 'Español: combate', 'import-espanol-bubi'),
  ('bonya''o', 'adj.', NULL, NULL, 'Cl. 1', 'combatiente', NULL, NULL, 'Español: combatiente', 'import-espanol-bubi'),
  ('irello', 's.', 'm.', NULL, 'Cl. 5', 'comedor', NULL, NULL, 'Español: comedor', 'import-espanol-bubi'),
  ('bityolla', 'v.', NULL, NULL, NULL, 'comenzar', NULL, NULL, 'Español: comenzar', 'import-espanol-bubi'),
  ('ráa', 'v.', NULL, NULL, NULL, 'comer', NULL, NULL, 'Español: comer', 'import-espanol-bubi'),
  ('sáppo', 's.', 'm.', NULL, 'Cl. 12', 'comercio', NULL, NULL, 'Español: comercio', 'import-espanol-bubi'),
  ('ometya', 'adj.', NULL, NULL, 'Cl. 1', 'cómico', NULL, NULL, 'Español: cómico', 'import-espanol-bubi');

-- Lote 24 (entradas 576 a 600)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOra''', 's.', 'f.', NULL, 'Cl. 3', 'comida', NULL, NULL, 'Español: comida', 'import-espanol-bubi'),
  ('laotya', 's.', 'm.', NULL, 'Cl. 9', 'comienzo', NULL, NULL, 'Español: comienzo', 'import-espanol-bubi'),
  ('buéso''o', 's.', 'm.', NULL, 'Cl. 1', 'compañero', NULL, NULL, 'Español: compañero', 'import-espanol-bubi'),
  ('ehánaeri', 's.', 'f.', NULL, 'Cl. 7', 'competencia', NULL, NULL, 'Español: competencia', 'import-espanol-bubi'),
  ('OO''olla', 'adj.', NULL, NULL, 'Cl. 1', 'comprador', NULL, NULL, 'Español: comprador', 'import-espanol-bubi'),
  ('sakká', 's.', 'm.', NULL, 'Cl. 12', 'comprimido', NULL, NULL, 'Español: comprimido', 'import-espanol-bubi'),
  ('ebeh', 's.', 'm.', NULL, 'Cl. 7', 'compromiso', NULL, NULL, 'Español: compromiso', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', 'comunicado', NULL, NULL, 'Español: comunicado', 'import-espanol-bubi'),
  ('sétya', 'v.', NULL, NULL, NULL, 'concluir', NULL, NULL, 'Español: concluir', 'import-espanol-bubi'),
  ('pa''á', 's.', 'f.', NULL, 'Cl. 9', 'concubina', NULL, NULL, 'Español: concubina', 'import-espanol-bubi'),
  ('looppo', 's.', 'm.', NULL, 'Cl. 11', 'concurso', NULL, NULL, 'Español: concurso', 'import-espanol-bubi'),
  ('akio', 's.', 'f.', NULL, 'Cl. 7', 'condena', NULL, NULL, 'Español: condena', 'import-espanol-bubi'),
  ('abbiáa', 'v.', NULL, NULL, NULL, 'condenar', NULL, NULL, 'Español: condenar', 'import-espanol-bubi'),
  ('tyutyúra', 'v.', NULL, NULL, NULL, 'conducir', NULL, NULL, 'Español: conducir', 'import-espanol-bubi'),
  ('bokólla', 's.', 'm.', NULL, 'Cl. 1', 'conductor', NULL, NULL, 'Español: conductor', 'import-espanol-bubi'),
  ('sirábette', 's.', 'm.', NULL, 'Cl. 12', 'conejo', NULL, NULL, 'Español: conejo', 'import-espanol-bubi'),
  ('betólla', 'v.', NULL, NULL, NULL, 'confesar', NULL, NULL, 'Español: confesar', 'import-espanol-bubi'),
  ('esapá', 's.', 'm.', NULL, 'Cl. 7', 'conflicto', NULL, NULL, 'Español: conflicto', 'import-espanol-bubi'),
  ('etohó', 's.', 'm.', NULL, 'Cl. 7', 'congreso', NULL, NULL, 'Español: congreso', 'import-espanol-bubi'),
  ('rikótto', 's.', 'm.', NULL, 'Cl. 5', 'conjunto', NULL, NULL, 'Español: conjunto', 'import-espanol-bubi'),
  ('buétáa', 's.', 'm.', NULL, 'Cl. 3', 'conocimiento', NULL, NULL, 'Español: conocimiento', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'consejero', NULL, NULL, 'Español: consejero', 'import-espanol-bubi'),
  ('re''a', 'v.', NULL, NULL, NULL, 'consolar', NULL, NULL, 'Español: consolar', 'import-espanol-bubi'),
  ('báa', 'v.', NULL, NULL, NULL, 'construir', NULL, NULL, 'Español: construir', 'import-espanol-bubi'),
  ('rite''í', 's.', 'm.', NULL, 'Cl. 5', 'consuelo', NULL, NULL, 'Español: consuelo', 'import-espanol-bubi');

-- Lote 25 (entradas 601 a 625)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rikatto', 's.', 'm.', NULL, 'Cl. 5', 'contador', NULL, NULL, 'Español: contador', 'import-espanol-bubi'),
  ('re''áeri', 's.', 'm.', NULL, 'Cl. 5', 'contagio', NULL, NULL, 'Español: contagio', 'import-espanol-bubi'),
  ('notella', 'v.', NULL, NULL, NULL, 'contemplar', NULL, NULL, 'Español: contemplar', 'import-espanol-bubi'),
  ('ribetté', 's.', 'm.', NULL, 'Cl. 5', 'contenedor', NULL, NULL, 'Español: contenedor', 'import-espanol-bubi'),
  ('bi', 's.', 'm.', NULL, 'Cl. 1', 'contertulio', NULL, NULL, 'Español: contertulio', 'import-espanol-bubi'),
  ('luari', 's.', 'm.', NULL, 'Cl. 11', 'continente', NULL, NULL, 'Español: continente', 'import-espanol-bubi'),
  ('petta', 'v.', NULL, NULL, NULL, 'contrariar', NULL, NULL, 'Español: contrariar', 'import-espanol-bubi'),
  ('ebelera', 's.', 'm.', NULL, 'Cl. 7', 'contrato', NULL, NULL, 'Español: contrato', 'import-espanol-bubi'),
  ('lotta', 'v.', NULL, NULL, NULL, 'controlar', NULL, NULL, 'Español: controlar', 'import-espanol-bubi'),
  ('bobbáa', 'v.', NULL, NULL, NULL, 'convencer', NULL, NULL, 'Español: convencer', 'import-espanol-bubi'),
  ('ehattá', 's.', 'm.', NULL, 'Cl. 7', 'convenio', NULL, NULL, 'Español: convenio', 'import-espanol-bubi'),
  ('hekkáa', 'v.', NULL, NULL, NULL, 'convidar', NULL, NULL, 'Español: convidar', 'import-espanol-bubi'),
  ('kompite', 's.', 'm.', NULL, 'Cl. 9', 'convite', NULL, NULL, 'Español: convite', 'import-espanol-bubi'),
  ('konyákko', 's.', 'm.', NULL, 'Cl. 9', 'coñac', NULL, NULL, 'Español: coñac', 'import-espanol-bubi'),
  ('eppí', 's.', 'm.', NULL, 'Cl. 7', 'coño', NULL, NULL, 'Español: coño', 'import-espanol-bubi'),
  ('kobaera', 'v.', NULL, NULL, NULL, 'copiar', NULL, NULL, 'Español: copiar', 'import-espanol-bubi'),
  ('etébbá', 's.', 'm.', NULL, 'Cl. 7', 'coraje', NULL, NULL, 'Español: coraje', 'import-espanol-bubi'),
  ('bOtébbá', 's.', 'm.', NULL, 'Cl. 3', 'corazón', NULL, NULL, 'Español: corazón', 'import-espanol-bubi'),
  ('irullo', 's.', 'm.', NULL, 'Cl. 5', 'corcho', NULL, NULL, 'Español: corcho', 'import-espanol-bubi'),
  ('sisorí', 's.', 'm.', NULL, 'Cl. 12', 'cordel', NULL, NULL, 'Español: cordel', 'import-espanol-bubi'),
  ('sityoru', 's.', 'm.', NULL, 'Cl. 12', 'cordero', NULL, NULL, 'Español: cordero', 'import-espanol-bubi'),
  ('bOsorí', 's.', 'm.', NULL, 'Cl. 3', 'cordón', NULL, NULL, 'Español: cordón', 'import-espanol-bubi'),
  ('húbbia', 'v.', NULL, NULL, NULL, 'correr', NULL, NULL, 'Español: correr', 'import-espanol-bubi'),
  ('epólla', 'v.', NULL, NULL, NULL, 'cortar', NULL, NULL, 'Español: cortar', 'import-espanol-bubi'),
  ('eaó', 's.', 'm.', NULL, 'Cl. 7', 'corte', NULL, NULL, 'Español: corte', 'import-espanol-bubi');

-- Lote 26 (entradas 626 a 650)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('wakóo', 's.', 'm.', NULL, 'Cl. 3', 'coscorrón', NULL, NULL, 'Español: coscorrón', 'import-espanol-bubi'),
  ('riari', 's.', 'f.', NULL, 'Cl. 5', 'cosecha', NULL, NULL, 'Español: cosecha', 'import-espanol-bubi'),
  ('pattáa', 'v.', NULL, NULL, NULL, 'cosechar', NULL, NULL, 'Español: cosechar', 'import-espanol-bubi'),
  ('sóa', 'v.', NULL, NULL, NULL, 'coser', NULL, NULL, 'Español: coser', 'import-espanol-bubi'),
  ('silabba', 's.', 'f.', NULL, 'Cl. 12', 'cosita', NULL, NULL, 'Español: cosita', 'import-espanol-bubi'),
  ('eessó', 's.', 'f.', NULL, 'Cl. 7', 'costa', NULL, NULL, 'Español: costa', 'import-espanol-bubi'),
  ('sá', 'v.', NULL, NULL, NULL, 'costar', NULL, NULL, 'Español: costar', 'import-espanol-bubi'),
  ('bohNnó', 's.', 'f.', NULL, 'Cl. 3', 'costumbre', NULL, NULL, 'Español: costumbre', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 13', 'cotilla', NULL, NULL, 'Español: cotilla', 'import-espanol-bubi'),
  ('bOkákálló', 's.', 'm.', NULL, 'Cl. 3', 'cráneo', NULL, NULL, 'Español: cráneo', 'import-espanol-bubi'),
  ('báa', 'v.', NULL, NULL, NULL, 'crear', NULL, NULL, 'Español: crear', 'import-espanol-bubi'),
  ('biitá', 's.', 'f.', NULL, 'Cl. 6', 'crema', NULL, NULL, 'Español: crema', 'import-espanol-bubi'),
  ('ltitáppa', 's.', 'f.', NULL, 'Cl. 10', 'cresta', NULL, NULL, 'Español: cresta', 'import-espanol-bubi'),
  ('bokóllé', 's.', 'm.', NULL, 'Cl. 1', 'criado', NULL, NULL, 'Español: criado', 'import-espanol-bubi'),
  ('bópáa', 'v.', NULL, NULL, NULL, 'criar', NULL, NULL, 'Español: criar', 'import-espanol-bubi'),
  ('bóllá', 's.', 'm.', NULL, 'Cl. 1', 'crio', NULL, NULL, 'Español: crio', 'import-espanol-bubi'),
  ('bokirió', 's.', 'm.', NULL, 'Cl. 1', 'criollo', NULL, NULL, 'Español: criollo', 'import-espanol-bubi'),
  ('biileppo', 's.', 'm.', NULL, 'Cl. 3', 'cristal', NULL, NULL, 'Español: cristal', 'import-espanol-bubi'),
  ('tyuappó', 's.', 'm.', NULL, 'Cl. 13', 'cruce', NULL, NULL, 'Español: cruce', 'import-espanol-bubi'),
  ('kurússu', 's.', 'm.', NULL, 'Cl. 9', 'crucifijo', NULL, NULL, 'Español: crucifijo', 'import-espanol-bubi'),
  ('epa''i', 's.', 'm.', NULL, 'Cl. 7', 'cuadro', NULL, NULL, 'Español: cuadro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 7', 'cuarenta', NULL, NULL, 'Español: cuarenta', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 4', 'cuatro', NULL, NULL, 'Español: cuatro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'cuatrocientos', NULL, NULL, 'Español: cuatrocientos', 'import-espanol-bubi'),
  ('rikattó', 's.', 'm.', NULL, 'Cl. 5', 'cubilete', NULL, NULL, 'Español: cubilete', 'import-espanol-bubi');

-- Lote 27 (entradas 651 a 675)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ehao', 's.', 'm.', NULL, 'Cl. 7', 'cubo', NULL, NULL, 'Español: cubo', 'import-espanol-bubi'),
  ('boassó', 's.', 'm.', NULL, 'Cl. 3', 'cubrecama', NULL, NULL, 'Español: cubrecama', 'import-espanol-bubi'),
  ('hNko', 's.', 'm.', NULL, 'Cl. 9', 'cuello', NULL, NULL, 'Español: cuello', 'import-espanol-bubi'),
  ('siatta', 's.', 'm.', NULL, 'Cl. 12', 'cuento', NULL, NULL, 'Español: cuento', 'import-espanol-bubi'),
  ('lue''a', 's.', 'm.', NULL, 'Cl. 6', 'cuerno', NULL, NULL, 'Español: cuerno', 'import-espanol-bubi'),
  ('kaákaá', 's.', 'm.', NULL, 'Cl. 9', 'cuervo', NULL, NULL, 'Español: cuervo', 'import-espanol-bubi'),
  ('pelta', 'v.', NULL, NULL, NULL, 'cuestionar', NULL, NULL, 'Español: cuestionar', 'import-espanol-bubi'),
  ('losoo', 's.', 'm.', NULL, 'Cl. 11', 'culo', NULL, NULL, 'Español: culo', 'import-espanol-bubi'),
  ('bo''o', 's.', 'm.', NULL, 'Cl. 1', 'cuñado', NULL, NULL, 'Español: cuñado', 'import-espanol-bubi'),
  ('bosella', 's.', 'm.', NULL, 'Cl. 1', 'curandero', NULL, NULL, 'Español: curandero', 'import-espanol-bubi'),
  ('bolotta', 's.', 'm.', NULL, 'Cl. 1', 'custodio', NULL, NULL, 'Español: custodio', 'import-espanol-bubi'),
  ('sityatyá', 's.', 'm.', NULL, 'Cl. 12', 'dado', NULL, NULL, 'Español: dado', 'import-espanol-bubi'),
  ('roppá', 's.', 'm.', NULL, 'Cl. 5', 'daño', NULL, NULL, 'Español: daño', 'import-espanol-bubi'),
  ('botyikka', 's.', 'm.', NULL, 'Cl. 3', 'dardo', NULL, NULL, 'Español: dardo', 'import-espanol-bubi'),
  ('narnmo', 's.', 'm.', NULL, 'Cl. 9', 'dátil', NULL, NULL, 'Español: dátil', 'import-espanol-bubi'),
  ('onno', 'adv.', NULL, NULL, 'Cl. 9', 'debajo', NULL, NULL, 'Español: debajo', 'import-espanol-bubi'),
  ('obottó', 'adj.', NULL, NULL, 'Cl. 3', 'débil', NULL, NULL, 'Español: débil', 'import-espanol-bubi'),
  ('lokolla', 'v.', NULL, NULL, NULL, 'debilitarse', NULL, NULL, 'Español: debilitarse', 'import-espanol-bubi'),
  ('epólla', 'v.', NULL, NULL, NULL, 'decapitar', NULL, NULL, 'Español: decapitar', 'import-espanol-bubi'),
  ('buelláa', 'v.', NULL, NULL, NULL, 'decir', NULL, NULL, 'Español: decir', 'import-espanol-bubi'),
  ('botó''ia', 's.', 'm.', NULL, 'Cl. 3', 'decoro', NULL, NULL, 'Español: decoro', 'import-espanol-bubi'),
  ('bone', 's.', 'm.', NULL, 'Cl. 3', 'dedo', NULL, NULL, 'Español: dedo', 'import-espanol-bubi'),
  ('elebbáa', 's.', 'm.', NULL, 'Cl. 7', 'defecto', NULL, NULL, 'Español: defecto', 'import-espanol-bubi'),
  ('bulaella', 'v.', NULL, NULL, NULL, 'defender', NULL, NULL, 'Español: defender', 'import-espanol-bubi'),
  ('oburó', 's.', 'm.', NULL, 'Cl. 1', 'defendido', NULL, NULL, 'Español: defendido', 'import-espanol-bubi');

-- Lote 28 (entradas 676 a 700)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribuéi', 's.', 'm.', NULL, 'Cl. 5', 'defunción', NULL, NULL, 'Español: defunción', 'import-espanol-bubi'),
  ('tyi''a', 'v.', NULL, NULL, NULL, 'dejar', NULL, NULL, 'Español: dejar', 'import-espanol-bubi'),
  ('bOsuállo', 's.', 'm.', NULL, 'Cl. 3', 'delante', NULL, NULL, 'Español: delante', 'import-espanol-bubi'),
  ('rikora', 'v.', NULL, NULL, NULL, 'delatar', NULL, NULL, 'Español: delatar', 'import-espanol-bubi'),
  ('bOtákko', 's.', 'm.', NULL, 'Cl. 1', 'delegado', NULL, NULL, 'Español: delegado', 'import-espanol-bubi'),
  ('boroo', 's.', 'm.', NULL, 'Cl. 3', 'deleite', NULL, NULL, 'Español: deleite', 'import-espanol-bubi'),
  ('eposso', 's.', 'm.', NULL, 'Cl. 7', 'delfín', NULL, NULL, 'Español: delfín', 'import-espanol-bubi'),
  ('losikko', 's.', 'f.', NULL, 'Cl. 3', 'delgadez', NULL, NULL, 'Español: delgadez', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'f.', NULL, 'Cl. 9', 'demencia', NULL, NULL, 'Español: demencia', 'import-espanol-bubi'),
  ('tyoppo', 'adj.', NULL, NULL, 'Cl. 9', 'demente', NULL, NULL, 'Español: demente', 'import-espanol-bubi'),
  ('halla', 'v.', NULL, NULL, NULL, 'demoler', NULL, NULL, 'Español: demoler', 'import-espanol-bubi'),
  ('mmo', 's.', 'm.', NULL, 'Cl. 1', 'demonio', NULL, NULL, 'Español: demonio', 'import-espanol-bubi'),
  ('tappáa', 'v.', NULL, NULL, NULL, 'demostrar', NULL, NULL, 'Español: demostrar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 6', 'dentadura', NULL, NULL, 'Español: dentadura', 'import-espanol-bubi'),
  ('oarnmo', 'adv.', NULL, NULL, NULL, 'dentro', NULL, NULL, 'Español: dentro', 'import-espanol-bubi'),
  ('bole''o', 's.', 'm.', NULL, 'Cl. 1', 'depositario', NULL, NULL, 'Español: depositario', 'import-espanol-bubi'),
  ('rileppo', 's.', 'm.', NULL, 'Cl. 5', 'depósito', NULL, NULL, 'Español: depósito', 'import-espanol-bubi'),
  ('bakasso', 'adv.', NULL, NULL, NULL, 'deprisa', NULL, NULL, 'Español: deprisa', 'import-espanol-bubi'),
  ('esootyi', 's.', 'm.', NULL, 'Cl. 7', 'derecho', NULL, NULL, 'Español: derecho', 'import-espanol-bubi'),
  ('púlláa', 'v.', NULL, NULL, NULL, 'derivar', NULL, NULL, 'Español: derivar', 'import-espanol-bubi'),
  ('tó''', 'v.', NULL, NULL, NULL, 'derrotar', NULL, NULL, 'Español: derrotar', 'import-espanol-bubi'),
  ('telle', 's.', 'm.', NULL, 'Cl. 9', 'derrotero', NULL, NULL, 'Español: derrotero', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, 'desacertar', NULL, NULL, 'Español: desacertar', 'import-espanol-bubi'),
  ('eityi', 's.', 'm.', NULL, 'Cl. 7', 'desacierto', NULL, NULL, 'Español: desacierto', 'import-espanol-bubi'),
  ('tobálera', 'v.', NULL, NULL, NULL, 'desafiar', NULL, NULL, 'Español: desafiar', 'import-espanol-bubi');

-- Lote 29 (entradas 701 a 725)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buelálabbé', 'adj.', NULL, NULL, 'Cl. 1', 'desafortunado', NULL, NULL, 'Español: desafortunado', 'import-espanol-bubi'),
  ('lopello', 's.', 'm.', NULL, 'Cl. 10', 'desaire', NULL, NULL, 'Español: desaire', 'import-espanol-bubi'),
  ('solla', 'v.', NULL, NULL, NULL, 'desasir', NULL, NULL, 'Español: desasir', 'import-espanol-bubi'),
  ('ehatto', 's.', 'm.', NULL, 'Cl. 7', 'desayuno', NULL, NULL, 'Español: desayuno', 'import-espanol-bubi'),
  ('kokoppé', 's.', 'm.', NULL, 'Cl. 9', 'desazonado', NULL, NULL, 'Español: desazonado', 'import-espanol-bubi'),
  ('ba''a', 'v.', NULL, NULL, NULL, 'desbastar', NULL, NULL, 'Español: desbastar', 'import-espanol-bubi'),
  ('epapara', 's.', 'm.', NULL, 'Cl. 7', 'desbroce', NULL, NULL, 'Español: desbroce', 'import-espanol-bubi'),
  ('hobbá', 'v.', NULL, NULL, NULL, 'desbrozar', NULL, NULL, 'Español: desbrozar', 'import-espanol-bubi'),
  ('hetyólla', 'v.', NULL, NULL, NULL, 'descalzar', NULL, NULL, 'Español: descalzar', 'import-espanol-bubi'),
  ('boebbó', 's.', 'm.', NULL, 'Cl. 3', 'descanso', NULL, NULL, 'Español: descanso', 'import-espanol-bubi'),
  ('íhóra', 'v.', NULL, NULL, NULL, 'descargar', NULL, NULL, 'Español: descargar', 'import-espanol-bubi'),
  ('bobora', 's.', 'm.', NULL, 'Cl. 1', 'descendiente', NULL, NULL, 'Español: descendiente', 'import-espanol-bubi'),
  ('esotyo', 's.', 'm.', NULL, 'Cl. 7', 'descenso', NULL, NULL, 'Español: descenso', 'import-espanol-bubi'),
  ('nélolla', 'v.', NULL, NULL, NULL, 'desclavar', NULL, NULL, 'Español: desclavar', 'import-espanol-bubi'),
  ('betélolla', 'v.', NULL, NULL, NULL, 'desconfiar', NULL, NULL, 'Español: desconfiar', 'import-espanol-bubi'),
  ('ripukké', 's.', 'm.', NULL, 'Cl. 5', 'desdén', NULL, NULL, 'Español: desdén', 'import-espanol-bubi'),
  ('eborábéllo', 'adj.', NULL, NULL, 'Cl. 7', 'desdentado', NULL, NULL, 'Español: desdentado', 'import-espanol-bubi'),
  ('kuppia', 'v.', NULL, NULL, NULL, 'desdeñar', NULL, NULL, 'Español: desdeñar', 'import-espanol-bubi'),
  ('hótolla', 'v.', NULL, NULL, NULL, 'desdoblar', NULL, NULL, 'Español: desdoblar', 'import-espanol-bubi'),
  ('hOlláa', 'v.', NULL, NULL, NULL, 'desear', NULL, NULL, 'Español: desear', 'import-espanol-bubi'),
  ('héya', 'v.', NULL, NULL, NULL, 'desecar', NULL, NULL, 'Español: desecar', 'import-espanol-bubi'),
  ('hékia', 'v.', NULL, NULL, NULL, 'desechar', NULL, NULL, 'Español: desechar', 'import-espanol-bubi'),
  ('eeléri', 's.', 'm.', NULL, 'Cl. 7', 'deseo', NULL, NULL, 'Español: deseo', 'import-espanol-bubi'),
  ('eubáa', 's.', 'm.', NULL, 'Cl. 7', 'desfalco', NULL, NULL, 'Español: desfalco', 'import-espanol-bubi'),
  ('salolla', 'v.', NULL, NULL, NULL, 'desgajar', NULL, NULL, 'Español: desgajar', 'import-espanol-bubi');

-- Lote 30 (entradas 726 a 750)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('saatta', 'v.', NULL, NULL, 'Cl. 7', 'desgarrar', NULL, NULL, 'Español: desgarrar', 'import-espanol-bubi'),
  ('kopolla', 'v.', NULL, NULL, NULL, 'desgranar', NULL, NULL, 'Español: desgranar', 'import-espanol-bubi'),
  ('lobotyobotyo', 's.', 'm.', NULL, 'Cl. 10', 'desierto', NULL, NULL, 'Español: desierto', 'import-espanol-bubi'),
  ('pohá', 's.', 'm.', NULL, 'Cl. 9', 'desmán', NULL, NULL, 'Español: desmán', 'import-espanol-bubi'),
  ('esélásélá', 's.', 'm.', NULL, 'Cl. 7', 'desmayo', NULL, NULL, 'Español: desmayo', 'import-espanol-bubi'),
  ('sikkiáa', 'v.', NULL, NULL, NULL, 'desmedrar', NULL, NULL, 'Español: desmedrar', 'import-espanol-bubi'),
  ('kétya', 'v.', NULL, NULL, NULL, 'desmenuzar', NULL, NULL, 'Español: desmenuzar', 'import-espanol-bubi'),
  ('epapara', 's.', 'm.', NULL, 'Cl. 7', 'desmonte', NULL, NULL, 'Español: desmonte', 'import-espanol-bubi'),
  ('ehetyoro', 's.', 'm.', NULL, 'Cl. 7', 'desuudo', NULL, NULL, 'Español: desuudo', 'import-espanol-bubi'),
  ('buihó', 'adj.', NULL, NULL, 'Cl. 2', 'desobediente', NULL, NULL, 'Español: desobediente', 'import-espanol-bubi'),
  ('ekorokoro', 's.', 'm.', NULL, 'Cl. 7', 'desorden', NULL, NULL, 'Español: desorden', 'import-espanol-bubi'),
  ('labotólábot', 'adv.', NULL, NULL, NULL, 'despacio', NULL, NULL, 'Español: despacio', 'import-espanol-bubi'),
  ('tyiololla', 'v.', NULL, NULL, NULL, 'despeinar', NULL, NULL, 'Español: despeinar', 'import-espanol-bubi'),
  ('buátyi', 's.', 'm.', NULL, 'Cl. 8', 'despertador', NULL, NULL, 'Español: despertador', 'import-espanol-bubi'),
  ('ebba', 'v.', NULL, NULL, NULL, 'despertar', NULL, NULL, 'Español: despertar', 'import-espanol-bubi'),
  ('rikappi', 's.', 'm.', NULL, 'Cl. 5', 'despilfarro', NULL, NULL, 'Español: despilfarro', 'import-espanol-bubi'),
  ('sulla', 'v.', NULL, NULL, NULL, 'desplumar', NULL, NULL, 'Español: desplumar', 'import-espanol-bubi'),
  ('boánna', 'v.', NULL, NULL, NULL, 'despojar', NULL, NULL, 'Español: despojar', 'import-espanol-bubi'),
  ('baráa', 'v.', NULL, NULL, NULL, 'desposar', NULL, NULL, 'Español: desposar', 'import-espanol-bubi'),
  ('mareri', 's.', 'm.', NULL, 'Cl. 9', 'desposorios', NULL, NULL, 'Español: desposorios', 'import-espanol-bubi'),
  ('kuppia', 'v.', NULL, NULL, NULL, 'despreciar', NULL, NULL, 'Español: despreciar', 'import-espanol-bubi'),
  ('lopéllo', 's.', 'm.', NULL, 'Cl. 10', 'desprecio', NULL, NULL, 'Español: desprecio', 'import-espanol-bubi'),
  ('salolla', 'v.', NULL, NULL, NULL, 'desprender', NULL, NULL, 'Español: desprender', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 10', 'destajo', NULL, NULL, 'Español: destajo', 'import-espanol-bubi'),
  ('bityolla', 'v.', NULL, NULL, NULL, 'destapar', NULL, NULL, 'Español: destapar', 'import-espanol-bubi');

-- Lote 31 (entradas 751 a 775)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tokólla', 'v.', NULL, NULL, 'Cl. 12', 'destejer', NULL, NULL, 'Español: destejer', 'import-espanol-bubi'),
  ('pupuálla', 'v.', NULL, NULL, NULL, 'desterrar', NULL, NULL, 'Español: desterrar', 'import-espanol-bubi'),
  ('eira', 's.', 'm.', NULL, 'Cl. 7', 'destete', NULL, NULL, 'Español: destete', 'import-espanol-bubi'),
  ('etyí''o', 's.', 'm.', NULL, 'Cl. 7', 'destierro', NULL, NULL, 'Español: destierro', 'import-espanol-bubi'),
  ('ribotyo', 's.', 'm.', NULL, 'Cl. 5', 'destino', NULL, NULL, 'Español: destino', 'import-espanol-bubi'),
  ('rikappi', 's.', 'm.', NULL, 'Cl. 5', 'destrozo', NULL, NULL, 'Español: destrozo', 'import-espanol-bubi'),
  ('halla', 'v.', NULL, NULL, NULL, 'destruir', NULL, NULL, 'Español: destruir', 'import-espanol-bubi'),
  ('okanolla', 'v.', NULL, NULL, NULL, 'desunir', NULL, NULL, 'Español: desunir', 'import-espanol-bubi'),
  ('sibólló', 's.', 'm.', NULL, 'Cl. 12', 'desvalido', NULL, NULL, 'Español: desvalido', 'import-espanol-bubi'),
  ('lepolla', 'v.', NULL, NULL, NULL, 'desvelar', NULL, NULL, 'Español: desvelar', 'import-espanol-bubi'),
  ('ehette', 's.', 'm.', NULL, 'Cl. 7', 'desvelo', NULL, NULL, 'Español: desvelo', 'import-espanol-bubi'),
  ('tyebólla', 's.', 'm.', NULL, 'Cl. 9', 'detergente', NULL, NULL, 'Español: detergente', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'deteriorar', NULL, NULL, 'Español: deteriorar', 'import-espanol-bubi'),
  ('kooa', 'v.', NULL, NULL, NULL, 'detestar', NULL, NULL, 'Español: detestar', 'import-espanol-bubi'),
  ('onná', 'adv.', NULL, NULL, NULL, 'detrás', NULL, NULL, 'Español: detrás', 'import-espanol-bubi'),
  ('bOaó', 's.', 'f.', NULL, 'Cl. 3', 'deuda', NULL, NULL, 'Español: deuda', 'import-espanol-bubi'),
  ('péppa', 'v.', NULL, NULL, NULL, 'devanar', NULL, NULL, 'Español: devanar', 'import-espanol-bubi'),
  ('nokóbiera', 'v.', NULL, NULL, NULL, 'devorar', NULL, NULL, 'Español: devorar', 'import-espanol-bubi'),
  ('bokó', 's.', 'm.', NULL, 'Cl. 3', 'día', NULL, NULL, 'Español: día', 'import-espanol-bubi'),
  ('sibbó', 's.', 'm.', NULL, 'Cl. 12', 'diablillo', NULL, NULL, 'Español: diablillo', 'import-espanol-bubi'),
  ('rnmó', 's.', 'm.', NULL, 'Cl. 1', 'diablo', NULL, NULL, 'Español: diablo', 'import-espanol-bubi'),
  ('to''ólla', 'v.', NULL, NULL, NULL, 'dialogar', NULL, NULL, 'Español: dialogar', 'import-espanol-bubi'),
  ('botólló', 's.', 'm.', NULL, 'Cl. 3', 'diálogo', NULL, NULL, 'Español: diálogo', 'import-espanol-bubi'),
  ('ribúkku', 's.', 'm.', NULL, NULL, 'diccionario', NULL, NULL, 'Español: diccionario', 'import-espanol-bubi'),
  ('kesse', 's.', 'm.', NULL, 'Cl. 9', 'dicho', NULL, NULL, 'Español: dicho', 'import-espanol-bubi');

-- Lote 32 (entradas 776 a 800)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buelálelle', 'adj.', NULL, NULL, 'Cl. 1', 'dichoso', NULL, NULL, 'Español: dichoso', 'import-espanol-bubi'),
  ('asámOóte', 's.', 'm.', NULL, NULL, 'diciembre', NULL, NULL, 'Español: diciembre', 'import-espanol-bubi'),
  ('opippa', 's.', 'm.', NULL, 'Cl. 1', 'dictador', NULL, NULL, 'Español: dictador', 'import-espanol-bubi'),
  ('bopippí', 's.', 'f.', NULL, 'Cl. 3', 'dictadura', NULL, NULL, 'Español: dictadura', 'import-espanol-bubi'),
  ('rello', 's.', 'm.', NULL, 'Cl. 5', 'diente', NULL, NULL, 'Español: diente', 'import-espanol-bubi'),
  ('to''ú', 'adj.', NULL, NULL, 'Cl. 13', 'dificil', NULL, NULL, 'Español: dificil', 'import-espanol-bubi'),
  ('mmo', 's.', 'm.', NULL, 'Cl. 1', 'difunto', NULL, NULL, 'Español: difunto', 'import-espanol-bubi'),
  ('ekasso', 'adj.', NULL, NULL, 'Cl. 7', 'diligente', NULL, NULL, 'Español: diligente', 'import-espanol-bubi'),
  ('ekolakolla', 's.', 'm.', NULL, 'Cl. 7', 'diluvio', NULL, NULL, 'Español: diluvio', 'import-espanol-bubi'),
  ('bonní', 's.', 'm.', NULL, 'Cl. 9', 'dinero', NULL, NULL, 'Español: dinero', 'import-espanol-bubi'),
  ('eruppé', 's.', 'm.', NULL, 'Cl. 7', 'dios', NULL, NULL, 'Español: dios', 'import-espanol-bubi'),
  ('takkí', 's.', 'm.', NULL, 'Cl. 9', 'director', NULL, NULL, 'Español: director', 'import-espanol-bubi'),
  ('bolekia', 'adj.', NULL, NULL, 'Cl. 1', 'dirigente', NULL, NULL, 'Español: dirigente', 'import-espanol-bubi'),
  ('lekkia', 'v.', NULL, NULL, NULL, 'dirigir', NULL, NULL, 'Español: dirigir', 'import-espanol-bubi'),
  ('bOlebbóo', 's.', 'm.', NULL, 'Cl. 1', 'discapacitado', NULL, NULL, 'Español: discapacitado', 'import-espanol-bubi'),
  ('bue''áa', 's.', 'm.', NULL, 'Cl. 1', 'discípulo', NULL, NULL, 'Español: discípulo', 'import-espanol-bubi'),
  ('tyikkó', 's.', 'm.', NULL, 'Cl. 9', 'disco', NULL, NULL, 'Español: disco', 'import-espanol-bubi'),
  ('buihó', 's.', 'm.', NULL, 'Cl. 1', 'díscolo', NULL, NULL, 'Español: díscolo', 'import-espanol-bubi'),
  ('petta', 'v.', NULL, NULL, NULL, 'discrepar', NULL, NULL, 'Español: discrepar', 'import-espanol-bubi'),
  ('boatta', 's.', 'm.', NULL, 'Cl. 3', 'discurso', NULL, NULL, 'Español: discurso', 'import-espanol-bubi'),
  ('obálla', 'v.', NULL, NULL, NULL, 'discutir', NULL, NULL, 'Español: discutir', 'import-espanol-bubi'),
  ('in', 's.', NULL, NULL, NULL, 'disgustar', NULL, NULL, 'Español: disgustar', 'import-espanol-bubi'),
  ('buallé', 's.', 'm.', NULL, 'Cl. 3', 'disgusto', NULL, NULL, 'Español: disgusto', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 3', 'disoluto', NULL, NULL, 'Español: disoluto', 'import-espanol-bubi'),
  ('ekokoo', 's.', 'm.', NULL, 'Cl. 7', 'disparo', NULL, NULL, 'Español: disparo', 'import-espanol-bubi');

-- Lote 33 (entradas 801 a 825)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('IOba''o', 's.', 'm.', NULL, 'Cl. 3', 'distrito', NULL, NULL, 'Español: distrito', 'import-espanol-bubi'),
  ('ribákéri', 's.', 'm.', NULL, 'Cl. 5', 'disturbio', NULL, NULL, 'Español: disturbio', 'import-espanol-bubi'),
  ('esori', 's.', 'm.', NULL, 'Cl. 7', 'divorcio', NULL, NULL, 'Español: divorcio', 'import-espanol-bubi'),
  ('rokútta', 's.', 'm.', NULL, 'Cl. 5', 'doctor', NULL, NULL, 'Español: doctor', 'import-espanol-bubi'),
  ('ripepáa', 's.', 'm.', NULL, 'Cl. 5', 'documento', NULL, NULL, 'Español: documento', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'doler', NULL, NULL, 'Español: doler', 'import-espanol-bubi'),
  ('roppá', 's.', 'm.', NULL, 'Cl. 5', 'dolor', NULL, NULL, 'Español: dolor', 'import-espanol-bubi'),
  ('i''a', 'v.', NULL, NULL, NULL, 'domesticar', NULL, NULL, 'Español: domesticar', 'import-espanol-bubi'),
  ('ihuollo', 's.', 'm.', NULL, 'Cl. 5', 'domingo', NULL, NULL, 'Español: domingo', 'import-espanol-bubi'),
  ('etáka', 's.', 'm.', NULL, 'Cl. 7', 'dominio', NULL, NULL, 'Español: dominio', 'import-espanol-bubi'),
  ('interrogo', 'adv.', NULL, NULL, NULL, 'dónde', NULL, NULL, 'Español: dónde', 'import-espanol-bubi'),
  ('bolokka', 's.', 'm.', NULL, 'Cl. 1', 'dormilón', NULL, NULL, 'Español: dormilón', 'import-espanol-bubi'),
  ('ilokko', 's.', 'm.', NULL, 'Cl. 5', 'dormitorio', NULL, NULL, 'Español: dormitorio', 'import-espanol-bubi'),
  ('páa', 'v.', NULL, NULL, NULL, 'dotar', NULL, NULL, 'Español: dotar', 'import-espanol-bubi'),
  ('enokonokko', 's.', 'm.', NULL, 'Cl. 7', 'dragón', NULL, NULL, 'Español: dragón', 'import-espanol-bubi'),
  ('ebátya', 's.', 'm.', NULL, 'Cl. 7', 'drama', NULL, NULL, 'Español: drama', 'import-espanol-bubi'),
  ('lekella', 'v.', NULL, NULL, NULL, 'drenar', NULL, NULL, 'Español: drenar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'dueño', NULL, NULL, 'Español: dueño', 'import-espanol-bubi'),
  ('boroo', 's.', 'm.', NULL, 'Cl. 3', 'dulce', NULL, NULL, 'Español: dulce', 'import-espanol-bubi'),
  ('bOróo', 's.', 'm.', NULL, 'Cl. 3', 'dulzor', NULL, NULL, 'Español: dulzor', 'import-espanol-bubi'),
  ('eoppi', 's.', 'f.', NULL, 'Cl. 7', 'duración', NULL, NULL, 'Español: duración', 'import-espanol-bubi'),
  ('oppa', 'v.', NULL, NULL, NULL, 'durar', NULL, NULL, 'Español: durar', 'import-espanol-bubi'),
  ('Iobbó', 'adj.', NULL, NULL, NULL, 'duro', NULL, NULL, 'Español: duro', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 9', 'ebanista', NULL, NULL, 'Español: ebanista', 'import-espanol-bubi'),
  ('boribbí', 'adj.', NULL, NULL, 'Cl. 3', 'ebrio', NULL, NULL, 'Español: ebrio', 'import-espanol-bubi');

-- Lote 34 (entradas 826 a 850)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eoko', 's.', 'm.', NULL, 'Cl. 7', 'eco', NULL, NULL, 'Español: eco', 'import-espanol-bubi'),
  ('tyóbbo', 's.', 'm.', NULL, 'Cl. 9', 'edificio', NULL, NULL, 'Español: edificio', 'import-espanol-bubi'),
  ('bokutta', 's.', 'm.', NULL, 'Cl. 3', 'edredón', NULL, NULL, 'Español: edredón', 'import-espanol-bubi'),
  ('e''iáa', 'v.', NULL, NULL, NULL, 'educar', NULL, NULL, 'Español: educar', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'ejemplo', NULL, NULL, 'Español: ejemplo', 'import-espanol-bubi'),
  ('lohúa', 's.', 'm.', NULL, 'Cl. 6', 'ejército', NULL, NULL, 'Español: ejército', 'import-espanol-bubi'),
  ('eossí', 's.', 'm.', NULL, 'Cl. 7', 'elefantiasis', NULL, NULL, 'Español: elefantiasis', 'import-espanol-bubi'),
  ('suppáa', 'v.', NULL, NULL, NULL, 'elegir', NULL, NULL, 'Español: elegir', 'import-espanol-bubi'),
  ('ribisso', 's.', 'm.', NULL, 'Cl. 5', 'elevador', NULL, NULL, 'Español: elevador', 'import-espanol-bubi'),
  ('ribekko', 's.', 'm.', NULL, 'Cl. 5', 'elogio', NULL, NULL, 'Español: elogio', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', 'embajador', NULL, NULL, 'Español: embajador', 'import-espanol-bubi'),
  ('rebbá', 's.', 'm.', NULL, 'Cl. 5', 'embarazo', NULL, NULL, 'Español: embarazo', 'import-espanol-bubi'),
  ('ribbiáa', 'v.', NULL, NULL, NULL, 'emborrachar', NULL, NULL, 'Español: emborrachar', 'import-espanol-bubi'),
  ('ehutéri', 's.', 'm.', NULL, 'Cl. 7', 'embozo', NULL, NULL, 'Español: embozo', 'import-espanol-bubi'),
  ('ribbiáa', 'v.', NULL, NULL, NULL, 'embriagar', NULL, NULL, 'Español: embriagar', 'import-espanol-bubi'),
  ('bOtyípótyípóo', 's.', 'm.', NULL, 'Cl. 3', 'embrollo', NULL, NULL, 'Español: embrollo', 'import-espanol-bubi'),
  ('isera', 'v.', NULL, NULL, NULL, 'embrujar', NULL, NULL, 'Español: embrujar', 'import-espanol-bubi'),
  ('bOntyó', 's.', 'm.', NULL, 'Cl. 3', 'embrujo', NULL, NULL, 'Español: embrujo', 'import-espanol-bubi'),
  ('botyokáa', 's.', 'm.', NULL, 'Cl. 3', 'embudo', NULL, NULL, 'Español: embudo', 'import-espanol-bubi'),
  ('bosori', 's.', 'm.', NULL, 'Cl. 1', 'emigrante', NULL, NULL, 'Español: emigrante', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', 'emisario', NULL, NULL, 'Español: emisario', 'import-espanol-bubi'),
  ('kapella', 'v.', NULL, NULL, NULL, 'empaquetar', NULL, NULL, 'Español: empaquetar', 'import-espanol-bubi'),
  ('kossá', 'v.', NULL, NULL, NULL, 'emparejar', NULL, NULL, 'Español: emparejar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'emperador', NULL, NULL, 'Español: emperador', 'import-espanol-bubi'),
  ('papella', 'v.', NULL, NULL, NULL, 'empezar', NULL, NULL, 'Español: empezar', 'import-espanol-bubi');

-- Lote 35 (entradas 851 a 875)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('wela', 'adv.', NULL, NULL, NULL, 'en', NULL, NULL, 'Español: en', 'import-espanol-bubi'),
  ('bopaosélla', 's.', 'm.', NULL, 'Cl. 1', 'enamorado', NULL, NULL, 'Español: enamorado', 'import-espanol-bubi'),
  ('okátella', 'v.', NULL, NULL, NULL, 'encabezar', NULL, NULL, 'Español: encabezar', 'import-espanol-bubi'),
  ('boloppo', 's.', 'm.', NULL, 'Cl. 3', 'encendedor', NULL, NULL, 'Español: encendedor', 'import-espanol-bubi'),
  ('ebuté', 's.', 'f.', NULL, 'Cl. 7', 'encía', NULL, NULL, 'Español: encía', 'import-espanol-bubi'),
  ('oOO''ó', 'adv.', NULL, NULL, NULL, 'encima', NULL, NULL, 'Español: encima', 'import-espanol-bubi'),
  ('elláa', 'v.', NULL, NULL, NULL, 'encontrar', NULL, NULL, 'Español: encontrar', 'import-espanol-bubi'),
  ('witáeri', 's.', 'm.', NULL, 'Cl. 3', 'encuentro', NULL, NULL, 'Español: encuentro', 'import-espanol-bubi'),
  ('elopa', 's.', 'm.', NULL, 'Cl. 7', 'endiablado', NULL, NULL, 'Español: endiablado', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, 'endurecer', NULL, NULL, 'Español: endurecer', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'enemigo', NULL, NULL, 'Español: enemigo', 'import-espanol-bubi'),
  ('bonokko', 's.', 'f.', NULL, 'Cl. 3', 'energía', NULL, NULL, 'Español: energía', 'import-espanol-bubi'),
  ('asáityi', 's.', 'm.', NULL, NULL, 'enero', NULL, NULL, 'Español: enero', 'import-espanol-bubi'),
  ('bonobbe', 's.', 'm.', NULL, 'Cl. 3', 'enfado', NULL, NULL, 'Español: enfado', 'import-espanol-bubi'),
  ('akalla', 'v.', NULL, NULL, NULL, 'enfardar', NULL, NULL, 'Español: enfardar', 'import-espanol-bubi'),
  ('kaaí', 's.', 'f.', NULL, 'Cl. 9', 'enfermedad', NULL, NULL, 'Español: enfermedad', 'import-espanol-bubi'),
  ('riseríi', 's.', 'f.', NULL, 'Cl. 5', 'enfermería', NULL, NULL, 'Español: enfermería', 'import-espanol-bubi'),
  ('bonnya', 's.', 'm.', NULL, 'Cl. 1', 'enfermero', NULL, NULL, 'Español: enfermero', 'import-espanol-bubi'),
  ('OOloari', 's.', 'm.', NULL, 'Cl. 1', 'enfermo', NULL, NULL, 'Español: enfermo', 'import-espanol-bubi'),
  ('bosuállo', 'adv.', NULL, NULL, 'Cl. 3', 'enfrente', NULL, NULL, 'Español: enfrente', 'import-espanol-bubi'),
  ('nánáa', 'v.', NULL, NULL, NULL, 'enganchar', NULL, NULL, 'Español: enganchar', 'import-espanol-bubi'),
  ('ebotyí', 's.', 'm.', NULL, 'Cl. 7', 'engaño', NULL, NULL, 'Español: engaño', 'import-espanol-bubi'),
  ('tolaella', 'v.', NULL, NULL, NULL, 'engarzar', NULL, NULL, 'Español: engarzar', 'import-espanol-bubi'),
  ('bOseppa', 'adj.', NULL, NULL, 'Cl. 1', 'engreído', NULL, NULL, 'Español: engreído', 'import-espanol-bubi'),
  ('riakko', 's.', 'm.', NULL, 'Cl. 5', 'enlace', NULL, NULL, 'Español: enlace', 'import-espanol-bubi');

-- Lote 36 (entradas 876 a 900)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tolaella', 'v.', NULL, NULL, NULL, 'enlazar', NULL, NULL, 'Español: enlazar', 'import-espanol-bubi'),
  ('bella', 'v.', NULL, NULL, NULL, 'enmendar', NULL, NULL, 'Español: enmendar', 'import-espanol-bubi'),
  ('bOnobbe', 's.', 'm.', NULL, 'Cl. 3', 'enojo', NULL, NULL, 'Español: enojo', 'import-espanol-bubi'),
  ('tokká', 'v.', NULL, NULL, NULL, 'ensartar', NULL, NULL, 'Español: ensartar', 'import-espanol-bubi'),
  ('esori', 's.', 'm.', NULL, 'Cl. 7', 'ensayo', NULL, NULL, 'Español: ensayo', 'import-espanol-bubi'),
  ('bue''iáa', 's.', 'm.', NULL, 'Cl. 1', 'enseñante', NULL, NULL, 'Español: enseñante', 'import-espanol-bubi'),
  ('lokko', 's.', 'm.', NULL, NULL, 'enseres', NULL, NULL, 'Español: enseres', 'import-espanol-bubi'),
  ('tollo', 's.', 'm.', NULL, 'Cl. 13', 'ensueño', NULL, NULL, 'Español: ensueño', 'import-espanol-bubi'),
  ('biikuppá', 's.', 'm.', NULL, 'Cl. 3', 'entendimiento', NULL, NULL, 'Español: entendimiento', 'import-espanol-bubi'),
  ('biityilella', 's.', 'm.', NULL, 'Cl. 1', 'enterrador', NULL, NULL, 'Español: enterrador', 'import-espanol-bubi'),
  ('botyileri', 's.', 'm.', NULL, 'Cl. 3', 'entierro', NULL, NULL, 'Español: entierro', 'import-espanol-bubi'),
  ('otyé', 's.', 'm.', NULL, 'Cl. 3', 'entorno', NULL, NULL, 'Español: entorno', 'import-espanol-bubi'),
  ('helóo''áa', 'v.', NULL, NULL, NULL, 'entrar', NULL, NULL, 'Español: entrar', 'import-espanol-bubi'),
  ('e''era', 'v.', NULL, NULL, NULL, 'entregar', NULL, NULL, 'Español: entregar', 'import-espanol-bubi'),
  ('tolaella', 'v.', NULL, NULL, NULL, 'entrelazar', NULL, NULL, 'Español: entrelazar', 'import-espanol-bubi'),
  ('ripetyapetyá', 's.', 'f.', NULL, 'Cl. 6', 'entrepierna', NULL, NULL, 'Español: entrepierna', 'import-espanol-bubi'),
  ('bosobo', 's.', 'm.', NULL, NULL, 'entretenimiento', NULL, NULL, 'Español: entretenimiento', 'import-espanol-bubi'),
  ('róho', 's.', 'm.', NULL, 'Cl. 6', 'entusiasmo', NULL, NULL, 'Español: entusiasmo', 'import-espanol-bubi'),
  ('eakakótte', 's.', 'm.', NULL, 'Cl. 7', 'envase', NULL, NULL, 'Español: envase', 'import-espanol-bubi'),
  ('rulla', 'v.', NULL, NULL, NULL, 'envejecer', NULL, NULL, 'Español: envejecer', 'import-espanol-bubi'),
  ('borulla', 's.', 'm.', NULL, 'Cl. 3', 'envejecimiento', NULL, NULL, 'Español: envejecimiento', 'import-espanol-bubi'),
  ('ará', 'v.', NULL, NULL, NULL, 'enviar', NULL, NULL, 'Español: enviar', 'import-espanol-bubi'),
  ('buehé', 's.', 'f.', NULL, 'Cl. 3', 'envidia', NULL, NULL, 'Español: envidia', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'envoltorio', NULL, NULL, 'Español: envoltorio', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'envuelto', NULL, NULL, 'Español: envuelto', 'import-espanol-bubi');

-- Lote 37 (entradas 901 a 925)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ebelló', 's.', 'f.', NULL, 'Cl. 7', 'época', NULL, NULL, 'Español: época', 'import-espanol-bubi'),
  ('itya', 'v.', NULL, NULL, NULL, 'equivocar', NULL, NULL, 'Español: equivocar', 'import-espanol-bubi'),
  ('epa''á', 's.', 'm.', NULL, 'Cl. 7', 'erizo', NULL, NULL, 'Español: erizo', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, 'errar', NULL, NULL, 'Español: errar', 'import-espanol-bubi'),
  ('loribbí', 's.', 'm.', NULL, 'Cl. 7', 'error', NULL, NULL, 'Español: error', 'import-espanol-bubi'),
  ('buebá', 's.', 'm.', NULL, 'Cl. 3', 'eructo', NULL, NULL, 'Español: eructo', 'import-espanol-bubi'),
  ('kuppá', 's.', 'm.', NULL, 'Cl. 9', 'erudito', NULL, NULL, 'Español: erudito', 'import-espanol-bubi'),
  ('bOlakka', 's.', 'm.', NULL, 'Cl. 3', 'escalón', NULL, NULL, 'Español: escalón', 'import-espanol-bubi'),
  ('simpa', 's.', 'm.', NULL, 'Cl. 12', 'escaño', NULL, NULL, 'Español: escaño', 'import-espanol-bubi'),
  ('sebbáa', 'v.', NULL, NULL, NULL, 'escapar', NULL, NULL, 'Español: escapar', 'import-espanol-bubi'),
  ('lotáppo', 's.', 'm.', NULL, 'Cl. 4', 'escaparate', NULL, NULL, 'Español: escaparate', 'import-espanol-bubi'),
  ('epippí', 's.', 'm.', NULL, 'Cl. 7', 'esclavo', NULL, NULL, 'Español: esclavo', 'import-espanol-bubi'),
  ('ukka', 'v.', NULL, NULL, NULL, 'escoger', NULL, NULL, 'Español: escoger', 'import-espanol-bubi'),
  ('bOkuerakueráa', 'adj.', NULL, NULL, 'Cl. 1', 'escolar', NULL, NULL, 'Español: escolar', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, 'esconder', NULL, NULL, 'Español: esconder', 'import-espanol-bubi'),
  ('eleppo', 's.', 'm.', NULL, 'Cl. 7', 'escondite', NULL, NULL, 'Español: escondite', 'import-espanol-bubi'),
  ('boelo''o', 's.', 'm.', NULL, 'Cl. 3', 'escorpión', NULL, NULL, 'Español: escorpión', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'm.', NULL, 'Cl. 11', 'escozor', NULL, NULL, 'Español: escozor', 'import-espanol-bubi'),
  ('irera', 'v.', NULL, NULL, NULL, 'escribir', NULL, NULL, 'Español: escribir', 'import-espanol-bubi'),
  ('sing', 'adj.', NULL, NULL, 'Cl. 1', 'escuchante', NULL, NULL, 'Español: escuchante', 'import-espanol-bubi'),
  ('batóbiera', 'v.', NULL, NULL, NULL, 'escuchar', NULL, NULL, 'Español: escuchar', 'import-espanol-bubi'),
  ('kobo', 's.', 'm.', NULL, 'Cl. 9', 'escudo', NULL, NULL, 'Español: escudo', 'import-espanol-bubi'),
  ('puera', 'v.', NULL, NULL, 'Cl. 1', 'escupir', NULL, NULL, 'Español: escupir', 'import-espanol-bubi'),
  ('eu''o', 's.', 'm.', NULL, 'Cl. 7', 'eslabón', NULL, NULL, 'Español: eslabón', 'import-espanol-bubi'),
  ('nópibia', 'v.', NULL, NULL, NULL, 'esnifar', NULL, NULL, 'Español: esnifar', 'import-espanol-bubi');

-- Lote 38 (entradas 926 a 950)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bosáráa', 's.', 'm.', NULL, 'Cl. 1', 'espantador', NULL, NULL, 'Español: espantador', 'import-espanol-bubi'),
  ('esárii', 's.', 'm.', NULL, 'Cl. 7', 'espanto', NULL, NULL, 'Español: espanto', 'import-espanol-bubi'),
  ('opanná', 's.', 'm.', NULL, 'Cl. 1', 'español', NULL, NULL, 'Español: español', 'import-espanol-bubi'),
  ('ehítaeri', 's.', 'm.', NULL, 'Cl. 7', 'espectador', NULL, NULL, 'Español: espectador', 'import-espanol-bubi'),
  ('bOleppo', 's.', 'm.', NULL, 'Cl. 3', 'espejo', NULL, NULL, 'Español: espejo', 'import-espanol-bubi'),
  ('losorá', 's.', 'm.', NULL, 'Cl. 11', 'esperma', NULL, NULL, 'Español: esperma', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'espía', NULL, NULL, 'Español: espía', 'import-espanol-bubi'),
  ('bohiammo', 's.', 'm.', NULL, 'Cl. 1', 'espiritista', NULL, NULL, 'Español: espiritista', 'import-espanol-bubi'),
  ('rnmo', 's.', 'm.', NULL, 'Cl. 1', 'espíritu', NULL, NULL, 'Español: espíritu', 'import-espanol-bubi'),
  ('bObbe', 's.', 'm.', NULL, 'Cl. 1', 'esposo', NULL, NULL, 'Español: esposo', 'import-espanol-bubi'),
  ('ekáókáó', 's.', 'm.', NULL, NULL, 'esputo', NULL, NULL, 'Español: esputo', 'import-espanol-bubi'),
  ('rn', 's.', NULL, NULL, 'Cl. 4', 'esqueleto', NULL, NULL, 'Español: esqueleto', 'import-espanol-bubi'),
  ('dem', 'adj.', NULL, NULL, NULL, 'esta', NULL, NULL, 'Español: esta', 'import-espanol-bubi'),
  ('riiissa', 's.', 'm.', NULL, 'Cl. 6', 'estadio', NULL, NULL, 'Español: estadio', 'import-espanol-bubi'),
  ('ebo''u', 's.', 'm.', NULL, 'Cl. 7', 'estanque', NULL, NULL, 'Español: estanque', 'import-espanol-bubi'),
  ('dem', 'adj.', NULL, NULL, 'Cl. 3', 'este', NULL, NULL, 'Español: este', 'import-espanol-bubi'),
  ('onná', 'adv.', NULL, NULL, NULL, 'este', NULL, NULL, 'Español: este', 'import-espanol-bubi'),
  ('lotatáppa', 's.', 'f.', NULL, 'Cl. 11', 'estera', NULL, NULL, 'Español: estera', 'import-espanol-bubi'),
  ('boá', 's.', 'm.', NULL, 'Cl. 3', 'estercolero', NULL, NULL, 'Español: estercolero', 'import-espanol-bubi'),
  ('eoppa', 's.', 'm.', NULL, NULL, 'estéril', NULL, NULL, 'Español: estéril', 'import-espanol-bubi'),
  ('tyokkó', 's.', 'm.', NULL, 'Cl. 9', 'estío', NULL, NULL, 'Español: estío', 'import-espanol-bubi'),
  ('rebbá', 's.', 'm.', NULL, 'Cl. 5', 'estómago', NULL, NULL, 'Español: estómago', 'import-espanol-bubi'),
  ('tyipóbia', 'v.', NULL, NULL, NULL, 'estorbar', NULL, NULL, 'Español: estorbar', 'import-espanol-bubi'),
  ('etobbí', 's.', 'm.', NULL, 'Cl. 7', 'estorbo', NULL, NULL, 'Español: estorbo', 'import-espanol-bubi'),
  ('tyiétyié', 's.', 'm.', NULL, 'Cl. 9', 'estornudo', NULL, NULL, 'Español: estornudo', 'import-espanol-bubi');

-- Lote 39 (entradas 951 a 975)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribetebette', 's.', 'f.', NULL, 'Cl. 5', 'estratagema', NULL, NULL, 'Español: estratagema', 'import-espanol-bubi'),
  ('buppá', 's.', 'm.', NULL, 'Cl. 3', 'estrépito', NULL, NULL, 'Español: estrépito', 'import-espanol-bubi'),
  ('tyábbia', 'v.', NULL, NULL, 'Cl. 3', 'estriar', NULL, NULL, 'Español: estriar', 'import-espanol-bubi'),
  ('ribátto', 's.', 'm.', NULL, 'Cl. 5', 'estropajo', NULL, NULL, 'Español: estropajo', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'estropear', NULL, NULL, 'Español: estropear', 'import-espanol-bubi'),
  ('bOmpá', 's.', 'm.', NULL, 'Cl. 3', 'estruendo', NULL, NULL, 'Español: estruendo', 'import-espanol-bubi'),
  ('bitta', 'v.', NULL, NULL, NULL, 'estrujar', NULL, NULL, 'Español: estrujar', 'import-espanol-bubi'),
  ('wanapana', 's.', 'm.', NULL, 'Cl. 1', 'estudiante', NULL, NULL, 'Español: estudiante', 'import-espanol-bubi'),
  ('e''áa', 'v.', NULL, NULL, NULL, 'estudiar', NULL, NULL, 'Español: estudiar', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'evento', NULL, NULL, 'Español: evento', 'import-espanol-bubi'),
  ('tapánna', 'v.', NULL, NULL, NULL, 'evocar', NULL, NULL, 'Español: evocar', 'import-espanol-bubi'),
  ('esori', 's.', 'm.', NULL, 'Cl. 7', 'examen', NULL, NULL, 'Español: examen', 'import-espanol-bubi'),
  ('toom', 's.', 'm.', NULL, 'Cl. 13', 'excremento', NULL, NULL, 'Español: excremento', 'import-espanol-bubi'),
  ('bOtó''i', 's.', 'm.', NULL, 'Cl. 3', 'éxito', NULL, NULL, 'Español: éxito', 'import-espanol-bubi'),
  ('botará', 'adj.', NULL, NULL, 'Cl. 3', 'experto', NULL, NULL, 'Español: experto', 'import-espanol-bubi'),
  ('anná', 'v.', NULL, NULL, NULL, 'exprimir', NULL, NULL, 'Español: exprimir', 'import-espanol-bubi'),
  ('hékia', 'v.', NULL, NULL, NULL, 'expulsar', NULL, NULL, 'Español: expulsar', 'import-espanol-bubi'),
  ('bátyera', 'v.', NULL, NULL, NULL, 'extender', NULL, NULL, 'Español: extender', 'import-espanol-bubi'),
  ('walállo', 's.', 'm.', NULL, 'Cl. 8', 'exterior', NULL, NULL, 'Español: exterior', 'import-espanol-bubi'),
  ('rilláa', 'v.', NULL, NULL, NULL, 'exterminar', NULL, NULL, 'Español: exterminar', 'import-espanol-bubi'),
  ('tokka', 'v.', NULL, NULL, NULL, 'extinguir', NULL, NULL, 'Español: extinguir', 'import-espanol-bubi'),
  ('haa', 'v.', NULL, NULL, NULL, 'extirpar', NULL, NULL, 'Español: extirpar', 'import-espanol-bubi'),
  ('bokere', 's.', 'm.', NULL, 'Cl. 1', 'extranjero', NULL, NULL, 'Español: extranjero', 'import-espanol-bubi'),
  ('ebaeri', 's.', 'f.', NULL, 'Cl. 7', 'fábrica', NULL, NULL, 'Español: fábrica', 'import-espanol-bubi'),
  ('opénna', 's.', 'm.', NULL, 'Cl. 1', 'fabricante', NULL, NULL, 'Español: fabricante', 'import-espanol-bubi');

-- Lote 40 (entradas 976 a 1000)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('báa', 'v.', NULL, NULL, NULL, 'fabricar', NULL, NULL, 'Español: fabricar', 'import-espanol-bubi'),
  ('bosso', 's.', 'f.', NULL, 'Cl. 3', 'faceta', NULL, NULL, 'Español: faceta', 'import-espanol-bubi'),
  ('IOtappo', 's.', 'f.', NULL, 'Cl. 11', 'fachada', NULL, NULL, 'Español: fachada', 'import-espanol-bubi'),
  ('botóbóto', 'adj.', NULL, NULL, 'Cl. 9', 'fácil', NULL, NULL, 'Español: fácil', 'import-espanol-bubi'),
  ('sáppo', 's.', 'f.', NULL, 'Cl. 12', 'factoría', NULL, NULL, 'Español: factoría', 'import-espanol-bubi'),
  ('rikuera', 'v.', NULL, NULL, NULL, 'facultar', NULL, NULL, 'Español: facultar', 'import-espanol-bubi'),
  ('rokútta', 's.', 'm.', NULL, 'Cl. 5', 'facultativo', NULL, NULL, 'Español: facultativo', 'import-espanol-bubi'),
  ('elako', 's.', 'f.', NULL, 'Cl. 7', 'faena', NULL, NULL, 'Español: faena', 'import-espanol-bubi'),
  ('bókobia', 'v.', NULL, NULL, NULL, 'faenar', NULL, NULL, 'Español: faenar', 'import-espanol-bubi'),
  ('kissó', 's.', 'm.', NULL, 'Cl. 9', 'faisán', NULL, NULL, 'Español: faisán', 'import-espanol-bubi'),
  ('boutta', 's.', 'm.', NULL, 'Cl. 3', 'fajín', NULL, NULL, 'Español: fajín', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, 'fallar', NULL, NULL, 'Español: fallar', 'import-espanol-bubi'),
  ('eséri', 's.', 'm.', NULL, 'Cl. 7', 'fallecimiento', NULL, NULL, 'Español: fallecimiento', 'import-espanol-bubi'),
  ('eityi', 's.', 'm.', NULL, 'Cl. 7', 'fallo', NULL, NULL, 'Español: fallo', 'import-espanol-bubi'),
  ('booppá', 's.', 'm.', NULL, 'Cl. 3', 'falo', NULL, NULL, 'Español: falo', 'import-espanol-bubi'),
  ('sooa', 'v.', NULL, NULL, NULL, 'falsear', NULL, NULL, 'Español: falsear', 'import-espanol-bubi'),
  ('obotyibótyi', 'adj.', NULL, NULL, 'Cl. 1', 'falso', NULL, NULL, 'Español: falso', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, 'faltar', NULL, NULL, 'Español: faltar', 'import-espanol-bubi'),
  ('borannó', 's.', 'm.', NULL, 'Cl. 1', 'fang', NULL, NULL, 'Español: fang', 'import-espanol-bubi'),
  ('etokkó', 's.', 'm.', NULL, 'Cl. 8', 'fango', NULL, NULL, 'Español: fango', 'import-espanol-bubi'),
  ('mmó', 's.', 'm.', NULL, 'Cl. 3', 'fantasma', NULL, NULL, 'Español: fantasma', 'import-espanol-bubi'),
  ('bo''e', 's.', 'm.', NULL, 'Cl. 3', 'fardo', NULL, NULL, 'Español: fardo', 'import-espanol-bubi'),
  ('bokuakuabia', 's.', 'm.', NULL, 'Cl. 1', 'farfullero', NULL, NULL, 'Español: farfullero', 'import-espanol-bubi'),
  ('OOla', 's.', 'm.', NULL, 'Cl. 3', 'fármaco', NULL, NULL, 'Español: fármaco', 'import-espanol-bubi'),
  ('bokokkó', 's.', 'm.', NULL, 'Cl. 3', 'faro', NULL, NULL, 'Español: faro', 'import-espanol-bubi');

-- Lote 41 (entradas 1001 a 1025)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('obotyibótyi', 's.', 'm.', NULL, 'Cl. 1', 'farsante', NULL, NULL, 'Español: farsante', 'import-espanol-bubi'),
  ('ehelen', 's.', 'm.', NULL, 'Cl. 7', 'favor', NULL, NULL, 'Español: favor', 'import-espanol-bubi'),
  ('moakanne', 's.', 'm.', NULL, 'Cl. 3', 'febrero', NULL, NULL, 'Español: febrero', 'import-espanol-bubi'),
  ('bi''ó', 'adj.', NULL, NULL, 'Cl. 6', 'febril', NULL, NULL, 'Español: febril', 'import-espanol-bubi'),
  ('hMmiáa', 'v.', NULL, NULL, NULL, 'fecundar', NULL, NULL, 'Español: fecundar', 'import-espanol-bubi'),
  ('rirnmarnmabi''o', 'adj.', NULL, NULL, 'Cl. 5', 'feliz', NULL, NULL, 'Español: feliz', 'import-espanol-bubi'),
  ('sélla', 'v.', NULL, NULL, NULL, 'fenecer', NULL, NULL, 'Español: fenecer', 'import-espanol-bubi'),
  ('ee', 'adj.', NULL, NULL, 'Cl. 7', 'fenomenal', NULL, NULL, 'Español: fenomenal', 'import-espanol-bubi'),
  ('bOlobbo', 's.', 'm.', NULL, 'Cl. 3', 'feo', NULL, NULL, 'Español: feo', 'import-espanol-bubi'),
  ('nabba', 'adj.', NULL, NULL, 'Cl. 9', 'feroz', NULL, NULL, 'Español: feroz', 'import-espanol-bubi'),
  ('pénera', 'v.', NULL, NULL, NULL, 'festejar', NULL, NULL, 'Español: festejar', 'import-espanol-bubi'),
  ('ripelló', 's.', 'm.', NULL, 'Cl. 5', 'festejo', NULL, NULL, 'Español: festejo', 'import-espanol-bubi'),
  ('sipelló', 's.', 'm.', NULL, 'Cl. 12', 'festín', NULL, NULL, 'Español: festín', 'import-espanol-bubi'),
  ('robbo', 's.', 'm.', NULL, 'Cl. 5', 'fetiche', NULL, NULL, 'Español: fetiche', 'import-espanol-bubi'),
  ('bohiarnmo', 's.', 'm.', NULL, 'Cl. 1', 'fetichero', NULL, NULL, 'Español: fetichero', 'import-espanol-bubi'),
  ('ribésse', 's.', 'f.', NULL, 'Cl. 5', 'iambrera', NULL, NULL, 'Español: iambrera', 'import-espanol-bubi'),
  ('eserubba', 's.', 'f.', NULL, 'Cl. 7', 'ibra', NULL, NULL, 'Español: ibra', 'import-espanol-bubi'),
  ('i''ia', 'v.', NULL, NULL, NULL, 'ichar', NULL, NULL, 'Español: ichar', 'import-espanol-bubi'),
  ('nabba', 's.', 'f.', NULL, 'Cl. 9', 'iera', NULL, NULL, 'Español: iera', 'import-espanol-bubi'),
  ('hobabobbá', 'adj.', NULL, NULL, 'Cl. 9', 'iero', NULL, NULL, 'Español: iero', 'import-espanol-bubi'),
  ('ripelló', 's.', 'f.', NULL, 'Cl. 5', 'iesta', NULL, NULL, 'Español: iesta', 'import-espanol-bubi'),
  ('piri', 'adj.', NULL, NULL, NULL, 'fijo', NULL, NULL, 'Español: fijo', 'import-espanol-bubi'),
  ('botyobuebue', 's.', 'm.', NULL, 'Cl. 1', 'ilántropo', NULL, NULL, 'Español: ilántropo', 'import-espanol-bubi'),
  ('inetta', 's.', 'm.', NULL, 'Cl. 5', 'ilo', NULL, NULL, 'Español: ilo', 'import-espanol-bubi'),
  ('lekella', 'v.', NULL, NULL, NULL, 'filtrar', NULL, NULL, 'Español: filtrar', 'import-espanol-bubi');

-- Lote 42 (entradas 1026 a 1050)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('botyokáa', 's.', 'm.', NULL, 'Cl. 3', 'filtro', NULL, NULL, 'Español: filtro', 'import-espanol-bubi'),
  ('obuéi', 's.', 'm.', NULL, 'Cl. 1', 'inado', NULL, NULL, 'Español: inado', 'import-espanol-bubi'),
  ('hasubbá', 's.', 'm.', NULL, NULL, 'final', NULL, NULL, 'Español: final', 'import-espanol-bubi'),
  ('séra', 'v.', NULL, NULL, NULL, 'inalizar', NULL, NULL, 'Español: inalizar', 'import-espanol-bubi'),
  ('lobákko', 's.', 'm.', NULL, 'Cl. 10', 'irmamento', NULL, NULL, 'Español: irmamento', 'import-espanol-bubi'),
  ('saatta', 'v.', NULL, NULL, NULL, 'irmar', NULL, NULL, 'Español: irmar', 'import-espanol-bubi'),
  ('borikora', 's.', 'm.', NULL, 'Cl. 1', 'iscal', NULL, NULL, 'Español: iscal', 'import-espanol-bubi'),
  ('kóno', 's.', 'm.', NULL, 'Cl. 12', 'laco', NULL, NULL, 'Español: laco', 'import-espanol-bubi'),
  ('buítya', 's.', 'm.', NULL, 'Cl. 3', 'lato', NULL, NULL, 'Español: lato', 'import-espanol-bubi'),
  ('hútta', 'v.', NULL, NULL, NULL, 'lexionar', NULL, NULL, 'Español: lexionar', 'import-espanol-bubi'),
  ('be''', 'v.', NULL, NULL, NULL, 'lotar', NULL, NULL, 'Español: lotar', 'import-espanol-bubi'),
  ('boppé', 's.', 'm.', NULL, 'Cl. 6', 'lujo', NULL, NULL, 'Español: lujo', 'import-espanol-bubi'),
  ('rióo', 's.', 'm.', NULL, 'Cl. 5', 'fogón', NULL, NULL, 'Español: fogón', 'import-espanol-bubi'),
  ('sipéppa', 's.', 'm.', NULL, 'Cl. 12', 'folio', NULL, NULL, 'Español: folio', 'import-espanol-bubi'),
  ('tuam', 's.', 'm.', NULL, 'Cl. 13', 'follaje', NULL, NULL, 'Español: follaje', 'import-espanol-bubi'),
  ('bolláa', 's.', 'm.', NULL, 'Cl. 3', 'follón', NULL, NULL, 'Español: follón', 'import-espanol-bubi'),
  ('bukkiáa', 'v.', NULL, NULL, NULL, 'fomentar', NULL, NULL, 'Español: fomentar', 'import-espanol-bubi'),
  ('bOno''u', 's.', 'm.', NULL, 'Cl. 3', 'fondo', NULL, NULL, 'Español: fondo', 'import-espanol-bubi'),
  ('boribáa', 'adj.', NULL, NULL, 'Cl. 1', 'foráneo', NULL, NULL, 'Español: foráneo', 'import-espanol-bubi'),
  ('bOríbáa', 's.', 'm.', NULL, 'Cl. 1', 'forastero', NULL, NULL, 'Español: forastero', 'import-espanol-bubi'),
  ('é''ia', 'v.', NULL, NULL, NULL, 'formar', NULL, NULL, 'Español: formar', 'import-espanol-bubi'),
  ('óya', 'v.', NULL, NULL, NULL, 'fortalecer', NULL, NULL, 'Español: fortalecer', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 7', 'fortaleza', NULL, NULL, 'Español: fortaleza', 'import-espanol-bubi'),
  ('esessé', 's.', 'm.', NULL, 'Cl. 7', 'foso', NULL, NULL, 'Español: foso', 'import-espanol-bubi'),
  ('hára', 'v.', NULL, NULL, NULL, 'fotocopiar', NULL, NULL, 'Español: fotocopiar', 'import-espanol-bubi');

-- Lote 43 (entradas 1051 a 1075)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('italla', 'v.', NULL, NULL, NULL, 'fracasar', NULL, NULL, 'Español: fracasar', 'import-espanol-bubi'),
  ('eitalla', 's.', 'm.', NULL, 'Cl. 7', 'fracaso', NULL, NULL, 'Español: fracaso', 'import-espanol-bubi'),
  ('attáa', 'v.', NULL, NULL, NULL, 'fraccionar', NULL, NULL, 'Español: fraccionar', 'import-espanol-bubi'),
  ('attáa', 'v.', NULL, NULL, NULL, 'fracturar', NULL, NULL, 'Español: fracturar', 'import-espanol-bubi'),
  ('epólIa', 'v.', NULL, NULL, 'Cl. 5', 'fragmentar', NULL, NULL, 'Español: fragmentar', 'import-espanol-bubi'),
  ('sitó''o', 's.', 'm.', NULL, 'Cl. 12', 'frasco', NULL, NULL, 'Español: frasco', 'import-espanol-bubi'),
  ('pélla', 'v.', NULL, NULL, NULL, 'frecuentar', NULL, NULL, 'Español: frecuentar', 'import-espanol-bubi'),
  ('ubolla', 'v.', NULL, NULL, NULL, 'fregar', NULL, NULL, 'Español: fregar', 'import-espanol-bubi'),
  ('tyetyéra', 'v.', NULL, NULL, NULL, 'freír', NULL, NULL, 'Español: freír', 'import-espanol-bubi'),
  ('sillé', 'adj.', NULL, NULL, 'Cl. 13', 'fresco', NULL, NULL, 'Español: fresco', 'import-espanol-bubi'),
  ('silIé', 's.', 'm.', NULL, 'Cl. 12', 'frescor', NULL, NULL, 'Español: frescor', 'import-espanol-bubi'),
  ('sillé', 's.', 'm.', NULL, 'Cl. 12', 'frío', NULL, NULL, 'Español: frío', 'import-espanol-bubi'),
  ('etyetyero', 'adj.', NULL, NULL, 'Cl. 7', 'frito', NULL, NULL, 'Español: frito', 'import-espanol-bubi'),
  ('riobaera', 'v.', NULL, NULL, NULL, 'frotar', NULL, NULL, 'Español: frotar', 'import-espanol-bubi'),
  ('hMmáa', 'v.', NULL, NULL, NULL, 'fructiferar', NULL, NULL, 'Español: fructiferar', 'import-espanol-bubi'),
  ('ehMma', 's.', 'f.', NULL, 'Cl. 7', 'fruta', NULL, NULL, 'Español: fruta', 'import-espanol-bubi'),
  ('rihMma', 's.', 'f.', NULL, 'Cl. 5', 'frutería', NULL, NULL, 'Español: frutería', 'import-espanol-bubi'),
  ('bOissó', 's.', 'm.', NULL, 'Cl. 3', 'fuego', NULL, NULL, 'Español: fuego', 'import-espanol-bubi'),
  ('síoo', 's.', 'm.', NULL, 'Cl. 12', 'fueguecito', NULL, NULL, 'Español: fueguecito', 'import-espanol-bubi'),
  ('walállo', 'adv.', NULL, NULL, 'Cl. 3', 'fuera', NULL, NULL, 'Español: fuera', 'import-espanol-bubi'),
  ('biítyií', 's.', 'm.', NULL, 'Cl. 1', 'fulano', NULL, NULL, 'Español: fulano', 'import-espanol-bubi'),
  ('riwéi', 's.', 'm.', NULL, 'Cl. 5', 'funeral', NULL, NULL, 'Español: funeral', 'import-espanol-bubi'),
  ('etataa', 's.', 'm.', NULL, 'Cl. 7', 'fusil', NULL, NULL, 'Español: fusil', 'import-espanol-bubi'),
  ('suppá', 's.', 'm.', NULL, 'Cl. 12', 'fútbol', NULL, NULL, 'Español: fútbol', 'import-espanol-bubi'),
  ('iihelló', 'adj.', NULL, NULL, NULL, 'futuro', NULL, NULL, 'Español: futuro', 'import-espanol-bubi');

-- Lote 44 (entradas 1076 a 1100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('mm', 's.', 'm.', NULL, 'Cl. 5', 'gabinete', NULL, NULL, 'Español: gabinete', 'import-espanol-bubi'),
  ('tyelle', 's.', 'm.', NULL, 'Cl. 9', 'gajo', NULL, NULL, 'Español: gajo', 'import-espanol-bubi'),
  ('epólle', 's.', 'm.', NULL, 'Cl. 7', 'galápago', NULL, NULL, 'Español: galápago', 'import-espanol-bubi'),
  ('esokka', 's.', 'm.', NULL, 'Cl. 7', 'galardón', NULL, NULL, 'Español: galardón', 'import-espanol-bubi'),
  ('páa', 'v.', NULL, NULL, NULL, 'galardonar', NULL, NULL, 'Español: galardonar', 'import-espanol-bubi'),
  ('boko''eerte', 's.', 'm.', NULL, 'Cl. 3', 'gallinero', NULL, NULL, 'Español: gallinero', 'import-espanol-bubi'),
  ('boteó''e', 's.', 'm.', NULL, 'Cl. 3', 'gano', NULL, NULL, 'Español: gano', 'import-espanol-bubi'),
  ('tyio', 's.', 'm.', NULL, 'Cl. 9', 'gancho', NULL, NULL, 'Español: gancho', 'import-espanol-bubi'),
  ('eeppé', 's.', 'm.', NULL, 'Cl. 7', 'gandul', NULL, NULL, 'Español: gandul', 'import-espanol-bubi'),
  ('epotyopotyo', 's.', 'm.', NULL, 'Cl. 7', 'ganso', NULL, NULL, 'Español: ganso', 'import-espanol-bubi'),
  ('tyio', 's.', 'm.', NULL, 'Cl. 9', 'garfio', NULL, NULL, 'Español: garfio', 'import-espanol-bubi'),
  ('ekáókáó', 's.', 'm.', NULL, 'Cl. 7', 'gargajo', NULL, NULL, 'Español: gargajo', 'import-espanol-bubi'),
  ('tyáa', 's.', 'm.', NULL, 'Cl. 9', 'garrafón', NULL, NULL, 'Español: garrafón', 'import-espanol-bubi'),
  ('ubbóo', 's.', 'm.', NULL, 'Cl. 7', 'garrote', NULL, NULL, 'Español: garrote', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'gastar', NULL, NULL, 'Español: gastar', 'import-espanol-bubi'),
  ('opótta', 'v.', NULL, NULL, NULL, 'gatear', NULL, NULL, 'Español: gatear', 'import-espanol-bubi'),
  ('obokkó', 's.', 'm.', NULL, 'Cl. 1', 'gemelo', NULL, NULL, 'Español: gemelo', 'import-espanol-bubi'),
  ('erutya', 's.', 'm.', NULL, 'Cl. 8', 'gemido', NULL, NULL, 'Español: gemido', 'import-espanol-bubi'),
  ('ké''a', 'v.', NULL, NULL, NULL, 'generar', NULL, NULL, 'Español: generar', 'import-espanol-bubi'),
  ('buebué', 'adj.', NULL, NULL, 'Cl. 1', 'generoso', NULL, NULL, 'Español: generoso', 'import-espanol-bubi'),
  ('kuppá', 's.', 'm.', NULL, 'Cl. 9', 'genio', NULL, NULL, 'Español: genio', 'import-espanol-bubi'),
  ('batyo', 's.', 'm.', NULL, 'Cl. 2', 'gentío', NULL, NULL, 'Español: gentío', 'import-espanol-bubi'),
  ('bOtyámaan', 'adj.', NULL, NULL, 'Cl. 1', 'germánico', NULL, NULL, 'Español: germánico', 'import-espanol-bubi'),
  ('botyámaan', 'adj.', NULL, NULL, 'Cl. 1', 'germano', NULL, NULL, 'Español: germano', 'import-espanol-bubi'),
  ('puáa', 'v.', NULL, NULL, NULL, 'germinar', NULL, NULL, 'Español: germinar', 'import-espanol-bubi');

-- Lote 45 (entradas 1101 a 1125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ekéra', 'v.', NULL, NULL, NULL, 'gestionar', NULL, NULL, 'Español: gestionar', 'import-espanol-bubi'),
  ('ebotyéra', 's.', 'm.', NULL, 'Cl. 7', 'gesto', NULL, NULL, 'Español: gesto', 'import-espanol-bubi'),
  ('rutya', 'v.', NULL, NULL, NULL, 'gimotear', NULL, NULL, 'Español: gimotear', 'import-espanol-bubi'),
  ('hótella', 'v.', NULL, NULL, NULL, 'girar', NULL, NULL, 'Español: girar', 'import-espanol-bubi'),
  ('tetto', 's.', 'm.', NULL, 'Cl. 9', 'glande', NULL, NULL, 'Español: glande', 'import-espanol-bubi'),
  ('ebolobolló', 's.', 'm.', NULL, 'Cl. 7', 'globo', NULL, NULL, 'Español: globo', 'import-espanol-bubi'),
  ('bOossó', 's.', 'm.', NULL, 'Cl. 1', 'glotón', NULL, NULL, 'Español: glotón', 'import-espanol-bubi'),
  ('ebolló', 's.', 'm.', NULL, 'Cl. 7', 'glúteo', NULL, NULL, 'Español: glúteo', 'import-espanol-bubi'),
  ('bOitta', 's.', 'm.', NULL, 'Cl. 1', 'gobernador', NULL, NULL, 'Español: gobernador', 'import-espanol-bubi'),
  ('botákkáa', 's.', 'm.', NULL, 'Cl. 1', 'gobernante', NULL, NULL, 'Español: gobernante', 'import-espanol-bubi'),
  ('kóbinna', 's.', 'm.', NULL, 'Cl. 9', 'gobierno', NULL, NULL, 'Español: gobierno', 'import-espanol-bubi'),
  ('kóbbe', 's.', 'm.', NULL, 'Cl. 9', 'goloso', NULL, NULL, 'Español: goloso', 'import-espanol-bubi'),
  ('botee', 'adj.', NULL, NULL, 'Cl. 5', 'gordo', NULL, NULL, 'Español: gordo', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'gorrino', NULL, NULL, 'Español: gorrino', 'import-espanol-bubi'),
  ('epetye', 's.', 'm.', NULL, 'Cl. 7', 'gorrión', NULL, NULL, 'Español: gorrión', 'import-espanol-bubi'),
  ('sibuttá', 's.', 'm.', NULL, 'Cl. 12', 'gorro', NULL, NULL, 'Español: gorro', 'import-espanol-bubi'),
  ('o''áa', 'v.', NULL, NULL, NULL, 'gozar', NULL, NULL, 'Español: gozar', 'import-espanol-bubi'),
  ('boroo', 's.', 'm.', NULL, 'Cl. 3', 'gozo', NULL, NULL, 'Español: gozo', 'import-espanol-bubi'),
  ('sitampa', 's.', 'm.', NULL, 'Cl. 12', 'grabado', NULL, NULL, 'Español: grabado', 'import-espanol-bubi'),
  ('epot', 's.', 'f.', NULL, 'Cl. 7', 'gracia', NULL, NULL, 'Español: gracia', 'import-espanol-bubi'),
  ('boteotto', 's.', 'f.', NULL, 'Cl. 3', 'grada', NULL, NULL, 'Español: grada', 'import-espanol-bubi'),
  ('ele', 's.', 'f.', NULL, 'Cl. 7', 'grafia', NULL, NULL, 'Español: grafia', 'import-espanol-bubi'),
  ('simeressi', 's.', 'f.', NULL, 'Cl. 12', 'gragea', NULL, NULL, 'Español: gragea', 'import-espanol-bubi'),
  ('labé', 'adj.', NULL, NULL, NULL, 'grave', NULL, NULL, 'Español: grave', 'import-espanol-bubi'),
  ('siruerué', 's.', 'm.', NULL, 'Cl. 12', 'grillo', NULL, NULL, 'Español: grillo', 'import-espanol-bubi');

-- Lote 46 (entradas 1126 a 1150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tábba', 'v.', NULL, NULL, NULL, 'gritar', NULL, NULL, 'Español: gritar', 'import-espanol-bubi'),
  ('etábatábba', 's.', 'm.', NULL, 'Cl. 7', 'grito', NULL, NULL, 'Español: grito', 'import-espanol-bubi'),
  ('bOtee', 'adj.', NULL, NULL, 'Cl. 5', 'grueso', NULL, NULL, 'Español: grueso', 'import-espanol-bubi'),
  ('ekosso', 's.', 'm.', NULL, 'Cl. 7', 'gruñido', NULL, NULL, 'Español: gruñido', 'import-espanol-bubi'),
  ('nkóbba', 'v.', NULL, NULL, NULL, 'gruñir', NULL, NULL, 'Español: gruñir', 'import-espanol-bubi'),
  ('rittáa', 's.', 'm.', NULL, 'Cl. 5', 'grupo', NULL, NULL, 'Español: grupo', 'import-espanol-bubi'),
  ('oosawasawáa', 's.', 'm.', NULL, 'Cl. 3', 'guanábano', NULL, NULL, 'Español: guanábano', 'import-espanol-bubi'),
  ('buebue', 'adj.', NULL, NULL, 'Cl. 5', 'guapo', NULL, NULL, 'Español: guapo', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, 'guardar', NULL, NULL, 'Español: guardar', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'guardián', NULL, NULL, 'Español: guardián', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'guarro', NULL, NULL, 'Español: guarro', 'import-espanol-bubi'),
  ('bOkuemáa', 's.', 'm.', NULL, 'Cl. 3', 'guayabo', NULL, NULL, 'Español: guayabo', 'import-espanol-bubi'),
  ('obitábítta', 's.', 'm.', NULL, 'Cl. 1', 'guerrero', NULL, NULL, 'Español: guerrero', 'import-espanol-bubi'),
  ('esibo', 's.', 'm.', NULL, 'Cl. 7', 'guiño', NULL, NULL, 'Español: guiño', 'import-espanol-bubi'),
  ('rityakápe''e', 's.', 'm.', NULL, 'Cl. 5', 'guirigay', NULL, NULL, 'Español: guirigay', 'import-espanol-bubi'),
  ('sise''e', 's.', 'm.', NULL, 'Cl. 12', 'gusanito', NULL, NULL, 'Español: gusanito', 'import-espanol-bubi'),
  ('bose''e', 's.', 'm.', NULL, 'Cl. 3', 'gusano', NULL, NULL, 'Español: gusano', 'import-espanol-bubi'),
  ('bonotyó', 's.', 'm.', NULL, 'Cl. 3', 'gusto', NULL, NULL, 'Español: gusto', 'import-espanol-bubi'),
  ('sá', 'v.', NULL, NULL, NULL, 'haber', NULL, NULL, 'Español: haber', 'import-espanol-bubi'),
  ('bOpélla', 's.', 'm.', NULL, 'Cl. 1', 'habitante', NULL, NULL, 'Español: habitante', 'import-espanol-bubi'),
  ('bohNno', 's.', 'm.', NULL, 'Cl. 3', 'hábito', NULL, NULL, 'Español: hábito', 'import-espanol-bubi'),
  ('tóritóri', 's.', 'm.', NULL, 'Cl. 9', 'hablador', NULL, NULL, 'Español: hablador', 'import-espanol-bubi'),
  ('tóritóri', 's.', 'm.', NULL, 'Cl. 9', 'hablante', NULL, NULL, 'Español: hablante', 'import-espanol-bubi'),
  ('obáa', 's.', 'm.', NULL, 'Cl. 1', 'hacedor', NULL, NULL, 'Español: hacedor', 'import-espanol-bubi'),
  ('kori', 's.', 'm.', NULL, 'Cl. 9', 'hacendado', NULL, NULL, 'Español: hacendado', 'import-espanol-bubi');

-- Lote 47 (entradas 1151 a 1175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sákkia', 'v.', NULL, NULL, NULL, 'halagar', NULL, NULL, 'Español: halagar', 'import-espanol-bubi'),
  ('esekeri', 's.', 'm.', NULL, 'Cl. 7', 'halago', NULL, NULL, 'Español: halago', 'import-espanol-bubi'),
  ('ittá', 'v.', NULL, NULL, NULL, 'hallar', NULL, NULL, 'Español: hallar', 'import-espanol-bubi'),
  ('elepori', 's.', 'm.', NULL, 'Cl. 7', 'hallazgo', NULL, NULL, 'Español: hallazgo', 'import-espanol-bubi'),
  ('tyallá', 'adj.', NULL, NULL, 'Cl. 9', 'hambriento', NULL, NULL, 'Español: hambriento', 'import-espanol-bubi'),
  ('eeppé', 's.', 'm.', NULL, 'Cl. 7', 'haragán', NULL, NULL, 'Español: haragán', 'import-espanol-bubi'),
  ('ebanfá', 's.', 'm.', NULL, 'Cl. 7', 'harapo', NULL, NULL, 'Español: harapo', 'import-espanol-bubi'),
  ('ebbiá', 'v.', NULL, NULL, NULL, 'hartar', NULL, NULL, 'Español: hartar', 'import-espanol-bubi'),
  ('tya', 'adv.', NULL, NULL, NULL, 'hasta', NULL, NULL, 'Español: hasta', 'import-espanol-bubi'),
  ('isera', 'v.', NULL, NULL, NULL, 'hechizar', NULL, NULL, 'Español: hechizar', 'import-espanol-bubi'),
  ('bontyo', 's.', 'm.', NULL, 'Cl. 3', 'hechizo', NULL, NULL, 'Español: hechizo', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'hecho', NULL, NULL, 'Español: hecho', 'import-espanol-bubi'),
  ('bobbó', 's.', 'm.', NULL, 'Cl. 4', 'hedor', NULL, NULL, 'Español: hedor', 'import-espanol-bubi'),
  ('IOketya', 's.', 'm.', NULL, 'Cl. 10', 'helecho', NULL, NULL, 'Español: helecho', 'import-espanol-bubi'),
  ('bobora', 's.', 'm.', NULL, 'Cl. 1', 'heredero', NULL, NULL, 'Español: heredero', 'import-espanol-bubi'),
  ('bobelle', 's.', 'm.', NULL, 'Cl. 1', 'hermano', NULL, NULL, 'Español: hermano', 'import-espanol-bubi'),
  ('kobbe', 's.', 'm.', NULL, 'Cl. 9', 'héroe', NULL, NULL, 'Español: héroe', 'import-espanol-bubi'),
  ('ribótyikka', 's.', 'm.', NULL, 'Cl. 5', 'herpes', NULL, NULL, 'Español: herpes', 'import-espanol-bubi'),
  ('bokussú', 's.', 'm.', NULL, 'Cl. 3', 'hierro', NULL, NULL, 'Español: hierro', 'import-espanol-bubi'),
  ('rálló', 's.', 'm.', NULL, 'Cl. 5', 'hígado', NULL, NULL, 'Español: hígado', 'import-espanol-bubi'),
  ('bóllá', 's.', 'm.', NULL, 'Cl. 1', 'hijo', NULL, NULL, 'Español: hijo', 'import-espanol-bubi'),
  ('otta', 'v.', NULL, NULL, NULL, 'hilar', NULL, NULL, 'Español: hilar', 'import-espanol-bubi'),
  ('bolekko', 's.', 'f.', NULL, 'Cl. 3', 'hilera', NULL, NULL, 'Español: hilera', 'import-espanol-bubi'),
  ('sisorí', 's.', 'm.', NULL, 'Cl. 12', 'hilo', NULL, NULL, 'Español: hilo', 'import-espanol-bubi'),
  ('eoto', 's.', 'm.', NULL, 'Cl. 7', 'himen', NULL, NULL, 'Español: himen', 'import-espanol-bubi');

-- Lote 48 (entradas 1176 a 1200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ebéto', 's.', 'm.', NULL, 'Cl. 7', 'himno', NULL, NULL, 'Español: himno', 'import-espanol-bubi'),
  ('etyéútyéu', 's.', 'm.', NULL, 'Cl. 7', 'hipo', NULL, NULL, 'Español: hipo', 'import-espanol-bubi'),
  ('ruebba', 's.', 'm.', NULL, 'Cl. 5', 'hipopótamo', NULL, NULL, 'Español: hipopótamo', 'import-espanol-bubi'),
  ('oompo', 's.', 'm.', NULL, 'Cl. 3', 'hocico', NULL, NULL, 'Español: hocico', 'import-espanol-bubi'),
  ('tyóbbo', 's.', 'm.', NULL, 'Cl. 9', 'hogar', NULL, NULL, 'Español: hogar', 'import-espanol-bubi'),
  ('elo''ó', 's.', 'm.', NULL, 'Cl. 7', 'holgazán', NULL, NULL, 'Español: holgazán', 'import-espanol-bubi'),
  ('eappé', 's.', 'm.', NULL, 'Cl. 7', 'hollejo', NULL, NULL, 'Español: hollejo', 'import-espanol-bubi'),
  ('boie', 's.', 'm.', NULL, 'Cl. 1', 'hombre', NULL, NULL, 'Español: hombre', 'import-espanol-bubi'),
  ('eabába', 's.', 'm.', NULL, 'Cl. 7', 'hombro', NULL, NULL, 'Español: hombro', 'import-espanol-bubi'),
  ('bono''u', 's.', 'm.', NULL, 'Cl. 3', 'hondo', NULL, NULL, 'Español: hondo', 'import-espanol-bubi'),
  ('bOesuesu', 's.', 'm.', NULL, 'Cl. 3', 'hongo', NULL, NULL, 'Español: hongo', 'import-espanol-bubi'),
  ('ílla', 's.', 'm.', NULL, 'Cl. 5', 'honor', NULL, NULL, 'Español: honor', 'import-espanol-bubi'),
  ('buello', 's.', 'm.', NULL, 'Cl. 3', 'horizonte', NULL, NULL, 'Español: horizonte', 'import-espanol-bubi'),
  ('rihúla', 's.', 'm.', NULL, 'Cl. 5', 'hormiguero', NULL, NULL, 'Español: hormiguero', 'import-espanol-bubi'),
  ('epo''o', 's.', 'm.', NULL, 'Cl. 7', 'horno', NULL, NULL, 'Español: horno', 'import-espanol-bubi'),
  ('lokkia', 'v.', NULL, NULL, NULL, 'hospedar', NULL, NULL, 'Español: hospedar', 'import-espanol-bubi'),
  ('rikaaí', 's.', 'm.', NULL, 'Cl. 5', 'hospital', NULL, NULL, 'Español: hospital', 'import-espanol-bubi'),
  ('rilokko', 's.', 'm.', NULL, 'Cl. 5', 'hotel', NULL, NULL, 'Español: hotel', 'import-espanol-bubi'),
  ('bolokia', 's.', 'm.', NULL, 'Cl. 1', 'hotelero', NULL, NULL, 'Español: hotelero', 'import-espanol-bubi'),
  ('lelló', 'adv.', NULL, NULL, NULL, 'hoy', NULL, NULL, 'Español: hoy', 'import-espanol-bubi'),
  ('esessé', 's.', 'm.', NULL, 'Cl. 3', 'hoyo', NULL, NULL, 'Español: hoyo', 'import-espanol-bubi'),
  ('lobokko', 's.', 'm.', NULL, 'Cl. 3', 'hueco', NULL, NULL, 'Español: hueco', 'import-espanol-bubi'),
  ('tyiolla', 's.', 'm.', NULL, 'Cl. 9', 'huérfano', NULL, NULL, 'Español: huérfano', 'import-espanol-bubi'),
  ('eberí', 's.', 'm.', NULL, 'Cl. 7', 'huerto', NULL, NULL, 'Español: huerto', 'import-espanol-bubi'),
  ('boribáa', 's.', 'm.', NULL, 'Cl. 1', 'huésped', NULL, NULL, 'Español: huésped', 'import-espanol-bubi');

COMMIT;

-- ✅ Parte 1 de 2 completada
-- Total de entradas en esta parte: 1200