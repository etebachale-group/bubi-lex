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
  ('lohúa', 's.', 'f.', NULL, 'Cl. 11', 'la - o lohúa; -s bahúa, las - s a bahúa; las -s de la reina a ba húa ba o boitaari.', 'las -s de la reina a ba húa ba o boitaari.', NULL, 'Español: hueste', 'import-espanol-bubi'),
  ('boheú', 's.', 'm.', NULL, 'Cl. 3', '(testículo) bOtya''á, el - o boheú, (testículo) o bOtya''á; -s beheú, (testículos) betya''á, los -s e beheú, (los testículos) e betya''á.', NULL, NULL, 'Español: huevo', 'import-espanol-bubi'),
  ('buíríi', 's.', 'f.', NULL, 'Cl. 3', 'la - o buíríi; -s beíríi, las - s e beiríi.', NULL, NULL, 'Español: huída', 'import-espanol-bubi'),
  ('húbbia', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: huir', 'import-espanol-bubi'),
  ('tyokka', 's.', 'f.', NULL, 'Cl. 9', 'la - e tyokka; -es tyokka, las -es i tyokka.', NULL, NULL, 'Español: humedad', 'import-espanol-bubi'),
  ('si''a', 'v.', NULL, NULL, NULL, 'pres. la lluvia humede ce la tierra o lóllá lo lá si''a o bobba; paso punto tus lágrimas humedecie ron mi cuerpo a bellá o ba si''i o lótto rn.', 'pres. | paso punto tus lágrimas humedecie ron mi cuerpo a bellá o ba si''i o lótto rn.', NULL, 'Español: humedecer', 'import-espanol-bubi'),
  ('benná', 'v.', NULL, NULL, NULL, 'preso tú humillas a tu hermano o la benná o bobelle o; paso punto ellos le humillaron ba bo benní;', 'preso tú humillas a tu hermano o la benná o bobelle o;', NULL, 'Español: humillar', 'import-espanol-bubi'),
  ('ehútu', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehútu [eehúttu); -s bihútu, los -s e bihútu. 2. echar - o húlIáa.', NULL, NULL, 'Español: humo', 'import-espanol-bubi'),
  ('lori''o', 's.', 'm.', NULL, 'Cl. 11', 'el- o lorí''o; -s beri''o, los -s e beri''o.', NULL, NULL, 'Español: hundimiento', 'import-espanol-bubi'),
  ('ri''ia', 'v.', NULL, NULL, NULL, 'preso el marinero hunde su barco o boobbe a la ri''ia o buátto bO áí. 2. -se o ri''a; preso el barco se hunde o buátto bo lá ri''a.', 'preso el marinero hunde su barco o boobbe a la ri''ia o buátto bO áí. | preso el barco se hunde o buátto bo lá ri''a.', NULL, 'Español: hundir', 'import-espanol-bubi'),
  ('pullá', 's.', 'm.', NULL, 'Cl. 9', 'el - e pullá; huraca nes pullá, los huracanes i pullá.', 'huraca nes pullá, los huracanes i pullá.', NULL, 'Español: huracán', 'import-espanol-bubi'),
  ('sipoppi', 's.', 'm.', NULL, 'Cl. 12', 'el - e sipoppi; -s topoppi, los -s o topoppi.', NULL, NULL, 'Español: huraño', 'import-espanol-bubi'),
  ('pakara', 'v.', NULL, NULL, NULL, 'preso yo hurgo en el baúl n la pakara o lobakka sé, n la passa o lobakka wela.', 'preso yo hurgo en el baúl n la pakara o lobakka sé, n la passa o lobakka wela.', NULL, 'Español: hurgar', 'import-espanol-bubi'),
  ('ubáa', 'v.', NULL, NULL, NULL, 'pas. punto el perro hurtó la carne e puá e ubíi o bornmua [e puá úbíó bornmua).', NULL, NULL, 'Español: hurtar', 'import-espanol-bubi'),
  ('eubáa', 's.', 'm.', NULL, 'Cl. 7', 'el - e eubáa; -s biubáa, los -s e biubáa.', NULL, NULL, 'Español: hurto', 'import-espanol-bubi'),
  ('ehánna', 's.', 'm.', NULL, 'Cl. 7', 'el e ehánna, e erikirikki, -s bihánna, birikirikki, los -s e bihán na, e birikirikki.', NULL, NULL, 'Español: icono', 'import-espanol-bubi'),
  ('anna', 'v.', NULL, NULL, NULL, 'o tappáa; preso yo identifico mi casa n la tappáa e tyóbbo rÍl; paso punto yo identifiqué la camisa de tu hermana n tappí e sótte sá o wet ta ó.', 'o tappáa; | paso punto yo identifiqué la camisa de tu hermana n tappí e sótte sá o wet ta ó.', NULL, 'Español: identificar', 'import-espanol-bubi'),
  ('lotó''ólló', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o lotó''ólló, -s tó''ólló, los -s i tó''ólló.', NULL, NULL, 'Español: idioma', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 7', 'como (e)ekké, eelé, seké, el- e ekké, eelé, e seké; -s biekké, bielé, tueké, los -s e biekké, e bielé, o tueké.', NULL, 'tueké', 'Español: idiota', 'import-espanol-bubi'),
  ('boteríbbo', 's.', 'm.', NULL, 'Cl. 2', '(el. 1/2), el- o boteríbbo, -s bateríbbo, los -s a bateríbbo.', NULL, NULL, 'Español: ídolo', 'import-espanol-bubi'),
  ('como', 'adj.', NULL, NULL, 'Cl. 12', 'el- e seké, -s tueké, los -s o tueké.', NULL, NULL, 'Español: ignorante', 'import-espanol-bubi'),
  ('be''ia', 'v.', NULL, NULL, NULL, 'preso nosotros igualamos to la be''ia, to la be''ianna, mi pa dre iguala el suelo o boie rh a la be''ia o bobba, o bOie rÍl a la be''ian na o bobba; paso punto la gente niveló el camino a batyo ba be''iia e telle, a batyo ba be''iaam e telle.', 'preso nosotros igualamos to la be''ia, to la be''ianna, mi pa dre iguala el suelo o boie rh a la be''ia o bobba, o bOie rÍl a la be''ian na o bobba;', 'b', 'Español: igualar', 'import-espanol-bubi'),
  ('etobbo', 's.', 'm.', NULL, 'Cl. 7', 'el - e ctobbo; -s bitobbo, los -s e bitobbo.', NULL, NULL, 'Español: impedimento', 'import-espanol-bubi'),
  ('ronkótte', 's.', 'm.', NULL, 'Cl. 5', 'el - e ron kótte; -s bonkótte, los -s a honkótte.', NULL, NULL, 'Español: impermeable', 'import-espanol-bubi'),
  ('riobbo', 's.', 'm.', NULL, 'Cl. 5', 'el - e riobbo; -s baobbo, los -s a baobbo.', NULL, NULL, 'Español: impuesto', 'import-espanol-bubi');

-- Lote 2 (entradas 1226 a 1250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribasaisso', 's.', 'm.', NULL, 'Cl. 5', 'el- e ribasaisso; -s abasaisso, los -s a abasaisso.', NULL, NULL, 'Español: incendio', 'import-espanol-bubi'),
  ('behollá', 's.', 'm.', NULL, 'Cl. 4', 'el - e behollá; -s behollá, los -s e behollá.', NULL, NULL, 'Español: incienso', 'import-espanol-bubi'),
  ('kokotta', 'v.', NULL, NULL, NULL, 'preso me inclino n la ko kotta, te inclinas ola kokotta, se inclina a la kokot ta, etc.; paso punto me incliné n kokotyi, te incli naste o kokotyi, se inclinó a kokotyi, etc.; paso duro me inclinaba n kokotessi, te inclinabas o kokotessi, se inclinaba a kokotessi, etc.', 'preso me inclino n la ko kotta, te inclinas ola kokotta, se inclina a la kokot ta, etc. | paso punto me incliné n kokotyi, te incli naste o kokotyi, se inclinó a kokotyi, etc. | paso duro me inclinaba n kokotessi, te inclinabas o kokotessi, se inclinaba a kokotessi, etc.', NULL, 'Español: inclinarse', 'import-espanol-bubi'),
  ('lehea', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: incordiar', 'import-espanol-bubi'),
  ('ekera', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: indagar', 'import-espanol-bubi'),
  ('ebobo', 's.', 'm.', NULL, 'Cl. 7', 'el- e ebobo [eebobo); -s mbobo, los -s e mbobo.', NULL, NULL, 'Español: indicio', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'el - o botyo; -s batyo, los -s a batyo.', NULL, NULL, 'Español: individuo', 'import-espanol-bubi'),
  ('eoppa', 's.', 'm.', NULL, 'Cl. 7', 'el - e eoppa; -s bioppa, los -s e bioppa. inflamación f eossí, ehulo, la - e eossí, e ehulo; inflamacio nes biossí, bihulo, las inflama ciones e biossí, e bihulo. infortunio bohó''o, el- o bohó''o; -s behó''o, los -s ebehó''o.', 'inflamacio nes biossí, bihulo, las inflama ciones e biossí, e bihulo.', NULL, 'Español: infecundo', 'import-espanol-bubi'),
  ('bolebóri', 's.', 'm.', NULL, 'Cl. 3', 'el - o bolebóri; -s beJebóri, los -s e belebóri.', NULL, NULL, 'Español: ingenio', 'import-espanol-bubi'),
  ('rokáteri', 's.', 'm.', NULL, 'Cl. 5', 'el - e rokáteri, e euhori [eeuhori); -s bokáteri, biuhori, los -s a bokáteri, e biuhori.', NULL, NULL, 'Español: inicio', 'import-espanol-bubi'),
  ('ikka', 'v.', NULL, NULL, NULL, 'preso este hombre me injuria oló boie a la le ikka.', 'preso este hombre me injuria oló boie a la le ikka.', NULL, 'Español: injuriar', 'import-espanol-bubi'),
  ('bopélla', 's.', 'm.', NULL, 'Cl. 1', 'el - o bopélla; -s bapélla, los -s a bapélla.', NULL, NULL, 'Español: inquilino', 'import-espanol-bubi'),
  ('kokoppé', 'adj.', NULL, NULL, 'Cl. 9', 'el - e kokoppé; -s kokoppé, los -s i kokoppé.', NULL, NULL, 'Español: insípido', 'import-espanol-bubi'),
  ('ehette', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehette; -s bihette, los -s e bihette.', NULL, NULL, 'Español: insomnio', 'import-espanol-bubi'),
  ('ralohekka', 's.', 'm.', NULL, 'Cl. 12', 'el - e sibelohékka; -s tobelohékka, los -s o tobelohékka.', NULL, NULL, 'Español: instante', 'import-espanol-bubi'),
  ('ekosilalla', 's.', 'm.', NULL, 'Cl. 7', 'el e ekosiballa, e ekosso; -s bikosiballa, bikosso, los -s e biko siballa, e bikosso.', NULL, NULL, 'Español: insulto', 'import-espanol-bubi'),
  ('sulufáto', 's.', 'm.', NULL, 'Cl. 12', 'el- e sulufáto; -s bulufáto, los -s o tulufáto. inteligencia, s''¡: buetáa, la - o buetáa; -s bietáa, las -s e bietáa.', NULL, NULL, 'Español: insumo', 'import-espanol-bubi'),
  ('buanna', 'adj.', NULL, NULL, 'Cl. 1', 'kuppá, el - o buanna, e kuppá; -s banna, kuppá, los -s a banna, i kuppá.', NULL, NULL, 'Español: inteligente', 'import-espanol-bubi'),
  ('elella', 'v.', NULL, NULL, NULL, 'preso los dig natarios interpelan a los ministros a bariariia ba lá tó'' óra a baitta.', 'preso los dig natarios interpelan a los ministros a bariariia ba lá tó'' óra a baitta.', NULL, 'Español: interpelar', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 1', 'bOtóweri, el- o obélló, o botóweri; -s abélló, batóweri, los -s a abélló, a batóweri.', NULL, 'botóweri', 'Español: intérprete', 'import-espanol-bubi'),
  ('pI', 's.', NULL, NULL, 'Cl. 10', 'el- e keláripo; -s keláripo (el. lO), los -s i keláripo. introducir inl o heráa, o heró''ammo; preso yo introduzco el ñamal en la pared n la heráa o 10110 e eteppe wela. invadir (a) o utta, o utaella. (b) o bitya; preso los militares nos invaden a abitábítta ba le utta; la duda nos invade e ebotúbotu e lá e utta.', 'preso yo introduzco el ñamal en la pared n la heráa o 10110 e eteppe wela. | preso los militares nos invaden a abitábítta ba le utta;', 'heró''ammo, utaella', 'Español: intestinos', 'import-espanol-bubi'),
  ('bOloari', 's.', 'm.', NULL, 'Cl. 1', 'el - o boloari; -s baloari, los -s a baloari.', NULL, NULL, 'Español: inválido', 'import-espanol-bubi'),
  ('bOna''a', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOna''a, o wekera; -es bana''a, beke ra, los -es a bana''a, a bekera.', NULL, 'wekera', 'Español: investigador', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 7', 'el - e ebo ránokko; -s bibOránokko, mboránokko, los -s e biboránokko, e mbo ránokko.', NULL, NULL, 'Español: invidente', 'import-espanol-bubi'),
  ('esubba', 's.', 'm.', NULL, 'Cl. 7', 'el- e esubba; -s bisubba, los -s e bisubba.', NULL, NULL, 'Español: invierno', 'import-espanol-bubi');

-- Lote 3 (entradas 1251 a 1275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bohekkí', 's.', 'm.', NULL, 'Cl. 1', 'el- o bohekki;-s bahekkí, los -s a bahekkí.', NULL, NULL, 'Español: invitado', 'import-espanol-bubi'),
  ('bohekkáa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bohekkáa; -s bahekkáa, los -s a bahekkáa.', NULL, NULL, 'Español: invitante', 'import-espanol-bubi'),
  ('hella', 'v.', NULL, NULL, NULL, '2. - a la ciudad o hella ripotto. 3. -se o tyíllo, o tyílla; preso me voy n la tyíllo, n la ba tyílJo, te vas o la tyí1lo, o la ba tyíl lo, se va a la tyílla, etc.', 'preso me voy n la tyíllo, n la ba tyílJo, te vas o la tyí1lo, o la ba tyíl lo, se va a la tyílla, etc.', 'tyílla, la', 'Español: ir', 'import-espanol-bubi'),
  ('sÍtúllá', 's.', 'm.', NULL, 'Cl. 12', 'el - e sitúllá; -s totúl lá, los -s o totúllá.', NULL, NULL, 'Español: islote', 'import-espanol-bubi'),
  ('bohaí', 's.', 'm.', NULL, 'Cl. 3', 'el - o bohaí; -s behaí, los -s e behaí.', NULL, NULL, 'Español: itinerario', 'import-espanol-bubi'),
  ('keke', 'adj.', NULL, NULL, NULL, 'arí. * lado - ebo arí.', NULL, NULL, 'Español: izquierdo', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'el - e esóló; -es bisóló, los -es e bisóló.', NULL, NULL, 'Español: jabalí', 'import-espanol-bubi'),
  ('sisóló', 's.', 'm.', NULL, 'Cl. 12', 'el- e sisóló; -s tosó ló, los -s o tosóló.', NULL, NULL, 'Español: jabato', 'import-espanol-bubi'),
  ('tyebólla', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyebólla, e sóppo; jabones tyebólla, sóppo, los jabones i tyebólla, i sóppo.', 'jabones tyebólla, sóppo, los jabones i tyebólla, i sóppo.', NULL, 'Español: jabón', 'import-espanol-bubi'),
  ('bolláa', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOlláa; -s belláa, los -s e belláa.', NULL, NULL, 'Español: jaleo', 'import-espanol-bubi'),
  ('kóbbáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: jamar', 'import-espanol-bubi'),
  ('tyornmaa', 'adv.', NULL, NULL, NULL, 'tyornmaa. Ej. expr. - volverá a cami nar a tyí''a etta''á tyornmaa.', NULL, NULL, 'Español: jamás', 'import-espanol-bubi'),
  ('tyáa', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyáa; -s tyáa, los -s i tyáa.', NULL, NULL, 'Español: jarro', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOit ta, o mmása; -s baitta, mmása, los -s a baitta, a mmása. * - de poblado bOtúkku, el- de poblado o botúkku, -s de pobla do batúkku, los -s de poblado a batúkku. * el gran - bOtúkku bóte.', NULL, 'mmása', 'Español: jefe', 'import-espanol-bubi'),
  ('sitúkku', 's.', 'm.', NULL, 'Cl. 12', 'el- e sitúkku; -s totúkku, los -s o totúkku.', NULL, NULL, 'Español: jefecillo', 'import-espanol-bubi'),
  ('dyindyabía', 's.', 'm.', NULL, 'Cl. 10', 'el - i dyin dyabía; -s dyindyabía, los-s i dyindyabía.', NULL, NULL, 'Español: jengibre', 'import-espanol-bubi'),
  ('buesee', 's.', 'm.', NULL, 'Cl. 3', 'el - o buesee; jenje nes biesee, los jenjenes e biesee.', 'jenje nes biesee, los jenjenes e biesee.', NULL, 'Español: jenjén', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'el- o boitta; -s bait ta, los -s a baitta.', NULL, NULL, 'Español: jerarca', 'import-espanol-bubi'),
  ('enárnmoétuepuá', 's.', 'm.', NULL, 'Cl. 7', 'el - e enárnmoétuepuá; -s binám mobiétuepuá, los -s e binárnmóbíétuepuá.', NULL, NULL, 'Español: jilguero', 'import-espanol-bubi'),
  ('rikélékélée', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikélékélée; -s bakélékélée, beetye, los -s a bakélékélée.', NULL, NULL, 'Español: jolgorio', 'import-espanol-bubi'),
  ('bolakóláko', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOlakóláko, o bokóllé; -s balakóláko, bakóllé, los -s a balakóláko, a bakóllé.', NULL, 'bokóllé', 'Español: jornalero', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 1', '- muchacha bosesepári, - casadera bulla, el o bOséséppe, la -muchacha o bosesepári; - casa dera o bulla; jóvenes baseseppe, basese pári, biulla, los jóvenes a baseseppe, las jóvenes a basesepári, las jóvenes casaderas e biulla.', 'jóvenes baseseppe, basese pári, biulla, los jóvenes a baseseppe, las jóvenes a basesepári, las jóvenes casaderas e biulla.', NULL, 'Español: joven', 'import-espanol-bubi'),
  ('riokkó', 's.', 'm.', NULL, 'Cl. 5', 'el- e riokkó; -s baok kó, los -s a baokkó.', NULL, NULL, 'Español: júbilo', 'import-espanol-bubi'),
  ('opussu', 's.', 'm.', NULL, 'Cl. 3', 'el- o opussu, e sipussu; -s epussu, topussu, los -s e epussu, o topussu.', NULL, 'topussu', 'Español: juego', 'import-espanol-bubi'),
  ('etoleri', 's.', 'm.', 'pl.', 'Cl. 7', 'el - e etoleri; - (pI.) bitoleri, los - e bitoleri.', NULL, NULL, 'Español: jueves', 'import-espanol-bubi');

-- Lote 4 (entradas 1276 a 1300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buatébisapá', 's.', 'm.', NULL, 'Cl. 1', 'el- o buatébisapá; -ces batébisapá, los -ces a batébisapá.', NULL, NULL, 'Español: juez', 'import-espanol-bubi'),
  ('sipussu', 's.', 'm.', NULL, 'Cl. 12', 'el - e sipussu; -s topussu, los -s o topussu.', NULL, NULL, 'Español: juguete', 'import-espanol-bubi'),
  ('koperi', 's.', 'm.', NULL, 'Cl. 9', 'bonono, el- e koperi, e etohó, o bOnono; -s koperi, bitohó, henono, los -s i koperi, e bitOhó, e benono.', NULL, 'b', 'Español: juicio', 'import-espanol-bubi'),
  ('bohokko', 's.', 'm.', NULL, 'Cl. 3', 'loko''ó (el. 1 1), el o bohokko, o loko''ó; -s behokko, bako''ó, los -s e behokko, a bako''ó.', NULL, 'loko''ó', 'Español: junco', 'import-espanol-bubi'),
  ('modadyá', 's.', 'm.', NULL, 'Cl. 3', 'el mes de - o moda dyá; meses de - medadyá, los meses de e medadyá.', 'meses de - medadyá, los meses de e medadyá.', NULL, 'Español: junio', 'import-espanol-bubi'),
  ('okkáa', 'v.', NULL, NULL, NULL, 'o okanna; preso nosotros juntamos a las personas to la okanna a batyo, to la kossá a batyo.', 'preso nosotros juntamos a las personas to la okanna a batyo, to la kossá a batyo.', 'okanna', 'Español: juntar', 'import-espanol-bubi'),
  ('bollo', 's.', 'm.', NULL, 'Cl. 3', 'el o bollo, e ebéttá; -s ibéttá, beollo, los -s e ibéttá, e beollo.', NULL, NULL, 'Español: juramento', 'import-espanol-bubi'),
  ('karosíi', 's.', 'm.', NULL, 'Cl. 10', 'el- i karosíi.', NULL, NULL, 'Español: keroseno', 'import-espanol-bubi'),
  ('kilóo', 's.', 'm.', NULL, 'Cl. 9', 'el - e kilóo; -s kilóo, los -s i kilóo.', NULL, NULL, 'Español: kilo', 'import-espanol-bubi'),
  ('ebebo', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebe bo, e ee''e; -s ibebo, bie''e, los -s e ibebo, e bie''e.', NULL, NULL, 'Español: labio', 'import-espanol-bubi'),
  ('bolakóláko', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOlakólá ko; -es balakóláko, los -es a balakóláko.', NULL, NULL, 'Español: labrador', 'import-espanol-bubi'),
  ('atée', 's.', 'm.', NULL, 'Cl. 7', 'el- e atée, e eOO; -s biatée, iOO, los -s e bia t é e, e iOO. * - derecho eOO oM, - izquierdo eOO ari.', NULL, NULL, 'Español: lado', 'import-espanol-bubi'),
  ('ebóbba', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebóbba; -s ibóbba, los -s e ibóbba.', NULL, NULL, 'Español: ladrido', 'import-espanol-bubi'),
  ('húbbé', 's.', 'm.', NULL, 'Cl. 9', 'el- e húbbé; ladrones húbbé, los ladrones i húbbé.', 'ladrones húbbé, los ladrones i húbbé.', NULL, 'Español: ladrón', 'import-espanol-bubi'),
  ('esolésóle', 's.', 'm.', NULL, 'Cl. 7', 'el - e esOlésóle, o buetyetyú; -s bisOlésóle, beetyetyú, los -s e bisO lésóle, e beetyetyú.', NULL, 'buetyetyú', 'Español: lagarto', 'import-espanol-bubi'),
  ('okoríbba', 's.', 'm.', NULL, 'Cl. 7', 'erib ba, el- e okoríbba, e eribba; -s biokoríbba, biribba, los -s e bioko ríbba, e biribba. lágrima, s''¡: buellá, la - o buellá; -s bellá, las -s a bellá.', NULL, NULL, 'Español: lago', 'import-espanol-bubi'),
  ('IObé''í', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1), el - o lobé''í; -s abé''í, los -s a abé''í.', NULL, NULL, 'Español: lamento', 'import-espanol-bubi'),
  ('botyikka', 's.', 'f.', NULL, 'Cl. 3', 'la - o botyikka; -s beíyikka, las -s e betyikka.', NULL, NULL, 'Español: lanza', 'import-espanol-bubi'),
  ('tyilla', 'v.', NULL, NULL, NULL, 'preso me largo n la tyí11a, n la tyíllo. Tb. ne a lá ba tyíllo; paso punto me largué n tyíri, te largaste o tyíri, se largó a tyíri, etc.', 'preso me largo n la tyí11a, n la tyíllo. | paso punto me largué n tyíri, te largaste o tyíri, se largó a tyíri, etc.', NULL, 'Español: largarse', 'import-espanol-bubi'),
  ('to', 'adj.', NULL, NULL, 'Cl. 5', 'boto (els. 1 y 3) persona larga (alta) botyo boto, línea larga bOlele boto; rito cama larga raatyé ritó; eto labio ebebo eto; loto (el. 1 1), brazo - lObM loto; sito cuento - siatta sitó; -s to; bato (els. 2 y 6) personas largas (altas) batyo bato, camas lar gas baatyé bato; beto líneas largas beJele beto; bito labios -s ibebo bito; to (els. 9 y lO) sardinas largas kollo to; toto cuentos -s...', 'boto (els. | rito cama larga raatyé ritó; | loto (el.', NULL, 'Español: largo', 'import-espanol-bubi'),
  ('bohehé', 's.', 'f.', NULL, 'Cl. 3', 'la - o bohehé; -s behehé, las -s e behehé.', NULL, NULL, 'Español: laringe', 'import-espanol-bubi'),
  ('bosuisuií', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOsuisuií, o bOsíporíi; -s besuisuií, besíporíi, los -s e besuisuií, e besíporíL', NULL, 'b', 'Español: látigo', 'import-espanol-bubi'),
  ('papabia', 'v.', NULL, NULL, NULL, 'preso mi cora zón late o botébbá ro bo lá papabia, tu corazón late o botébbá o bo la pórnrna; paso punto tu corazón latió o botébbá o bo papabiia;pas. duro el corazón del lagar to latía o botébbá bo e esolésóle bo papabiesiia.', 'preso mi cora zón late o botébbá ro bo lá papabia, tu corazón late o botébbá o bo la pórnrna;', NULL, 'Español: latir', 'import-espanol-bubi'),
  ('looa', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o looa; -8 kooa, los -s i kooa.', NULL, NULL, 'Español: lavadero', 'import-espanol-bubi'),
  ('ooa', 'v.', NULL, NULL, NULL, 'p�yo lavo mis calzoncillos n la ooa a abatyu ro; paso punto tú lavaste tus bragas o ooi a abatyu o, él lavó tu ropa ooi i kuua o. 2. - con o oalla;pres. la abuela lava su pelo con hojas o bonánna a la oaIla e bisílla bi áí la tonta. 3. -se o oeea, o subbá, o subbó; pres. me lavo n la oeea, n la subbá, n la ba subbó.', 'p�yo lavo mis calzoncillos n la ooa a abatyu ro; | pres.', 'subbá, subbó', 'Español: lavar', 'import-espanol-bubi');

-- Lote 5 (entradas 1301 a 1325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ehúto', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehúto; -s bihúto, los -s e bihúto.', NULL, NULL, 'Español: lazo', 'import-espanol-bubi'),
  ('mílikki', 's.', 'f.', NULL, 'Cl. 6', '(el. lO), - materna abelle, la - i mílikki, a abelle; -s mílikki, abel le, las -s i mílikki, a abelle.', NULL, NULL, 'Español: leche', 'import-espanol-bubi'),
  ('raatyé', 's.', 'm.', NULL, 'Cl. 5', 'el - e raatyé; -s baatyé, los -s a baatyé.', NULL, NULL, 'Español: lecho', 'import-espanol-bubi'),
  ('bOsossa', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOsossa; -es basossa, los -es a basossa.', NULL, NULL, 'Español: lector', 'import-espanol-bubi'),
  ('tyiella', 'v.', NULL, NULL, NULL, 'paso punto mi tío me legó sus tierras o bOoppé rÍl a le tyieri e biobba bi áí.', 'paso punto mi tío me legó sus tierras o bOoppé rÍl a le tyieri e biobba bi áí.', NULL, 'Español: legar', 'import-espanol-bubi'),
  ('tákkí', 's.', 'm.', NULL, 'Cl. 9', 'el - e tákkí; -es tákkí, los -es i tákkí.', NULL, NULL, 'Español: legislador', 'import-espanol-bubi'),
  ('sotya', 'v.', NULL, NULL, NULL, 'preso los gobernantes legislan a bariariia ba lá sotya.', 'preso los gobernantes legislan a bariariia ba lá sotya.', NULL, 'Español: legislar', 'import-espanol-bubi'),
  ('orekka', 'adv.', NULL, NULL, NULL, 'otto. * una isla lejana etúllá á orekka.', NULL, NULL, 'Español: lejano', 'import-espanol-bubi'),
  ('orekka', 'adv.', NULL, NULL, NULL, 'otto. * mi casa está - e tyóbbo r Í l e lé o orekka.', NULL, NULL, 'Español: lejos', 'import-espanol-bubi'),
  ('bobotó', 'adj.', NULL, NULL, 'Cl. 3', 'obotó, el- o bobo tó, o obotó; -s bebotó, abotó, los-s e bebotó, a abotó.', NULL, 'obotó', 'Español: lelo', 'import-espanol-bubi'),
  ('lóórÍl', 's.', 'f.', NULL, NULL, '(el. 1 1), la - o lóórÍl; -s kóórÍl, las -s i kóÓrÍl.', NULL, NULL, 'Español: leña', 'import-espanol-bubi'),
  ('obatta', 'adj.', NULL, NULL, 'Cl. 3', 'el- o obatta; -s abat ta, los -s a abatta. lesión, s.. f tobbo, la - e tobbo; lesiones tobM, las lesiones i tobbó.', 'lesiones tobM, las lesiones i tobbó.', NULL, 'Español: leproso', 'import-espanol-bubi'),
  ('eletera', 's.', 'f.', NULL, 'Cl. 7', 'la - e e/etera, -s biletera, las -s e bi/etera.', NULL, NULL, 'Español: letra', 'import-espanol-bubi'),
  ('atya', 'v.', NULL, NULL, NULL, 'pres. yo levanto el fardo n la atya o oo''e, tú levantas a tu tía o la ipora e enepó o, o la ipora e eantí o. 2. ayudar a - o atyalla;pres. mi hermano me ayuda a levan tar la carga o oobelle rÍl a la le atyalla o oo''e. 3. - para alguien o atyella, o ipiira;pres. yo levanto el Cardo para mi sobrino n la atyella o oo''e e neppó rÍl. 2. -se o ipolla; preso me levan to n la ipolla, te levan...', 'pres. | preso me levan to n la ipolla, te levan.', 'la, ipiira', 'Español: levantar', 'import-espanol-bubi'),
  ('eette', 's.', 'f.', NULL, 'Cl. 7', 'la - e eette; -es biette, las -es e biette.', NULL, NULL, 'Español: ley', 'import-espanol-bubi'),
  ('boatta', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOatta; -s beat ta, las -s e beatta.', NULL, NULL, 'Español: leyenda', 'import-espanol-bubi'),
  ('petté', 's.', 'f.', NULL, 'Cl. 9', '- espinosa obellá, la - e petté, la - espinosa o obellá; -s petté, -s espinosas ebellá, las -s i petté, las -s espinosas e ebellá.', NULL, NULL, 'Español: liana', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: liar', 'import-espanol-bubi'),
  ('ossa', 'v.', NULL, NULL, NULL, '2. - para alguien o osella; preso yo libo para el espíritu n la osella o mmo.', 'preso yo libo para el espíritu n la osella o mmo.', NULL, 'Español: libar', 'import-espanol-bubi'),
  ('oburo', 's.', 'm.', NULL, 'Cl. 1', 'el - o oburo; -s aburo, los -s a aburo.', NULL, NULL, 'Español: liberado', 'import-espanol-bubi'),
  ('solla', 'v.', NULL, NULL, NULL, '* el juez liberó a los ladrones o buatésapá a sori i húbbé.', NULL, NULL, 'Español: liberar', 'import-espanol-bubi'),
  ('rihori', 's.', 'f.', NULL, 'Cl. 5', 'la - e rihori, o bOhori; -es bahOri, behOri, las -es a bahori, e behori.', NULL, 'b', 'Español: libertad', 'import-espanol-bubi'),
  ('solla', 'v.', NULL, NULL, NULL, 'preso yo liberto n la solla; paso punto yo liberté n sori; paso duro yo liberta ba n solessi. 464 / libertino', 'preso yo liberto n la solla; | paso duro yo liberta ba n solessi.', NULL, 'Español: libertar', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 4', '(els. I y 3), el - o opelle; -s epelle, apelle, los -s a apelle, e epelle.', NULL, NULL, 'Español: libertino', 'import-espanol-bubi'),
  ('sibúkku', 's.', 'm.', NULL, 'Cl. 12', 'el - e sibúkku, e sipéppa; -s tabúkku, tapéppa, los -s o tabúkku, o t6péppa.', NULL, 't', 'Español: librito', 'import-espanol-bubi');

-- Lote 6 (entradas 1326 a 1350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribúkku', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribúkku; -s abúk k u, los -s a abúkku.', NULL, NULL, 'Español: libro', 'import-espanol-bubi'),
  ('koroko', 's.', 'm.', NULL, 'Cl. 10', 'el - i koroko; -es koro ko, los -es i koráko.', NULL, NULL, 'Español: licor', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, 'o akka (atar), 2. - con o akalla. 3. - para o akella.', NULL, NULL, 'Español: ligar', 'import-espanol-bubi'),
  ('ekasso', 's.', 'm.', NULL, 'Cl. 7', 'el- e ekasso; -s bikasso, los -s e bikasso. lij a, f sieppa (el. 1 2), la - e sieppa; -s toeppa, las -s o toeppa.', NULL, NULL, 'Español: ligero', 'import-espanol-bubi'),
  ('buello', 's.', 'm.', NULL, 'Cl. 3', 'el- o buel lo; -s biello, tue''i, los -s e biello.', NULL, NULL, 'Español: límite', 'import-espanol-bubi'),
  ('erem', 's.', 'm.', NULL, 'Cl. 7', 'el - e erem; limones birem, los limones e birem.', 'limones birem, los limones e birem.', NULL, 'Español: limón', 'import-espanol-bubi'),
  ('barem', 's.', 'm.', NULL, 'Cl. 3', 'el - o barem; -s biirem, barem, los -s e berem, a baremo', NULL, NULL, 'Español: limonero', 'import-espanol-bubi'),
  ('eheá', 's.', 'm.', NULL, 'Cl. 7', 'el- e eheá; -s biheá, los -s e biheá.', NULL, NULL, 'Español: lío', 'import-espanol-bubi'),
  ('lotyoa', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1), el- o lotyoa; líque nes batyoa, los líquenes a batyoa.', 'líque nes batyoa, los líquenes a batyoa.', NULL, 'Español: liquen', 'import-espanol-bubi'),
  ('boppé', 's.', 'm.', NULL, 'Cl. 6', 'el - a boppé; -s bop pé, los -s a boppé.', NULL, NULL, 'Español: líquido', 'import-espanol-bubi'),
  ('kuppá', 'adj.', NULL, NULL, 'Cl. 9', 'el - e kuppá; -s kuppá (el. lO), los -s i kuppá.', NULL, NULL, 'Español: listo', 'import-espanol-bubi'),
  ('botátoo', 's.', 'm.', NULL, 'Cl. 3', 'el - o botátoo; listo nes betátoo, los listones e betátoo.', 'listo nes betátoo, los listones e betátoo.', NULL, 'Español: listón', 'import-espanol-bubi'),
  ('tataúlo', 's.', 'm.', NULL, 'Cl. 9', 'el- e tataúlo; -es tataú lo, los -es i tataúlo.', NULL, NULL, 'Español: litoral', 'import-espanol-bubi'),
  ('lopopórera', 's.', 'm.', NULL, 'Cl. 11', 'el- o lopopórera; -s apopórera, los -s a apopórera.', NULL, NULL, 'Español: llano', 'import-espanol-bubi'),
  ('palláa', 'v.', NULL, NULL, NULL, 'preso yo llego esta mañana n la palláa eló ebari. 3. -la noche o síballa; la noche llega pronto o botyíó bó la síballa bakasso.', 'preso yo llego esta mañana n la palláa eló ebari. | la noche llega pronto o botyíó bó la síballa bakasso.', NULL, 'Español: llegar', 'import-espanol-bubi'),
  ('era', 'v.', NULL, NULL, NULL, '2. -se o ella; preso el bidón se llena con la lluvia e ribet té ri lá ella la o lóllá [e ribetté ri lá ella lo lollál', NULL, NULL, 'Español: llenar', 'import-espanol-bubi'),
  ('alláa', 'v.', NULL, NULL, NULL, '2. - para o o alella; preso yo llevo agua para mis trabajadores n la alella a balakóláko m boppé. 3. -se o susulla; preso el coche se lleva al camión o motóo bo lá susulla e rikotye [o motó bó lá susulle rikotSel', 'preso yo llevo agua para mis trabajadores n la alella a balakóláko m boppé.', NULL, 'Español: llevar', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyoppo; -s tyoppo (el. lO), los -s i tyoppo.', NULL, NULL, 'Español: loco', 'import-espanol-bubi'),
  ('etokkó', 's.', 'm.', NULL, 'Cl. 7', 'el- e etokkó; -s bitokkó, los -s e bitokkó.', NULL, NULL, 'Español: lodo', 'import-espanol-bubi'),
  ('kM', 's.', 'm.', NULL, 'Cl. 9', 'el- e koo; -s koo, los -s i koo. los, det. arto a, i, e, o; - hombres a batyo, plátanos e bekobbé, - árboles a batté, - asientos e bimpa, - perros i puá, - cuentos o toatta, etc.', NULL, NULL, 'Español: loro', 'import-espanol-bubi'),
  ('obitábítta', 's.', 'm.', NULL, 'Cl. 1', 'el- o obitábít ta; -es abitábítta, los -es a abitábítta.', NULL, NULL, 'Español: luchador', 'import-espanol-bubi'),
  ('buera', 'v.', NULL, NULL, NULL, 'preso la luna luce e reeá ri lá buera; paso punto la luna lució e reeá ri bueriia [e reeá rí bueriial', 'preso la luna luce e reeá ri lá buera;', NULL, 'Español: lucir', 'import-espanol-bubi'),
  ('sibélló', 'adv.', NULL, NULL, 'Cl. 12', '- iré n la pooa sibélló [n la poa sibelló l', NULL, NULL, 'Español: luego', 'import-espanol-bubi'),
  ('eruua', 's.', 'm.', NULL, 'Cl. 7', 'eussó (Cl. 7), el- e eruua, a habba, e eussó; -es biruua, bihabba, biussó, los -s e biruua, e bihabba, e biussó. 2. - donde se defe ca itoberi, el- donde se defeca e iroberi; -es donde se defeca barobéri, los -es donde se defeca a baroberi. 3. - donde se cocina ilaperi, kityín, el- donde se cocina e ilaperi, e ki t yín; -es donde se cocina balaperi, kityín (el. 1 0), los -es donde se coc...', NULL, NULL, 'Español: lugar', 'import-espanol-bubi'),
  ('loboa', 's.', 'm.', NULL, 'Cl. 11', 'el- o loboa; -es aboa, los -es a aboa.', NULL, NULL, 'Español: lunar', 'import-espanol-bubi');

-- Lote 7 (entradas 1351 a 1375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bokott', 's.', 'm.', NULL, 'Cl. 3', '6, el - o bokotto; -s bekotto, los -s e bekotto.', NULL, NULL, 'Español: luto', 'import-espanol-bubi'),
  ('po''a', 's.', 'm.', NULL, 'Cl. 9', 'el- e po''a; -s po''a, los -s i po''a.', NULL, NULL, 'Español: macaco', 'import-espanol-bubi'),
  ('kékka', 'v.', NULL, NULL, NULL, 'paso punto los presos maceraron las piedras a batyelemán ba kékki a bate.', 'paso punto los presos maceraron las piedras a batyelemán ba kékki a bate.', NULL, 'Español: macerar', 'import-espanol-bubi'),
  ('isaké', 's.', 'm.', NULL, 'Cl. 5', 'el- e isaké; -s basa ké, los -s a basaké.', NULL, NULL, 'Español: machete', 'import-espanol-bubi'),
  ('bObbe', 's.', 'm.', NULL, 'Cl. 1', 'el- o bobbe; -s bobbe, los -s a bobbe. * - cabrio rinakaborii, el - cabrio e rinakaboríi; -s cabríos bana kaboríi, los -s cabrios a banakaboríi. * bObbe el ratón - o obitya bobbe; robbe el pájaro carpintero - e ripi''e robbe; obbe el ciempiés - e esokólla obbe [eesokólla obbe); kobbbe (els. 9 y 10) la ser piente - e nóóa kobbe, i nóóa kobbe; lobbe (el. 1 1) la sardina - o lokollo lobbe; sobbe el...', 'robbe el pájaro carpintero - e ripi''e robbe; | kobbbe (els. | lobbe (el.', NULL, 'Español: macho', 'import-espanol-bubi'),
  ('bobbe', 's.', 'm.', NULL, 'Cl. 1', 'el o bobbe, e kobbe; -s bobbe, kobbe, los -s a bobbe, i kobbe.', NULL, NULL, 'Español: machote', 'import-espanol-bubi'),
  ('rortó', 's.', 'm.', NULL, 'Cl. 5', 'el - e rortó, e ribeki; -s bOttó, abeki, los -s a bortó, a abeki.', NULL, NULL, 'Español: macuto', 'import-espanol-bubi'),
  ('hótta', 'v.', NULL, NULL, NULL, 'pres. las frutas madu ran e bihMma bi lá hórta; paso punto las frutas maduraron e bihMma bi hótyi, e bihMma bi''á hótyi.', 'paso punto las frutas maduraron e bihMma bi hótyi, e bihMma bi''á hótyi.', NULL, 'Español: madurar', 'import-espanol-bubi'),
  ('bue''iáa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bue''iáa; -s be''iáa, los -s a be''iáa * - de ceremonias eebí (el. 7/8), el- de ceremonias e eebí; -s de ceremonias biebí, los -s de cere monias e biebí.', NULL, NULL, 'Español: maestro', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'el- o boitta; -s bait ta, los -s a baitta.', NULL, NULL, 'Español: magnate', 'import-espanol-bubi'),
  ('konno', 's.', 'm.', NULL, 'Cl. 9', 'el - e konno; -ces kon no (el. ID), los -ces i cono.', NULL, NULL, 'Español: maíz', 'import-espanol-bubi'),
  ('ebbé', 's.', 'm.', NULL, 'Cl. 7', 'kaaí (9), el - e kaaí; -es ibbé, kaaí, los -es i kaaí. 2. labbé; -amente labbé; - de orina batyere (6).', NULL, NULL, 'Español: mal', 'import-espanol-bubi'),
  ('obé', 'adj.', NULL, NULL, NULL, 'obé (els. 1: una persona - botyo obé y 3: una historia - boatta obé), ribé (el. 5: una cama - raatyé ribé), labé (el. 6b: una cosa - labba labé), ebé (el. 7: una hora ehótto ebé), bé (el. 9: una iguana - nebba bé), lobé (el. J I: una pizarra - Jobasso lobé), sibé (el. 12: una cajita - sibakka sibé), habé (el. J6: una zona - habba habé); -s abé (els. 2: perso nas -s batyo abé y 6: camas -s baaty...', NULL, NULL, 'Español: mala', 'import-espanol-bubi'),
  ('ini', 's.', NULL, NULL, 'Cl. 3', 'buiko, bOhullá obé, ebéttá, la - o bOiko, o buiko, o bohullá obé, e ebéttá; maldi ciones beiko, biiko, behullá ebé, ibéttá, las maldiciones e beiko, e biiko, e béhullá ebé, e ibéttá.', 'maldi ciones beiko, biiko, behullá ebé, ibéttá, las maldiciones e beiko, e biiko, e béhullá ebé, e ibéttá.', 'buiko, bohullá', 'Español: maldición', 'import-espanol-bubi'),
  ('bontyo', 's.', 'm.', NULL, 'Cl. 3', 'kobbó , el - o bontyo, e kobbó; -s bentyo, kobbó, los -s e bentyo. i kobbó.', NULL, NULL, 'Español: maleficio', 'import-espanol-bubi'),
  ('bosalábbe', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bosa lábbe; -es basalábbe, los -es a basalábbe.', NULL, NULL, 'Español: malhechor', 'import-espanol-bubi'),
  ('bosalábbe', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bosa lábbe; -s basalábbe, los -s a basalábbe.', NULL, NULL, 'Español: malicioso', 'import-espanol-bubi'),
  ('obé', 'adj.', NULL, NULL, NULL, 'obé (els. 1: un hombre - boie obé y 3: un árbol- botté obé ), ribé (el. 5: el machete - e isaké ribé), )abé (el. 6b: el asunto - a labba labé), ebé (el. 7: pacto - ehat tá ebé), bé (el. 9: biznieto - natta bé), lobé (el. J I : ascensor -Ioatya lobé), sibé (el. 12: diabli llo - siribbO sibé), habé (el. 16: lugar - habba habé); -s abé (els. 2: hombres -s baie abé y 6: machetes -s basaké abé), ebé...', NULL, NULL, 'Español: malo', 'import-espanol-bubi'),
  ('poníssi', 's.', 'm.', NULL, 'Cl. 9', 'el - e ponissi; -s ponissi (el. \O), los -s i ponissi.', NULL, NULL, 'Español: maltrato', 'import-espanol-bubi'),
  ('bOsalábbe', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bosalábbe; -s basalábbe, los -s a basalábbe. mantener I 469 malversar o kappa; preso el director mal versa el dinero o bOtákka a la kappa i bonnÍ, tú malversas todo mi dinero o la kappa i bonnÍ rÍ1 kubbaa; paso punto el director malversó todo el dinero de la empresa o bOtákka a kappi i bonnÍ kubbaa i e bÍsinessi.', 'preso el director mal versa el dinero o bOtákka a la kappa i bonnÍ, tú malversas todo mi dinero o la kappa i bonnÍ rÍ1 kubbaa;', NULL, 'Español: malvado', 'import-espanol-bubi'),
  ('enyankue', 's.', 'm.', NULL, 'Cl. 7', 'el - e enyankue; -s binyankue, los -s e binyankue.', NULL, NULL, 'Español: mamarracho', 'import-espanol-bubi'),
  ('nokké', 's.', 'm.', NULL, 'Cl. 9', 'sinekká (el. 1 2), el- e nokké, e sirekká, e sinek ká; -es nokké, torekká, tonekká, los -es i nokké, o torekká, o tonekká.', NULL, 'torekká, tonekká', 'Español: manantial', 'import-espanol-bubi'),
  ('ke''ubbia', 'v.', NULL, NULL, NULL, 'preso el aceite man cha a biitá ba lá ke''ubbia; paso punto la lluvia manchó mi pantalón o lóllá lo ke''ubiia e toro sÍssi rÍ1. 2. -se o ke''ubba; preso el niño se ensucia con el barro o bóllá a la ke''ubba la e bitokkó.', 'preso el aceite man cha a biitá ba lá ke''ubbia; | preso el niño se ensucia con el barro o bóllá a la ke''ubba la e bitokkó.', NULL, 'Español: manchar', 'import-espanol-bubi'),
  ('ekukuna', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekukuna; -s bikukuna, los -s e biku kuna.', NULL, NULL, 'Español: manco', 'import-espanol-bubi'),
  ('lotóbbóo', 's.', 'm.', NULL, 'Cl. 4', '(eL 1 1), el - o lotóbbóo; -s tóbbóo (eL 10), betóbbóo, los -s i tóbbóo, e betóbbóo.', NULL, NULL, 'Español: mandamiento', 'import-espanol-bubi');

-- Lote 8 (entradas 1376 a 1400)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('roáa', 's.', 'm.', NULL, 'Cl. 5', 'riotto, (fruta) emankOro, el - e roáa, e eteáppo, e riotto, (fruta) e emankoro; -s boáa, biiliáppo (eL 8), baotto, (frutas) imankoro, los -s a boáa, e biteáppo, a baotto, (frutas) e imankOro. * yo quiero comprar -s (frutas) n la na''a o ollá imaIÍk:oro.', NULL, NULL, 'Español: mango', 'import-espanol-bubi'),
  ('ehéri', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehéri; -s bihéri, los -s e bihéri.', NULL, NULL, 'Español: manojo', 'import-espanol-bubi'),
  ('eopaoppa', 's.', 'm.', NULL, 'Cl. 7', 'el - e eopaoppa; -s biopaoppa, los -s e bio paoppa.', NULL, NULL, 'Español: manto', 'import-espanol-bubi'),
  ('eápollo', 's.', 'f.', NULL, 'Cl. 7', 'la - e eápolW; -s biápollo, las -s e biápollo. mañana, 1. obarí. 2. s.f ebari, la - e ebari; -s mbari, ibari, las -s e mbari, e ibarí. * muy de - ebarityio. * pasado - lo bíllo ibba.', NULL, NULL, 'Español: manzana', 'import-espanol-bubi'),
  ('elo''á', 's.', 'm.', NULL, 'Cl. 7', 'el - e elo''á; -es bilo''á, los -es e bilo''á.', NULL, NULL, 'Español: mar', 'import-espanol-bubi'),
  ('sityakalébbO', 's.', 'm.', NULL, 'Cl. 12', 'la - e sitya kalébbo; -s totyakalébbO, las -s o to tyakalébbO.', NULL, NULL, 'Español: maraca', 'import-espanol-bubi'),
  ('kelle', 's.', 'f.', NULL, 'Cl. 9', 'eiera, la - e kelle, e eribolla, e eie ra; -s kelle, biribolla, biiera, las -s i kelle, e biriOOlla, e biiera.', NULL, NULL, 'Español: maravilla', 'import-espanol-bubi'),
  ('tyílláa', 'v.', NULL, NULL, NULL, 'pres. me mar cho n la tyílláa, n la ba tyíllo, te marchas o la tyíl láa, o la ba tyíllo, se marcha a la tyílláa, a la ba tyíllo, etc.; paso punto me marché ne tyíri, te marchaste we tyíri, se marchó e tyíri, etc.; paso duro me marchaba n tyílessi, te marchabas o tyílessi, se marchaba a tyílessi, etc.', 'paso punto me marché ne tyíri, te marchaste we tyíri, se marchó e tyíri, etc. | paso duro me marchaba n tyílessi, te marchabas o tyílessi, se marchaba a tyílessi, etc.', 'la', 'Español: marcharse', 'import-espanol-bubi'),
  ('lokolla', 'v.', NULL, NULL, NULL, 'preso la flor se marchita e ehNtyátya e lá lokolla; paso punto las hojas se marchitaron o tonta to lokori.', 'preso la flor se marchita e ehNtyátya e lá lokolla;', NULL, 'Español: marchitarse', 'import-espanol-bubi'),
  ('epa''i', 's.', 'm.', NULL, 'Cl. 7', '- el- e epa''i;-s ipa''i, los -s e ipa''i.', NULL, NULL, 'Español: marco', 'import-espanol-bubi'),
  ('uálea', 'v.', NULL, NULL, NULL, 'preso me mareo n la uálea, te mareas o la uálea, se marea a la uálea, etc.; paso punto me mareé n uálei, te mareaste o uálei, se mareó a uálei, etc.; paso duro me mareaba n uáleseei, te mareabas o uáleseei, se mareaba a uáleseei, etc.', 'preso me mareo n la uálea, te mareas o la uálea, se marea a la uálea, etc. | paso punto me mareé n uálei, te mareaste o uálei, se mareó a uálei, etc. | paso duro me mareaba n uáleseei, te mareabas o uáleseei, se mareaba a uáleseei, etc.', NULL, 'Español: marearse', 'import-espanol-bubi'),
  ('boleké', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOleké; -s bele ké, los -s e beleké.', NULL, NULL, 'Español: mareo', 'import-espanol-bubi'),
  ('bobbe', 's.', 'm.', NULL, 'Cl. 1', 'el - o bobbe; -s bobbe, los -s a bobbe. * el - de tu her mana o bobbe ó wetta O.', NULL, NULL, 'Español: marido', 'import-espanol-bubi'),
  ('boobbe', 's.', 'm.', NULL, 'Cl. 1', 'el - o boobbe; -s baobbe, los -s a baobbe.', NULL, NULL, 'Español: marino', 'import-espanol-bubi'),
  ('eókOóko', 's.', 'f.', NULL, 'Cl. 7', 'la - e eókoóko; -s biókOóko, las -s e biókoóko.', NULL, NULL, 'Español: mariposa', 'import-espanol-bubi'),
  ('eatyó', 's.', 'm.', NULL, 'Cl. 7', 'el- e eatyó; -s biatyó, los -s e biatyó.', NULL, NULL, 'Español: marisco', 'import-espanol-bubi'),
  ('ribasso', 's.', 'm.', NULL, 'Cl. 5', 'el- e ribasso, e nalle, el - grande e ribasso rotee, el pequeño e ribasso rikookoo; -es abasso, nalle, los -es a abasso, i nalle.', NULL, NULL, 'Español: mármol', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'el - e esóló; -s bisóló, los -s e bisóló.', NULL, NULL, 'Español: marrano', 'import-espanol-bubi'),
  ('ilakka', 's.', 'm.', 'pl.', 'Cl. 5', 'el - e ilakka; - (pI.) balakka, los - a balakka.', NULL, NULL, 'Español: martes', 'import-espanol-bubi'),
  ('ehámma', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehámma; -s bihámma, los -s e bihámma.', NULL, NULL, 'Español: martillo', 'import-espanol-bubi'),
  ('esuri', 's.', 'm.', NULL, 'Cl. 7', 'el - e esurí; -s bisurí, los -s e bisurí.', NULL, NULL, 'Español: martirio', 'import-espanol-bubi'),
  ('utaityi', 's.', 'm.', NULL, NULL, '(el. 7: eutaityi), el mes de - e utaityi; meses de - biéá biá utaityi, los meses de - e biéá biá utaityí.', 'meses de - biéá biá utaityi, los meses de - e biéá biá utaityí.', NULL, 'Español: marzo', 'import-espanol-bubi'),
  ('atyí', 'adv.', NULL, NULL, NULL, '- allá (Más Allá) ommo.', NULL, NULL, 'Español: más', 'import-espanol-bubi'),
  ('nótya', 'v.', NULL, NULL, NULL, 'pres. el abuelo masca una nuez de cola o bOyolla a la nótya ri''é.', NULL, NULL, 'Español: mascar', 'import-espanol-bubi'),
  ('bosopO', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOsopo; -es besopo, los -es e besopo.', NULL, NULL, 'Español: mástil', 'import-espanol-bubi');

-- Lote 9 (entradas 1401 a 1425)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribállá', 's.', 'm.', NULL, 'Cl. 5', 'el- e ribálla, el - llegó a su fin e ribállá rí''á sétyi; -s abállá, los -s a abáUá. * bienes de - torí.', NULL, NULL, 'Español: matrimonio', 'import-espanol-bubi'),
  ('esubba', 's.', 'm.', NULL, 'Cl. 7', 'el mes de - o buéá bo e esubba; meses de - biéá bié esubba, los meses de - e biéá biésubba.', 'meses de - biéá bié esubba, los meses de - e biéá biésubba.', NULL, 'Español: mayo', 'import-espanol-bubi'),
  ('botyílé', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOtyílé; -es ba tyílé, los -es a batyílé. * los -es del pue blo a batyílé bá e eriia. maza, s''¡: ehámma, la - e ehámma [eehám mal; -s bihámma, las -s e bihámma.', NULL, NULL, 'Español: mayor', 'import-espanol-bubi'),
  ('ehámma', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehámma [eehám mal; -s bihámma, los -s e bihámma.', NULL, NULL, 'Español: mazo', 'import-espanol-bubi'),
  ('suua', 'v.', NULL, NULL, NULL, 'preso mi hermana mece a su bebé o wetta m a la suua e sine''e si áí; paso punto tu her mana meció a su hijo o wetta ó a ikíria o bóllá áí.', 'preso mi hermana mece a su bebé o wetta m a la suua e sine''e si áí;', NULL, 'Español: mecer', 'import-espanol-bubi'),
  ('bolaUo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOlaUo, i meressi; -s belallo, meressi, los -s e belaUo, i meressi.', NULL, NULL, 'Español: medicamento', 'import-espanol-bubi'),
  ('bOsella', 's.', 'm.', NULL, 'Cl. 1', 'rokít fa, rokittta, el - o bOsella, o bOeloél lo, e rokítta, e rokittta; -s basella, baeloéllo, bokítta (Cl. 6), bokittta (Cl. 6), los -s a basella, a baeloéllo, a bokítta, a bokútta. * los -s de las enfermedades del mal de orina a bokútta bá i kaaí i a batyere. medida, s''¡: ke''o, la - e ke''o; -s ke''o (el. lO), las -s i ke''o.', NULL, 'b', 'Español: médico', 'import-espanol-bubi'),
  ('buebue', 'adj.', NULL, NULL, NULL, 'buebue (els. I y 3: es la - persona ká o botyo buebue, es el- árbol ká o botté buebue ), luelue (el. 1 1 : es el - vestido ká o luua luelue ), sese (el. 12: es la - camisa ká e sótte sese ); -es bebe (els. 2 y 6: son las -es personas ká a batyo bebe, son las -es mejillas ká a bakekko bebe, son los -es pueblos ká e biriia biebie [ke bíriia biebieD, nene (el. 10: son los -es caminos ká i tene nen...', NULL, NULL, 'Español: mejor', 'import-espanol-bubi'),
  ('ekómposi', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekómposi; -s bikómposi, los -s e bikómposi.', NULL, NULL, 'Español: mejunje', 'import-espanol-bubi'),
  ('obokkó', 's.', 'm.', NULL, 'Cl. 1', 'el - o obokkó; -s abokkó, los -s a abokkó.', NULL, NULL, 'Español: mellizo', 'import-espanol-bubi'),
  ('usólla', 'v.', NULL, NULL, NULL, 'preso el juez mencio na a los culpables o buatésapá a la usólla a baab 472 / mendigar bí; paso punto el presidente mencionó los hechos o botákityé a usóri e bilabba.', 'preso el juez mencio na a los culpables o buatésapá a la usólla a baab 472 / mendigar bí;', NULL, 'Español: mencionar', 'import-espanol-bubi'),
  ('bllÍtyíi', 'adj.', NULL, NULL, 'Cl. 1', 'el- o buityíi; -es bii tyíi, los -es a biítyíi.', NULL, NULL, 'Español: menor', 'import-espanol-bubi'),
  ('bosossó', 's.', 'm.', NULL, 'Cl. 3', 'botólló, el- o bosossó, o botákko, o botól ló; -s besossó, betákko, betólló, los -s e besossó, e betákko, e betólló. * -ro botákko, el -ro o botákko; -ros betákko, los -ros e betákko.', NULL, 'botákko, botól', 'Español: mensaje', 'import-espanol-bubi'),
  ('elobbo', 's.', 'm.', NULL, 'Cl. 7', 'el - e elobbo, e riaka; -s bilobbo, baa ka, los -s e bilobbo, a baaka.', NULL, NULL, 'Español: menú', 'import-espanol-bubi'),
  ('siítyi', 's.', 'm.', NULL, 'Cl. 12', 'el - e siítyi; -s tuií tyi, los -s o tuiítyi.', NULL, NULL, 'Español: meñique', 'import-espanol-bubi'),
  ('rótta', 's.', 'm.', NULL, 'Cl. 5', 'el - e rótta, o bOmmakétte; -s bótta, bemmakétte, los -s a bótta, e bemma kétte.', NULL, 'b', 'Español: mercado', 'import-espanol-bubi'),
  ('rioka', 's.', 'm.', NULL, 'Cl. 5', 'el - e rioka; -s baoka, los -s a baoka.', NULL, NULL, 'Español: mérito', 'import-espanol-bubi'),
  ('buéá', 's.', 'm.', NULL, 'Cl. 3', 'el - o buéá, o boleppo; -s biéá, beleppo, los -s e biéá, e be/eppo.', NULL, 'boleppo', 'Español: mes', 'import-espanol-bubi'),
  ('bohéle', 's.', 'm.', NULL, 'Cl. 3', 'el- o bohéle, o bokussú; -es behéle, bekllssú, los -es e behéle, e bekussú.', NULL, 'bokussú', 'Español: metal', 'import-espanol-bubi'),
  ('pos', 'adj.', NULL, NULL, NULL, 'pos. m; - pariente o bOtyo m, - amigo o buéso'' o m, - perro e puá mía, prono pos. m; esta casa es - elo tyóbbo ké aa m, rilo raatyé ké ri aa m.', 'esta casa es - elo tyóbbo ké aa m, rilo raatyé ké ri aa m.', NULL, 'Español: mi', 'import-espanol-bubi'),
  ('esáríi', 's.', 'm.', NULL, 'Cl. 7', 'el- e esáríi; -s bisáríi, los -s e bisáríi.', NULL, NULL, 'Español: miedo', 'import-espanol-bubi'),
  ('ruetto', 's.', 'm.', 'pl.', 'Cl. 5', 'el - o ruetto; - (pI.) bettO, los - a betto.', NULL, NULL, 'Español: miércoles', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 3', 'el - o bllerá; -es bie rá, los -es e bierá.', NULL, NULL, 'Español: mil', 'import-espanol-bubi'),
  ('eribolla', 's.', 'm.', NULL, 'Cl. 7', 'el e eribolla, e kelle; -s biribOlla, kelle, los -s e biribolla, o i kelle. molino / 473', NULL, 'i', 'Español: milagro', 'import-espanol-bubi'),
  ('koppé', 's.', 'm.', NULL, 'Cl. 9', 'el - e koppé; -s kop pé (el. lO), los -s i koppé.', NULL, NULL, 'Español: milano', 'import-espanol-bubi');

-- Lote 10 (entradas 1426 a 1450)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('obitábítta', 's.', 'm.', NULL, 'Cl. 1', 'el o obitábítta, e sotyá; -es abitábítta, sotyá, los -es a abitábítta, i sotyá.', NULL, NULL, 'Español: militar', 'import-espanol-bubi'),
  ('lohahá', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o lohahá; -s hahá, los -s i hahá. * - de palma lubbá (el. 1 1110), el- de palma o lubbá; -s de palma kubbá, los -s de palma i kubbá.', NULL, NULL, 'Español: mimbre', 'import-espanol-bubi'),
  ('ritákko', 's.', 'm.', NULL, 'Cl. 5', 'el - e ritákko; -s batákko, los -s a batákko.', NULL, NULL, 'Español: ministerio', 'import-espanol-bubi'),
  ('boitta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOitta o losalla, o boitta; -s baitta bO losalla, baitta (C\. 2), los -s a baitta bO losalla, a baitta. mío, prono pos. ID; este es pariente - 010 kó bOtyo I D, este es amigo - 010 kó buéso''o ID, este perro es - elo puá ké aa ID.', 'este es pariente - 010 kó bOtyo I D, este es amigo - 010 kó buéso''o ID, este perro es - elo puá ké aa ID.', 'boitta', 'Español: ministro', 'import-espanol-bubi'),
  ('rekkí', 's.', 'm.', NULL, 'Cl. 5', 'el- e rekkí; -es bek kí, los -es a bekkí.', NULL, NULL, 'Español: mirador', 'import-espanol-bubi'),
  ('pateri', 's.', 'm.', NULL, 'Cl. 9', 'el - e pateri; -s pateri, los -s i pated.', NULL, NULL, 'Español: misionero', 'import-espanol-bubi'),
  ('bompilla', 's.', 'm.', NULL, 'Cl. 3', 'el o bompilla, o tobinoa; -s bempilla, tobin oa, los -s e bempilla, o tobinoa.', NULL, 'tobinoa, tobinoa', 'Español: moco', 'import-espanol-bubi'),
  ('rihekka', 's.', 'm.', NULL, 'Cl. 5', 'el - e rihekka; -s bahekka, los -s a bahekka.', NULL, NULL, 'Español: modelo', 'import-espanol-bubi'),
  ('buatébisapá', 's.', 'm.', NULL, 'Cl. 1', '(el. l l), buatésa pá, el- o buatébisapa, o buatésapá; -es ba tébioapá, batésapá, los -es a baté bisapá, a batésapá.', NULL, 'buatésapá', 'Español: moderador', 'import-espanol-bubi'),
  ('pobbá', 'v.', NULL, NULL, NULL, 'preso la ardilla se mofa de nosotros o bosOppé bo la e pobbá.', 'preso la ardilla se mofa de nosotros o bosOppé bo la e pobbá.', NULL, 'Español: mofarse', 'import-espanol-bubi'),
  ('rikekko', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikekko; -s bakekko, los -s a bakekko.', NULL, NULL, 'Español: moflete', 'import-espanol-bubi'),
  ('si''a', 'v.', NULL, NULL, NULL, 'preso la lluvia moja a la gen te o lóllá lo lá si''a a batyo; paso punto el rocío mojó las piernas de los guerreros e ribba ri si''i a aponná ba a abitábítta. 2. -se (a) o si''ea; pres. la calle se moja con el agua o bokoo bo lá si''ea la boppé. (b) o si''a; preso me mojo las piernas o la si''a aponná rÍl.', 'preso la lluvia moja a la gen te o lóllá lo lá si''a a batyo; | pres. | preso me mojo las piernas o la si''a aponná rÍl.', NULL, 'Español: mojar', 'import-espanol-bubi'),
  ('tétta', 'v.', NULL, NULL, NULL, 'preso la máquina mue le las piedras e emasíín e lá tétta a bate, las personas muelen los dátiles a batyo ba lá lóa i pillá; paso punto los hombres molieron las almendras a baie ba tétyi e beakká.', 'preso la máquina mue le las piedras e emasíín e lá tétta a bate, las personas muelen los dátiles a batyo ba lá lóa i pillá;', NULL, 'Español: moler', 'import-espanol-bubi'),
  ('tyipóbia', 'v.', NULL, NULL, NULL, 'imp. neg. no me molestes we le tyipóbie, we le lehee; paso punto te molesté o o tyipóbiia, o o lehei; paso duro tú me molestabas o le tyipóbiesiia, o le leheseei.', 'imp. | paso punto te molesté o o tyipóbiia, o o lehei;', 'o, le', 'Español: molestar', 'import-espanol-bubi'),
  ('etobbí', 'adj.', NULL, NULL, 'Cl. 7', 'bOlehi, el - e etobbí, o bOlehí; molestones bitobbí, balehí, los molestones e bitobbí, a balehí.', 'molestones bitobbí, balehí, los molestones e bitobbí, a balehí.', 'b', 'Español: molestón', 'import-espanol-bubi'),
  ('lolóa', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o 100óa; -s lóa, los -s i lóa. 474 / molleja', NULL, NULL, 'Español: molino', 'import-espanol-bubi'),
  ('eatyó', 's.', 'm.', NULL, 'Cl. 7', 'el - e eatyó [eeatJó); -s biatyó, los -s e biatyó. * - univalvo tye tyélle, el - univalvo e tyetyélle; -s unival vos tyetyélle (el. lO), los -s univalvos i tyetyélle.', NULL, NULL, 'Español: molusco', 'import-espanol-bubi'),
  ('sibélló', 's.', 'm.', NULL, 'Cl. 12', 'el - e sibélló; -s tobélló (el. 1 3), los -s o tobélló.', NULL, NULL, 'Español: momentito', 'import-espanol-bubi'),
  ('ebéló', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebéló [eebél ló); -s ibéló, los -8 e ibéló. * un - betellá!', NULL, NULL, 'Español: momento', 'import-espanol-bubi'),
  ('bohítáari', 's.', 'm.', NULL, 'Cl. 1', 'el- o bohítáari; -s bahítáari, los -s a bahítáari.', NULL, NULL, 'Español: monarca', 'import-espanol-bubi'),
  ('po''a', 's.', 'm.', NULL, 'Cl. 9', 'el - e po''a; -s po''a, los -s i po''a. * - tití sipo''a, el- titi e sipo''a; -s tití topo''a (el. 1 3), los -s tití o topo''a.', NULL, NULL, 'Español: mono', 'import-espanol-bubi'),
  ('enokonokko', 's.', 'm.', NULL, 'Cl. 7', 'el - e eno konokko [eenokonokko); -s binokonokko, los -s e binokonokko.', NULL, NULL, 'Español: monstruo', 'import-espanol-bubi'),
  ('loatya', 's.', 'm.', NULL, 'Cl. 5', '(el. 1 1), ribissó, el - o 10atya, e ribissó; -s atya, abissó, los -s i atya, a abissó.', NULL, NULL, 'Español: montacarga', 'import-espanol-bubi'),
  ('eó', 's.', 'm.', NULL, 'Cl. 7', 'el - e eó [eeó), e eullo [eeullo); -s bió, biullo, los -s e bió, e biullo.', NULL, NULL, 'Español: monte', 'import-espanol-bubi'),
  ('bouttyi', 's.', 'm.', NULL, 'Cl. 3', 'el- o bouttyi; -s beuttyi, los -s e beuttyi.', NULL, NULL, 'Español: montículo', 'import-espanol-bubi');

-- Lote 11 (entradas 1451 a 1475)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bouttyi', 's.', 'm.', NULL, 'Cl. 3', 'el - o bouttyi; mon tones beuttyi, los montones e beuttyi.', 'mon tones beuttyi, los montones e beuttyi.', NULL, 'Español: montón', 'import-espanol-bubi'),
  ('loátta', 'v.', NULL, NULL, NULL, 'preso el perro muerde e puá e lá loátta, yo muerdo n la loátta [n na loátta), etc.; paso punto el perro mordió al gato e puá e loátyi e sipóssi [e puá é loátJé sipóssi).', 'preso el perro muerde e puá e lá loátta, yo muerdo n la loátta [n na loátta), etc. | paso punto el perro mordió al gato e puá e loátyi e sipóssi [e puá é loátJé sipóssi).', NULL, 'Español: morder', 'import-espanol-bubi'),
  ('eloátyi', 's.', 'm.', NULL, 'Cl. 7', 'el e eloátyi [eeloátJi), e rello; -s biloátyi, bello, los -s e biloátyi, a bello.', NULL, NULL, 'Español: mordisco', 'import-espanol-bubi'),
  ('rimpo', 's.', 'm.', NULL, 'Cl. 5', 'el- e rimpo; -s bimpo, los -s e bimpo.', NULL, NULL, 'Español: morro', 'import-espanol-bubi'),
  ('bornmátta', 's.', 'm.', NULL, 'Cl. 3', 'el - o bornmát ta; -s bemmátta, los -s c bcmmátta.', NULL, NULL, 'Español: mortero', 'import-espanol-bubi'),
  ('lobónó', 's.', 'm.', NULL, 'Cl. 12', '(el. 1 1), el - o lobónó; -s bónó (el. lO), los -s i bónó. 2. - diminuto sibó nó, el - diminuto e sibónó; -s diminu tos tobónó, los -s diminutos o tobónó.', NULL, NULL, 'Español: mosquito', 'import-espanol-bubi'),
  ('tappáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: mostrar', 'import-espanol-bubi'),
  ('sibOtyí', 's.', 'm.', NULL, 'Cl. 12', '1Ia, el - e sibotyílla, -s tobotyí11a, los -s o tobotyí11a.', NULL, NULL, 'Español: mote', 'import-espanol-bubi'),
  ('buikílla', 's.', 'm.', NULL, 'Cl. 3', 'el- o buikílla; -s beikílla, los -s e beikílla. 2. - pequeño muslo / 475 siikíro, el - pequeño e siikíro; -s peque ños tuikíro, los -s pequeños o tuikíro.', NULL, NULL, 'Español: movimiento', 'import-espanol-bubi'),
  ('boseseppe', 's.', 'm.', NULL, 'Cl. 1', 'el - o boseseppe, o bolábóbe; -s baseseppe, bolábóbe, los -s a baseseppe, a bolábóbe.', NULL, 'bolábóbe', 'Español: mozo', 'import-espanol-bubi'),
  ('bolábóbe', 's.', 'm.', NULL, 'Cl. 1', 'el - o bolábó be; -s bolábóbe, los -s a bolábóbe.', NULL, NULL, 'Español: muchacho', 'import-espanol-bubi'),
  ('bíkébíke', 'adj.', NULL, NULL, NULL, 'bíkébíke (els. 2 y 6: mucha gente batyo bikébíke, mucha agua boppé bikébíke ); -s bikébíke (els. 2, 4, 6 Y 8: -s personas batyo bikébíke, -s historias beatta bikébíke, -s machetes basaké bikébíke, -s pueblos biriia biké bíke), nkénke (el. 10: -s serpientes bappa nkénke), tukétúke (el. 13: -s cuentos t6atta tukétúke).', NULL, NULL, 'Español: mucho', 'import-espanol-bubi'),
  ('hMmá', 's.', 'm.', NULL, 'Cl. 9', 'el- e hMmá; -s hMmá, los -s i hMmá.', NULL, NULL, 'Español: mudo', 'import-espanol-bubi'),
  ('opelle', 'adj.', NULL, NULL, 'Cl. 3', 'sosuállo, el- o opeJle, e sosuállo; -s epelle, tosuál lo, los -s e epelle, o tosuállo.', NULL, 'tosuállo', 'Español: mujeriego', 'import-espanol-bubi'),
  ('buía', 's.', 'm.', NULL, 'Cl. 3', 'el - o buía; -es bíía, los -es e bíía. multa, s..f riakkó, boakkó, la - e riakkó, o boakkó; -s baakkó, beakkó, las -s a baakkó, e beakkó.', NULL, 'boakkó', 'Español: muladar', 'import-espanol-bubi'),
  ('tyé', 's.', 'm.', NULL, 'Cl. 9', 'el- o tyé; -s tyé, los -s i tyé.', NULL, NULL, 'Español: mundo', 'import-espanol-bubi'),
  ('ritoperi', 's.', 'm.', NULL, 'Cl. 5', 'el- e ritoperi; -s batoperi, los -s a batoperi. muñeca, s.. f (juguete) sine''e, rombebí, la - e sine'' e, e rombebí; -s tone''e, bombebí, las -s o tone''e, a bombebí. 2. - de la mano 10bóbOssó (el. 1 1), la - de la mano o lobóbossó; -s de la mano abóbOssó, las -s de la mano a abóbOssó. muralla, s'' ¡: 1010''0 (el. 1 1), la - o 1010''0; -s 10''0, las -s i 10''0.', NULL, NULL, 'Español: municipio', 'import-espanol-bubi'),
  ('lokatte', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o lokatte; -s katte, los -s i katte.', NULL, NULL, 'Español: murciélago', 'import-espanol-bubi'),
  ('enokosso', 's.', 'm.', NULL, 'Cl. 7', 'el - e enokos so; -s binokosso (el. ll), los -s e binokosso.', NULL, NULL, 'Español: murmullo', 'import-espanol-bubi'),
  ('eteppe', 's.', 'm.', NULL, 'Cl. 7', 'el- e eteppe; -s biteppe, los -s e biteppe.', NULL, NULL, 'Español: muro', 'import-espanol-bubi'),
  ('neppí', 's.', 'm.', NULL, 'Cl. 9', 'el - e neppí; -s neppí, los -s i neppí.', NULL, NULL, 'Español: músico', 'import-espanol-bubi'),
  ('lolló', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1/6), epasso (el. 7/8), el o ¡olió, e epasso; -s bolló, ipas so, mpasso, los -s a bolló, e ipasso, e mpasso. N', NULL, NULL, 'Español: muslo', 'import-espanol-bubi'),
  ('ribieri', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribieri; -s abiéri, los -s a abieri.', NULL, NULL, 'Español: nacimiento', 'import-espanol-bubi'),
  ('obe''a', 's.', 'm.', NULL, 'Cl. 1', 'el - o obe''a; -es abe''a, los -es a abe''a.', NULL, NULL, 'Español: nadador', 'import-espanol-bubi'),
  ('koppáa', 's.', 'm.', NULL, 'Cl. 9', 'el- e koppáa; -s kop páa, los -s i koppáa.', NULL, NULL, 'Español: naipe', 'import-espanol-bubi');

-- Lote 12 (entradas 1476 a 1500)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOrentya', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOrentya; -s barentya, los -s a barentya.', NULL, NULL, 'Español: naranjo', 'import-espanol-bubi'),
  ('lompo', 'adj.', NULL, NULL, 'Cl. 7', 'lompo (el. 1 1), empompo, el - o lompo, e empompo; narigones bimpompo, los narigones e bimpompo.', 'narigones bimpompo, los narigones e bimpompo.', NULL, 'Español: narigón', 'import-espanol-bubi'),
  ('bOsabóatta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosabóat ta; -es basabóatta, los -es a basabóatta.', NULL, NULL, 'Español: narrador', 'import-espanol-bubi'),
  ('botyo', 'adj.', NULL, NULL, NULL, 'botyo a e eriia. * soy - ne botyo a e eri ia.', NULL, NULL, 'Español: nativo', 'import-espanol-bubi'),
  ('eutó', 's.', 'm.', NULL, 'Cl. 7', 'el- e eutó; -s biutó, los -s e biutó.', NULL, NULL, 'Español: naufragio', 'import-espanol-bubi'),
  ('eaó', 's.', 'm.', NULL, 'Cl. 7', 'el- e eaó, e etyó; -s biaó, bityó, los -s e biaó, e bityó.', NULL, NULL, 'Español: navajazo', 'import-espanol-bubi'),
  ('obe''a', 's.', 'm.', NULL, 'Cl. 1', 'el - o obe''a; -es abe''a, los -es a abe''a.', NULL, NULL, 'Español: navegador', 'import-espanol-bubi'),
  ('sitímma', 's.', 'm.', NULL, 'Cl. 12', 'el - e sitímma; -s totímma, los -s o totímma.', NULL, NULL, 'Español: navío', 'import-espanol-bubi'),
  ('na''a', 'v.', NULL, NULL, NULL, 'preso yo necesito un machete n la na''a isaké¡ paso punto ellos necesi taron la paz ba na''i e ehói.', 'preso yo necesito un machete n la na''a isaké¡ paso punto ellos necesi taron la paz ba na''i e ehói.', NULL, 'Español: necesitar', 'import-espanol-bubi'),
  ('seké', 's.', 'm.', NULL, 'Cl. 12', 'el - e seké, e ekakká; -s tueké, bikakká, los -s o tueké, e bikakká.', NULL, NULL, 'Español: necio', 'import-espanol-bubi'),
  ('bísinessi', 's.', 'm.', NULL, 'Cl. 9', 'el- e bísinessi; -s bísinessi, los -s i bísinessi.', NULL, NULL, 'Español: negocio', 'import-espanol-bubi'),
  ('báa', 'v.', NULL, NULL, NULL, 'preso hago nego cio con mi vecino n la báa bísinessi la o botyo a e epatto IÍJ.. negro, a, *willó (el. 1: persona - bOtyo willó), luilló (el. 1 1 : prenda - luua luilló); -s billó (els. 2 y 6: personas -s batyo billó, camas -s baatyé billó ).', 'preso hago nego cio con mi vecino n la báa bísinessi la o botyo a e epatto IÍJ.', NULL, 'Español: negociar', 'import-espanol-bubi'),
  ('soláe', 's.', 'm.', NULL, 'Cl. 12', 'el- e soláe; -s toláe, los -s o toláe.', NULL, NULL, 'Español: nene', 'import-espanol-bubi'),
  ('bOntyí', 's.', 'm.', NULL, 'Cl. 3', 'el - o bontyí; -s ben tyí, los -s e bentyí. * ataque de -s rikok ko, rityíbierí, el ataque de -s e rikokko, e rityíbierí; ataques de -s bakokko, batyíbierí, los ataques de -s a bakok ko, a batyíbierí.', 'ataques de -s bakokko, batyíbierí, los ataques de -s a bakok ko, a batyíbierí.', NULL, 'Español: nervio', 'import-espanol-bubi'),
  ('ekonko', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekonká; -s bikonko, los -s e bikonko.', NULL, NULL, 'Español: neumático', 'import-espanol-bubi'),
  ('bukká', 's.', 'm.', NULL, 'Cl. 3', 'el - o bukká; -s biukkú, los -s e biukká.', NULL, NULL, 'Español: nicho', 'import-espanol-bubi'),
  ('rubóo', 's.', 'm.', NULL, 'Cl. 5', 'el - e robóo; -s bubó�, los -s a buMo.', NULL, NULL, 'Español: nido', 'import-espanol-bubi'),
  ('bollá', 's.', 'm.', NULL, 'Cl. 12', '(1), soláe, sollá sobbe, el- o bOllá, e soláe, e sollá sobbe; -s bolIá, toláe, tollá tobbe, los -s a bollá, o to1áe, o tollá tobbe.', NULL, 'to, tollá', 'Español: niño', 'import-espanol-bubi'),
  ('teppo', 's.', 'm.', NULL, 'Cl. 9', 'el - e teppo; -es teppo, los -es i teppo.', NULL, NULL, 'Español: nivel', 'import-espanol-bubi'),
  ('be''', 'v.', NULL, NULL, NULL, 'pres. los albañiles nive lan el suelo i mísinna i lá be''ianna o bobba; paso punto el jefe niveló los sueldos o mmása a be''iaam a apeám.', 'pres. | paso punto el jefe niveló los sueldos o mmása a be''iaam a apeám.', NULL, 'Español: nivelar', 'import-espanol-bubi'),
  ('neg', 'adv.', NULL, NULL, NULL, 'neg. (a) é''e; ¿duermes? ¡no! o lokki? é''e! (b) tyi, ta; la mujer - está o waísso a tyí ho, los trabajadores - están a balakoláko ba tyí ho, puedo hablar ahora n ta pá''e o tó''ólla nkuáao.', 'la mujer - está o waísso a tyí ho, los trabajadores - están a balakoláko ba tyí ho, puedo hablar ahora n ta pá''e o tó''ólla nkuáao.', NULL, 'Español: no', 'import-espanol-bubi'),
  ('bOitta', 's.', 'm.', NULL, 'Cl. 1', 'el - o boitta; -s baitta, los -s a baitta.', NULL, NULL, 'Español: noble', 'import-espanol-bubi'),
  ('nonowé', 's.', 'm.', NULL, 'Cl. 9', 'el - e nonowé; -s nonowé, los -s i nonowé.', NULL, NULL, 'Español: nómada', 'import-espanol-bubi'),
  ('usólla', 'v.', NULL, NULL, NULL, 'pres. el salvador nom bra a los invitados o obulabatyo a la usólIa a baihóra; paso punto el maestro nombró a todos los alumnos o bue''iáa a usóri a bakuerakueráa ba mmaa.', 'paso punto el maestro nombró a todos los alumnos o bue''iáa a usóri a bakuerakueráa ba mmaa.', NULL, 'Español: nombrar', 'import-espanol-bubi'),
  ('ílIa', 's.', 'm.', NULL, 'Cl. 5', 'el - e íIIa, e reetyo; -s bílla, beetyo, los -s a bílla, a beetyo. * ¿cuál es tu -? ká ri he e ílla o? nono, ad). numo ra''a la tyá, háa bulé ká bó.', NULL, NULL, 'Español: nombre', 'import-espanol-bubi');

-- Lote 13 (entradas 1501 a 1525)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('be''ia', 'v.', NULL, NULL, NULL, 'preso todos normalizamos las cosas tue ammaa to la sotya e bilabba.', 'preso todos normalizamos las cosas tue ammaa to la sotya e bilabba.', NULL, 'Español: normalizar', 'import-espanol-bubi'),
  ('opuá', 'adv.', NULL, NULL, NULL, 'opuá. * voy al - n la hella opuá. nos, prono to; tue; - vamos to la tyílIáa, to la tyílIo, to e tyille. nosotros, prono túe, to, tue. E). expr. - queremos comer to la na''a o rá - no quere mos comer to tyí a na''a o rá.', 'tue;', NULL, 'Español: norte', 'import-espanol-bubi'),
  ('bohue', 's.', 'm.', NULL, 'Cl. 3', '10, el - o bohuelo; -s behuelo, los -s e behuel0.', NULL, NULL, 'Español: noticiario', 'import-espanol-bubi'),
  ('bolJá', 'v.', NULL, NULL, NULL, 'preso el alcalde notifica a todos los hombres del pueblo o bOtúkku a la bOIIá a baie ba mmaa ba e eriia wela; paso punto mi padre me notificó el asunto o bOie ro a le bori e elabba.', 'preso el alcalde notifica a todos los hombres del pueblo o bOtúkku a la bOIIá a baie ba mmaa ba e eriia wela;', NULL, 'Español: notificar', 'import-espanol-bubi'),
  ('bosabóatta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOsabóat ta; -s bosaOOatta, los -s a basaOOatta. novecientos, ad). numo háa rilé ká buera, batyíJla bato la bale. noventa, ad). numo batyílIa bale ketto pa la 00, háa bó ká i tyílla.', NULL, NULL, 'Español: novelero', 'import-espanol-bubi'),
  ('bisidisiddi', 's.', 'm.', NULL, NULL, 'el mes de o buéá buá bisidi, los meses de - e biéá biá bi sidi.', NULL, NULL, 'Español: noviembre', 'import-espanol-bubi'),
  ('sipókkó', 's.', 'm.', NULL, 'Cl. 12', 'el - e sipókkó; -s topókkó, los -s o topókkó.', NULL, NULL, 'Español: novillo', 'import-espanol-bubi'),
  ('bona''ie', 's.', 'm.', NULL, 'Cl. 1', 'el - o bona''ie; -s bana''ie, los -s a bana''ie.', NULL, NULL, 'Español: novio', 'import-espanol-bubi'),
  ('mmábba', 'v.', NULL, NULL, NULL, 'paso punto el día está nublado o bokó bo rnrnábbi.', 'paso punto el día está nublado o bokó bo rnrnábbi.', NULL, 'Español: nublar', 'import-espanol-bubi'),
  ('ehúto', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehú to, e iIIóo; -s bihúto, biillóo, los -s e bihúto, e biillóo.', NULL, NULL, 'Español: nudo', 'import-espanol-bubi'),
  ('áó', 'adj.', NULL, NULL, NULL, 'esta persona es - oló biityo kó áó.', 'esta persona es - oló biityo kó áó.', NULL, 'Español: nuestro', 'import-espanol-bubi'),
  ('bohe', 'adj.', NULL, NULL, NULL, 'bohe (els. 1 y 3: una persona - botyo boM, boatta bobe), riM (el. 5: un machete - isa ké TiM), ehe (el. 7: pueblo - eriia ehe), M (el. 9: nivel - teppo be), 10M (el. 1 1 : vestido - 1uua 10M), sibe (el. 12: camisa - sótte sibe); -s baM (els. 2 y 6: unas personas -s batyo baM, basaké babe), behe (el. 4: unas historias -s beatta bebe), bibe (el. 8: pueblos -s biriia bihe), M (euo: niveles -s tepp...', NULL, NULL, 'Español: nueva', 'import-espanol-bubi'),
  ('atyí', 'adv.', NULL, NULL, NULL, 'ketto nellá. * canta - bellá ketto nellá, bellá atyí.', NULL, NULL, 'Español: nuevamente', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'biele keto pa la bulé, ra''a la betá.', NULL, NULL, 'Español: nueve', 'import-espanol-bubi'),
  ('katto', 's.', 'm.', NULL, 'Cl. 9', 'el - e katto; -s katto , los -s i katto.', NULL, NULL, 'Español: número', 'import-espanol-bubi'),
  ('tyornrnaa', 'adv.', NULL, NULL, NULL, '-jamás tyornrna tyornmaa. * no digas - jamás we palle ná tyomma tyorn maa.', NULL, NULL, 'Español: nunca', 'import-espanol-bubi'),
  ('bópáa', 'v.', NULL, NULL, NULL, 'pres. el ratón nutre a los ratoncitos o obitya bii lá réya o tobitya.', 'pres.', NULL, 'Español: nutrir', 'import-espanol-bubi'),
  ('lollo', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o 10110; -es to, los -es i too', NULL, NULL, 'Español: ñamal', 'import-espanol-bubi'),
  ('ello', 's.', 'm.', NULL, 'Cl. 7', 'el - e ello; -s billo, los -s e billo. * - amarillo eussí, kussí, el- amarillo e eussí, e kus sí; -s amarillos biussí, kussí (el. lO), los -s amarillos e biussí, i kussí. * - dulce isoppó, el- dulce e isoppó; -s dulces basoppó, los -s dulces a basoppó. * - aéreo ito''a, el- aéreo e ito''a; -s aéreos bato''a, los-s aéreos a bato''a.', NULL, NULL, 'Español: ñame', 'import-espanol-bubi'),
  ('elo''o', 'adj.', NULL, NULL, 'Cl. 7', 'ra''o, la - e elo''o, e ra''o; -s bilo''o, ba''o, las -s e bilo''o, a ba''o.', NULL, NULL, 'Español: ñoña', 'import-espanol-bubi'),
  ('elo''o', 'adj.', NULL, NULL, 'Cl. 7', 'el - e elo''o; -s bilo''o, los -s e bilo''o.', NULL, NULL, 'Español: ñoño', 'import-espanol-bubi'),
  ('Oálla', 'v.', NULL, NULL, NULL, 'pres. yo te obedezco o la o oálla, este niño no me obedece 010 bollá a tyí''a la oálla; paso duro si me hubiese obedecido hoy no sería pobre oá a''a le oári lello a té''a sá sibólló [oa á''a loári lello a té''a sa síbollól', NULL, NULL, 'Español: obedecer', 'import-espanol-bubi'),
  ('dioaebbia', 'v.', NULL, NULL, NULL, 'pres. el albañil siempre objeta algo e mísiooa e lá dinaebbia tyommaa; paso punto las mujeres objetaron porque no esta ban de acuerdo a baísso ba dinaebiia kóri ba tyí''a ebbiia.', 'paso punto las mujeres objetaron porque no esta ban de acuerdo a baísso ba dinaebiia kóri ba tyí''a ebbiia.', NULL, 'Español: objetar', 'import-espanol-bubi'),
  ('eollé', 's.', 'm.', NULL, 'Cl. 7', '- que enco ge ribokká, el - e eollé; -s biollé, los -s e biollé.', NULL, NULL, 'Español: objeto', 'import-espanol-bubi'),
  ('fósibbia', 'v.', NULL, NULL, NULL, 'preso la lluvia obliga a la gente a quedarse en casa o lóllá 16 lá fósibbia a ba tyo o tyiálla o tyóbbo; imp. neg. no me obligues we le fó sibbie.', 'preso la lluvia obliga a la gente a quedarse en casa o lóllá 16 lá fósibbia a ba tyo o tyiálla o tyóbbo;', NULL, 'Español: obligar', 'import-espanol-bubi');

-- Lote 14 (entradas 1526 a 1550)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('elako', 's.', 'f.', NULL, 'Cl. 7', 'la - e elako, e mpo; -s bilako, mpo, las -s e bilako, i mpo.', NULL, NULL, 'Español: obra', 'import-espanol-bubi'),
  ('bókobia', 'v.', NULL, NULL, NULL, 'o báa; preso el dine ro obra en poder del vigilante i tyokko i lé o k6ttó 6 b610tta.', 'preso el dine ro obra en poder del vigilante i tyokko i lé o k6ttó 6 b610tta.', 'báa', 'Español: obrar', 'import-espanol-bubi'),
  ('bolakoláko', 's.', 'm.', NULL, 'Cl. 1', 'el - 6 b6lakoláko, e epippí; -s balako láko, ipippí, los -s a balakoláko, e ipippí.', NULL, NULL, 'Español: obrero', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 4', '(els. 1 y 3), el- o opelle; -s epelle, apelle, los -s e epelle, a apelle.', NULL, NULL, 'Español: obsceno', 'import-espanol-bubi'),
  ('ityuheri', 's.', 'm.', NULL, 'Cl. 7', 'etyueri, el - e ityuMri, e ityuho; -s ba tyuheri, batyuho, bityueri, los -s a batyuheri, a batyuhó.', NULL, NULL, 'Español: obsequio', 'import-espanol-bubi'),
  ('ekkáa', 'v.', NULL, NULL, NULL, 'preso yo observo cómo trabajas o la ekkáa alo 6 la bók6bbia lá, tú observas las estrellas o la ekkáa i tyetyewallé, ella observa el mar a la ekkáa e elo''á. 2. - para alguien o ekella.', 'preso yo observo cómo trabajas o la ekkáa alo 6 la bók6bbia lá, tú observas las estrellas o la ekkáa i tyetyewallé, ella observa el mar a la ekkáa e elo''á.', NULL, 'Español: observar', 'import-espanol-bubi'),
  ('olólló', 'adj.', NULL, NULL, NULL, 'olólló (el. 7: un objeto - ollé olól ló [olle ólolló J); -s biolólló (el. 8: unos objetos -s biollé biolólló [biolle biólolló D.', NULL, NULL, 'Español: obsoleto', 'import-espanol-bubi'),
  ('esibbí', 's.', 'm.', NULL, 'Cl. 7', 'el e esibbí, e epalló; -s bisibbí, ipalló, los -s e bisibbí, e ipalló.', NULL, NULL, 'Español: obstáculo', 'import-espanol-bubi'),
  ('elo''á', 's.', 'm.', NULL, 'Cl. 7', 'el- e elo''á; -s bilo''á, los -s e bilo''á.', NULL, NULL, 'Español: océano', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo batyí1la bale.', NULL, NULL, 'Español: ochenta', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo bale ketto pa (els. 2 y 6: - perso nas batyo be bale ketto pa, - camas baatyé be bale ketto pa), biele ketto pa (els. 4 y 8: - histo rias beatta bié biele ketto pa, - poblados biriia bié bile ketto pa), nne ketto pa (el. 10: - sardi nas kollo ié nne ketto pa [kollo yé nne ketto paJ), tuele ketto pa (el. 13: - camisas tótte tué tuele ketto pa).', NULL, NULL, 'Español: ocho', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo háa appa ká buerá.', NULL, NULL, 'Español: ochocientos', 'import-espanol-bubi'),
  ('IOhebbó', 's.', 'm.', NULL, NULL, '(el. 1 1), el- o lohebbó.', NULL, NULL, 'Español: ocio', 'import-espanol-bubi'),
  ('bulabulla', 's.', 'm.', NULL, 'Cl. 3', 'el mes de - o buéá bo a bulabulla, los meses de - e biéá bi a bulabulla.', NULL, NULL, 'Español: octubre', 'import-espanol-bubi'),
  ('héttáa', 'v.', NULL, NULL, NULL, 'preso ocurre algo ha lá héttáa ollé, no ocurre nada ha tyá héttáa ollé; paso punto ocu rrió una maravilla ha hétyíi kelle.', 'preso ocurre algo ha lá héttáa ollé, no ocurre nada ha tyá héttáa ollé;', NULL, 'Español: ocurrir', 'import-espanol-bubi'),
  ('kooa', 'v.', NULL, NULL, NULL, '', 'preso yo odio n la kooa.', NULL, 'Español: odiar', 'import-espanol-bubi'),
  ('ribolló', 's.', 'm.', NULL, 'Cl. 5', 'bokoa (Cl. 3), el - e ribolló, o buehe, o bokoa; -s abolló (Cl. 6), beehe, bekoa, los -s a abolló, e beehe, e bekoa.', NULL, 'buehe, bokoa', 'Español: odio', 'import-espanol-bubi'),
  ('oríe', 'adv.', NULL, NULL, NULL, 'oríe. * en el - se pone el Sol oríe ká ho rí lá lokka há e itohí.', NULL, NULL, 'Español: oeste', 'import-espanol-bubi'),
  ('elako', 's.', 'm.', NULL, 'Cl. 7', 'el - e elako; -s bilako, los -s e bilako.', NULL, NULL, 'Español: oficio', 'import-espanol-bubi'),
  ('páa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: ofrecer', 'import-espanol-bubi'),
  ('enokoookko', 's.', 'm.', NULL, 'Cl. 7', 'el- e eookonokko [eenokonokko); -s biookoookko, los -s e binokonokko.', NULL, NULL, 'Español: ogro', 'import-espanol-bubi'),
  ('lotóo', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1), el- o 10tM; -s batóo, los -s a batóo. ¡oiga! int. bóbeé!', NULL, NULL, 'Español: oído', 'import-espanol-bubi'),
  ('nokkó', 's.', 'm.', NULL, 'Cl. 9', 'el- e nokkó; -s ookkó, los -s i nokkó.', NULL, NULL, 'Español: ojo', 'import-espanol-bubi'),
  ('biitá', 's.', 'm.', NULL, 'Cl. 6', 'el- a biitá; -s biitá, los -s a biitá.', NULL, NULL, 'Español: óleo', 'import-espanol-bubi'),
  ('hMmua', 'v.', NULL, NULL, NULL, 'preso las calles de la ciudad huelen e beokóo bi e ripottó be lá hMmua, tú hueles o la hMmua, él huele a la hMmua, etc.; paso punto la carne olió mucho o boIÍlmua bO hMmui sóté, los cadáveres olieron e birutta bi hMmui, tú olías bien o hakessi, etc.', 'preso las calles de la ciudad huelen e beokóo bi e ripottó be lá hMmua, tú hueles o la hMmua, él huele a la hMmua, etc. | paso punto la carne olió mucho o boIÍlmua bO hMmui sóté, los cadáveres olieron e birutta bi hMmui, tú olías bien o hakessi, etc.', NULL, 'Español: oler', 'import-espanol-bubi');

-- Lote 15 (entradas 1551 a 1575)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('hMmuatella', 'v.', NULL, NULL, NULL, 'preso el perro olfa tea mi llaga e puá e lá hMmuatella e peké m; paso punto yo olfa teé la carne n hMmuateri o boIÍlmua.', 'preso el perro olfa tea mi llaga e puá e lá hMmuatella e peké m;', NULL, 'Español: olfatear', 'import-espanol-bubi'),
  ('bompo', 's.', 'm.', NULL, 'Cl. 3', 'el- o bompo; -s bem po, los -s e bempo.', NULL, NULL, 'Español: olfato', 'import-espanol-bubi'),
  ('etéro', 's.', NULL, NULL, 'Cl. 7', 'la - e etém [eetéérh); -s bitérh, las -s e bitérh.', NULL, NULL, 'Español: olla', 'import-espanol-bubi'),
  ('bobbó', 's.', 'm.', NULL, 'Cl. 3', 'el- o bobbó; -es beobbó, los -es e beobbó. * el - 00 se puede soportar o bobbó bo tá pa''e o biálla ó.', NULL, NULL, 'Español: olor', 'import-espanol-bubi'),
  ('lebálla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: olvidar', 'import-espanol-bubi'),
  ('elebári', 's.', 'm.', NULL, 'Cl. 7', 'el - e elebári, e eótári [eeótári); -s bilebári, biótári, los -s e bilebári, e biótári.', NULL, NULL, 'Español: olvido', 'import-espanol-bubi'),
  ('tyekkú', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyekkú; -s tyekkú, los -s i tyekkú.', NULL, NULL, 'Español: ombligo', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo bó la bulé (els. 2 y 1; 4 Y 3), bó la rié (els. 6 y 5), bió la nné (els. 8 y 7), oó la lulé (Cls. 10 Y 1 1), nó la té (els. 10 Y 4), tó la silé (els. 13 y 12).', NULL, NULL, 'Español: once', 'import-espanol-bubi'),
  ('tatáa', 'v.', NULL, NULL, NULL, 'preso el médico opera a la persona e rokútta a la tatáa o botyo; paso punf. el médico chino operó a mi madre e rokútta ri o tonokkó ri tatyíi o obé ríi m [e rokuttá ró tónokkó ri tátJó oberíím).', 'preso el médico opera a la persona e rokútta a la tatáa o botyo;', NULL, 'Español: operar', 'import-espanol-bubi'),
  ('bitta', 'v.', NULL, NULL, NULL, 'preso el presidente oprime a la gente o botákityé a la bityobaera a batyo, tú oprimes a tus obreros o la bityobae ra a balakóláko ó, él oprime a la bityobaera, etc.; paso punto el dignatario oprimió a todos o boitta a bityobae riia a batyo ba mmaa, tú oprimiste o bityobaeriia, él oprimió a bityobaeriia, etc.;', 'preso el presidente oprime a la gente o botákityé a la bityobaera a batyo, tú oprimes a tus obreros o la bityobae ra a balakóláko ó, él oprime a la bityobaera, etc. | paso punto el dignatario oprimió a todos o boitta a bityobae riia a batyo ba mmaa, tú oprimiste o bityobaeriia, él oprimió a bityobaeriia, etc.', NULL, 'Español: oprimir', 'import-espanol-bubi'),
  ('po''a', 's.', 'm.', NULL, 'Cl. 9', 'el- e po''a; oran gutanes po''a, los orangutanes i po''a.', 'oran gutanes po''a, los orangutanes i po''a.', NULL, 'Español: orangután', 'import-espanol-bubi'),
  ('étta', 'v.', NULL, NULL, NULL, 'paso punto todos los malvados oraron ante el hijo de Dios a basa lábbe ba mmaa ba étyi e Elalló.', 'paso punto todos los malvados oraron ante el hijo de Dios a basa lábbe ba mmaa ba étyi e Elalló.', NULL, 'Español: orar', 'import-espanol-bubi'),
  ('róhiáa', 's.', 'm.', NULL, 'Cl. 5', 'el e róhiáa, e tyonnó; -s bóhiáa, tyonnó, los -s a bóhiáa, i tyonnó.', NULL, NULL, 'Español: oratorio', 'import-espanol-bubi'),
  ('eette', 's.', 'f.', NULL, 'Cl. 7', 'la - e eette; órde nes biette, las órdenes e biette.', 'órde nes biette, las órdenes e biette.', NULL, 'Español: orden', 'import-espanol-bubi'),
  ('bolekkia', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOlek kia; -es balekkia, los -es a balekkia.', NULL, NULL, 'Español: organizador', 'import-espanol-bubi'),
  ('lekkia', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: organizar', 'import-espanol-bubi'),
  ('eubé', 's.', 'm.', NULL, 'Cl. 7', 'el- e eubé; -s biubé, los -s e biubé.', NULL, NULL, 'Español: órgano', 'import-espanol-bubi'),
  ('ityokkó', 's.', 'm.', NULL, 'Cl. 5', 'el - e ityokkó; -s batyokkó, los -s a hatyokkó.', NULL, NULL, 'Español: orgullo', 'import-espanol-bubi'),
  ('huella', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: orientar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'el - o bohuella; -es bahuella, los -es a bahuella.', NULL, NULL, 'Español: orientador', 'import-espanol-bubi'),
  ('ripúríi', 's.', 'm.', NULL, 'Cl. 5', 'el - e ripúríi;·e ribobbo; orígenes apúríi, abob bo, los orígenes a apúríi, a abobbo.', 'orígenes apúríi, abob bo, los orígenes a apúríi, a abobbo.', NULL, 'Español: origen', 'import-espanol-bubi'),
  ('tokká', 'v.', NULL, NULL, NULL, 'pres. los extranjeros ori ginan follones a baríbáa ba lá tokká beláa; paso punto he originado un problema n tokkí boláa.', 'paso punto he originado un problema n tokkí boláa.', NULL, 'Español: originar', 'import-espanol-bubi'),
  ('bahNneri', 's.', 'f.', NULL, 'Cl. 6', 'la - a bahNneri.', NULL, NULL, 'Español: orina', 'import-espanol-bubi'),
  ('epó', 's.', 'm.', NULL, 'Cl. 7', 'el- e epó, e sitúllu; -es ipó, totúllu, los -es e ipó, o totúllu.', NULL, 'totúllu', 'Español: orinal', 'import-espanol-bubi'),
  ('hNnera', 'v.', NULL, NULL, NULL, '* quiero - n lo''á bahNneri, n la na''á o b NneTÓ.', NULL, NULL, 'Español: orinar', 'import-espanol-bubi');

-- Lote 16 (entradas 1576 a 1600)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('opúríi', 's.', 'm.', NULL, 'Cl. 1', 'el- o opúríi; -s apú ríi, los -s a apúríi.', NULL, NULL, 'Español: oriundo', 'import-espanol-bubi'),
  ('pippa', 'v.', NULL, NULL, NULL, 'preso el alguacil ornamenta el ayuntamiento e eporosía e lá pip pa e tyóbbo á e eriia; paso punto las personas ornamentaron la entrada del pueblo con ramas y flores a batyo ba pippi o bolakka bo e eriia la beasso la bihN tyátya.', 'preso el alguacil ornamenta el ayuntamiento e eporosía e lá pip pa e tyóbbo á e eriia;', NULL, 'Español: ornamentar', 'import-espanol-bubi'),
  ('lopippo', 's.', 'm.', NULL, NULL, '(el. 1 1), el- o lopip po; -s pippo (el. lO), los -s i pippo.', NULL, NULL, 'Español: ornamento', 'import-espanol-bubi'),
  ('bOlollo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bolollo; -s belollo, los -s e belollo.', NULL, NULL, 'Español: oro', 'import-espanol-bubi'),
  ('buenna', 's.', 'm.', NULL, 'Cl. 3', 'el - o buenna; -s bienna, los -s e bienna.', NULL, NULL, 'Español: orzuelo', 'import-espanol-bubi'),
  ('buelá', 'adj.', NULL, NULL, NULL, 'buelá (els. 1 y 3: - persona botyo bue lá, otra nariz bompo buelá), relá (el. 5: - libro ribúkku relá), elá (el. 7: - poblado erüa elá), bielá (el. 8: -s poblados biriia bielá), nelá (els. 9 y 10: -s mesas te''o nelá), luelá (el. 1 1: - vestido luua luelá), selá (el. 12: - camisa sótte selá), tuelá (el. 13: -s camisas totte tue lá), etc.', NULL, NULL, 'Español: otra', 'import-espanol-bubi'),
  ('topiánna', 's.', 'm.', NULL, 'Cl. 9', 'el - e topiánna; -s topiánna, los -s i topiánna.', NULL, NULL, 'Español: ovario', 'import-espanol-bubi'),
  ('bOátyera', 's.', 'm.', NULL, 'Cl. 1', 'el - o boátyera; -s bOátyera, los -s a bOátyera.', NULL, NULL, 'Español: oyente', 'import-espanol-bubi'),
  ('lollá', 'v.', NULL, NULL, NULL, 'pres. las cabras pacen i póríi i lá lollá; paso punto las ovejas pacieron i tyoru i lorí; paso duro los bueyes pacían i pókkó i lolessi.', 'pres. | paso punto las ovejas pacieron i tyoru i lorí;', NULL, 'Español: pacer', 'import-espanol-bubi'),
  ('buatébisapá', 's.', 'm.', NULL, 'Cl. 1', 'el- o bua tébisapá; -es batébisapá, los -es a batébi sapá.', NULL, NULL, 'Español: pacificador', 'import-espanol-bubi'),
  ('ehattá', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehattá; -s bihattá, los -s e bihattá.', NULL, NULL, 'Español: pacto', 'import-espanol-bubi'),
  ('bOie', 's.', 'm.', NULL, 'Cl. 1', '(sacerdote) pateri, el - o boie, e ntá, e pateri; -s baie, bé ntá, pateri, los -s a baie, a bé ntá, i pateri.', NULL, NULL, 'Español: padre', 'import-espanol-bubi'),
  ('tyé', 's.', 'm.', NULL, 'Cl. 9', 'etúllá, el - e tyé, e eriia, e etúllá; -es tyé, biriia, bitúllá, los -es i tyé, e biriia, e bitúlla.', NULL, NULL, 'Español: país', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, NULL, 'mi me ayuda hoy o bOtyo ériarÍl a la le hepubbia lelló.', 'mi me ayuda hoy o bOtyo ériarÍl a la le hepubbia lelló.', NULL, 'Español: paisano', 'import-espanol-bubi'),
  ('sinorí', 's.', 'm.', NULL, 'Cl. 12', 'el- e sinorí; -s tono rí, los -s o tonorí. * - carpintero ripi''e, el - carpintero e ripi''e; -s carpinteros api''e, los -s carpinteros a api''e. * - mos ca siloppo, el - mosca e siloppo; -s mosca tOloppo, los -s mosca o toloppo. * - grande elorí, el- grande e elorí; -s grandes bilorí, los -s grandes e bilorí.', NULL, NULL, 'Español: pájaro', 'import-espanol-bubi'),
  ('rihattá', 's.', 'm.', NULL, 'Cl. 5', 'el - e rihattá; -s bahattá, los -s a bahattá.', NULL, NULL, 'Español: palacio', 'import-espanol-bubi'),
  ('eapaolla', 's.', 'm.', NULL, 'Cl. 7', 'el - e eapaolla; -es biapaolla, los -es e bia paolla.', NULL, NULL, 'Español: paladar', 'import-espanol-bubi'),
  ('bOtyo', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOtyo a o bessé; -s batyo bá o bessé, los -s a batyo bá o bessé.', NULL, NULL, 'Español: paleto', 'import-espanol-bubi'),
  ('buuko', 's.', 'm.', NULL, 'Cl. 3', 'el - o buuko; -s biuko, los -s e biuko.', NULL, NULL, 'Español: palillo', 'import-espanol-bubi'),
  ('buá', 'v.', NULL, NULL, NULL, 'paso punto el ancia no palmó porque ya era muy viejo e obeolla é buéi kóri na é''a Olólló.', 'paso punto el ancia no palmó porque ya era muy viejo e obeolla é buéi kóri na é''a Olólló.', NULL, 'Español: palmar', 'import-espanol-bubi'),
  ('bOabílla', 's.', 'm.', NULL, 'Cl. 3', 'el - o boabílla; -es beabílla, los -es e beabílla.', NULL, NULL, 'Español: palmeral', 'import-espanol-bubi'),
  ('Mtté', 's.', 'm.', NULL, 'Cl. 3', 'el - o Mtté; -s barté, los -s a batté. * - rojo bOkappí (el. 3/6), el rojo o bokappí; -s rojos bekappí, bakappí, los -s rojos e bekappí, a bakappí. * - para cavar loette, el - para cavar o loette; -s para cavar ketté, -los -s para cavar i ket té. * - para moler bOto''o, el- para moler o bOto''o; -s para moler beto''o, los -s para moler e beto''o. * - para apuntalar ripa''o, el - para apuntalar e rip...', NULL, NULL, 'Español: palo', 'import-espanol-bubi'),
  ('bi''ó', 's.', 'm.', NULL, NULL, '(Cl. 6), el - a bi''ó; -s bi''ó (Cl. 6), los -s a bi''ó.', NULL, NULL, 'Español: paludismo', 'import-espanol-bubi'),
  ('borannó', 's.', 'm.', NULL, 'Cl. 1', 'obátta, el- o borannó, o Mtonka, o obát ta; -s barannó, batonka, abátta, los -s a barannó, a batonka, a abátta.', NULL, 'obát', 'Español: pamue', 'import-espanol-bubi'),
  ('isoppo', 's.', 'm.', NULL, 'Cl. 5', 'el - e isoppo; -es basoppo, los -es a basoppo.', NULL, NULL, 'Español: pan', 'import-espanol-bubi');

-- Lote 17 (entradas 1601 a 1625)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('elakka', 's.', 'm.', NULL, 'Cl. 7', 'el- e elakka [eelakka); -es bilakka, los -es e bilakka. panda, s''¡: rittáa, rokkí, wallá, la - e rittáa, e rokkí, o wallá; -s bittáa, bokkí, biallá, las -s a bittáa, a bok kí, e biallá.', NULL, 'wallá', 'Español: panal', 'import-espanol-bubi'),
  ('sisoppo', 's.', 'm.', NULL, 'Cl. 12', 'el - e sisoppo; -s tosoppo, los -s o tosoppo.', NULL, NULL, 'Español: panecillo', 'import-espanol-bubi'),
  ('kallá', 's.', 'm.', NULL, 'Cl. 9', 'el- e kallá; pango lines kallá, los pangolines i kallá.', 'pango lines kallá, los pangolines i kallá.', NULL, 'Español: pangolín', 'import-espanol-bubi'),
  ('esára', 's.', 'm.', NULL, 'Cl. 7', 'el- e esá ra [eesára), e esáríi [eesáríi); -s bisára, bisáríi, los -s e bisára, e bisáríi.', NULL, NULL, 'Español: pánico', 'import-espanol-bubi'),
  ('torosíssi', 's.', 'm.', NULL, 'Cl. 9', 'el - e torosíssi; pantalones torosíssi, los pantalones i torosissi. pariente I 491', 'pantalones torosíssi, los pantalones i torosissi.', NULL, 'Español: pantalón', 'import-espanol-bubi'),
  ('eribba', 's.', 'm.', NULL, 'Cl. 7', 'el - e eribba, e e5koríbba;-s biribba, biokOríbba, los -s e birib ba, e biokoríbba.', NULL, NULL, 'Español: pantano', 'import-espanol-bubi'),
  ('pisíssi', 's.', 'm.', NULL, 'Cl. 9', 'el - pisíssi; -s pisíssi, los -s i pisíssi. * - grande elappá, el - grande e elappá; -s grandes bilappá, los -s grandes e bilappá.', NULL, NULL, 'Español: paño', 'import-espanol-bubi'),
  ('ankítya', 's.', 'm.', NULL, 'Cl. 7', 'el - e ankítya; -s biankítya, los -s e biankítya.', NULL, NULL, 'Español: pañuelo', 'import-espanol-bubi'),
  ('ntá', 's.', 'm.', NULL, 'Cl. 1', 'mi - e ntá ro, o boiero tu - es alto e ntá o botobótto; mis -s a baiero.', 'mis -s a baiero.', 'boiero', 'Español: papá', 'import-espanol-bubi'),
  ('koo', 's.', 'm.', NULL, 'Cl. 9', 'el - e koo; -s kM (el. lO), los -s i kM.', NULL, NULL, 'Español: papagayo', 'import-espanol-bubi'),
  ('sinta', 's.', 'm.', NULL, 'Cl. 12', '(el. (2), sipéppa, sibúkku (C!. (2), el- e sinta, e sipéppa, e sibúkku; -es ton ta, topéppa, tobúkku, los - e s o tOnta, o topéppa, o tobúkku. * - grande entan ta, el - grande e entanta; -es grandes bintanta, los -es grandes e bintanta.', NULL, 'topéppa, tobúkku', 'Español: papel', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'el- e rihúo; -s bahúo, los -s a bahúo.', NULL, NULL, 'Español: paquete', 'import-espanol-bubi'),
  ('esa''o', 's.', 'm.', NULL, 'Cl. 7', 'el- e esa''o; parabienes bisa''o, los parabienes e bisa''o.', 'parabienes bisa''o, los parabienes e bisa''o.', NULL, 'Español: parabién', 'import-espanol-bubi'),
  ('lobetté', 's.', 'm.', 'pl.', 'Cl. 11', 'el- o lobetté; ( pI.) betté (el. lO), los - i betté.', NULL, NULL, 'Español: paraguas', 'import-espanol-bubi'),
  ('lobetté', 's.', 'm.', NULL, NULL, '(el. (1), el- o lobetté; -es betté (el. lO), los -es i betté.', NULL, NULL, 'Español: parasol', 'import-espanol-bubi'),
  ('etyíétyíé', 's.', 'm.', NULL, 'Cl. 7', 'el- e etyíétyíé; -s bityíétyíé, los -s e bityíétyíé.', NULL, NULL, 'Español: parche', 'import-espanol-bubi'),
  ('tohám', 'adj.', NULL, NULL, 'Cl. 13', 'el - o tOhám; -s tohám, los -s o tohám.', NULL, NULL, 'Español: parecido', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'el - o botyo; -s batyo, los -s a batyo. * mi - o bOtyo ro, tu - o botyo o, nuestro - o bOtyo áó. 492 / parir', NULL, NULL, 'Español: pariente', 'import-espanol-bubi'),
  ('bella', 'v.', NULL, NULL, NULL, 'pres. la mujer pare o waísso a la bella; paso punto la mujer parió una cabrita o waísso a beri sipóríi. 2. con o belánna; preso las mujeres paren con fuer za a baísso ba lá belánna to''ú. 3. hacer - o bera; preso la abuela hace parir a la gata o bOnánna a la bera e sipóssi.', 'paso punto la mujer parió una cabrita o waísso a beri sipóríi. | preso las mujeres paren con fuer za a baísso ba lá belánna to''ú. | preso la abuela hace parir a la gata o bOnánna a la bera e sipóssi.', NULL, 'Español: parir', 'import-espanol-bubi'),
  ('pobba', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: parlamentar', 'import-espanol-bubi'),
  ('rihattá', 's.', 'm.', NULL, 'Cl. 5', '(el. 5/6), riitta, (conversación) opopoo, el - e rihattá, e riitta, o opopoo; -s bahattá, epopoo, los -s a bahattá, e epopoo.', NULL, 'opopoo', 'Español: parlamento', 'import-espanol-bubi'),
  ('to''óleri', 's.', 'm.', NULL, 'Cl. 9', 'el- e to''óleri; parlanchines to''óleri, los parlanchines i to''óleri.', 'parlanchines to''óleri, los parlanchines i to''óleri.', NULL, 'Español: parlanchín', 'import-espanol-bubi'),
  ('to''ólla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: parlar', 'import-espanol-bubi'),
  ('bokibakibba', 's.', 'm.', NULL, 'Cl. 3', 'el - o bokibakib ba; -s bekibakibba, los -s e bekibakibba.', NULL, NULL, 'Español: paro', 'import-espanol-bubi'),
  ('buruburu', 's.', 'm.', NULL, 'Cl. 9', 'el- e buruburu; -s buruburu, los -s i buruburu.', NULL, NULL, 'Español: párpado', 'import-espanol-bubi');

-- Lote 18 (entradas 1626 a 1650)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('kubbá', 's.', 'm.', NULL, 'Cl. 9', 'el - e kubbá; -s kub bá, los -s i kubbá.', NULL, NULL, 'Español: parque', 'import-espanol-bubi'),
  ('obera', 's.', 'm.', NULL, 'Cl. 1', 'el - o obera; -s abe ra, los -s a abera.', NULL, NULL, 'Español: partero', 'import-espanol-bubi'),
  ('tyílláa', 'v.', NULL, NULL, NULL, 'o epólla, o bettáa; preso ellos parten hacia el poblado ba lá tyíl1áa obessé, ellos parten el pan ba lá átta e isoppo, ellos parten la carne ba lá ¡:pólla e nabba, ellos parten las patas de las cabras ba lá bettáa a apollá ba i póríi. 2. -se o betéa; paso punto él se partió la pierna o 10pOllá lo áí lo betéi.', 'preso ellos parten hacia el poblado ba lá tyíl1áa obessé, ellos parten el pan ba lá átta e isoppo, ellos parten la carne ba lá ¡:pólla e nabba, ellos parten las patas de las cabras ba lá bettáa a apollá ba i póríi. | paso punto él se partió la pierna o 10pOllá lo áí lo betéi.', 'epólla, bettáa', 'Español: partir', 'import-espanol-bubi'),
  ('ribieri', 's.', 'm.', NULL, 'Cl. 5', 'loakke (el. 1 1), el - e ribieri, o loakke; -s abieri, beakke, los -s a abieri, e beakke.', NULL, 'loakke', 'Español: parto', 'import-espanol-bubi'),
  ('boía', 's.', 'm.', NULL, 'Cl. 1', 'el - o Mía; -s baía, los -s a baía.', NULL, NULL, 'Español: pasajero', 'import-espanol-bubi'),
  ('hettáa', 'v.', NULL, NULL, NULL, '2. - por o hetella;', NULL, NULL, 'Español: pasar', 'import-espanol-bubi'),
  ('opussu', 's.', 'm.', NULL, 'Cl. 3', 'el - o opussu; -s epussu, los -s e epussu.', NULL, NULL, 'Español: pasatiempo', 'import-espanol-bubi'),
  ('boetta', 's.', 'm.', NULL, 'Cl. 1', 'el o bOetta, o boetto; -s baetta, baetto, los -s a baetta, a baetto.', NULL, 'boetto', 'Español: paseante', 'import-espanol-bubi'),
  ('hokkáa', 'v.', NULL, NULL, NULL, '* voy a-n la hella o wákka.', NULL, NULL, 'Español: pasear', 'import-espanol-bubi'),
  ('wákka', 's.', 'm.', NULL, 'Cl. 3', 'el - o wákka; -s biák ka, los -s e biákka. * estoy de - n la o wákka.', NULL, NULL, 'Español: paseo', 'import-espanol-bubi'),
  ('atyálla', 'v.', NULL, NULL, NULL, 'paso punto estoy pasmado n la atyálla, ka atyáám.', 'paso punto estoy pasmado n la atyálla, ka atyáám.', NULL, 'Español: pasmar', 'import-espanol-bubi'),
  ('telle', 's.', 'm.', NULL, 'Cl. 9', 'el - e telle, e esorá; -s telle, bisorá, los -s i telle, e bisorá. * - largo oosorá, el largo o bosorá; -s largos besorá (eL 4), los -s lar gos e besorá. * - de cebra bue''oo, el- de cebra o bue''oo; -s de cebra bie''oo, los -s de cebra e bie''c:,o.', NULL, NULL, 'Español: paso', 'import-espanol-bubi'),
  ('el', 's.', 'm.', NULL, 'Cl. 7', 'el- e el olió;-s bilolló, los -s e bilolló.', NULL, NULL, 'Español: pasto', 'import-espanol-bubi'),
  ('epatto', 's.', 'm.', NULL, 'Cl. 7', '(cobertizo) kubbá, el - e epatto, e kubbá; -s ipatto, kubbá, los -s e ipatto, i kubbá.', NULL, NULL, 'Español: patio', 'import-espanol-bubi'),
  ('baetya', 's.', 'm.', NULL, 'Cl. 6', 'el- a baetya, los -s a baetya.', NULL, NULL, 'Español: patizambo', 'import-espanol-bubi'),
  ('epotyopotyo', 's.', 'm.', NULL, 'Cl. 7', 'el - e epotyopotyo, e etorotoro; -s ipotyopotyo, bitorotoro, los -s e ipotyopotyo, e bitorotoro.', NULL, NULL, 'Español: pato', 'import-espanol-bubi'),
  ('tyé', 's.', 'f.', NULL, 'Cl. 9', 'la - e tyé; -s tyé (el. lO), las -s i tyé.', NULL, NULL, 'Español: patria', 'import-espanol-bubi'),
  ('ka''ó', 's.', 'm.', NULL, 'Cl. 9', 'el - e ka''ó; -s ka''ó, los -s i ka''ó.', NULL, NULL, 'Español: patrimonio', 'import-espanol-bubi'),
  ('rnrnása', 's.', 'm.', NULL, 'Cl. 1', 'el- o mmása; patro nes mmása, los patrones a rnrnása.', 'patro nes mmása, los patrones a rnrnása.', NULL, 'Español: patrón', 'import-espanol-bubi'),
  ('lohúa', 's.', 'f.', NULL, 'Cl. 11', 'la - o lohúa; -s húa (el. lO), las -s i húa.', NULL, NULL, 'Español: patrulla', 'import-espanol-bubi'),
  ('sibólló', 'adj.', NULL, NULL, 'Cl. 12', 'el- e sibólló; -s tobólló, los -s o tobólló.', NULL, NULL, 'Español: paupérrimo', 'import-espanol-bubi'),
  ('nalle', 's.', 'm.', NULL, 'Cl. 9', 'el - e nalle; -s nalle, los -s i nalle.', NULL, NULL, 'Español: pavimento', 'import-espanol-bubi'),
  ('etolótOló', 's.', 'm.', NULL, 'Cl. 7', 'el - e etOlótoló; -s bitOlótOló, los -s e bitOlótoló.', NULL, NULL, 'Español: pavo', 'import-espanol-bubi'),
  ('esára', 's.', 'm.', NULL, 'Cl. 7', 'el- e esá ra, e esáríi; -es bisára, bisárii, los -es e bisára, e bisárii.', NULL, NULL, 'Español: pavor', 'import-espanol-bubi'),
  ('mmetya', 's.', 'm.', NULL, 'Cl. 1', 'el o rnrnetya, o ometya; -s mmetya, ametya, los -s a mmetya, a ametya.', NULL, 'ometya', 'Español: payaso', 'import-espanol-bubi');

-- Lote 19 (entradas 1651 a 1675)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boi''o', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOi''o, o bonánna; -s bei''o, benánna, las -s e bei''o, e benánna.', NULL, 'bonánna', 'Español: peca', 'import-espanol-bubi'),
  ('eheká', 's.', 'm.', NULL, 'Cl. 7', 'el - e eheká; -s biheká, los -s e biheká.', NULL, NULL, 'Español: pedazo', 'import-espanol-bubi'),
  ('étta', 'v.', NULL, NULL, NULL, 'o tyúbiera,', 'o tyúbiera,;', NULL, 'Español: pedir', 'import-espanol-bubi'),
  ('buítya', 's.', 'm.', NULL, 'Cl. 3', 'el - o buitya; -s bítya, e bítya.', NULL, NULL, 'Español: pedo', 'import-espanol-bubi'),
  ('riatte', 's.', 'm.', NULL, 'Cl. 5', 'el - e riatte; -es baatte, los -es a baatte.', NULL, NULL, 'Español: pedregal', 'import-espanol-bubi'),
  ('ite', 's.', 'm.', NULL, 'Cl. 5', 'el - e ite; -s bate, los -s a bate.', NULL, NULL, 'Español: pedrusco', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'pres. tú pegas a alguien o la óppa bOtyo, no pegues a nadie we óppe botyo; paso punto tú pegaste a alguien o óppi botyo, tú no pegaste a nadie o ta óppi botyo; paso duro ella pegaba a ópessi, ella no pegaba ata ópessi. 2. - con o opálla; preso tú pegas con un cinturón o la opál la ebelette, tú no pegas con un cinturón o tyá la opálla ebelette, paso duro yo pegaba con un...', 'pres. | paso punto tú pegaste a alguien o óppi botyo, tú no pegaste a nadie o ta óppi botyo; | preso tú pegas con un cinturón o la opál la ebelette, tú no pegas con un cinturón o tyá la opálla ebelette, paso duro yo pegaba con un.', NULL, 'Español: pegar', 'import-espanol-bubi'),
  ('botyiori', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOtyiori; -s betyiori, los -s e betyiori.', NULL, NULL, 'Español: peinado', 'import-espanol-bubi'),
  ('etyiori', 's.', 'm.', NULL, 'Cl. 7', 'el - e etyiori, e kónna; -s bityiori, kónna, los -s e bityiori, i kónna. * - de largas púas epíópíó, el - de largas púas e epíópíó; -s de largas púas ipíópíó, los -s de largas púas e ipíÓpíÓ.', NULL, NULL, 'Español: peine', 'import-espanol-bubi'),
  ('itolla', 'v.', NULL, NULL, NULL, 'preso yo pelo el plátano n la itolla o bokobbe; paso punto tú pelaste el ñame o itori e ello;pas. duro ella pelaba la patata a ituessi e ito''a.', 'preso yo pelo el plátano n la itolla o bokobbe;', NULL, 'Español: pelar', 'import-espanol-bubi'),
  ('bOlakka', 's.', 'm.', NULL, 'Cl. 3', 'el - o bolakka; -s beIakka, los -s e belakka.', NULL, NULL, 'Español: peldaño', 'import-espanol-bubi'),
  ('botattá', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOtattá, e nanakóbbo; -s betattá (el. 4, nana kóbbo, los -s e betattá, i nanakóbbo.', NULL, NULL, 'Español: pellejo', 'import-espanol-bubi'),
  ('sibíkinnó', 's.', 'm.', NULL, 'Cl. 13', '(el. (2), el - e sibíkinnó; -s tobíkinnó, los -s o tobíkinnó.', NULL, NULL, 'Español: pellizco', 'import-espanol-bubi'),
  ('ekokopíppo', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekoko píppo; -s bikokopíppo, los -s e bikokopíppo.', NULL, NULL, 'Español: pelmazo', 'import-espanol-bubi'),
  ('loribáa', 's.', 'm.', NULL, 'Cl. 4', '(el. 1 1), el- o loribáa; -s beri báa, los -s e beribáa. * - blanco lotyánnó (el. ( 1), el- blanco o lotyánnó; -s blancos tyán nó, los -s blancos i tyánnó.', NULL, NULL, 'Español: pelo', 'import-espanol-bubi'),
  ('tyaróm', 's.', 'm.', NULL, 'Cl. 9', 't yélle, el- e tyaróm, o tokussubuélla, e tyélle; -es tyaróm, tokussubuélla, tyélle, los -es i tyaróm, o tokussubuélla, i tyélle.', NULL, 'tokussubuélla, tokussubuélla', 'Español: penal', 'import-espanol-bubi'),
  ('booppá', 's.', 'm.', NULL, 'Cl. 3', 'sipé pe, el- o booppá, e petepétte, e sipépe. -s beoppá, petepétte, topepe (C1. 13), los -s e beoppá, i petepétte, o topepe.', NULL, 'topepe', 'Español: pene', 'import-espanol-bubi'),
  ('tálla', 'v.', NULL, NULL, NULL, '', 'preso yo penetro n la tálla, tú penetras o la tálla, él penetra a la tálla.', NULL, 'Español: penetrar', 'import-espanol-bubi'),
  ('bOtapánna', 's.', 'm.', NULL, 'Cl. 1', 'el- o botapán na; -es batapánna, los -es a batapánna. perjudicar / 495', NULL, NULL, 'Español: pensador', 'import-espanol-bubi'),
  ('botapáeró', 's.', 'm.', NULL, 'Cl. 3', 'el- o bota páeró; -s betapáeró, los -s e betapáeró.', NULL, NULL, 'Español: pensamiento', 'import-espanol-bubi'),
  ('tapánna', 'v.', NULL, NULL, NULL, 'pas. duro yo pen saba n tapánesiia, tú pensabas o tapánesiia, él pensaba a tapánesiia, etc.', NULL, NULL, 'Español: pensar', 'import-espanol-bubi'),
  ('Oátyera', 'v.', NULL, NULL, NULL, 'o hMmuatella; preso yo percibo el ruido n la Oátyera e nokonokko, el perro percibe tu olor e puá e lá hMmuatella o bObbó ó.', 'o hMmuatella;', NULL, 'Español: percibir', 'import-espanol-bubi'),
  ('ribbiáa', 'v.', NULL, NULL, NULL, 'pres. mi tía pierde la pacien cia e enepó m a la ribbiáa o bOátyeri. 2. - peso o sikkáa;pres. el enfermo pierde peso o bOloari a la sikkáa; paso punto el enfermo perdió peso o bOloari a sikkí; paso duro el abuelo perdía peso con los años o bOyólla a sikessi la báa. 3. -se o ribbáa; nos perdemos con la noche to la ribbáa la o bOtyíó.', 'paso punto el enfermo perdió peso o bOloari a sikkí; | nos perdemos con la noche to la ribbáa la o bOtyíó.', NULL, 'Español: perder', 'import-espanol-bubi'),
  ('bOnná', 's.', 'm.', NULL, 'Cl. 3', 'el- o bonná; per digones benná, los perdigones e benná.', 'per digones benná, los perdigones e benná.', NULL, 'Español: perdigón', 'import-espanol-bubi'),
  ('etyieri', 's.', 'm.', NULL, 'Cl. 7', 'el e etyieri, o bOtyiáeri; perdones bityieri, betyiáeri, los perdones e bityieri, e betyiáeri.', 'perdones bityieri, betyiáeri, los perdones e bityieri, e betyiáeri.', 'b', 'Español: perdón', 'import-espanol-bubi');

-- Lote 20 (entradas 1676 a 1700)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tyiálella', 'v.', NULL, NULL, NULL, 'preso yo perdono n la tyiálella, yo perdono a mi hermano n la tyiálella o bobelle ID; paso punto yo perdoné n tyiáleri, tú perdonaste a mi herma no o tyiáleri o bObelle ID.', 'preso yo perdono n la tyiálella, yo perdono a mi hermano n la tyiálella o bobelle ID;', NULL, 'Español: perdonar', 'import-espanol-bubi'),
  ('oppa', 'v.', NULL, NULL, NULL, 'preso las cosas tradicio nales perduran e bilabba bi lá oppa; paso punto el dolor perduró e roppá ri oppi.', 'preso las cosas tradicio nales perduran e bilabba bi lá oppa;', NULL, 'Español: perdurar', 'import-espanol-bubi'),
  ('buá', 'v.', NULL, NULL, NULL, 'paso punto mucha gente pereció con la tempestad batyo bikébíke ba buéi la e pullá.', 'paso punto mucha gente pereció con la tempestad batyo bikébíke ba buéi la e pullá.', NULL, 'Español: perecer', 'import-espanol-bubi'),
  ('boríbáa', 's.', 'm.', NULL, 'Cl. 1', 'boetelló, el - o boríbáa, o bosalóetyi; -s baríbáa, basalóetyi, baetello, los -s a baribáa, a basalóetyi.', NULL, 'bosalóetyi', 'Español: peregrino', 'import-espanol-bubi'),
  ('eeppé', 's.', 'm.', NULL, 'Cl. 7', 'epette, el - e eeppé, e elo''ó, e epette; -s bieppé, bilo''o, ipette, los -s e bieppé, e bilo''ó, e ipette.', NULL, NULL, 'Español: perezoso', 'import-espanol-bubi'),
  ('butólla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: perforar', 'import-espanol-bubi'),
  ('hakkiáa', 'v.', NULL, NULL, NULL, 'preso la doncella perfuma su habitación o bulla a la hakkiáa e etyubbá áí.', 'preso la doncella perfuma su habitación o bulla a la hakkiáa e etyubbá áí.', NULL, 'Español: perfumar', 'import-espanol-bubi'),
  ('senti', 's.', 'm.', NULL, 'Cl. 12', 'el- e senti; -s tuenti, los -s o tuenti.', NULL, NULL, 'Español: perfume', 'import-espanol-bubi'),
  ('ebelló', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebelló; -s ibelló, los -s e ibelló.', NULL, NULL, 'Español: periodo', 'import-espanol-bubi'),
  ('to''ú', 's.', 'm.', NULL, 'Cl. 13', 'el - o to''ú, o winno; -s to''ú, binno, los -s o to''ú, e binno. pero, con). buáae; expr. hablo - no entiendo n la to''ó11a buáae n tyá ó''a.', 'expr.', 'winno', 'Español: permiso', 'import-espanol-bubi'),
  ('puá', 's.', 'm.', NULL, 'Cl. 9', 'el- e puá; -s puá, los -s i puá. * - grande lopuá, epuápua, el - grande o lopuá, e epuápua; -s grandes bipuápua, los -s gran des e bipuápua.', NULL, NULL, 'Español: perro', 'import-espanol-bubi'),
  ('rite''í', 's.', 'm.', NULL, 'Cl. 5', 'el - e rite''í; -s bate''í, los -s a bate''L', NULL, NULL, 'Español: pésame', 'import-espanol-bubi'),
  ('wéánna', 'v.', NULL, NULL, NULL, 'preso el capataz pesa el cacao e kapatássi e lá wéánna e bimmáloto; paso punto yo pesé el cubo de agua n wéám e ehá a boppé.', 'preso el capataz pesa el cacao e kapatássi e lá wéánna e bimmáloto;', NULL, 'Español: pesar', 'import-espanol-bubi'),
  ('tyué', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyué; -s tyué, los -s i tyué. * - salado píssi, el - salado e píssi; -s salados píssi, los-s salados i píssi.', NULL, NULL, 'Español: pescado', 'import-espanol-bubi'),
  ('boobbe', 's.', 'm.', NULL, 'Cl. 1', 'el - o boobbe; -es baobbe, los -es a baobbe.', NULL, NULL, 'Español: pescador', 'import-espanol-bubi'),
  ('lobbáa', 'v.', NULL, NULL, NULL, 'pas. duro yo pescaba n lobessi, tú pescabas o lobessi, él pescaba a lobessi, etc.', NULL, NULL, 'Español: pescar', 'import-espanol-bubi'),
  ('boritto', 's.', 'm.', NULL, 'Cl. 3', '(balanza) lose'' o (el. 1 1), el- o boritto, o 10se''0; -s beritto, se''o, los -s e beritto, i se''o.', NULL, NULL, 'Español: peso', 'import-espanol-bubi'),
  ('karosíi', 's.', 'm.', NULL, 'Cl. 10', 'el- i karosíi. * los blancos buscan - a bakará ba lá utya karosíi.', NULL, NULL, 'Español: petróleo', 'import-espanol-bubi'),
  ('tyué', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyué; -ces tyué, los -ces i tyué. * - sierra boapíappí, el - sierra o boapíappí; -ces sierra beapíappí, los -ces sierra e beapíappL * - eléctrico bubbé, el - eléctrico o bubbé; -ces eléc tricos bubbé, los -ces eléctricos i bub piragua I 497 bé. * - espada kulló, el - espada e kulló; -ces espada kulló, los -ces espada i kulló. * - colorado pi''e, el - colorado e pi''e; -ces colorado pi''e, l...', NULL, NULL, 'Español: pez', 'import-espanol-bubi'),
  ('bosósó', 's.', 'm.', NULL, 'Cl. 3', 'el- o bosósó; pezones besósó, los pezones e besósó.', 'pezones besósó, los pezones e besósó.', NULL, 'Español: pezón', 'import-espanol-bubi'),
  ('e''e', 's.', 'f.', NULL, 'Cl. 7', 'la - e e''e, e ekke; -s bie''e, yekke, las -s e bie''e, e yekke.', NULL, NULL, 'Español: pezuña', 'import-espanol-bubi'),
  ('bolláa', 'v.', NULL, NULL, NULL, 'preso los pollitos pian o toko''e to lá bOlláa; pa<!. punto los pájaros piaron o tonorí to bOríi.', 'preso los pollitos pian o toko''e to lá bOlláa;', NULL, 'Español: piar', 'import-espanol-bubi'),
  ('botyikka', 's.', 'f.', NULL, 'Cl. 3', 'la - o botyik.ka; -s be tyikka, las -s e betyikka.', NULL, NULL, 'Español: pica', 'import-espanol-bubi'),
  ('siokollo', 's.', 'm.', NULL, 'Cl. 12', 'el - e siokollo; -s t05kollo, los -s o t05kollo.', NULL, NULL, 'Español: picante', 'import-espanol-bubi'),
  ('esií', 's.', 'f.', NULL, 'Cl. 7', 'la - e esií; -s bisií, las -s e bisií.', NULL, NULL, 'Español: picardía', 'import-espanol-bubi');

-- Lote 21 (entradas 1701 a 1725)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bosií', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bosií; -s basií, los -s a basií.', NULL, NULL, 'Español: pícaro', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'f.', NULL, 'Cl. 11', 'la - o lopetyíi; pi cazones epetyíi, las picazones e epetyíi.', 'pi cazones epetyíi, las picazones e epetyíi.', NULL, 'Español: picazón', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'm.', NULL, 'Cl. 3', '(el. 1 1), watya, el- o lopetyíi, o watya; -es epetyíi, biatya, los -es e epetyíi, e biatya.', NULL, 'watya', 'Español: picor', 'import-espanol-bubi'),
  ('rikotto', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikotto; -s bakotto, los -s a bakotto.', NULL, NULL, 'Español: pie', 'import-espanol-bubi'),
  ('ite', 's.', 'f.', NULL, 'Cl. 5', 'la - e ite; -s bate, las -s a bate. * - para moler loho (el. 1 1), róhoo, la - para moler o lóho, e rohoo; -s para moler boho, bOhoo, las-s para moler a boho, a bobOo.', NULL, NULL, 'Español: piedra', 'import-espanol-bubi'),
  ('elolló', 's.', 'm.', NULL, 'Cl. 7', 'el- e elolló; -s bilolló, los -s e bilollo. pierna, sI lopollá, lOlIó (el. 1 1), la - o lopollá, o lolló; -s apollá, bOlló, las -s a apollá, a bolló.', NULL, 'lolló', 'Español: pienso', 'import-espanol-bubi'),
  ('ebabé', 's.', 'f.', NULL, 'Cl. 7', 'la - e ebabé; -s ibabé, las -s e ibabé.', NULL, NULL, 'Español: pieza', 'import-espanol-bubi'),
  ('epatyí', 's.', 'f.', NULL, 'Cl. 7', 'la - e epatyí; -s ipatyí, las -s e ipatyí.', NULL, NULL, 'Español: pila', 'import-espanol-bubi'),
  ('eho''o', 's.', 'm.', NULL, 'Cl. 7', 'el - e eho''o, e eo''o; -es biho''o, bio''o, los -es e biho''o, e bio''Ó.', NULL, NULL, 'Español: pilar', 'import-espanol-bubi'),
  ('esussa', 's.', 'm.', NULL, 'Cl. 7', 'el- e esus sa, o bOsií; -s bisussa, basií, los -s e bisussa, a basií.', NULL, 'b', 'Español: pillo', 'import-espanol-bubi'),
  ('eokollo', 's.', 'm.', NULL, 'Cl. 7', 'el - e eokollo; -s biokollo, los -s e biokollo.', NULL, NULL, 'Español: pimiento', 'import-espanol-bubi'),
  ('pitta', 'v.', NULL, NULL, NULL, 'preso yo pinto mi cara n la pitta o bossó m, 11 la tetya o bosso m, tú pintas tu cuerpo o la pitta o lótto o;pas. pU1I1. ellos pintaron las piedras ba pityi a bate, ba tetyi a bate.', 'preso yo pinto mi cara n la pitta o bossó m, 11 la tetya o bosso m, tú pintas tu cuerpo o la pitta o lótto o;', NULL, 'Español: pintar', 'import-espanol-bubi'),
  ('opeppa', 's.', 'm.', NULL, 'Cl. 1', 'el - o opeppa; -es apeppa, los -es a apeppa.', NULL, NULL, 'Español: pintor', 'import-espanol-bubi'),
  ('pena', 's.', 'f.', NULL, 'Cl. 9', 'la - e peíiti; -s pelÍtl, las -s i peíiti.', NULL, NULL, 'Español: pintura', 'import-espanol-bubi'),
  ('bOakki', 's.', 'm.', NULL, 'Cl. 3', 'el- o boakki; -s beak ki, los -s e beakki. * plaga de -s bOkaaí bo a beakki.', NULL, NULL, 'Español: piojo', 'import-espanol-bubi'),
  ('bookátta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bookátta; -s bookátta, los -s a bookátta.', NULL, NULL, 'Español: pionero', 'import-espanol-bubi'),
  ('kunnú', 's.', 'f.', NULL, 'Cl. 9', 'la - e kunnú, o buátto; -s kunnú, biátto, las -s i kunnú, e biátto. 498 / pirómano', NULL, 'buátto', 'Español: piragua', 'import-espanol-bubi'),
  ('bOlóppa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bolóppa; -s balóppa, los -s a balóppa.', NULL, NULL, 'Español: pirómano', 'import-espanol-bubi'),
  ('ritolállo', 's.', 'm.', NULL, 'Cl. 5', 'el - e ritOlállo, e sibotyera; -s batolállo, tobotyera, los -s a batolállo, o tobotyera.', NULL, 'tobotyera', 'Español: piropo', 'import-espanol-bubi'),
  ('binenna', 'v.', NULL, NULL, NULL, 'imp. neg. no me pises we le itelle, we le binenne; paso punto ellos me pisaron ba le iteri;', 'paso punto ellos me pisaron ba le iteri;', NULL, 'Español: pisar', 'import-espanol-bubi'),
  ('itella', 'v.', NULL, NULL, NULL, 'paso punto ayer me pisoteaste con tus zapatos mpári o le iteri la i sússu ó.', NULL, NULL, 'Español: pisotear', 'import-espanol-bubi'),
  ('bosekka', 's.', 'f.', NULL, 'Cl. 3', 'la - o bosekka; -s besekka, las -s e besekka.', NULL, NULL, 'Español: pista', 'import-espanol-bubi'),
  ('sikkiáa', 's.', 'm.', NULL, 'Cl. 12', 'el- e sikkiáa; -s tok kiáa, los -s o tokkiáa.', NULL, NULL, 'Español: pitillo', 'import-espanol-bubi'),
  ('botuttú', 's.', 'm.', NULL, 'Cl. 3', 'tyakkí , pittóo, (cigarrillo) sikkiáa, el- o botut tú, e tyakkí, e pittóo, e sikkiáa; -s betuttú, tyakkí,pittóo, tokkiáa, los -s e betuttú, i tyakki, i pittóO, o tokkiáa. * tocar el - o óppa e pittóo. * me importa un - n ta há okkíi bOláa.', NULL, 'tokkiáa', 'Español: pito', 'import-espanol-bubi'),
  ('erukurukku', 's.', 'm.', NULL, 'Cl. 7', 'el - e erukurukku; pitones birukurukku, los pitones e birukurukku.', 'pitones birukurukku, los pitones e birukurukku.', NULL, 'Español: pitón', 'import-espanol-bubi');

-- Lote 22 (entradas 1726 a 1750)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rimmammabi''o', 's.', 'm.', NULL, 'Cl. 5', 'el- e rimmammabi''o, o boróo; -es barnmarnma bi''o, beróo, los -es a bammam mabi''o, e beróo.', NULL, 'boróo', 'Español: placer', 'import-espanol-bubi'),
  ('haíara', 'v.', NULL, NULL, NULL, 'paso punto yo planché mi cami sa n si haíanna e sótte m.', NULL, NULL, 'Español: planchar', 'import-espanol-bubi'),
  ('eppa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: plantar', 'import-espanol-bubi'),
  ('rikobbe', 's.', 'm.', NULL, 'Cl. 6', '(Cl. 5), el- e rikobbe; s bakobbe, los -s a bakobbe.', 's bakobbe, los -s a bakobbe.', NULL, 'Español: platanero', 'import-espanol-bubi'),
  ('bokobbe', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOkobbe; -s bekobbe, los -s e bekobbe.', NULL, NULL, 'Español: plátano', 'import-espanol-bubi'),
  ('tO''ólla', 'v.', NULL, NULL, NULL, 'preso los hombres plati can mucho a baie ba lá to''ólla líkelíke;', 'preso los hombres plati can mucho a baie ba lá to''ólla líkelíke; | pas.', NULL, 'Español: platicar', 'import-espanol-bubi'),
  ('ehá', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehá; -s bihá, los -s e bihá. * - (menú) en un ágape portar / 499 elobbo, el - e elobbo; -s bilob bo, los -s e bilobbo.', NULL, NULL, 'Español: plato', 'import-espanol-bubi'),
  ('ebéló', 's.', 'm.', NULL, 'Cl. 7', 'el- e ebéló;-s ibéló, los -s e ibéló.', NULL, NULL, 'Español: plazo', 'import-espanol-bubi'),
  ('lobárí', 's.', 'm.', NULL, NULL, '(el. 1 1), el- o lobárí; -s kobá rí (el. 1 0), los -s i kobárí.', NULL, NULL, 'Español: pleito', 'import-espanol-bubi'),
  ('epépo', 's.', 'm.', NULL, 'Cl. 7', 'el- e epépo; -s ipépo, los -s e ipépo.', NULL, NULL, 'Español: pliego', 'import-espanol-bubi'),
  ('bosotte', 's.', 'm.', NULL, 'Cl. 3', 'el - o bosotte; -s besotte, los -s e besotte.', NULL, NULL, 'Español: plomo', 'import-espanol-bubi'),
  ('eriia', 's.', 'm.', NULL, 'Cl. 7', 'el - e eriia; -s biriia, los -s e biriia. * los -s de la isla e biriia bi e etúllá.', NULL, NULL, 'Español: poblado', 'import-espanol-bubi'),
  ('sibólló', 's.', 'm.', NULL, 'Cl. 12', 'el - e sibólló; -s tobólló (el. 1 3), los -s o tobólló.', NULL, NULL, 'Español: pobre', 'import-espanol-bubi'),
  ('beóo', 's.', 'm.', NULL, NULL, '(els. 2 y 6: pocas personas batyo beoo, pocas camas baatyé beoo [baatSé béeoD, bieoo (els. 4 y 8: pocas historias beatta bieoo, pocos poblados biriia bieoo), keoo (el. 10: pocas sardinas kollo keoo), tueoo (el. 13: pocas camisas tótte tueoo).', NULL, NULL, 'Español: pocos', 'import-espanol-bubi'),
  ('in', 's.', NULL, NULL, 'Cl. 13', 'in! o katella; preso los braceros podan los cacaoteros a bakollé ba lá katella a bam máloto; paso punto los braceros podaron los cacaoteros a bakollé ba kateri a barnmáloto. poder, l. to''ú, winno, el- o to''ú, o winno; -es to''ú, binno, los -es o to''ú, e binnó. 2. in! O pa''a; O pitta,', 'preso los braceros podan los cacaoteros a bakollé ba lá katella a bam máloto;', 'winno', 'Español: podar', 'import-espanol-bubi'),
  ('bobó', 'adj.', NULL, NULL, NULL, 'bobó (els. 1 y 3: un alcalde pode roso botúkku bobó, una historia poderosa boat ta bObó); -s beobó (els. 2: unos alcaldes pode rosos batúkku bobó [batukkú bobbóD, beobó (el. 4: unas historias poderosas beatta beobó).', NULL, NULL, 'Español: poderoso', 'import-espanol-bubi'),
  ('eporoporo', 's.', 'm.', NULL, 'Cl. 7', 'el- e eporoporo, e eporosía; -s iporoporo, iporosía, los-s e iporoporo, e iporosía. * los -s de la ciudad e iporoporo ye ripotto wela, e iporosía yé ripotto wela.', NULL, NULL, 'Español: policía', 'import-espanol-bubi'),
  ('ko''e', 's.', 'm.', NULL, 'Cl. 9', 'el - e ko''e; -s ko''e, los -s i ko''e.', NULL, NULL, 'Español: pollo', 'import-espanol-bubi'),
  ('bubuu', 's.', 'm.', NULL, 'Cl. 9', 'el- e bubuu; -s bubuu, los -s i bubuu. pomada, s''¡: biitá, la - a biitá; -s biitá, las -s a biitá.', NULL, NULL, 'Español: polvo', 'import-espanol-bubi'),
  ('bolláa', 's.', 'm.', NULL, 'Cl. 1', 'el - o bolláa; -es bolláa, los -es a bolláa.', NULL, NULL, 'Español: portador', 'import-espanol-bubi'),
  ('inf', 's.', NULL, NULL, NULL, 'preso los chicos portan los asientos a baseseppe ba lá olláa e bimpa; paso punto el caballo portó los fardos e ossi oríi e be''e.', 'preso los chicos portan los asientos a baseseppe ba lá olláa e bimpa;', NULL, 'Español: portar', 'import-espanol-bubi'),
  ('to''óleri', 's.', 'm.', NULL, 'Cl. 9', 'el - e to''óleri; -ces to''óleri, los -ces i to''óleri; - del sacerdote bubi empó, el - del sacerdo te bubi e empó, portavoces del sacer dote bubi bimpó, los portavoces del sacerdote bubi e bimpó.', NULL, NULL, 'Español: portavoz', 'import-espanol-bubi'),
  ('opotokkí', 'adj.', NULL, NULL, 'Cl. 1', 'el- o opotokkí; portugueses ap5tokkí, los portugueses a apotokkí.', 'portugueses ap5tokkí, los portugueses a apotokkí.', NULL, 'Español: portugués', 'import-espanol-bubi'),
  ('bokkáa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bokkáa; -es bokkáa, los -es a bokkáa.', NULL, NULL, 'Español: poseedor', 'import-espanol-bubi'),
  ('okkáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: poseer', 'import-espanol-bubi');

-- Lote 23 (entradas 1751 a 1775)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bohiarnmó', 's.', 'm.', NULL, 'Cl. 1', 'el - o bohiarnmó; -s bohiarnmó, los -s a bohiammó.', NULL, NULL, 'Español: poseso', 'import-espanol-bubi'),
  ('erularulla', 's.', 'm.', NULL, 'Cl. 7', 'el- e erularulla; -s birularulla, los -s e birularulla.', NULL, NULL, 'Español: poso', 'import-espanol-bubi'),
  ('eho''ó', 's.', 'm.', NULL, 'Cl. 7', 'el- e eho''ó, e eo''ó; -s biho''ó, bio''ó, los -s e biho''ó, e bio''ó.', NULL, NULL, 'Español: poste', 'import-espanol-bubi'),
  ('ro''ú', 'adj.', NULL, NULL, 'Cl. 13', 'ro''ú (el. 1 3), el- o to''ú; -s to''ú, los -s o to''ú. * un coche - motóo bo a to''ú.', NULL, NULL, 'Español: potente', 'import-espanol-bubi'),
  ('ekórÍlposi', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekórÍlpo si; -s bikórÍlposi, los -s e bikórÍlposi.', NULL, NULL, 'Español: potingue', 'import-espanol-bubi'),
  ('ossi', 's.', 'm.', NULL, 'Cl. 7', 'el - e ossi; -s biossi, los -s e biossi. poza, s''¡: eribba, ribettó, la - e erib ba, e ribettó; -s biribba, abettó, las -s e biribba, a abettó.', NULL, NULL, 'Español: potro', 'import-espanol-bubi'),
  ('esessé', 's.', 'm.', NULL, 'Cl. 7', 'el - e esessé; -s bisessé, los -s e bisessé. * - ciego rioorÍl, el - ciego e rioorÍl; -s ciegos baoorÍl, los -s ciegos a baoorÍl. 2.', NULL, NULL, 'Español: pozo', 'import-espanol-bubi'),
  ('katto', 's.', 'm.', NULL, 'Cl. 9', 'el- e katto; -s katto, los -s i katto.', NULL, NULL, 'Español: precio', 'import-espanol-bubi'),
  ('etemtem', 's.', 'm.', NULL, 'Cl. 7', 'el - e etemtem; -s bitemtem, los -s e bitemtem.', NULL, NULL, 'Español: precipicio', 'import-espanol-bubi'),
  ('bookátta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bookátta; -es bookátta, los -es a bookátta.', NULL, NULL, 'Español: precursor', 'import-espanol-bubi'),
  ('bosabóatta', 's.', 'm.', NULL, 'Cl. 1', 'el - o bosa bóatta; -es basabóatta, los -es a basabóarta.', NULL, NULL, 'Español: predicador', 'import-espanol-bubi'),
  ('takkáa', 'v.', NULL, NULL, NULL, 'preso en el pueblo predominan los pescadores e eriia wela a baobbe ba ityí obo''ó; paso punto el presidente predominó entre todos los gober nantes o botákityé ityí obo''ó a baitta wela ba r nmaa; paso duro ayer predominaban las cabras en las casas mpári i póríi i takessi i tyóbbo wela.', 'preso en el pueblo predominan los pescadores e eriia wela a baobbe ba ityí obo''ó; | paso duro ayer predominaban las cabras en las casas mpári i póríi i takessi i tyóbbo wela.', NULL, 'Español: predominar', 'import-espanol-bubi'),
  ('lobóllo', 's.', 'm.', NULL, 'Cl. 11', 'el- o lobóllo; pre gones bóllo, los pregones i bóllo.', 'pre gones bóllo, los pregones i bóllo.', NULL, 'Español: pregón', 'import-espanol-bubi'),
  ('íha', 'v.', NULL, NULL, NULL, 'o íhéra;', 'o íhéra;', NULL, 'Español: preguntar', 'import-espanol-bubi'),
  ('buihéro', 's.', 'm.', NULL, 'Cl. 1', 'el- o buibero; preguntones biihéro, los preguntones a biihéro.', 'preguntones biihéro, los preguntones a biihéro.', NULL, 'Español: preguntón', 'import-espanol-bubi'),
  ('riobbo', 's.', 'm.', NULL, 'Cl. 5', 'el - e riobbo; -s baobbo, los -s a baobbo.', NULL, NULL, 'Español: premio', 'import-espanol-bubi'),
  ('uolla', 'v.', NULL, NULL, NULL, 'paso duro vosotros preparabais vuestro trabajo lo uolessi e elako áno. 2. -se o uolea; preso mi hermana se prepara para ir a la fiesta o wetta IÍ1 a la uolea o bella o e ripelló.', 'preso mi hermana se prepara para ir a la fiesta o wetta IÍ1 a la uolea o bella o e ripelló.', NULL, 'Español: preparar', 'import-espanol-bubi'),
  ('etyotyo', 's.', 'm.', NULL, 'Cl. 7', 'el- e etyotyo; -s bityotyo, los -s e bityotyo.', NULL, NULL, 'Español: prepucio', 'import-espanol-bubi'),
  ('bélla', 'v.', NULL, NULL, NULL, 'pres. yo presento a mi pariente n la bélla o botyo IÍ1; paso punto tú presentaste a tu parien te o béri o bOtyo o.', 'paso punto tú presentaste a tu parien te o béri o bOtyo o.', NULL, 'Español: presentar', 'import-espanol-bubi'),
  ('botákityé', 's.', 'm.', NULL, 'Cl. 1', 'el - o botáki tyé; -s batákityé, los -s a batákityé.', NULL, NULL, 'Español: presidente', 'import-espanol-bubi'),
  ('bOtyelemán', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOtyelemán; -s batyelemán, los -s a ba tyelemán.', NULL, NULL, 'Español: presidiario', 'import-espanol-bubi'),
  ('tyaróm', 's.', 'm.', NULL, 'Cl. 9', 'el- e tyaróm, e tyélle; -s tyaróm, tyélle, los -s i tyaróm, i tyélle.', NULL, NULL, 'Español: presidio', 'import-espanol-bubi'),
  ('botyelemán', 's.', 'm.', NULL, 'Cl. 1', 'el- o botyelemán; -s batyelemán, los -s a batyelemán.', NULL, NULL, 'Español: preso', 'import-espanol-bubi'),
  ('ebotto', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebotto; -s mbotto, los -s e mbotto.', NULL, NULL, 'Español: pretexto', 'import-espanol-bubi'),
  ('laotyalaotya', 'adv.', NULL, NULL, NULL, 'e paperi.', NULL, NULL, 'Español: primeramente', 'import-espanol-bubi');

-- Lote 24 (entradas 1776 a 1800)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bObelle', 's.', 'm.', NULL, 'Cl. 1', 'el - o bobelle; -s bobelle, los -s a bobelle.', NULL, NULL, 'Español: primo', 'import-espanol-bubi'),
  ('eotya', 's.', 'm.', NULL, 'Cl. 7', 'el - e eotya; -s biotya tel. 8), los -s e biotya.', NULL, NULL, 'Español: primogénito', 'import-espanol-bubi'),
  ('haotya', 's.', 'm.', NULL, NULL, 'el - a haotya.', NULL, NULL, 'Español: principio', 'import-espanol-bubi'),
  ('bOtyelemán', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOtyelemán; -s batyelemán, los -s a ba t yelemán.', NULL, NULL, 'Español: prisionero', 'import-espanol-bubi'),
  ('epallo', 's.', 'm.', NULL, 'Cl. 7', 'el e epallo, o bolláa; -s ipallo, belláa, los -s e ipallo, e belláa. procedencia, sJ ripÚTíi, la - e ripÚTíi; -s apúrii, las -s a apúrii.', NULL, 'bolláa', 'Español: problema', 'import-espanol-bubi'),
  ('kelle', 's.', 'm.', NULL, 'Cl. 9', 'el e kelle, e eribolla; -s kelle (el. lO), biribólla, los -s i kelle, e biribolla.', NULL, NULL, 'Español: prodigio', 'import-espanol-bubi'),
  ('bue''iáa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bue''iáa; -es be''iáa, los -es a be''iáa. Ej. expr. el - de mi hijo o bue''iáa ó bollá rÍl, soy - ne bue''iáa.', NULL, NULL, 'Español: profesor', 'import-espanol-bubi'),
  ('ekasso', 'adj.', NULL, NULL, 'Cl. 7', 'bakasso.', NULL, NULL, 'Español: pronto', 'import-espanol-bubi'),
  ('botapáero', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOtapáero; -s betapáero, los-s e betapáero.', NULL, NULL, 'Español: propósito', 'import-espanol-bubi'),
  ('nonowé', 's.', 'm.', NULL, 'Cl. 9', 'el - e nonowé; -s nonowé (el. lO), los -s i nonowé.', NULL, NULL, 'Español: proscrito', 'import-espanol-bubi'),
  ('kobbe', 's.', 'm.', NULL, 'Cl. 9', 'el - e kobbe; -8 kobbe, los -s i kobbe.', NULL, NULL, 'Español: protagonista', 'import-espanol-bubi'),
  ('bulla', 'v.', NULL, NULL, NULL, 'paso duro nosotros protegíamos to bulessi, vosotros pro tegíais lo bulessi, ellos protegían ba bulessi.', NULL, NULL, 'Español: proteger', 'import-espanol-bubi'),
  ('puella', 'v.', NULL, NULL, NULL, 'vosotros provinis teis lo pueri, ellos provinieron de mi casa ba pueri o tyóbbo IÍl; paso duro el arroz provenía de China i ressi i puelessi e eriia a batyo ba o tonokko.', 'paso duro el arroz provenía de China i ressi i puelessi e eriia a batyo ba o tonokko.', NULL, 'Español: provenir', 'import-espanol-bubi'),
  ('pe''o', 's.', 'm.', NULL, 'Cl. 9', 'el - e pe''o; -s pe''o, los -s i pe''o.', NULL, NULL, 'Español: proverbio', 'import-espanol-bubi'),
  ('lehea', 'v.', NULL, NULL, NULL, 'vosotros provocasteis a los gorilas lo leMi i tatapó''a, ellos provocaron a la doncella ba leMi o bulla; paso duro nadie provocaba a nadie bOtyo bulálle ata lehieseei bOtyo bulálle.', 'paso duro nadie provocaba a nadie bOtyo bulálle ata lehieseei bOtyo bulálle.', NULL, 'Español: provocar', 'import-espanol-bubi'),
  ('bOnná', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOnná; -es benná, los -es e benná.', NULL, NULL, 'Español: proyectil', 'import-espanol-bubi'),
  ('lopetyípetyíi', 's.', 'm.', NULL, 'Cl. 10', '(Cl. 1 1), el - o lope tyípetyii; -s petyípetyii, los -s i petyípetyii.', NULL, NULL, 'Español: prurito', 'import-espanol-bubi'),
  ('ise''e', 's.', 'm.', NULL, 'Cl. 5', 'el- e ise''e; -s base''e, los -s a base''e.', NULL, NULL, 'Español: pubis', 'import-espanol-bubi'),
  ('lobólla', 'v.', NULL, NULL, NULL, 'preso mi orga nización publica una noticia o wallá IÍl bo lá et tya sokko;pas. punto la gente publicó una mentira a batyo ba lobóri esoí, a batyo ba etyia esoí; paso duro los nuevos diri gentes publicaban todo a balekkia bahe ba lobó lessi a lokko la mmaa.', 'preso mi orga nización publica una noticia o wallá IÍl bo lá et tya sokko; | paso duro los nuevos diri gentes publicaban todo a balekkia bahe ba lobó lessi a lokko la mmaa.', NULL, 'Español: publicar', 'import-espanol-bubi'),
  ('húúa', 's.', 'm.', NULL, 'Cl. 10', 'el - i húúa; -s húúa, los -s i húúa.', NULL, NULL, 'Español: público', 'import-espanol-bubi'),
  ('etéIÍl', 's.', 'm.', NULL, 'Cl. 7', 'el- e etéIÍl; -s bitéIÍl, los -s e bitéIÍl.', NULL, NULL, 'Español: puchero', 'import-espanol-bubi'),
  ('bora', 'v.', NULL, NULL, NULL, 'preso el calor pudre los cadáveres e húé e lá bora e bileppé; paso punto la humedad pudrió los plátanos e sille si boriia e bekobbe. 2. -se o bolla;pres. se pudren los cocos e biakalekko be lá bolla; paso punto se pudrió el pescado i tyué i bori.', 'preso el calor pudre los cadáveres e húé e lá bora e bileppé; | paso punto se pudrió el pescado i tyué i bori.', NULL, 'Español: pudrir', 'import-espanol-bubi'),
  ('siriia', 's.', 'm.', NULL, NULL, '(12), el- e siriia; -8 toriia (Cl. 13), los -8 o toriia. 504 / pueblo', NULL, NULL, 'Español: pueblecito', 'import-espanol-bubi'),
  ('eriia', 's.', 'm.', NULL, 'Cl. 7', 'el- de la gente e eriia a batyo, el - de los hombres e eriia a baie; -s biriia, los-s bubis e biriia bi a abobée, etc.', NULL, NULL, 'Español: pueblo', 'import-espanol-bubi'),
  ('ré''óo', 's.', 'm.', NULL, 'Cl. 5', 'el - e ré''óo, e ré''o; -s bé''óo, bé''o, los-s a bé''óo, a bé''o.', NULL, NULL, 'Español: puente', 'import-espanol-bubi');

-- Lote 25 (entradas 1801 a 1825)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'el- e esóló; -s bisóló, los -s e bisóló.', NULL, NULL, 'Español: puerco', 'import-espanol-bubi'),
  ('epa''á', 's.', 'm.', NULL, 'Cl. 7', 'el - e epa''á; puercoespines ipa''á, los puer coespines e ipa''á.', 'puercoespines ipa''á, los puer coespines e ipa''á.', NULL, 'Español: puercoespín', 'import-espanol-bubi'),
  ('bookuallo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bookuallo; -s beokuallo, los -s e beokuallo.', NULL, NULL, 'Español: puerto', 'import-espanol-bubi'),
  ('eruua', 's.', 'm.', NULL, 'Cl. 7', 'el - e eruua; -s biruua, los -s e biruua.', NULL, NULL, 'Español: puesto', 'import-espanol-bubi'),
  ('boóte', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOóte; -es beó te, los -es e beóte.', NULL, NULL, 'Español: pulgar', 'import-espanol-bubi'),
  ('boilolla', 's.', 'm.', NULL, 'Cl. 1', 'el- o boilolla; -es boilolla, los -es a bailolla.', NULL, NULL, 'Español: pulidor', 'import-espanol-bubi'),
  ('ehulahúla', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehulahúla; pulmones bihulahúla, los pulmones e bihulahúla.', 'pulmones bihulahúla, los pulmones e bihulahúla.', NULL, 'Español: pulmón', 'import-espanol-bubi'),
  ('lopóppo', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o lopóppo; -s póppo, los -s i póppo.', NULL, NULL, 'Español: pulpo', 'import-espanol-bubi'),
  ('ripétyóo', 's.', 'm.', NULL, 'Cl. 5', 'el e ripétyóo, e riakko; -es apétyóo, baakko, los -es a apétyóo, a baakko.', NULL, NULL, 'Español: puntal', 'import-espanol-bubi'),
  ('rikottó', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikottó; -s bakottó, los -s a bakottó.', NULL, NULL, 'Español: puntapié', 'import-espanol-bubi'),
  ('ityotyo', 's.', 'm.', NULL, 'Cl. 5', 'el - e ityotyo; -s batyotyo, los -s a batyotyo.', NULL, NULL, 'Español: puñado', 'import-espanol-bubi'),
  ('rikottó', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikottó; -s bakottó, los -s a bakottó.', NULL, NULL, 'Español: puñetazo', 'import-espanol-bubi'),
  ('rikottó', 's.', 'm.', NULL, 'Cl. 5', 'el- e rikottó; -s bakot tó, los -s a bakottó.', NULL, NULL, 'Español: puño', 'import-espanol-bubi'),
  ('rusollo', 's.', 'm.', NULL, 'Cl. 5', 'el - e rusol/o; -s busollo, los -s a busollo.', NULL, NULL, 'Español: purgante', 'import-espanol-bubi'),
  ('boháo', 's.', 'm.', NULL, 'Cl. 3', 'el - o boháo; -es beháo, los -es e beháo.', NULL, NULL, 'Español: pus', 'import-espanol-bubi'),
  ('ehólolló', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehólolló, o opelle; -s bihólolló, epelle, los -s e bihólolló, e epelle.', NULL, 'opelle', 'Español: puto', 'import-espanol-bubi'),
  ('botyappú', 's.', 'm.', NULL, 'Cl. 3', 'el - o botyappú; -s betyappú, los -s e betyappú.', NULL, NULL, 'Español: puterío', 'import-espanol-bubi'),
  ('elakó', 's.', 'm.', NULL, 'Cl. 10', '(e. 7), mpó (eL 9), el - e elakó, e mpó; -es bilakó (eL 8), mp6, los -es e bilakó, i mpó. * los -es domésticos e bilakó bi i tyóbbo wela.', NULL, NULL, 'Español: quehacer', 'import-espanol-bubi'),
  ('borutyo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOrutyo; -s berutyo, los -s e berutyo.', NULL, NULL, 'Español: quejido', 'import-espanol-bubi'),
  ('bosepaseppa', 's.', 'm.', NULL, 'Cl. 1', 'el - o bose paseppa; quejones basepaseppa, los quejo nes a basepaseppa.', 'quejones basepaseppa, los quejo nes a basepaseppa.', NULL, 'Español: quejón', 'import-espanol-bubi'),
  ('tokka', 'v.', NULL, NULL, NULL, '2. -se o tokea; paso punto la casa se quemó e tyóbbo e tokei.', 'paso punto la casa se quemó e tyóbbo e tokei.', NULL, 'Español: quemar', 'import-espanol-bubi'),
  ('obálla', 'v.', NULL, NULL, NULL, 'preso nosotros nos querellamos con el presidente to la obálla la o bOtákityé.', 'preso nosotros nos querellamos con el presidente to la obálla la o bOtákityé.', NULL, 'Español: querellarse', 'import-espanol-bubi'),
  ('hOlIáa', 'v.', NULL, NULL, NULL, 'preso yo quiero a la gente n la hOlláa a batyo, n la na''a a batyo, n hOrii a batyo, tú quieres pan o la na''aisi>ppo; paso punto yo quise a mi hermano n ka horii o bobel le lÍ1. * te quiero n o horii, n la o na''a. 2. -se o hóránna; preso nos queremos ro ha hóránna ó.', 'preso yo quiero a la gente n la hOlláa a batyo, n la na''a a batyo, n hOrii a batyo, tú quieres pan o la na''aisi>ppo; | preso nos queremos ro ha hóránna ó.', NULL, 'Español: querer', 'import-espanol-bubi'),
  ('ehólle', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehólle; -s bihólle, los -s e bihólle.', NULL, NULL, 'Español: querido', 'import-espanol-bubi'),
  ('karosíi', 's.', 'm.', NULL, 'Cl. 10', 'el - i karosíi. quién, inter. ká be? ¿ - viene? ká be o botyo a lé''a púlóo?', NULL, NULL, 'Español: queroseno', 'import-espanol-bubi');

-- Lote 26 (entradas 1826 a 1850)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('numo', 'adj.', NULL, NULL, NULL, '- personas batyo be Ó, árboles batté be ó, - sardinas kollo yé Ó, - mil biera bié Ó. quinientos, a4j. numo bueráhekka; quinientas per sonas batyo be bueráhekka, quinientos plátanos bekobbe bié bueráhekka quinientos mil biera tyilla.', 'quinientas per sonas batyo be bueráhekka, quinientos plátanos bekobbe bié bueráhekka quinientos mil biera tyilla.', NULL, 'Español: quince', 'import-espanol-bubi'),
  ('láppo', 's.', 'm.', NULL, 'Cl. 9', 'el- e láppo; -s láppo, los -s i lappo.', NULL, NULL, 'Español: quinqué', 'import-espanol-bubi'),
  ('boálla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: quitar', 'import-espanol-bubi'),
  ('lobetté', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o lobetté; -es betté, los -es i betté.', NULL, NULL, 'Español: quitasol', 'import-espanol-bubi'),
  ('metá', 'adv.', NULL, NULL, NULL, '- vaya mañana metá n la pooa obari.', NULL, NULL, 'Español: quizá', 'import-espanol-bubi'),
  ('bosikké', 's.', 'm.', NULL, 'Cl. 3', 'el - o bosikké, o bosi''e; -s besikké, besi''e, los -s e besikké, e besi''e. Exp. el- del perro o bosikké bo e puá.', NULL, 'bosi''e', 'Español: rabo', 'import-espanol-bubi'),
  ('rikikká', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikikká; -s bikikká, los -s a bikikká. 1. - de dátiles maduros ebíla, el- de dátiles maduros e ebíla; -s de dátiles maduros mbíla, los -s de dátiles maduros e mbíla. 2. - de plátanos ebilákobbe, ekobbe, el de plátanos e ebilákobbe, e ekobbe; -s de plátanos mbilákobbe, bikobbe, los -s de plátanos e mbi lákobbe, e bikobbe. 3. - de bananas enanáa, enanákobbe, el- de bananas e enanáa, e enan...', NULL, NULL, 'Español: racimo', 'import-espanol-bubi'),
  ('rietyó', 's.', 'm.', NULL, 'Cl. 5', 'el - e rietyó; -es baetyó, los -es a baetyó.', NULL, NULL, 'Español: raíl', 'import-espanol-bubi'),
  ('ekerétta', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekerétta; -es bikerétta, los -es e bike rétta.', NULL, NULL, 'Español: rallador', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 1', 'el o opelle, e ehólolló; -s apelle, bihólolló, los -s a apelle, e bihólolló.', NULL, NULL, 'Español: ramero', 'import-espanol-bubi'),
  ('etabbé', 's.', 'm.', NULL, 'Cl. 7', 'el - e etabbé; -s bitabbé, los -s e bitabbé.', NULL, NULL, 'Español: ramo', 'import-espanol-bubi'),
  ('sinópi', 's.', 'm.', NULL, 'Cl. 12', 'sibáka (Cl. 12), el - e sinópi, e sibáka; -s tonópi, tobáka, los -s o tonópi, o tobáka.', NULL, 'tobáka', 'Español: rape', 'import-espanol-bubi'),
  ('ebíla', 's.', 'm.', 'pl.', 'Cl. 7', 'el- e ebíla;-s ( pI.) mbíla, los -s e mbíla.', NULL, NULL, 'Español: raquis', 'import-espanol-bubi'),
  ('ubolla', 'v.', NULL, NULL, NULL, 'preso los trabajadores rastrean el terreno a balakoláko ba lá ubOlla o bobba. (b) o opotta, (c) o hMmuatella; pres. el perro rastrea e puá e lá hMmuatella; paso punto el perro rastreó e puá e hMmuateri; paso...', 'preso los trabajadores rastrean el terreno a balakoláko ba lá ubOlla o bobba. | pres. | paso punto el perro rastreó e puá e hMmuateri;', NULL, 'Español: rastrear', 'import-espanol-bubi'),
  ('obitya', 's.', 'm.', NULL, 'Cl. 3', 'el - o obitya; ratones ebitya, los ratones e ebitya.', 'ratones ebitya, los ratones e ebitya.', NULL, 'Español: ratón', 'import-espanol-bubi'),
  ('sibitya', 's.', 'm.', NULL, 'Cl. 12', 'el- e sibitya; -s tobitya, los -s o tobitya.', NULL, NULL, 'Español: ratoncito', 'import-espanol-bubi'),
  ('bOsotyi', 's.', 'm.', NULL, 'Cl. 3', 'el- o bosotyi, o bOtyetyee; -s besotyi, betyetyee, los -s e besotyi, e betyetyee.', NULL, 'b', 'Español: rayo', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', 'el - o botákko, o lotóbbóo; -s betákko, betóbbóo, tóbbóo (el. lO), los -s e be tákko, e betóbbóo, i tóbbóo.', NULL, 'lotóbbóo', 'Español: recado', 'import-espanol-bubi'),
  ('riturera', 's.', 'f.', NULL, 'Cl. 5', 'la - e riturera; r ecepciones batutera, las recepciones a baturera.', 'r ecepciones batutera, las recepciones a baturera.', NULL, 'Español: recepción', 'import-espanol-bubi'),
  ('nakká', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: rechazar', 'import-espanol-bubi'),
  ('ritáperi', 's.', 'm.', NULL, 'Cl. 5', 'el- e ritáperi; -es batáperi, los -es a batáperi.', NULL, NULL, 'Español: recibidor', 'import-espanol-bubi'),
  ('ritáperi', 's.', 'm.', NULL, 'Cl. 5', 'el- e ritápe ri; -s batáperi, los -s a batáperi.', NULL, NULL, 'Español: recibimiento', 'import-espanol-bubi'),
  ('isillo', 's.', 'm.', NULL, 'Cl. 5', 'el - e isillo; -s basillo, los -s a basillo.', NULL, NULL, 'Español: recodo', 'import-espanol-bubi'),
  ('ukka', 'v.', NULL, NULL, NULL, 'o ukka (pas. punto ukki; paso duro ukessi), o kulla (pas. punto kuri; paso duro kules si), o okka, r', 'paso duro ukessi), o kulla (pas. | paso duro kules si), o okka,;', 'kulla, okka', 'Español: recoger', 'import-espanol-bubi'),
  ('boulla', 's.', 'f.', NULL, 'Cl. 3', 'boukka, la - o boulla, o bokulakulla, o bouk ka; -s beulla, bekulakulla, beukka, las -s e beulla, e bekulakulla, e beukka.', NULL, 'bokulakulla, bouk', 'Español: ecolecta', 'import-espanol-bubi');

-- Lote 27 (entradas 1851 a 1875)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('betólla', 'v.', NULL, NULL, NULL, 'pas. duro yo reconciliaba n betóles si, tú reconciliabas o betólessi, él reconciliaba a betólessi, etc. 2. -se o betólla.', 'pas.', NULL, 'Español: reconciliar', 'import-espanol-bubi'),
  ('bosakóo', 's.', 'm.', NULL, 'Cl. 3', 'el- o bosakoo, o bosákko; -s besakoo, besákko, los -s e besakóo, e besákko.', NULL, 'bosákko', 'Español: reconocimiento', 'import-espanol-bubi'),
  ('riettyi', 's.', 'm.', NULL, 'Cl. 5', 'el - e rietyi; -s baetyi, los -s a baetyi.', NULL, NULL, 'Español: recorrido', 'import-espanol-bubi'),
  ('eriko', 's.', 'm.', NULL, 'Cl. 7', 'el - e eriko; -s birikó, los -s e biriko.', NULL, NULL, 'Español: recoveco', 'import-espanol-bubi'),
  ('esolló', 's.', 'm.', NULL, 'Cl. 7', 'el- e esollo; -s bisOlló, los -s e bisolló.', NULL, NULL, 'Español: recreo', 'import-espanol-bubi'),
  ('buetákíó', 's.', 'm.', NULL, 'Cl. 1', 'el- o buetákíó; -es betákíó, los -es a betákíó.', NULL, NULL, 'Español: rector', 'import-espanol-bubi'),
  ('bolebóri', 's.', 'm.', NULL, 'Cl. 3', 'botapáero, el- o bolebóri, e elebóri, o botapáero; -s belebóri, bilebóri, betapáero, los -s e belebóri, e bile bóri, e betapáeró.', NULL, 'botapáero', 'Español: recuerdo', 'import-espanol-bubi'),
  ('riheleri', 's.', 'm.', NULL, 'Cl. 5', 'el - e riheleri; -s baheleri, los -s a baheleri.', NULL, NULL, 'Español: recurso', 'import-espanol-bubi'),
  ('bi''í', 'adj.', NULL, NULL, NULL, 'bi''í (els. 1 : esta persona está re donda OJó bOtyo a bi''í; 2: estas personas están redondas balo batyo ba bi''í; 3: el coco es re dondo o bOkóko bo bi''í; 4: los cocos son redondos e bekóko be bi''í; etc.).', 'etc.', NULL, 'Español: redondo', 'import-espanol-bubi'),
  ('sikkiáa', 'v.', NULL, NULL, NULL, 'preso el hambre reduce el vientre e tyallá e lá sikkiáa o buellá; paso punto la pobreza redujo 510 / referencia mi vida e sibólló si sikía e ribOtyo m.', 'preso el hambre reduce el vientre e tyallá e lá sikkiáa o buellá;', NULL, 'Español: reducir', 'import-espanol-bubi'),
  ('bélla', 'v.', NULL, NULL, NULL, 'o bélla (pas. punto béri; paso duro bélessi).', 'paso duro bélessi).', NULL, 'Español: referir', 'import-espanol-bubi'),
  ('ebuerabuera', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebuera buera; -s ibuerabuera, los -s e ibuerabuera.', NULL, NULL, 'Español: reflejo', 'import-espanol-bubi'),
  ('kesse', 's.', 'm.', NULL, 'Cl. 9', 'el - e kesse, e pe''o; refranes kesse, pe''o, los refranes i kesse, i pe''o.', 'refranes kesse, pe''o, los refranes i kesse, i pe''o.', NULL, 'Español: refrán', 'import-espanol-bubi'),
  ('rileppo', 's.', 'm.', NULL, 'Cl. 5', 'el- e rileppo, e i1eppo; -s baleppo, los -s a baleppo.', NULL, NULL, 'Español: refugio', 'import-espanol-bubi'),
  ('bOtuhó', 's.', 'm.', NULL, 'Cl. 3', 'ityuhó, epityi, etuheri, ri''abbo, el - o botuhó, e etyueri, e ityuhó, e epityi, e etuheri, e ri''abbo; -s betuhó, bityueri, batyuhó, ipityi, bituheri, ba''abbo, los -s e betuhó, e bityueri, a batyuhó, e ipityi, e bituheri, a ba''abbo. r', NULL, NULL, 'Español: regalo', 'import-espanol-bubi'),
  ('tówálla', 'v.', NULL, NULL, NULL, 'preso mi padre me rega ña o boie m a la le tówálla; paso punto yo regañé al anciano n tówám e obéolla; paso duro todas las personas regañaban al ladrón a batyo ba mmaa ba tówálessi e húbbé.', 'preso mi padre me rega ña o boie m a la le tówálla; | paso duro todas las personas regañaban al ladrón a batyo ba mmaa ba tówálessi e húbbé.', NULL, 'Español: egañar', 'import-espanol-bubi'),
  ('rekeri', 's.', 'm.', NULL, 'Cl. 5', 'el - e rekeri; regí menes bekeri, los regímenes a bekeri.', 'regí menes bekeri, los regímenes a bekeri.', NULL, 'Español: régimen', 'import-espanol-bubi'),
  ('hMmabi''o', 'v.', NULL, NULL, NULL, 'preso nosotros nos regocijamos to la hMmabi''o; paso punto vosotros os regocijasteis to hMmíbí''o; paso duro ellos se regocijaban ba hMmesíbí''o.', 'preso nosotros nos regocijamos to la hMmabi''o; | paso duro ellos se regocijaban ba hMmesíbí''o.', NULL, 'Español: regocijarse', 'import-espanol-bubi'),
  ('ehMmabi''o', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehMmabi''o, o buello; -s bihMmabi''o, biello, los -s e bihM mabi''o, e biello.', NULL, 'buello', 'Español: regocijo', 'import-espanol-bubi'),
  ('rihóra', 's.', 'm.', NULL, 'Cl. 5', 'el- e rihóra; -s bahó ra, los -s a bahóra. * ida y - bOiá bOhóra.', NULL, NULL, 'Español: regreso', 'import-espanol-bubi'),
  ('hella', 'v.', NULL, NULL, NULL, 'vosotros rehabilitasteis lo hen, ellos rehabilitaron ba heri; paso duro ella rehabilitaba a helessi, vosotras rehabilitabais lo helessi, etc. remo / 511', 'paso duro ella rehabilitaba a helessi, vosotras rehabilitabais lo helessi, etc.', NULL, 'Español: rehabilitar', 'import-espanol-bubi'),
  ('rihattá', 's.', 'm.', NULL, 'Cl. 5', 'el- e rihattá; -s bahat tá, los -s a bahattá.', NULL, NULL, 'Español: reino', 'import-espanol-bubi'),
  ('ekasokasso', 's.', 'm.', NULL, 'Cl. 7', 'el- e ekaso kasso; -s bikasokasso, los -s e bikasokasso.', NULL, NULL, 'Español: relámpago', 'import-espanol-bubi'),
  ('bOsossó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOsossó; -s besossó, los -s e besossó.', NULL, NULL, 'Español: relato', 'import-espanol-bubi'),
  ('bososuella', 's.', 'm.', NULL, 'Cl. 1', 'el- o bososuella; -es basosuella, los -es a basosuella.', NULL, NULL, 'Español: relator', 'import-espanol-bubi');

-- Lote 28 (entradas 1876 a 1900)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('isutto', 's.', 'm.', NULL, 'Cl. 3', '(5); buátyi, el- e isutto, o buátyi; -es basutto, biátyi, los -es a basutto, e biátyi.', 'buátyi, el- e isutto, o buátyi;', 'buátyi', 'Español: reloj', 'import-espanol-bubi'),
  ('ribétto', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribétto; -s abétto, los -s a abétto.', NULL, NULL, 'Español: remanso', 'import-espanol-bubi'),
  ('bOlallo', 's.', 'm.', NULL, 'Cl. 3', 'el o bolallo, e peppe; -s belallo, peppe, los -s e belallo, i peppe.', NULL, NULL, 'Español: remedio', 'import-espanol-bubi'),
  ('bohella', 's.', 'm.', NULL, 'Cl. 1', 'el- o bohel la; -es bahella, los -es a bahella.', NULL, NULL, 'Español: remendador', 'import-espanol-bubi'),
  ('kappí', 's.', 'm.', NULL, 'Cl. 9', 'el - e kappí, e tyákkó; -s kappí, tyákkó, los -s i kappí, i tyákkó. 512/ remolcar', NULL, NULL, 'Español: remo', 'import-espanol-bubi'),
  ('susulla', 'v.', NULL, NULL, NULL, 'pres. el camión remol ca el coche e rikotye ri Já susulla o motóo [e rikotJe rí lá susullo motóO); paso punto el coche remolcó el cayuco o motóo bO susum o buátto [o motó bó súsumo buattóo);pas. duro yo remolcaba n susulessi, tú remolcabas o susulessi, él remol caba a susulessi, etc.', 'paso punto el coche remolcó el cayuco o motóo bO susum o buátto [o motó bó súsumo buattóo);', NULL, 'Español: remolcar', 'import-espanol-bubi'),
  ('tukka', 'v.', NULL, NULL, NULL, 'preso el joven remueve los asuntos o boseseppe a la tukka e biJabba [o boseseppe á la tukke bilabba); paso punto tú removiste el asunto o tukki e elabba [o tukkié labba);pas. duro ella removía a tukessi, vosotros removíais lo tukessi, etc.', 'preso el joven remueve los asuntos o boseseppe a la tukka e biJabba [o boseseppe á la tukke bilabba);', NULL, 'Español: remover', 'import-espanol-bubi'),
  ('peálla', 'v.', NULL, NULL, NULL, 'preso neg. el gobier no no remunera a sus trabajadores e kóbinna a tyá la peálla a balakóJáko ba áí [e kóbinna a tJá la peálla balakóláko báái);', 'preso neg.', NULL, 'Español: remunerar', 'import-espanol-bubi'),
  ('etuepópo', 's.', 'm.', NULL, 'Cl. 7', 'el- e etuepópo [eetuepóppo); -s bituepópo, los -s e bitue pópO.', NULL, NULL, 'Español: renacuajo', 'import-espanol-bubi'),
  ('ribolló', 's.', 'm.', NULL, 'Cl. 5', 'etebebbe, el- e ribolló, o botumanna, e etebebbe [eetebebbe); -es abolló, betumanna, bitebaibbe, los -es a abolló, e betumanna, e bitebaíbbé.', NULL, 'botumanna', 'Español: rencor', 'import-espanol-bubi'),
  ('buiko', 's.', 'm.', NULL, 'Cl. 3', 'el - o buiko; -s biiko, los -s e biiko.', NULL, NULL, 'Español: reniego', 'import-espanol-bubi'),
  ('esálero', 's.', 'm.', NULL, 'Cl. 7', 'el - e esálero [eesálero); -s bisálero, los -s e bisálero.', NULL, NULL, 'Español: renombre', 'import-espanol-bubi'),
  ('boabba', 's.', 'm.', NULL, 'Cl. 1', 'el- o boabba; -es baabba, los -es a baabba. * clan de los -es baatuppo.', NULL, NULL, 'Español: repartidor', 'import-espanol-bubi'),
  ('abba', 'v.', NULL, NULL, NULL, '2. - algo para alguien o abella; preso el maes tro reparte galletas a los alumnos o bue''iáa a la abella a bóllá bisikittí.', 'preso el maes tro reparte galletas a los alumnos o bue''iáa a la abella a bóllá bisikittí.', NULL, 'Español: repartir', 'import-espanol-bubi'),
  ('riabbi', 's.', 'm.', NULL, 'Cl. 5', 'el- e riabbi; -s baab bi, los -s a baabbi.', NULL, NULL, 'Español: reparto', 'import-espanol-bubi'),
  ('eleaeró', 's.', 'm.', NULL, 'Cl. 7', 'el- e eleaeró [eeleaeró); -s bileaeró, los -s e bileaeró.', NULL, NULL, 'Español: reposacabezas', 'import-espanol-bubi'),
  ('eheOOri', 's.', 'm.', NULL, 'Cl. 7', 'el e eheberi [eeheberi), o boebbó; -s biheberi, beebbó, los -s e biheberi, e beebbó.', NULL, 'boebbó', 'Español: reposo', 'import-espanol-bubi'),
  ('ooa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: reprobar', 'import-espanol-bubi'),
  ('akió', 's.', 'm.', NULL, 'Cl. 7', 'el - e akió; -s biakió, los -s e biakió.', NULL, NULL, 'Español: réprobo', 'import-espanol-bubi'),
  ('nebba', 's.', 'm.', NULL, 'Cl. 9', 'el - e nebba; -es nebba, los -es i nebba. retirar / 513', NULL, NULL, 'Español: reptil', 'import-espanol-bubi'),
  ('bosutta', 's.', 'm.', NULL, 'Cl. 3', 'el- o bosutta; res balones besutta, los resbalones e besutta.', 'res balones besutta, los resbalones e besutta.', NULL, 'Español: resbalón', 'import-espanol-bubi'),
  ('suppiáa', 'v.', NULL, NULL, NULL, 'preso yo reservo un asiento n la suppiáa empa; pas. punto yo reservé un asiento n suppía empa; paso duro tú reservabas asientos o supiesiia bimpa.', 'preso yo reservo un asiento n la suppiáa empa; | paso duro tú reservabas asientos o supiesiia bimpa.', NULL, 'Español: reservar', 'import-espanol-bubi'),
  ('bohorÍ', 's.', 'm.', NULL, 'Cl. 3', '1, el - o bohorÍ1; -s behorÍ1, los -s e behorÍ1.', NULL, NULL, 'Español: resfriado', 'import-espanol-bubi'),
  ('biálla', 'v.', NULL, NULL, NULL, 'vosotros resististeis lo biám, ellos resistieron ba biám; paso duro ella resistía a biálessi, tú resistías o biálessi, etc.', 'paso duro ella resistía a biálessi, tú resistías o biálessi, etc.', NULL, 'Español: resistir', 'import-espanol-bubi'),
  ('eléálo', 's.', 'm.', NULL, 'Cl. 7', 'el- e eléálo; -s biléálo, los -s e biléálo.', NULL, NULL, 'Español: respaldo', 'import-espanol-bubi');

-- Lote 29 (entradas 1901 a 1925)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOtó''ia', 's.', 'm.', NULL, 'Cl. 3', 'el - o botó''ia; -s betó''ia, los -s e betó''ia. * falta de ripukké, la falta de - e ripukké; faltas de - apukké, las faltas de - a apukké.', 'faltas de - apukké, las faltas de - a apukké.', NULL, 'Español: respeto', 'import-espanol-bubi'),
  ('ekasokasso', 's.', 'm.', NULL, 'Cl. 7', 'ebaribia (eL 7), el - e ekasokassü, e ebaribia; -es bikasokasso, mbaribia, los -es e bikasokasso, e mbaribia.', NULL, NULL, 'Español: resplandor', 'import-espanol-bubi'),
  ('bOettyi', 's.', 'm.', NULL, 'Cl. 3', 'el - o boettyi; -s beettyi (eL 4), los -s e beettyi.', NULL, NULL, 'Español: resquicio', 'import-espanol-bubi'),
  ('iréi', 's.', 'm.', NULL, 'Cl. 5', 'el- e iréi; -s baréi, los -s a baréi.', NULL, NULL, 'Español: restaurante', 'import-espanol-bubi'),
  ('eiábanna', 's.', 'm.', NULL, 'Cl. 7', 'eiabara, el- e eiábanna, e rappí, e eia bara; -s biiábanna, bappí, biiabara, los -s e biiábanna, a bappí, e biiabara. 2. -s mortales bileppé, los -s mortales e bileppé. 3. - animal bokkí, el - animal o bokkí; -s animales beokkí, los -s animales e beokkí.', NULL, NULL, 'Español: resto', 'import-espanol-bubi'),
  ('luua', 's.', 'm.', NULL, 'Cl. 11', 'el - o luua, e elappá; -es kuua, bilap pá, los -es i kuua, e bilappá.', NULL, NULL, 'Español: retal', 'import-espanol-bubi'),
  ('pisíssi', 's.', 'm.', NULL, 'Cl. 9', 'el - e pisíssi; -s pisís si, los -s i pisíssi.', NULL, NULL, 'Español: retazo', 'import-espanol-bubi'),
  ('bó''a', 'v.', NULL, NULL, NULL, 'paso punto yo retiré el libro n bó''i e ribúkku; paso duro tú 514/ retiro retirabas las mantas o bó''essi e békutta [o bo''essé bekutta). 3. -se o koppia (pas. punto kopiia; paso duro kopiesiia).', 'paso punto yo retiré el libro n bó''i e ribúkku; | paso duro kopiesiia).', NULL, 'Español: retirar', 'import-espanol-bubi'),
  ('rileppo', 's.', 'm.', NULL, 'Cl. 5', 'el - e riJeppo; -8 baleppo, los -s a baleppo.', NULL, NULL, 'Español: retiro', 'import-espanol-bubi'),
  ('ripe''u', 's.', 'm.', NULL, 'Cl. 5', 'el- e ripe''u; -s ape'' u, los -s a ape''u. r e torcer, v. o rikkáa,', NULL, NULL, 'Español: retoño', 'import-espanol-bubi'),
  ('esubari', 's.', 'm.', NULL, 'Cl. 7', 'el - e esubari [eesu bari); -8 bisubari, los -s e bisubari.', NULL, NULL, 'Español: retraso', 'import-espanol-bubi'),
  ('ehánna', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehánna [eehán na); -s bihánna, los -s e bihánna. r', NULL, NULL, 'Español: retrato', 'import-espanol-bubi'),
  ('rioom', 's.', 'm.', NULL, 'Cl. 5', 'koppí, el- e rioom, e itoberi, e koppí; -s baooIÍl, batoberi, koppí (el. JO), los -s a baoo ''m, a batoberi, i koppí.', NULL, NULL, 'Español: etrete', 'import-espanol-bubi'),
  ('bokóso', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOkóso, e tyollá; -8 bekóso, tyoIlá, las -s e bekóso, i tyoJlá.', NULL, NULL, 'Español: reuma', 'import-espanol-bubi'),
  ('eoperi', 's.', 'f.', NULL, 'Cl. 7', 'riob bí, bOkottO, la - e eoperi [eeoperi), o IOkotto, e riobbí, o bokotto; reuniones bioperi, bekotto, baobbí, las reu niones e bioperi, e bekotto, a baobbí. * - de paí ses loppó (el. 1 1).', 'reuniones bioperi, bekotto, baobbí, las reu niones e bioperi, e bekotto, a baobbí.', 'bokotto', 'Español: reunión', 'import-espanol-bubi'),
  ('púbbia', 'v.', NULL, NULL, NULL, 'pres. el calor revienta la botella e húé e lá póbbia o bokoteri [e hué é la póbbio bOkoteri); paso punto ellos reventaron los caparazones ba póbiia e mpoppó [ba pobíé mpoppó). 2. -se o púbba, o póbba (pas. punto póbbi; paso duro póbessi).', 'paso punto ellos reventaron los caparazones ba póbiia e mpoppó [ba pobíé mpoppó). | paso duro póbessi).', 'póbba', 'Español: reventar', 'import-espanol-bubi'),
  ('ebo', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebo ebbé [1 51 5bo ebbé); -s ibo ibbé, los -s e ibo ibbé.', NULL, NULL, 'Español: reverso', 'import-espanol-bubi'),
  ('rihóteri', 's.', 'm.', NULL, 'Cl. 5', 'el - e rihóteri; reveses bahóterÍ, los reveses a bahóteri. r', 'reveses bahóterÍ, los reveses a bahóteri.', NULL, 'Español: revés', 'import-espanol-bubi'),
  ('papara', 'v.', NULL, NULL, NULL, 'p a so punto yo revolqué n papariia [m papariia), tú r e volcaste o papariia, él rewIcó a papariia, etc.; r', NULL, NULL, 'Español: evolcar', 'import-espanol-bubi'),
  ('ribákeri', 's.', 'f.', NULL, 'Cl. 5', 'la - e ribákeri; -s abákeri, las -s a abákeri.', NULL, NULL, 'Español: revuelta', 'import-espanol-bubi'),
  ('bOsókkó', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOsókkó; -es basók kó, los -es a basókkó.', NULL, NULL, 'Español: rey', 'import-espanol-bubi'),
  ('bOsubari', 's.', 'm.', NULL, 'Cl. 1', '-s basubári, los -s a basubári.', NULL, NULL, 'Español: rezagado', 'import-espanol-bubi'),
  ('etoppe', 's.', 'm.', NULL, 'Cl. 7', 'el - e etoppe [eetop pe); -s bitoppe, los -s e bitoppe. romper / 515', NULL, NULL, 'Español: ricino', 'import-espanol-bubi'),
  ('korí', 's.', 'm.', NULL, 'Cl. 9', 'borí (el. 1/2), botyú'' u, el - e korí, o borí; -s korí (eL 10), baorí, batyú''u (eL 2), los -s i korí, a baorí; * ser - o tyu''úbba.', NULL, 'borí', 'Español: rico', 'import-espanol-bubi'),
  ('ebekabékka', 's.', 'm.', NULL, 'Cl. 7', 'el e ebekabékka, e etataa; -s ibekabékka, bitataa, los -s e ibe kabékka, e bitataa.', NULL, NULL, 'Español: rifle', 'import-espanol-bubi');

-- Lote 30 (entradas 1926 a 1950)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('isillo', 's.', 'm.', NULL, 'Cl. 5', 'el - e isillo, e tyoonó; rincones basillo, tyoooó, los rincones a basilio, i tyoooó.', 'rincones basillo, tyoooó, los rincones a basilio, i tyoooó.', NULL, 'Español: rincón', 'import-espanol-bubi'),
  ('pi''o', 's.', 'm.', NULL, 'Cl. 9', 'el- e pi'' o; riñones pi''o, los riñones i pi'' o.', 'riñones pi''o, los riñones i pi'' o.', NULL, 'Español: riñón', 'import-espanol-bubi'),
  ('ríe', 's.', 'm.', NULL, 'Cl. 5', 'el - e ríe; -s bíe, los -s a bíe. * - seco bosessa, el - seco o bosessa; -s secos besessa, los -s secos e besessa.', NULL, NULL, 'Español: río', 'import-espanol-bubi'),
  ('robbo', 's.', 'm.', NULL, 'Cl. 5', 'el- e robbo; -s bobbo, los -s a bobbo. * pequeño - de la reconcilia ción sibétto, pequeños -s de la reconci liación tobéttoo.', NULL, NULL, 'Español: rito', 'import-espanol-bubi'),
  ('ubáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: robar', 'import-espanol-bubi'),
  ('ribba', 's.', 'm.', NULL, 'Cl. 5', 'rimma (CL 5), riiba, el - e ribba, e rubba, e rirnma, e riiba; -s bibba, bubba, barnma, biiba, los -s a bibba, a bubba, a bam ma, a biiba. * el - de la aurora e ribba ri a e eba r i.', NULL, NULL, 'Español: rocío', 'import-espanol-bubi'),
  ('loutaeri', 's.', 'm.', NULL, 'Cl. 10', '(el. l l), el - o loutaeri; -s beutaeri (eL 4), utaeri, los -s e beutaeri, i', NULL, NULL, 'Español: rodeo', 'import-espanol-bubi'),
  ('kallo', 's.', 'm.', NULL, 'Cl. 9', 'el - e kallo; -5 kallo, los -s i kallo.', NULL, NULL, 'Español: rodete', 'import-espanol-bubi'),
  ('boallo', 's.', 'm.', NULL, 'Cl. 3', 'etetúbba (CL 7), el o bOallo, e etetúbba; -s beallo (CL 4), bitetúbba, los -s e beallo, e bitetúbba.', NULL, NULL, 'Español: rodillo', 'import-espanol-bubi'),
  ('tolatolla', 'adj.', NULL, NULL, NULL, 'expr. una tela rojiza luua lua tolatol1a.', 'expr.', NULL, 'Español: rojizo', 'import-espanol-bubi'),
  ('tolatolla', 'adj.', NULL, NULL, NULL, 'expr. una camisa roja sotte sa tolatolla.', 'expr.', NULL, 'Español: rojo', 'import-espanol-bubi'),
  ('ribaIlá', 's.', 'm.', NULL, 'Cl. 5', 'el - e riballá, el - de malanga rallada e riballá; -s aballá (eL 6), -s de malanga rallada aballá (eL 6), los -s a aballá.', NULL, NULL, 'Español: rollito', 'import-espanol-bubi'),
  ('epéppa', 's.', 'm.', NULL, 'Cl. 7', 'siotatyú''o (eL 12), el - e epéppa, e siotatyú''o; -s ipéppa, tontatyú''o, los -s e ipéppa, o too tatyú''o.', NULL, 'too', 'Español: rollo', 'import-espanol-bubi'),
  ('boátta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOátta; -es baátta (eL 2), los -es a baátta.', NULL, NULL, 'Español: rompedor', 'import-espanol-bubi'),
  ('kólló', 's.', 'm.', NULL, 'Cl. 9', 'el- e kólló; -ces kólló, los -ces i kólló.', NULL, NULL, 'Español: rompiz', 'import-espanol-bubi'),
  ('ukkiáa', 'v.', NULL, NULL, NULL, 'paso punto yo ron qué n ukía, tú roncaste o ukía, él roncó a ukía, ete.;pas. duro nosotros ron cábamos to ukiesiia, vosotros ronca bais lo ukiesiia, ellos roncaban ba ukiesiia. (b) o ikiáa (pas. punto ikía; paso duro ikiesiia).', 'paso punto yo ron qué n ukía, tú roncaste o ukía, él roncó a ukía, ete. | paso duro ikiesiia).', NULL, 'Español: roncar', 'import-espanol-bubi'),
  ('tyákobia', 'v.', NULL, NULL, NULL, 'preso el perro roncha cuando come huesos e puá e lá tyákobia na é la rá biuhá; paso punto tyákobiia; paso duro tyákobiesiia.', 'preso el perro roncha cuando come huesos e puá e lá tyákobia na é la rá biuhá; | paso duro tyákobiesiia.', NULL, 'Español: ronchar', 'import-espanol-bubi'),
  ('rukkió', 's.', 'm.', NULL, 'Cl. 6', 'el - e rukió; -s bukió, los -s a bukió.', NULL, NULL, 'Español: ronquido', 'import-espanol-bubi'),
  ('petté', 's.', 'm.', NULL, 'Cl. 9', 'el - e petté; -es petté, los -es i petté.', NULL, NULL, 'Español: ronzal', 'import-espanol-bubi'),
  ('korokoroo', 's.', 'f.', NULL, 'Cl. 10', 'la - i korokoroo;-s korokoroo (el. lO), las -s i korokoroo.', NULL, NULL, 'Español: roña', 'import-espanol-bubi'),
  ('lohétyá', 's.', 'f.', NULL, 'Cl. 9', '(el. 1 1), luua, la - o lohétyá, o luua; -s kétyá, kuua, las -s i kétyá, i kuua.', NULL, 'luua', 'Español: ropa', 'import-espanol-bubi'),
  ('bossó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bossó; -s bessó, los -s e bessó.', NULL, NULL, 'Español: rostro', 'import-espanol-bubi'),
  ('etatari', 's.', 'm.', NULL, 'Cl. 7', 'el - e etatari; -s bitatari, los -s e bitatari. * - en un tejido etatta, el - en un tejido e etatta; -s en un tejido bitatta, los -s en un teji do e bitatta.', NULL, NULL, 'Español: roto', 'import-espanol-bubi'),
  ('tyóóm', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyóóm; -es tyóóm, los -es i tyóóm.', NULL, NULL, 'Español: rubor', 'import-espanol-bubi'),
  ('ehCleri', 's.', 'm.', NULL, 'Cl. 7', 'el - e eheleri; -s bihCleri; los -s e bihe1eri.', 'los -s e bihe1eri.', NULL, 'Español: ruego', 'import-espanol-bubi');

-- Lote 31 (entradas 1951 a 1975)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buitító', 's.', 'm.', NULL, 'Cl. 3', 'kipáárn, bompá, buppá, el - o bui titó, e nokonoko, e kipáám, o bompá, o buppá; -s bititó, nokonoko, kipáám, bempá, biuppá, los -s e bititó, i nokonoko, i kipáám, e bempá, e biuppá.', NULL, 'bompá, buppá', 'Español: ruido', 'import-espanol-bubi'),
  ('bólláa', 'v.', NULL, NULL, NULL, 'preso la cabra rumia e póríi e lá bólláa, e póríi e lá nótya; paso punto bóríi, nótyía; paso duro bólessi, nótyesiia.', 'preso la cabra rumia e póríi e lá bólláa, e póríi e lá nótya; | paso duro bólessi, nótyesiia.', NULL, 'Español: rumiar', 'import-espanol-bubi'),
  ('siporóko', 's.', 'm.', NULL, 'Cl. 12', 'el - e siporóko; -es toporóko, los -es o toporóko.', NULL, NULL, 'Español: rumor', 'import-espanol-bubi'),
  ('sátiré', 's.', 'm.', NULL, 'Cl. 12', 'el - e sátiré. e lokia; -s tuátiré, lokia, los -s o tuátiré. i lokia.', NULL, NULL, 'Español: sábado', 'import-espanol-bubi'),
  ('kuppá', 's.', 'm.', NULL, 'Cl. 9', 'el - e kuppá; -s kuppá, los -s i kuppá.', NULL, NULL, 'Español: sabio', 'import-espanol-bubi'),
  ('bonotyó', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOnotyó; -es benotyó, los -es e benotyó.', NULL, NULL, 'Español: sabor', 'import-espanol-bubi'),
  ('bohiammo', 's.', 'm.', NULL, 'Cl. 1', 'el- o bohiammo, e pateri; -s bohiammo, pateri, los -s a bohiammo, ipateri. * su mo - Abba, el sumo - e Abba.', NULL, NULL, 'Español: sacerdote', 'import-espanol-bubi'),
  ('ribéki', 's.', 'm.', NULL, 'Cl. 5', 'el- e ribéki; -s abéki, los -s a abéki.', NULL, NULL, 'Español: saco', 'import-espanol-bubi'),
  ('solobbia', 'v.', NULL, NULL, NULL, 'preso el cocinero sala el pescado o bOlappí a la sólobbia i tyué; paso punto mi madre saló la carne o oberíi lÍ1 a sólobiia o bolÍ1mua; paso duro nosotros salába mos to sólobiesiia.', 'preso el cocinero sala el pescado o bOlappí a la sólobbia i tyué; | paso duro nosotros salába mos to sólobiesiia.', NULL, 'Español: salar', 'import-espanol-bubi'),
  ('palláa', 's.', 'm.', NULL, 'Cl. 9', 'epopollo (Cl. 7/8), el e palláa. e epopollo; salones palláa, bipopollo, los salones i palláa. e bipopOllo. * - grande epopollo, el grande e epopollo; salones grandes bipopollo, los salones grandes e bipo pollo.', 'salones palláa, bipopollo, los salones i palláa. | salones grandes bipopollo, los salones grandes e bipo pollo.', NULL, 'Español: salón', 'import-espanol-bubi'),
  ('patyípatyí', 's.', 'm.', NULL, 'Cl. 9', 'el- e patyí patyi; -s patyípatyí (el. W), los -s i patyípatyí.', NULL, NULL, 'Español: saltamontes', 'import-espanol-bubi'),
  ('patyíbba', 'v.', NULL, NULL, NULL, 'preso la rana salta e enyeke e lá patyíbba; paso punto la persona saltó o bOtyo a patyíbbi; paso duro el grillo saltaba e kOlóbetté e patyíbessi. 2. - un obstáculo o péréa; preso la gente salta la gran roca a batyo ba lá péréa e ite róte, paso duro la abuela saltaba el tron co o bOnánna a péreseei e ernmornmo. 3. - a la comba o tyubea; preso los chicos saltan a la comba a b...', 'preso la rana salta e enyeke e lá patyíbba; | paso duro el grillo saltaba e kOlóbetté e patyíbessi. | preso la gente salta la gran roca a batyo ba lá péréa e ite róte, paso duro la abuela saltaba el tron co o bOnánna a péreseei e ernmornmo.', NULL, 'Español: saltar', 'import-espanol-bubi'),
  ('bosorá', 's.', 'm.', NULL, 'Cl. 3', 'el- o bo sorá, e esórá; -s besorá, bisórá, los -s e besorá, e bisórá.', NULL, NULL, 'Español: salto', 'import-espanol-bubi'),
  ('ebóállo', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebóállo; -s mbóállo, ibóállo, los -s e mbóállo, e ibóállo.', NULL, NULL, 'Español: saludo', 'import-espanol-bubi'),
  ('oburó', 's.', 'm.', NULL, 'Cl. 1', 'el- o oburó; -s aburó, los -s a aburó.', NULL, NULL, 'Español: salvado', 'import-espanol-bubi'),
  ('bonnya', 's.', 'm.', NULL, 'Cl. 1', 'el o bonnya, o bosella; -es bannya, basella, los -es a bannya, a basella. inl o inna;pres. el médico sana e rokút ta a la inna; paso punto el sanador me sanó o bosella a le inni paso duro el sacerdote bubi sanaba al anciano o bohiammo a inessi e obéolla.', 'paso punto el sanador me sanó o bosella a le inni paso duro el sacerdote bubi sanaba al anciano o bohiammo a inessi e obéolla.', 'bosella', 'Español: sanador', 'import-espanol-bubi'),
  ('boilori', 's.', 'm.', NULL, 'Cl. 3', 'el - o boilori; -s beilori, los -s e beilori.', NULL, NULL, 'Español: saneamiento', 'import-espanol-bubi'),
  ('enyekábityi', 's.', 'm.', NULL, 'Cl. 7', 'el e enyekábityi, e enyeke; -s binyekábityi, binyeke, los -s e binyekábityi, e binyeke.', NULL, NULL, 'Español: sapo', 'import-espanol-bubi'),
  ('loantyotyo', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o loan tyotyo; sarampiones kantyotyo, los sarampiones i kantyotyo.', 'sarampiones kantyotyo, los sarampiones i kantyotyo.', NULL, 'Español: sarampión', 'import-espanol-bubi'),
  ('bohe', 's.', 'm.', NULL, 'Cl. 1', '/la, telfáa, el- o bohella, e lelláa; -s bahella, telláa (el. 1 0), los -s a bahel1a, i tetláa.', NULL, NULL, 'Español: sastre', 'import-espanol-bubi'),
  ('ebanda', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebanda; -s ihanda, los -s e ibanda.', NULL, NULL, 'Español: secadero', 'import-espanol-bubi'),
  ('bookko', 's.', 'm.', NULL, 'Cl. 3', 'ehuáeri, el - o bookko, e ehattá, e ehuáe ri; -s beokko, bihattá, bihuáeri, los -s e beokko, e bihattá, e bihuáe ri. * hablar en - o en voz baja o bualel1a; preso el ayudante del sacerdote habla en secreto e elotyí e lá bualella; paso punto los guerreros hablaron en secreto a abitábítta ba bualeem; paso duro mis padres hablaban en secreto a baiern ba bualelessi.', 'preso el ayudante del sacerdote habla en secreto e elotyí e lá bualella; | paso duro mis padres hablaban en secreto a baiern ba bualelessi.', NULL, 'Español: secreto', 'import-espanol-bubi'),
  ('hótya', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: segar', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, '- personas batyo be ra''a, historias beatta bié ra''a, - camas baatyé be ra''a, - pueblos biriia bié ra''a, - sardinas kol1o yé ra''a, - camisas tótte tué ra''a.', NULL, NULL, 'Español: seis', 'import-espanol-bubi'),
  ('tomólekke', 's.', 'm.', NULL, 'Cl. 9', 'el - e tomó lekke; -s tomólekke, los -s i tomólekke.', NULL, NULL, 'Español: semáforo', 'import-espanol-bubi');

-- Lote 32 (entradas 1976 a 2000)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boeppa', 's.', 'm.', NULL, 'Cl. 1', 'el - o boeppa; -es baeppa, los -es a baeppa.', NULL, NULL, 'Español: sembrador', 'import-espanol-bubi'),
  ('losorá', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1), el- o losorá; séme nes basorá, los sémenes a basorá.', 'séme nes basorá, los sémenes a basorá.', NULL, 'Español: semen', 'import-espanol-bubi'),
  ('elobbe', 's.', 'm.', NULL, 'Cl. 7', 'el - e elobbe; -s bilobbe, los -s e bilobbe.', NULL, NULL, 'Español: semillero', 'import-espanol-bubi'),
  ('inooá', 's.', 'm.', NULL, 'Cl. 5', 'el- e inooá; -s banoOá, los -s a banooá.', NULL, NULL, 'Español: senado', 'import-espanol-bubi'),
  ('bosekka', 's.', 'm.', NULL, 'Cl. 3', 'telle, el - o bosekka, e sitelle, e telle; -s besekka, totelle, telle (el. lO), los -s e besekka, o totelle, i telle.', NULL, 'totelle', 'Español: sendero', 'import-espanol-bubi'),
  ('ribelle', 's.', 'm.', NULL, 'Cl. 5', '-s abeJle, los -s a abeJle.', NULL, NULL, 'Español: seno', 'import-espanol-bubi'),
  ('o''áa', 'v.', NULL, NULL, NULL, '2. -se o o''áa, o o''éa (pas. punto o''éi; paso duro o''eseei).', 'paso duro o''eseei).', 'o''éa', 'Español: sentir', 'import-espanol-bubi'),
  ('ntá', 's.', 'm.', NULL, 'Cl. 1', 'rnrneá, el- e ntá, o boje, o rnrneá; -es bé ntá, baie, mmeá, los -es a bé ntá, a baie, a mmeá. * -es de los pueblos móityé, los -es de los pueblos a móityé.', NULL, 'boje, rnrneá', 'Español: señor', 'import-espanol-bubi'),
  ('tomaityi', 's.', 'm.', NULL, 'Cl. 13', 'los meses de - e biéá biá tomaityi.', NULL, NULL, 'Español: septiembre', 'import-espanol-bubi'),
  ('enno', 's.', 'm.', NULL, 'Cl. 7', 'el - e enno, e ele''o; -s binno, bile''o, los -s e binno, e bile''o.', NULL, NULL, 'Español: sepulcro', 'import-espanol-bubi'),
  ('tyilella', 'v.', NULL, NULL, NULL, 'paso punto el barro sepultó a los trabajadores e bitokkó bi tyileri a balakóláko; paso duro nosotros sepultábamos nuestro tesoro to tyilelessi e epopollo áó.', 'paso punto el barro sepultó a los trabajadores e bitokkó bi tyileri a balakóláko;', NULL, 'Español: sepultar', 'import-espanol-bubi'),
  ('botyilella', 's.', 'm.', NULL, 'Cl. 1', 'el - o bo tyilella; -s batyilella, los -s a batyilella.', NULL, NULL, 'Español: sepulturero', 'import-espanol-bubi'),
  ('erísaríssa', 's.', 'm.', NULL, 'Cl. 7', 'el e erísaríssa, e esso; -s birisa ríssa, bisso, los -s e birísaríssa, e bisso.', NULL, NULL, 'Español: serrucho', 'import-espanol-bubi'),
  ('etyubbá', 's.', 'm.', NULL, 'Cl. 7', 'el - e etyubbá; -s bityubbá, los -s e bityubbá.', NULL, NULL, 'Español: servicio', 'import-espanol-bubi'),
  ('tokko', 's.', 'm.', NULL, 'Cl. 13', 'los -s o tokko.', NULL, NULL, 'Español: sesos', 'import-espanol-bubi'),
  ('ee', 'adv.', NULL, NULL, NULL, 'eée, áelé. * - señor ee e ntá, ee e bOie; - señora ee e mme.', NULL, NULL, 'Español: sí', 'import-espanol-bubi'),
  ('pittóo', 's.', 'm.', NULL, 'Cl. 9', 'el - e pittóo; -s pittóo, los -s i pittóo.', NULL, NULL, 'Español: silbato', 'import-espanol-bubi'),
  ('buetyíi', 's.', 'm.', NULL, 'Cl. 3', 'el - o buetyíi; -s bie tyíi, los -s e bietyíi. * 1. - producido con manos y boca esáporí, el - producido con manos y boca e esáporí; -s pro ducidos con manos y boca bisápori, los-s producidos con manos y boca e bisápOrí. 2. - fuer te boseppe, el - fuerte o bOseppe; -s fuertes beseppe, los -s fuertes e beseppe.', NULL, NULL, 'Español: silbido', 'import-espanol-bubi'),
  ('bOhMma', 's.', 'm.', NULL, 'Cl. 3', 'el- o bohMma; -s behMma, los -s e behMma.', NULL, NULL, 'Español: silencio', 'import-espanol-bubi'),
  ('esélásélá', 's.', 'm.', NULL, 'Cl. 7', 'lokukke (el. 1 1), el - e esélásélá, o lokukke; -s bisé lásélá, bekukke, los -s e bisélásélá, e bekukke.', NULL, 'lokukke', 'Español: síncope', 'import-espanol-bubi'),
  ('eoso', 's.', 'm.', NULL, 'Cl. 7', 'el- e eoso;-5 bioso, los -s e bioso.', NULL, NULL, 'Español: sistema', 'import-espanol-bubi'),
  ('eruua', 's.', 'm.', NULL, 'Cl. 7', 'eusso, el- e eruua, ahabba, e eusso; -s biruua, bihabba, biussO, los -s e biruua, e bihabba, e biusso. * busco un para dormir n la utya habba ha lokke, n la utya eruua e lokke.', NULL, NULL, 'Español: sitio', 'import-espanol-bubi'),
  ('rippá', 's.', 'm.', NULL, 'Cl. 5', 'el - e rippá, e rappáa; -s bippá, bappáa, los -s a bippá, a bappáa.', NULL, NULL, 'Español: sobaco', 'import-espanol-bubi'),
  ('boseppa', 's.', 'm.', NULL, 'Cl. 1', 'el- o boseppa;-s baseppa, los -s a baseppa.', NULL, NULL, 'Español: soberbio', 'import-espanol-bubi'),
  ('sibotyílla', 's.', 'm.', NULL, 'Cl. 12', 'el - e sibOtyílla, e ribotyílla; -s tobotyil la, abotyílla, los -s o tobotyílla, a abotyílla.', NULL, NULL, 'Español: sobrenombre', 'import-espanol-bubi');

-- Lote 33 (entradas 2001 a 2025)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('neppó', 's.', 'm.', NULL, 'Cl. 9', 'el - e neppó; -s nep pó, los -s i neppó.', NULL, NULL, 'Español: sobrino', 'import-espanol-bubi'),
  ('bulaella', 'v.', NULL, NULL, NULL, 'preso tú me socorres o la le bulaella, o la le iálla; paso punto el extranjero me socorrió o boríbáa a le bulaeri, o boríbáa a le iári; paso duro el perro socorría al niño e puá e bulaelessi o bóllá.', 'preso tú me socorres o la le bulaella, o la le iálla; | paso duro el perro socorría al niño e puá e bulaelessi o bóllá.', 'la, boríbáa', 'Español: socorrer', 'import-espanol-bubi'),
  ('eiállo', 's.', 'm.', NULL, 'Cl. 7', 'el- e eiállo; -s biiállo. los -s e biiállo.', NULL, NULL, 'Español: socorro', 'import-espanol-bubi'),
  ('etetémpa', 's.', 'm.', NULL, 'Cl. 7', 'el e etetémpa, e etetéuppa; -s bitetémpa, bitetéuppa, los -s e bitetémpa, e bitetéuppa.', NULL, NULL, 'Español: sofá', 'import-espanol-bubi'),
  ('itohí', 's.', 'm.', NULL, 'Cl. 5', 'el - e itohí; -es batohí, los -es a batohí.', NULL, NULL, 'Español: sol', 'import-espanol-bubi'),
  ('bOsobbá', 's.', 'm.', NULL, 'Cl. 1', 'sotyáa, el - o bosobbá, o obitábítta, e so tyáa; -s basobbá, abitábítta, sotyáa, los -s a basobbá, a abitábítta, i sotyáa.', NULL, 'obitábítta', 'Español: soldado', 'import-espanol-bubi'),
  ('bótanna', 'v.', NULL, NULL, NULL, 'preso nosotros soldamos los hierros to la hOtanna e bekussú; paso punto la chica soldó la cuchara o boláwáari a botam e sipúúm;pas. dur. la Madre Bisila soldaba todas las cosas o mmé Bisila a hOtanessi a lokko la mmaa.', 'preso nosotros soldamos los hierros to la hOtanna e bekussú;', NULL, 'Español: soldar', 'import-espanol-bubi'),
  ('se''úbba', 'v.', NULL, NULL, NULL, 'preso el bebé solloza e siné''e si lá se''úbba, e siné''e si lá rutya, paso duro nosotros sollozábamos to se''úbessi, to rutyessi, vosotros sollozabais 10 se''úbessi, lo rutyessi, ellas sollozaban ba se''ú bessi, ba rutyessi. 2. - por alguien o rutyella; preso mi abuelo solloza por su espo sa o boyolla m a la rutyella o waísso áí.', 'preso el bebé solloza e siné''e si lá se''úbba, e siné''e si lá rutya, paso duro nosotros sollozábamos to se''úbessi, to rutyessi, vosotros sollozabais 10 se''úbessi, lo rutyessi, ellas sollozaban ba se''ú bessi, ba rutyessi. | preso mi abuelo solloza por su espo sa o boyolla m a la rutyella o waísso áí.', NULL, 'Español: sollozar', 'import-espanol-bubi'),
  ('ese''úballa', 's.', 'm.', NULL, 'Cl. 7', 'el e ese''úballa, e erutya; -s bise''úballa, birutya, los -s e bise''ú baila, e birutya.', NULL, NULL, 'Español: sollozo', 'import-espanol-bubi'),
  ('obélle', 's.', 'm.', NULL, 'Cl. 7', 'el - e obélle; -s bio bélle, los -s e biobélle.', NULL, NULL, 'Español: soltero', 'import-espanol-bubi'),
  ('ebuttá', 's.', 'm.', NULL, 'Cl. 5', '(Cl. 7), esokka (CI. 7), risok ká, el - e ebuttá, e esOkka, e risOkká; -s mbuttá, bisokka, basOkká (Cl. 6), los -s e mbuttá, e bisOkka, a ba sOkká. * - de ala ancha etatabómbó, el- de ala ancha e etatabómbó; -s de ala ancha bitatabómbó, los -s de ala ancha e bitatabómbó.', NULL, NULL, 'Español: sombrero', 'import-espanol-bubi'),
  ('sityappa', 's.', 'm.', NULL, 'Cl. 12', 'el - e sityappa, e sityakalébbo; -s tO suegra / 523 tyappa, totyakalébbo, los -s o totyappa, o totyakalébbo.', NULL, 'totyakalébbo', 'Español: sonajero', 'import-espanol-bubi'),
  ('katyábba', 'v.', NULL, NULL, NULL, 'pres. la calabaza suena e etobba e lá katyábba; paso punto las campanas sonaron e bilebó bi katyábbi.', 'pres. | paso punto las campanas sonaron e bilebó bi katyábbi.', NULL, 'Español: sonar', 'import-espanol-bubi'),
  ('bOmpá', 's.', 'm.', NULL, 'Cl. 3', 'el- o bompá; -s bem pá, los -s e bempá.', NULL, NULL, 'Español: sonido', 'import-espanol-bubi'),
  ('haa', 'v.', NULL, NULL, NULL, 'pres. yo sonsaco a tu her mano n la haa o bObelle o; ( pas. punto haai; paso duro haessi).', 'paso duro haessi).', NULL, 'Español: sonsacar', 'import-espanol-bubi'),
  ('seballa', 'v.', NULL, NULL, NULL, 'pas. punto ellos soña ron conmigo ba le sebaam, yo no soñé contigo n tá o sebaam, etc.;pas. duro tú soña bas o sebalessi, ella no soñaba con su jefe a ta sebalessi o rnmása áí.', NULL, NULL, 'Español: soñar', 'import-espanol-bubi'),
  ('ehulá', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehulá; -s bihulá, los -s e bihulá.', NULL, NULL, 'Español: soplo', 'import-espanol-bubi'),
  ('etupiáeri', 's.', 'm.', NULL, 'Cl. 7', 'el e etupiáeri, o buikka; -s bitupiáeri, beikka, los -s e bitupiáeri, e beikka.', NULL, 'buikka', 'Español: soporte', 'import-espanol-bubi'),
  ('tyotyóbia', 'v.', NULL, NULL, NULL, 'paso duro las ardillas sorbían las piñas de cacao e besoppé be tyotyó biesiia e bimmáloto.', 'paso duro las ardillas sorbían las piñas de cacao e besoppé be tyotyó biesiia e bimmáloto.', NULL, 'Español: sorber', 'import-espanol-bubi'),
  ('kinatto', 's.', 'm.', NULL, 'Cl. 9', 'el - e kinattii; -s kinatto, los -s i kinatto. * la asociación de -s o wallá wá i kinattii.', NULL, NULL, 'Español: sordo', 'import-espanol-bubi'),
  ('ebotyu', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebotyu; -s ibotyu, los -s e ibotyu. soso, a, m kokoppé, káké. * esta comida está - bolo bora''o bué kokoppé, bolo bora''o bué káké.', NULL, NULL, 'Español: sosiego', 'import-espanol-bubi'),
  ('buikka', 's.', 'm.', NULL, 'Cl. 3', 'el - o buikka; soste nes beikka, los sostenes e beikka.', 'soste nes beikka, los sostenes e beikka.', NULL, 'Español: sostén', 'import-espanol-bubi'),
  ('hMmota', 'v.', NULL, NULL, NULL, 'tú sostuviste las gafas o hMmotyi e beleppo, etc.; paso duro los hombres sostenían los cuernos de los bueyes a baie ba hMmotessi a be''a bá i pókkó, etc. 2. - para alguien (ayudar) o hMmotaella; preso neg. no hay nadie que me pueda ayudar ha tyi botyo ná n ka hMmotaella le; paso...', 'paso duro los hombres sostenían los cuernos de los bueyes a baie ba hMmotessi a be''a bá i pókkó, etc. | preso neg. | paso.', NULL, 'Español: sostener', 'import-espanol-bubi'),
  ('botákkí', 's.', 'm.', NULL, 'Cl. 1', 'el - o botákkí; -s batákkí, los -s a batákkí.', NULL, NULL, 'Español: súbdito', 'import-espanol-bubi'),
  ('obba', 'v.', NULL, NULL, NULL, 'preso el gato sube las escale ras e sipóssi si lá obba e robbo; paso punto los ratones subieron las esca leras e ebitya be obbi e robbo; paso duro nosotros subíamos to obessi, ellas subían ba obessi. 2. - con o obal la; pres. la abuela sube con su bastón o bonánna a la oballa e sa''á si áí; paso punto yo subí con el aro n obari o lop páa; paso duro vosotros subíais con nosotros lo obessi...', 'preso el gato sube las escale ras e sipóssi si lá obba e robbo; | paso duro nosotros subíamos to obessi, ellas subían ba obessi. | pres.', NULL, 'Español: subir', 'import-espanol-bubi');

-- Lote 34 (entradas 2026 a 2050)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('epueri', 's.', 'm.', NULL, 'Cl. 7', 'el - e epueri; -s ipuéri, los -s e ipueri.', NULL, NULL, 'Español: subordinado', 'import-espanol-bubi'),
  ('hettá', 'v.', NULL, NULL, NULL, 'preso algo sucede ha lá hettá elabba; paso punto los acontecimientos sucedieron esta mañana e bilabba bi hetyíi elo ebari; paso duro algo sucedía cuando llegó ha hetes si helaba a''a pooi lá.', 'preso algo sucede ha lá hettá elabba; | paso duro algo sucedía cuando llegó ha hetes si helaba a''a pooi lá.', NULL, 'Español: suceder', 'import-espanol-bubi'),
  ('sokko', 's.', 'm.', NULL, 'Cl. 12', 'el- e sokko, e elabba; -s tokko, bilabba, los -s o tokko, e bilabba.', NULL, NULL, 'Español: suceso', 'import-espanol-bubi'),
  ('n''é', 's.', 'm.', NULL, 'Cl. 9', 'el- e n''é, e hM''é; -es n''é, hM''é, los -es i n''é, i hM''é. la', NULL, NULL, 'Español: sudor', 'import-espanol-bubi'),
  ('boiebó''o', 's.', 'm.', NULL, 'Cl. 1', 'el- o boiebó''o; -s baiebó''o, los -s a baiebó''o.', NULL, NULL, 'Español: suegro', 'import-espanol-bubi'),
  ('bobba', 's.', 'm.', NULL, 'Cl. 3', 'hanno, nno, el- o bobba, a anno; -s beobba, los -s e beóbba; * en el - a anno.', NULL, NULL, 'Español: suelo', 'import-espanol-bubi'),
  ('tyebbá', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyebbá, o tollo; -s tyebbá (el. lO), tollo, los -s i tyebbá, o tollo.', NULL, 'tollo, tollo', 'Español: sueño', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'preso este anciano sufre mucho elo obéolla e lá batyáa; paso punto noso tros hemos sufrido mucho to''a batyía bi''o sóté; paso duro ellos sufrían ba batyésiia.', 'preso este anciano sufre mucho elo obéolla e lá batyáa; | paso duro ellos sufrían ba batyésiia.', NULL, 'Español: sufrir', 'import-espanol-bubi'),
  ('ripá''a', 's.', 'm.', NULL, 'Cl. 5', 'sitéppi, el - e ripá''a, e sosten, e sitéppi; -es apá''a, tosten, totéppi, los -es a apá''a, o tosten, o totéppi.', NULL, 'tosten, totéppi', 'Español: sujetador', 'import-espanol-bubi'),
  ('sulufato', 's.', 'm.', NULL, 'Cl. 12', 'el- e sulufáto; -s tululá to, los -s o tulujato.', NULL, NULL, 'Español: sulfato', 'import-espanol-bubi'),
  ('okalla', 'v.', NULL, NULL, NULL, 'preso las muje res suman sus ñames a baísso ba lá okalla e billo bi ábo; paso punto ellas sumaron sus vestidos ba okari i kuua i ábo; paso duro nosotros sumábamos las piedras to okalessi a baté.', 'preso las muje res suman sus ñames a baísso ba lá okalla e billo bi ábo; | paso duro nosotros sumábamos las piedras to okalessi a baté.', NULL, 'Español: sumar', 'import-espanol-bubi'),
  ('bosókkó', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosókkó; -s basókkó, los -s a basokkó.', NULL, NULL, 'Español: supremo', 'import-espanol-bubi'),
  ('oríe', 's.', 'm.', NULL, NULL, 'hay bubis en el- he abobée oríe.', NULL, NULL, 'Español: sur', 'import-espanol-bubi'),
  ('hebella', 'v.', NULL, NULL, NULL, 'ellos suspiraron ba heberi; paso duro nosotros suspirábamos to hebelessi, voso tros suspirabais lo hebelessi, etc.', 'paso duro nosotros suspirábamos to hebelessi, voso tros suspirabais lo hebelessi, etc.', NULL, 'Español: suspirar', 'import-espanol-bubi'),
  ('eh', 's.', 'm.', NULL, 'Cl. 7', '15bérí, el- e ehebérí; -s bihebérí, los -s e bihebérí.', NULL, NULL, 'Español: suspiro', 'import-espanol-bubi'),
  ('siosso', 's.', 'f.', NULL, 'Cl. 12', 'la - e siosso, e si''osso; -s toosso (el. 1 3), to''osso, las -s o toosso, o to''ossO.', NULL, 'to''oss', 'Español: taba', 'import-espanol-bubi'),
  ('obáka', 's.', 'm.', NULL, 'Cl. 3', 'el- o obáka, e sibáka; -s abáka, tübáka, los -s a abáka, o tübáka. * - molido sinópi, el- molido e sinópi; -s molidos tonó pi, los -s molidos o tünó* planta ción de - eberí á tübáka. * quiero - na na''a sibáka, na na''a tübáka.', NULL, 'tübáka', 'Español: tabaco', 'import-espanol-bubi'),
  ('lopásala', 's.', 'm.', NULL, 'Cl. 7', '(el. 1 1), eputyú, el - o lopásala, e eputyú; -8 kopásala, los -8 i kopásala.', NULL, NULL, 'Español: tábano', 'import-espanol-bubi'),
  ('eteppe', 's.', 'm.', NULL, 'Cl. 7', 'el - e eteppe; -s biteppe, los -8 e biteppe. * f ino siteppe, el- fino e siteppe; -s finos toteppe, los -8 finos o toteppe.', NULL, NULL, 'Español: tabique', 'import-espanol-bubi'),
  ('bosekke', 's.', 'm.', NULL, 'Cl. 3', 'el - o bosekke; -s besekke, los -s e besekke.', NULL, NULL, 'Español: tablero', 'import-espanol-bubi'),
  ('siseke', 's.', 'f.', NULL, 'Cl. 12', 'la - e siseke; -s tose ke, las -s o toseke.', NULL, NULL, 'Español: tablilla', 'import-espanol-bubi'),
  ('simpa', 's.', 'm.', NULL, 'Cl. 12', 'el - e simpa; -s tompa, los -s o rompa.', NULL, NULL, 'Español: taburete', 'import-espanol-bubi'),
  ('sipoppi', 's.', 'm.', NULL, 'Cl. 12', 'el - e sipoppi; -s topoppi, los -s o topoppi.', NULL, NULL, 'Español: tacaño', 'import-espanol-bubi'),
  ('bOsií', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosií; -s basií, los -s a basií.', NULL, NULL, 'Español: taimado', 'import-espanol-bubi'),
  ('ríkuku', 's.', 'f.', NULL, 'Cl. 5', 'la - e rikuku; -s baku ku, las -s a bakuku.', NULL, NULL, 'Español: tajada', 'import-espanol-bubi');

-- Lote 35 (entradas 2051 a 2075)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('etyikóri', 's.', 'f.', NULL, 'Cl. 7', 'la - e etyikóri; -s bityikóri, las -s e bityikóri.', NULL, NULL, 'Español: tala', 'import-espanol-bubi'),
  ('ebulla', 's.', 'm.', NULL, 'Cl. 7', 'el- e ebulla; -s mbulla, los -s e mbulla. * - de árboles etyikori, el - de árboles e etyikori; -s de árboles bityikori, los -s de árboles e bityikori.', NULL, NULL, 'Español: talado', 'import-espanol-bubi'),
  ('butólla', 'v.', NULL, NULL, NULL, 'preso la máquina tala dra la pared e emasÍÍn e lá butólla e eteppé; paso punto las má quinas taladraron el suelo e mmasíín bi butóri o bobba; paso duro vosotros taladrabais el árbol lo butólessi o bot té.', 'preso la máquina tala dra la pared e emasÍÍn e lá butólla e eteppé; | paso duro vosotros taladrabais el árbol lo butólessi o bot té.', NULL, 'Español: taladrar', 'import-espanol-bubi'),
  ('tyikólla', 'v.', NULL, NULL, NULL, 'preso los blancos talan las palmeras a apanná ba lá tyikólla a abílla; paso punto ellos talaron los árboles ba tyikóri a batté; paso duro nosotros talábamos to tyikólessi, to tyikuessi.', 'preso los blancos talan las palmeras a apanná ba lá tyikólla a abílla; | paso duro nosotros talábamos to tyikólessi, to tyikuessi.', NULL, 'Español: talar', 'import-espanol-bubi'),
  ('ribéki', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribeki; -s abéki, los -s a abeki. 526 I talento', NULL, NULL, 'Español: talego', 'import-espanol-bubi'),
  ('bolebóri', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOlebóri; -s belebóri, los -s e belebóri.', NULL, NULL, 'Español: talento', 'import-espanol-bubi'),
  ('bOlallo', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOlallo; talis manes belallo, los talismanes e belallo.', 'talis manes belallo, los talismanes e belallo.', NULL, 'Español: talismán', 'import-espanol-bubi'),
  ('tyikeleelé', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyikeleelé, e kekesse; talones tyikeleelé (el. lO), kekesse, los talones i tyikeleelé, i kekesse.', 'talones tyikeleelé (el.', NULL, 'Español: talón', 'import-espanol-bubi'),
  ('álle', 'adv.', NULL, NULL, NULL, 'yo - quiero n la na''a álli.', NULL, NULL, 'Español: también', 'import-espanol-bubi'),
  ('kunké', 's.', 'm.', NULL, 'Cl. 9', 'el e kunké, e tamballé; -es kunké (el. lO), tamballé (el. lO), los -es i kunké, i tamballé.', NULL, NULL, 'Español: tambor', 'import-espanol-bubi'),
  ('ribatyu', 's.', 'm.', NULL, 'Cl. 5', 'rioppa, el - e ribatyu, e rekká; -s abatyu, bekká, baoppa, los -8 a abatyu, a bekká.', NULL, NULL, 'Español: taparrabo', 'import-espanol-bubi'),
  ('rule''o', 's.', 'm.', NULL, 'Cl. 5', 'el - e rule'' o; tapones bale''o, los tapones a bale''o.', 'tapones bale''o, los tapones a bale''o.', NULL, 'Español: tapón', 'import-espanol-bubi'),
  ('sitó''o', 's.', 'm.', NULL, 'Cl. 12', 'el- e sitó''o; -s totó''o, los -s o totó''o.', NULL, NULL, 'Español: tarro', 'import-espanol-bubi'),
  ('bo''ú', 's.', 'm.', NULL, 'Cl. 1', 'el- o bo''ú; -s ba''ú, los -s o bo''ú.', NULL, NULL, 'Español: tartamudo', 'import-espanol-bubi'),
  ('tyinálolláa', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyi nálolláa; -s tyinálolláa (CL 10), los -s tyinálolláa.', NULL, NULL, 'Español: tataranieto', 'import-espanol-bubi'),
  ('kolokollo', 's.', 'm.', NULL, 'Cl. 9', '-s kolokollo (el. lO), los -s i kolo kollo.', NULL, NULL, 'Español: tataratataranieto', 'import-espanol-bubi'),
  ('lopappo', 's.', 'm.', NULL, 'Cl. 9', 'el- o lopappo;-s pappo, los -s i pappo.', NULL, NULL, 'Español: techado', 'import-espanol-bubi'),
  ('lobityo', 's.', 'm.', NULL, 'Cl. 11', 'el- o lobityo; -s bi tyo, los -s i bit yO.', NULL, NULL, 'Español: techo', 'import-espanol-bubi'),
  ('luua', 's.', 'm.', NULL, 'Cl. 10', '(CI. 1 1), el- o luua; -s kuua, los -s i kuua. tela, s..f luua (CI. 1 1 ), elappá, la - o luua, e elappá; -s kuua, bilappá, las -s i kuua, e hilappá. * - fina suua, la - fina e suua; -s finas tuua, las -s f inas o tuua. * - fuerte etapóllo, la - e etapóllo; -s fuertes bitapóllo, las -s fuertes e bitapóllo.', NULL, NULL, 'Español: tejido', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'el- e elabba; -s bilabba, los -s e bilabba. * -s tradicio nales bilabba.', NULL, NULL, 'Español: tema', 'import-espanol-bubi'),
  ('botyíberi', 's.', 'm.', NULL, 'Cl. 3', 'rikokko, el - o botyíberi, e rityíbierí, e rikokko; -es betyíberi, batyíbierí, bakokko, los -es e betyíberi, a batyí bierí, a bakokko.', NULL, NULL, 'Español: temblor', 'import-espanol-bubi'),
  ('esáríi', 's.', 'm.', NULL, 'Cl. 7', 'el - e esáríi; -es bisáríi, los -es e bisáríi.', NULL, NULL, 'Español: temor', 'import-espanol-bubi'),
  ('werí', 's.', 'm.', NULL, 'Cl. 3', 'el - o werí, o bokeú; -s bierí, bekeú, los -s e bierí, e hekeú. tempestad, s..f pullá, la - e pullá; -es pullá, las -es i pullá.', NULL, 'bokeú', 'Español: temperamento', 'import-espanol-bubi'),
  ('tyótyi', 's.', 'm.', NULL, 'Cl. 9', 'el- e tyótyi; -s tyótyi (el. lO), los -s i tyótyi.', NULL, NULL, 'Español: templo', 'import-espanol-bubi'),
  ('rikko', 's.', 'm.', NULL, 'Cl. 5', 'riba tya, el - e rikko, e teneroo, e ribatya; -es bikko, teneroo, abatya, los -es a bikko, i teneroo, a abatya.', NULL, NULL, 'Español: tenedor', 'import-espanol-bubi');

-- Lote 36 (entradas 2076 a 2100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sétya', 'v.', NULL, NULL, NULL, 'preso yo termino el tra bajo n la sétya e elakó; paso punto tú terminaste la canción o lo sétyia o lobe rí, ella terminó el trabajo a e sétyia e elakó; paso duro vosotros terminabais la historia 10 bO sétyesiia o boatta. 2. - con algo o con algnien o séra; paso punto el soldado ter minó con los prisioneros e sotyáa si séría a batyelemán; paso duro ellos terminaban con los ñames ba sére...', 'preso yo termino el tra bajo n la sétya e elakó; | paso duro vosotros terminabais la historia 10 bO sétyesiia o boatta. | paso punto el soldado ter minó con los prisioneros e sotyáa si séría a batyelemán;', NULL, 'Español: terminar', 'import-espanol-bubi'),
  ('illáa', 's.', 'm.', NULL, 'Cl. 5', 'el - e illáa, e rikubbí; -s balláa, bakubbí, los -s a bailáa, a bakubbí.', NULL, NULL, 'Español: término', 'import-espanol-bubi'),
  ('bokotyí', 's.', 'm.', NULL, 'Cl. 3', 'el - o bokotyí; -s bekotyí, los -s e bekotyÍ.', NULL, NULL, 'Español: termo', 'import-espanol-bubi'),
  ('bobba', 's.', 'm.', NULL, 'Cl. 3', 'el- o bobba, e eyári; -s biobba, biyá ri, los -s e biobba, e biyári. 2. - pedre goso riatte, el - pedregoso e riatte; -s pedregosos baatte, los -s pedregosos a baatte.', NULL, NULL, 'Español: terreno', 'import-espanol-bubi'),
  ('bobba', 's.', 'm.', NULL, 'Cl. 3', 'el - o bobba, e tyé; -s biobba, tyé, los -s e biobba, i tyé.', NULL, NULL, 'Español: territorio', 'import-espanol-bubi'),
  ('esáráa', 's.', 'm.', NULL, 'Cl. 7', 'el- e esáráa; -es bisáráa, los -es e bisáráa.', NULL, NULL, 'Español: terror', 'import-espanol-bubi'),
  ('bOsáráa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOsáráa;-s basáráa, los -s a basáráa.', NULL, NULL, 'Español: terrorista', 'import-espanol-bubi'),
  ('bommotye', 's.', 'm.', NULL, 'Cl. 1', 'el - o bommotye; -s barnmotye, los -s a bam motye.', NULL, NULL, 'Español: tertuliano', 'import-espanol-bubi'),
  ('bonokkó', 's.', 'm.', NULL, 'Cl. 3', 'el- o bonokkó; teso nes benokkó, los tesones e benokkó.', 'teso nes benokkó, los tesones e benokkó.', NULL, 'Español: tesón', 'import-espanol-bubi'),
  ('epopollo', 's.', 'm.', NULL, 'Cl. 7', 'el - e epopollo; -s bipopollo, los -s e bipo pollo.', NULL, NULL, 'Español: tesoro', 'import-espanol-bubi'),
  ('bOloe', 's.', 'm.', NULL, 'Cl. 3', 'el o boloe, e o''e; -s beloe, yo''e, los -s e beloe, e yo''e.', NULL, NULL, 'Español: testamento', 'import-espanol-bubi'),
  ('botya''á', 's.', 'm.', NULL, 'Cl. 3', 'el o botya''á, o bOheú; -s betya''á, beheú, los -s e betya'' á, e beheú.', NULL, 'b', 'Español: testículo', 'import-espanol-bubi'),
  ('sOsOlla', 'v.', NULL, NULL, NULL, 'preso nosotros testifi camos ante el juez to la sosolla o buatébisapá álo;pas. punto ellos tes tificaron deprisa ba sosori bakasso, tú testificaste o sosom; paso duro voso tros testificabais por miedo lo sosuessi kóri lo salessi. 2. - para o sosuella (pas. punto sosuem, sosueri; paso duro sosuelessi).', 'preso nosotros testifi camos ante el juez to la sosolla o buatébisapá álo; | paso duro voso tros testificabais por miedo lo sosuessi kóri lo salessi. | paso duro sosuelessi).', NULL, 'Español: testificar', 'import-espanol-bubi'),
  ('emmaeri', 's.', 'm.', NULL, 'Cl. 7', 'bommaeri, bOhítaeri, el- e ernmae ri, e ehítaeri, o bornmaeri, o bohítaeri; -s bimmaeri, bihítaeri, bammaeri, bahítaeri, los -s e bim maeri, e bihítaeri, a barnmaeri, a bahítaeri.', NULL, 'bornmaeri, bohítaeri', 'Español: testigo', 'import-espanol-bubi'),
  ('bOsossó', 's.', 'm.', NULL, 'Cl. 3', 'el- o bosossó; -s besossó, los -s e besossó.', NULL, NULL, 'Español: testimonio', 'import-espanol-bubi'),
  ('bosossó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bosossó; -s besossó, los -s e besossó.', NULL, NULL, 'Español: texto', 'import-espanol-bubi'),
  ('koppá', 's.', 'm.', NULL, 'Cl. 9', 'el- e koppá; tiburo nes koppá, los tiburones i koppá.', 'tiburo nes koppá, los tiburones i koppá.', NULL, 'Español: tiburón', 'import-espanol-bubi'),
  ('ebéló', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebéló; -8 ibéló, los -s e ibélÓ. * - de siega bohó tya, el - de siega o bohótya; -s de siega behótya, los -s de siega e behótya. * tocar / 529 anunciado ribélo, el - anunciado e ribé lo; -s anunciados abélo, los -s anuncia dos a abélo. - de arrancar los ñames ribebba, Ej. expr. no tengo - n ta ókki ebéló.', NULL, NULL, 'Español: tiempo', 'import-espanol-bubi'),
  ('sataté', 's.', 'm.', NULL, 'Cl. 12', 'el - e sataté; -s tuata té, los -s o tuataté.', NULL, NULL, 'Español: tiesto', 'import-espanol-bubi'),
  ('silebbó', 's.', 'm.', NULL, 'Cl. 12', 'la - e silebbó; -s tOlebbó, los -s o tolebbó.', NULL, NULL, 'Español: timbre', 'import-espanol-bubi'),
  ('rella', 's.', 'm.', NULL, 'Cl. 5', 'el- e rella; timones bella, los timones a bella.', 'timones bella, los timones a bella.', NULL, 'Español: timón', 'import-espanol-bubi'),
  ('nl', 's.', NULL, NULL, 'Cl. 10', 'nl. lopappo (el. 1 1), el - o lopappo; -s pappo, los -s i pappo.', NULL, NULL, 'Español: tinglado', 'import-espanol-bubi'),
  ('boióppé', 's.', 'm.', NULL, 'Cl. 1', 'el- o boióppé; -s baióp pé, los -s a baióppé.', NULL, NULL, 'Español: tío', 'import-espanol-bubi'),
  ('bOtyo', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOtyo; -s batyo, los -s a batyo.', NULL, NULL, 'Español: tipo', 'import-espanol-bubi'),
  ('efélétya', 's.', 'm.', NULL, 'Cl. 7', 'el - e efélétya; -mfélétya, los - e mfélétya.', NULL, NULL, 'Español: tirachinas', 'import-espanol-bubi');

-- Lote 37 (entradas 2101 a 2125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eoppe', 's.', 'm.', NULL, 'Cl. 7', 'el - e eoppe; -s bioppe, los -s e bioppe.', NULL, NULL, 'Español: tísico', 'import-espanol-bubi'),
  ('tyotyó', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyotyó; tizones tyotyó, los tizones i tyotyó.', 'tizones tyotyó, los tizones i tyotyó.', NULL, 'Español: tizón', 'import-espanol-bubi'),
  ('kekessé', 's.', 'm.', NULL, 'Cl. 9', 'pepelle, el- e kekessé, e pepenna, e pepel le; -s kekessé, pepenna, pepelle, los -s i kekessé, i pepenna, i pepelle.', NULL, NULL, 'Español: tobillo', 'import-espanol-bubi'),
  ('risopuára', 's.', 'm.', NULL, 'Cl. 5', 'el - e risopuára; toboganes basopuára, los toboganes a basopuára. * los toboganes del parque a baso puára ba e rikki wela.', 'toboganes basopuára, los toboganes a basopuára.', NULL, 'Español: tobogán', 'import-espanol-bubi'),
  ('bahabbáa', 's.', 'm.', NULL, 'Cl. 6', 'el - a bahabbáa.', NULL, NULL, 'Español: tocino', 'import-espanol-bubi'),
  ('né''a', 'adv.', NULL, NULL, NULL, 'né''a: - estoy comiendo né''a ressi, duermo né''a lókki, - hablo né''a towessi, etc. todo, a, mor:f indo bommaa (el. 1 : - la persona o botyo bOmmaa; el. 3: - la cara o bossó bOm m aa); rimmaa (el. 5: -la mejilla e rikekko rimmaa); ernmaa (el. 7: - el pueblo eeríia emmaa); lornmaa (el. 11 : -la sardina o lokollo lornmaa); simmaa (el. 12: - el cuento e siatta simmaa); hammaa (el. 16: -el sitio a hab...', 'el. | rimmaa (el. | ernmaa (el.', NULL, 'Español: todavía', 'import-espanol-bubi'),
  ('ne''í', 's.', 'm.', NULL, 'Cl. 9', 'el - e ne''i; -s ne''í, los -s i ne''í.', NULL, NULL, 'Español: tomate', 'import-espanol-bubi'),
  ('bolonká', 's.', 'm.', NULL, 'Cl. 3', 'lusuiánno (el. 1 1), ribetté, el- o bolonká, o lusiánno, e ribet té; -es belonká, kusiánno, abetté, los -es e belonká, i kusiánno, a abetté.', NULL, 'lusiánno', 'Español: tonel', 'import-espanol-bubi'),
  ('ekké', 's.', 'm.', NULL, 'Cl. 7', 'seké, enyo''o, el - e ekké, e ekakká, e seké, e enyo''o [eeJ1o''o); -s biek ké, bikakká, tueké, binyo''o, los -s e biekké, e bikakká, o tueké, e binyo''o.', NULL, 'tueké', 'Español: tonto', 'import-espanol-bubi'),
  ('péláká', 's.', 'm.', NULL, 'Cl. 9', 'el - e péláká; -s péláká, los -s i péláká.', NULL, NULL, 'Español: topo', 'import-espanol-bubi'),
  ('rikkáa', 'v.', NULL, NULL, NULL, 'preso yo tuerzo el brazo n la rikkáa o lobbó; paso punto nosotros torcimos sus dedos to rikkíi e bene be áí.', 'preso yo tuerzo el brazo n la rikkáa o lobbó;', NULL, 'Español: torcer', 'import-espanol-bubi'),
  ('rioppo', 's.', 'm.', NULL, 'Cl. 5', 'el - e rioppo; -s baoppo, los -s a baoppo.', NULL, NULL, 'Español: tormento', 'import-espanol-bubi'),
  ('pullá', 's.', 'm.', NULL, 'Cl. 9', 'el - e pullá; -s pullá, los -s i pullá.', NULL, NULL, 'Español: tomado', 'import-espanol-bubi'),
  ('kóppó', 's.', 'm.', NULL, 'Cl. 9', 'el - e kóppó; -s kóppó (el. ID), los -s i kóppó.', NULL, NULL, 'Español: toro', 'import-espanol-bubi'),
  ('lopatta', 's.', 'm.', NULL, 'Cl. 11', 'el - o lopatta; -s patta, los -s i patta. transeúnte / 531', NULL, NULL, 'Español: tortazo', 'import-espanol-bubi'),
  ('sibekabékka', 's.', 'm.', NULL, 'Cl. 12', 'el- e sibekabék ka; -s tobekabékka, los -s o robekabékka.', NULL, NULL, 'Español: tortolito', 'import-espanol-bubi'),
  ('bOlakóláko', 's.', 'm.', NULL, 'Cl. 1', 'el - o bo lakóláko; -es balakóláko, los -es a bala kóláko.', NULL, NULL, 'Español: trabajador', 'import-espanol-bubi'),
  ('elakó', 's.', 'm.', NULL, 'Cl. 7', 'elobo, el - e elakó l eelakkó], e mpó, e elobo. el', NULL, NULL, 'Español: trabajo', 'import-espanol-bubi'),
  ('obélló', 's.', 'm.', NULL, 'Cl. 1', 'o obélló, o botóweri; -es abélló, bató weri, los -es a abélló, a batóweri.', NULL, 'obélló, botóweri', 'Español: traductor', 'import-espanol-bubi'),
  ('ekunna', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekunna, e eotyú; -s bikunna, biotyú, los -s e bikunna, e biotyú.', NULL, NULL, 'Español: trago', 'import-espanol-bubi'),
  ('boossó', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOossó; trago nes baossó, los tragones a baossó.', 'trago nes baossó, los tragones a baossó.', NULL, 'Español: tragón', 'import-espanol-bubi'),
  ('tyio', 's.', 'm.', NULL, 'Cl. 9', 'el- e tyio; -es tyio, los -es i tyio.', NULL, NULL, 'Español: traidor', 'import-espanol-bubi'),
  ('bohétyo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bohétyo; -s behétyo, los -s e behétyo.', NULL, NULL, 'Español: traje', 'import-espanol-bubi'),
  ('bosorá', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOsorá; -s beso rá, los -s e besorá.', NULL, NULL, 'Español: tramo', 'import-espanol-bubi'),
  ('boetelló', 's.', 'm.', NULL, 'Cl. 1', 'el- o boetelló, o wakalelé; -s baetelló, biakalelé, los -s a baetelló, e biakalelé. 532 / transitar', NULL, 'wakalelé', 'Español: transeúnte', 'import-espanol-bubi');

-- Lote 38 (entradas 2126 a 2150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eoleri', 's.', 'm.', NULL, 'Cl. 7', 'el - e eoleri, o booleri; -es biOleri, beoleri, los -es e bioleri, e beoleri.', NULL, 'booleri', 'Español: transportador', 'import-espanol-bubi'),
  ('eoleri', 's.', 'm.', NULL, 'Cl. 7', 'mot60, el - e eoleri, o motóo; -s bioleri, meotóo, los -s e bioleri, e motóo.', NULL, 'motóo', 'Español: transporte', 'import-espanol-bubi'),
  ('pisíssi', 's.', 'm.', NULL, 'Cl. 9', 'el - e pisíssi; -s pisíssi, los -s i pisíssi.', NULL, NULL, 'Español: trapo', 'import-espanol-bubi'),
  ('battáa', 's.', 'm.', NULL, 'Cl. 6', 'el - a battáa, e erubá; -s battáa, biru bá, los -s a battáa, e birubá.', NULL, NULL, 'Español: trasero', 'import-espanol-bubi'),
  ('ekollé', 's.', 'm.', NULL, 'Cl. 7', 'el- e ekollé; -s bikollé, los -s e bikollé.', NULL, NULL, 'Español: trasto', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyoppo; -s tyoppo (el. lO), los -s i tyoppo.', NULL, NULL, 'Español: trastornado', 'import-espanol-bubi'),
  ('ehuáeri', 's.', 'm.', NULL, 'Cl. 7', 'buanerí, el - e ehuáeri, e ri tyiáeri, o buanerí; -s bihuáeri, batyiáeri, bianerí, los -s e bihuáeri, a ba tyiáeri, e bianerí.', NULL, 'buanerí', 'Español: trato', 'import-espanol-bubi'),
  ('bolakka', 's.', 'm.', NULL, 'Cl. 3', 'el - o bolakka; -s belakka, los -s e belakka.', NULL, NULL, 'Español: travesaño', 'import-espanol-bubi'),
  ('wihó', 's.', 'm.', NULL, 'Cl. 3', 'el - o wihó; -s bihó, los -s e bihó.', NULL, NULL, 'Español: travieso', 'import-espanol-bubi'),
  ('loettyi', 's.', 'm.', NULL, 'Cl. 3', '(el. 1 1), loetto (el. 1 1), bohaí, el - o loettyi, o loetto, o bohaí; -s beettyi, beetto, behaí, los-s e beettyi, e beetto, e behaí. trece, numo bó la battá (el. 2: - personas ba tyo be bó la battá; el. 6: - mejillas bakekko be bó la battá), bió la bettá (el. 4: - narices bempo bié bió la bettá), bió la bittá (el. 8: - poblados bi riia bié bió la bittá), etc. treinta, numo ityíl1a la bió; - pe...', 'el.', 'loetto, bohaí', 'Español: trayecto', 'import-espanol-bubi'),
  ('rikotye', 's.', 'm.', NULL, 'Cl. 5', 'el e rikotye, e erukurukku [eerukurukku); -es bako tye, birukurukku, los -es a bakotye, e birukurukku.', NULL, NULL, 'Español: tren', 'import-espanol-bubi'),
  ('eotyi', 's.', 'm.', NULL, 'Cl. 7', 'el - e eotyi, e eotta; -s biotyi, biotta, los -s e biotyi, e biotta.', NULL, NULL, 'Español: trenzado', 'import-espanol-bubi'),
  ('itohó', 's.', 'm.', NULL, 'Cl. 5', 'el- e itohó; -es bato hó, los -es a batohó.', NULL, NULL, 'Español: tribunal', 'import-espanol-bubi'),
  ('ribatya', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribatya; -s abatya, los -s a abatya.', NULL, NULL, 'Español: tridente', 'import-espanol-bubi'),
  ('ubáa', 'v.', NULL, NULL, NULL, 'paso punto los ladrones trincaron el dinero i húbbé i ubíi i tyokko;pas. duro nosotros trincába mos el aceite to ubéssi a biitá.', 'paso punto los ladrones trincaron el dinero i húbbé i ubíi i tyokko;', NULL, 'Español: trincar', 'import-espanol-bubi'),
  ('kétya', 'v.', NULL, NULL, NULL, 'pres. mi madre trincha la carne o oberíi rh a la ketya e nabba;pas. punt. ella trinchó la carne a ké tyía e nabba; paso duro el criado trinchaba el pan o botákkí a ketyesiia e isoppo.', 'pres. | paso duro el criado trinchaba el pan o botákkí a ketyesiia e isoppo.', NULL, 'Español: trinchar', 'import-espanol-bubi'),
  ('etó''a', 's.', 'm.', NULL, 'Cl. 7', 'el - e etó''a; -s bitó''a, los -s e bitó''a.', NULL, NULL, 'Español: triunfo', 'import-espanol-bubi'),
  ('kétya', 'v.', NULL, NULL, NULL, 'paso punto los hombres trocearon el buey a baie ba kétyía e pókkó; paso duro ellos troceaban el buey ba kétyésiia e pókkó.', 'paso punto los hombres trocearon el buey a baie ba kétyía e pókkó;', NULL, 'Español: trocear', 'import-espanol-bubi'),
  ('sihékká', 's.', 'm.', NULL, 'Cl. 12', 'sihe ká, el - e sihékká, e satée, e siheká; -s tohékká, tuatée, toheká, los -s o tohékká, o tuatée, o toheká.', NULL, 'tuatée, toheká', 'Español: trocito', 'import-espanol-bubi'),
  ('ekonna', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekonna, e emmornmo [eemmom mol; -s bikonna, bimmommo, los -s e bikonna, e bimmommo.', NULL, NULL, 'Español: tronco', 'import-espanol-bubi'),
  ('eottá', 's.', 'm.', NULL, 'Cl. 7', 'el - e eottá; -s biottá, los -s e biottá.', NULL, NULL, 'Español: trono', 'import-espanol-bubi'),
  ('ekúbari', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekúbari; tropezones bikúbari, los tro pezones e bikúbari.', 'tropezones bikúbari, los tro pezones e bikúbari.', NULL, 'Español: tropezón', 'import-espanol-bubi'),
  ('ekúbari', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekúbari; -s bikúbari, los -s e bikúbari. in! o hilláa; preso durante todo el día nosotros trotamos o bokó bo mmaa ro la hilláa.', 'preso durante todo el día nosotros trotamos o bokó bo mmaa ro la hilláa.', NULL, 'Español: tropiezo', 'import-espanol-bubi'),
  ('atée', 's.', 'm.', NULL, 'Cl. 7', 'ebabé, mobabé, el- e atée, e eheká, e ebabé, o mobabé; -s biatée (Cl. 8), biheká, ibabé, mebabé, los -s e biatée, e biheká, e ibabé, e mebabé. * - de algún cuerpo animal eubé.', NULL, 'mobabé', 'Español: trozo', 'import-espanol-bubi'),
  ('ekukuu', 's.', 'm.', NULL, 'Cl. 7', 'el- e ekukuu; -s bikukuu, los -s e bikukuu. tu, mor:! pos. o; - pariente o botyo o, - coche o motóo o, - casa e tyóbbo o; -s, morf. pos. o; -s parientes a batyo o, -s coches e motóo o, -s casas i tyóbbo o. 534 / tú tú, prono úwe, we; - eres una persona úwe we botyo.', NULL, NULL, 'Español: trueno', 'import-espanol-bubi');

-- Lote 39 (entradas 2151 a 2175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bosossó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bosossó; -s besossó, los -s e besossó.', NULL, NULL, 'Español: tubo', 'import-espanol-bubi'),
  ('bOlebbáa', 's.', 'm.', NULL, 'Cl. 1', 'el o bOlebbáa, e ebOranokko; -s baleb báa, biboránokko, mbOránokko (Cl. 8), los -s a balebbáa, e bibOránokko, e mbOránokko.', NULL, NULL, 'Español: tuerto', 'import-espanol-bubi'),
  ('bopáko''e', 's.', 'm.', NULL, 'Cl. 3', 'el - o bopá ko''e; -s boopáko''e, yopáko''e, los -s e beopáko''e, e yopáko''e.', NULL, NULL, 'Español: tulipanero', 'import-espanol-bubi'),
  ('enná', 's.', 'm.', NULL, 'Cl. 7', 'el- e enná, e eakka; -es binná, biak ka, baakka, los -es e binná, e biakka, a baakka.', NULL, NULL, 'Español: tumor', 'import-espanol-bubi'),
  ('bosií', 's.', 'm.', NULL, 'Cl. 1', 'el - o bosií, o opakara; -s basií, apakara, los -s a basií, a apakara.', NULL, 'opakara', 'Español: tunante', 'import-espanol-bubi'),
  ('ketto', 's.', 'm.', NULL, 'Cl. 9', 'el - e ketto; -s ketto, los -s i ketto. tuya, prono pos. o; esta persona es - 010 botyo kó ao, esta historia es - bolo boatta kó bo ao. u', 'esta persona es - 010 botyo kó ao, esta historia es - bolo boatta kó bo ao.', NULL, 'Español: turno', 'import-espanol-bubi'),
  ('bolakka', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOlakka; -es belakka, los -es e belakka.', NULL, NULL, 'Español: umbral', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo bulé (el. 1 : - persona botyo bulé; el. 3: - historia boatta bulé), rilé (el. 5: - meji lla rikekko rilé), nné (el. 7: - uña e''e nné), té (el. 9: - serpiente nooa té), lulé (el. 11 : - tela luua lulé), silé (el. 12: - camisa sotte silé).', 'el.', NULL, 'Español: una', 'import-espanol-bubi'),
  ('otyé', 's.', 'm.', NULL, 'Cl. 3', 'el- o otyé, o obotyo. un, o, numo bulé (el. 1: - hijo bOllá bulé, el. 3: - dedo bone bulé), rilé (el. 5: reloj isutto rilé), nné (el. 7: - poblado eriia nné), lulé (el. 1 1 : - bofetada lopatta lulé), silé (el. 12: - hoja sinta silé).', NULL, 'obotyo', 'Español: universo', 'import-espanol-bubi'),
  ('pitta', 'v.', NULL, NULL, NULL, 'pres. mi abuelo me unta con caolín o bOyolla IÍJ. a la le pitta peppa; paso punto las ancianas untaron a la doncella con tolla e biaríolla bi pityi o bulla tolla; paso duro nosotros untábamos el cadáver con aceite to pitessi e erutta biitá.', 'pres. | paso punto las ancianas untaron a la doncella con tolla e biaríolla bi pityi o bulla tolla;', NULL, 'Español: untar', 'import-espanol-bubi'),
  ('lohahá', 's.', 'm.', NULL, 'Cl. 4', '(el. 1 1), el - o lohahá; -s behahá, los -s e behahá. 536 / urna', NULL, NULL, 'Español: uñero', 'import-espanol-bubi'),
  ('bohNnó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOhNnó; -s behNnó, los -s e behNnó. usted, prono pero úwe, o; quiero hablar con usted n la na''a o tówálla.', 'quiero hablar con usted n la na''a o tówálla.', NULL, 'Español: uso', 'import-espanol-bubi'),
  ('ope', 's.', 'm.', NULL, 'Cl. 7', 'el e ope, o wáka; -s biope, biáka, los -s e biope, e biáka.', NULL, 'wáka', 'Español: vagabundeo', 'import-espanol-bubi'),
  ('bákko', 's.', 'm.', NULL, 'Cl. 9', 'el - e bákko, e nonowé; -s bákko, nono wé, los -s i bákko, i nonowé.', NULL, NULL, 'Español: vagabundo', 'import-espanol-bubi'),
  ('eppé', 's.', 'm.', NULL, 'Cl. 7', 'epette, el- e eppé, e elo''o, e epette; -s bieppé (C1. 8), bilo''ó, ipette, los-s e bieppé, e bilo''ó, e ipeltpc.', NULL, NULL, 'Español: vago', 'import-espanol-bubi'),
  ('bálebbia', 'v.', NULL, NULL, NULL, 'IIII.\'' punto las mantas valieron mucho e bckulta he bálebiia sóté;pas. dur. los medicamentos valían mucho e belallo be bálebiesiia sóté.', NULL, NULL, 'Español: valer', 'import-espanol-bubi'),
  ('kottó', 's.', 'm.', NULL, 'Cl. 9', 'sornó, el - e kottó, o boabbí, e sornó; -s kot tó, baabbí, tomó, los -s i kottó, a baabbí, o tomó.', NULL, 'boabbí, tomó', 'Español: valiente', 'import-espanol-bubi'),
  ('atyátya', 's.', 'm.', NULL, 'Cl. 7', 'el- e eara; -s biara, los -s e biara.', NULL, NULL, 'Español: valle', 'import-espanol-bubi'),
  ('bobbe', 's.', 'm.', NULL, 'Cl. 1', 'kottó, el - o bobbe, o boie, e kottó; varones bobbe, baie, kottó (el. 1 0), los varones a bobbe, a baie, i kottó. * es un niño - boIlá bObbe.', 'varones bobbe, baie, kottó (el.', 'boie', 'Español: varón', 'import-espanol-bubi'),
  ('esa''', 's.', 'm.', NULL, 'Cl. 7', 'el- e esa''á; -s bisa''á, los -s e bisa''á.', NULL, NULL, 'Español: vasallaje', 'import-espanol-bubi'),
  ('botákkí', 's.', 'm.', NULL, 'Cl. 1', 'el - o botákkí; -s batákkí, los -s a batákkí. vasija, s''¡: ehao, ribésse, la - e ehao, e ribessé; -s bihao, abessé, las -s e bihao, a aoossé.', NULL, NULL, 'Español: vasallo', 'import-espanol-bubi'),
  ('akákka', 's.', 'm.', NULL, 'Cl. 7', 'rikatto, tompulla, kalássi; - de coco akákka, etyakka; - de cristal, akákka, etyakka, tompulla; - de libación ribatto; el - e akákka, e etyakka, e rikatto, e tompul la, e kalássi; -s biakákka, bityakka, bakattO, tompulla, kalássi; -s de libación abatto, los -s e biakákka, e bityakka, a bakattO, i tompulla, i kalássi; los -s de libación a abatto.', 'el - e akákka, e etyakka, e rikatto, e tompul la, e kalássi; | los -s de libación a abatto.', NULL, 'Español: vaso', 'import-espanol-bubi'),
  ('boítám', 's.', 'm.', NULL, 'Cl. 1', 'el- o boítám; -s baí tám, los -s a baítá* - de barrio botyo á epatto.', NULL, NULL, 'Español: vecino', 'import-espanol-bubi'),
  ('euláúla', 's.', 'm.', NULL, 'Cl. 7', 'el e euláúla, o motóo; -s biuláúla, meotóo, los -s e biuláúla, e meotoo.', NULL, 'motóo', 'Español: vehículo', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, 'pl.', 'Cl. 5', 'el- e ityílla; - (pi.) batyíUa, los - a batyíIIa. * - personas batyo be ityílla.', NULL, NULL, 'Español: veinte', 'import-espanol-bubi');

-- Lote 40 (entradas 2176 a 2200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityílIa la beto. Ej. expr. vasos de cristal biakákka bié ityílla la bito, sardinas kollo yé ityíIIa la tyo, - personas batyo be ityílla la bato, - camisas totte tué ityílla la toto, etc.', NULL, NULL, 'Español: veinticinco', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityíIIa la biele. Ej. expr. quiero - panes n la na''a basoppo be ityí1Ia la bale, tengo - dedos kokkí bene bié ityílla la bie le.', NULL, NULL, 'Español: veinticuatro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityíIIa la eppa. Ej. expr. hay - árboles en mi finca he batté be ityíIIa la appa obáám m, hemos leído - historias to sossi beatta bié ityílla la eppa.', NULL, NULL, 'Español: veintidós', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityíIIa la ra''a la betá. Ej. e xpr. murieron - personas ha wéi batyo be ityíl la la bale, mi abuelo tenía - plátanos o boyolla m a okkíi bekobbe bié ityíIIa la ra''a la betá.', NULL, NULL, 'Español: veintinueve', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityílla la ra''a la eppa. Ej. expr. tu hermana tiene - años o wetta o okkíi báa be ityíIIa la ra''a la appa, queremos comprar - cordones to la na''a o olla besorí bié ityí1Ia la ra'' a la eppa.', NULL, NULL, 'Español: veintiocho', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityílIa la ra''a. Ej. expr. hay barcos en el mar he biátto bié ityílla la ra''a e elo''á wela, tenemos - cabras ro okkíi póríi yé ityíIIa la ra''a.', NULL, NULL, 'Español: veintiséis', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityílla la ra''a la bulé. Ej. e xpr. tu tía tiene - años e antí o okkíi báa be ityílla la ra''a la lulé, yo quiero - pájaros to la na''a tonorí tué ityílla la ra''a la silé, aquí hay mujeres hálo he baísso be ityíl1a la ra''a la bulé.', NULL, NULL, 'Español: veintisiete', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityílla la betá. Ej. expr. hoy es día - lello ká e ello á ityíIIa la betá, tú compras - malangas o la oUa bekokóo bié ityíIIa la betá.', NULL, NULL, 'Español: veintitrés', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo ityíIla la bulé. Ej. expr. son - los libros a abúkku be ityíIIa la rilé, hay asientos he bimpa bié ityílla la nné, el hechicero tenía - rostros o bOtyiárítyo a okkíi besso bié ityíIIa la bulé.', NULL, NULL, 'Español: veintiuno', 'import-espanol-bubi'),
  ('elottyí', 's.', 'm.', NULL, 'Cl. 7', 'el - e elottyí, o bohiammo; -es bilottyí, bohiarnmo, los -es e bilottyí, a bohiarnmo. verídico I 539', NULL, 'bohiammo', 'Español: velador', 'import-espanol-bubi'),
  ('hiiló''a', 's.', 'm.', NULL, 'Cl. 2', '(CI. 1 ), el- ü botó''a; -es bató''a, los -es a haló''a. vencejo, s 111. hükúa «(''1. 3), el - o bokáa; -s bekáa, los s e hckúa.', NULL, NULL, 'Español: vencedor', 'import-espanol-bubi'),
  ('tó''a', 'v.', NULL, NULL, NULL, 'flm�. yo venzo nla tó''a, tú ven ces o la tó''a, ella vence a la tó''a, nosotros vence mos to la tó'' a, vosotros vencéis al ogro lo la tó''a e enokonokko, ellos vencen ba lá tó''a; paso punl. yo vencí n tó''i, tú venciste o tó''i, él venció a tó''i, ellos vencieron a los bueyes ha tó''i i pókkó; pas. duro vosotros vencíais lo tó''essi, ellos vencían ba tó''essi. (b) o wínanna (pas. punto wínaam;pas...', 'paso punl. | pas.', NULL, 'Español: vencer', 'import-espanol-bubi'),
  ('suua', 's.', 'f.', NULL, 'Cl. 12', 'la - e suua, e benda; -s tuua, benda, las -s o tuua, i benda.', NULL, NULL, 'Español: venda', 'import-espanol-bubi'),
  ('ótta', 'v.', NULL, NULL, NULL, 'pas. punt. yo ven dí mi coche n otyíi o motóO IÍI, tú vendiste tu casa bO otyíi e tyóbbo o, etc.; paso duro ella vendía a oressi, ellas vendían ba otessi, etc. 2. - con o otálla (pas. punto otári; paso duro otálessi). 3. para o otella (pas. punto oreri; paso duro otelessi ).', 'paso duro ella vendía a oressi, ellas vendían ba otessi, etc. | paso duro otálessi). | paso duro otelessi ).', NULL, 'Español: vender', 'import-espanol-bubi'),
  ('bOntánna', 's.', 'f.', NULL, 'Cl. 3', 'buiflta, la - o bOntánna, o wifuJa, o builíta; -s bentánna, binda, biflta, las -s e bentánna, e binda, e biflta.', NULL, 'wifu, builíta', 'Español: ventana', 'import-espanol-bubi'),
  ('buítya', 's.', 'm.', NULL, 'Cl. 3', 'la - o buítya; -es bítya, las -es e bítya. * expeler una - o puráa buítya.', NULL, NULL, 'Español: ventosidad', 'import-espanol-bubi'),
  ('elláa', 'v.', NULL, NULL, NULL, 'vosotros visteis al alcalde lo eero o bOtúkku, etc.;pas. dur. las don cellas veían la ciudad desde el coche e biulla be elessi e ripottó tyue tyíri o motóo wela, etc. 2. -se; o elálla; preso nos vemos to la ba eíálla; paso punto elám; paso duro elálessi.', 'o elálla; | paso punto elám;', NULL, 'Español: ver', 'import-espanol-bubi'),
  ('tyokkó', 's.', 'm.', NULL, 'Cl. 9', 'el e tyokkó, o boloppo; -s tyokkó, beloppo, 108 -s i tyokkó, e beloppo.', NULL, 'boloppo', 'Español: verano', 'import-espanol-bubi'),
  ('ilatto', 's.', 'm.', NULL, 'Cl. 5', 'el - e ilatto; -s balatto, los -s a balatto.', NULL, NULL, 'Español: verbo', 'import-espanol-bubi'),
  ('ette', 's.', 'f.', NULL, 'Cl. 7', 'la - e ette; -es biette, las -es e biette.', NULL, NULL, 'Español: verdad', 'import-espanol-bubi'),
  ('boka''ó', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOka''ó; -s beka''ó, las -s e beka''ó. * - amarga lona''u (el. 1 1), la - amarga o lona'' u; -s amar gas na''u, las -s amargas i na''u. * - un poco amarga sileppa; -s un poco amar gas toleppa. * - gelatinosa sipepáám, -s gelatinosas topepáám.', NULL, NULL, 'Español: verdura', 'import-espanol-bubi'),
  ('tyoom', 's.', 'f.', NULL, 'Cl. 9', 'la - e tyoom; -s I yóóm, las -s i tyoom. verídico, afij. lette; es - lo que dices lette alo ii la lü''ólla lá. 540 / verja', 'es - lo que dices lette alo ii la lü''ólla lá.', NULL, 'Español: vergüenza', 'import-espanol-bubi'),
  ('botuttá', 's.', 'm.', NULL, 'Cl. 3', 'el- o botuttá; -s betuttá, los -s e betuttá.', NULL, NULL, 'Español: vertedero', 'import-espanol-bubi'),
  ('lohétyá', 's.', 'm.', NULL, NULL, '(el. 1 1), luua (el. 1 1), el - o lohétyá, o luua; -s, kétyá (el. ID), kuua (el. 1 0), los -s i kétyá, i kuua. * tengo un - para la fiesta kokkí luua lo a ripelló.', NULL, 'luua', 'Español: vestido', 'import-espanol-bubi'),
  ('bolólló', 's.', 'm.', NULL, 'Cl. 1', 'el o bolólló, e etyityí; -s bolólló, bityityí, los -s a bolólló, e bityityí.', NULL, NULL, 'Español: veterano', 'import-espanol-bubi');

-- Lote 41 (entradas 2201 a 2225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('lobatto', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 J), el - o lobatto; -s batto, los -s i batto..', NULL, NULL, 'Español: veto', 'import-espanol-bubi'),
  ('loettyi', 's.', 'm.', NULL, 'Cl. 11', 'el - o loettyi; -s beet tyi, los -s e beettyi.', NULL, NULL, 'Español: viaje', 'import-espanol-bubi'),
  ('bosalóetyi', 's.', 'm.', NULL, 'Cl. 1', 'el o bosalóetyi, o boía; -s basalóetyi, baía, los -s a basalóetyi, a baía.', NULL, 'boía', 'Español: viajero', 'import-espanol-bubi'),
  ('bOyólatyuíi', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOyóla tyuíi; -s bayólatyuíi, los -s a bayólatyuíi.', NULL, NULL, 'Español: vidente', 'import-espanol-bubi'),
  ('sobeolla', 's.', 'm.', NULL, 'Cl. 12', 'el - e sobeolla; -s tobeolla (el. 1 3), los -s o tobeolla.', NULL, NULL, 'Español: viejecito', 'import-espanol-bubi'),
  ('obéolla', 's.', 'm.', NULL, 'Cl. 7', 'el - e obéolla, e obetyityi; -s biobéolla, biobetyi tyi, los -s e biobéolla, e biobetyityi. 2. bolólló (el. 1 : un hombre - boie bolólló; el. 3: un rostro - bossó bOlólló), rolólló (el. 5: un machete - iSaké rOlólló), Olólló (el. 7: un pobla do - eriia olólló), kolólló (el. 9: una serpiente bappa kolólló), 100ólló (el. 1 1: un murciélago lokatte 101ólló), sOlólló (el. 12: una camisa ...', 'el.', NULL, 'Español: viejo', 'import-espanol-bubi'),
  ('ehurúru', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehurúru, e ehurú; -s bihurú ro, bihurú, los -s e bihurúru, e bihurú.', NULL, NULL, 'Español: viento', 'import-espanol-bubi'),
  ('buellá', 's.', 'm.', NULL, 'Cl. 3', '(a), wellá, reb bá, el - o buellá(a), o wellá, e rebbá; -s biellá(a), bebbá, los -s e biellá(a), e bebbá.', NULL, 'wellá', 'Español: vientre', 'import-espanol-bubi'),
  ('rakka', 's.', 'm.', NULL, 'Cl. 6', 'el - e rakka; -s (plural) bak ka, los -s a bakka.', NULL, NULL, 'Español: viernes', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'el - o bolotyi, o bolotta; -s balotyi, balotta, los -s a balotyi, a balotta.', NULL, 'bolotta', 'Español: vigilante', 'import-espanol-bubi'),
  ('sito''ú', 's.', 'm.', NULL, 'Cl. 13', 'el - e sito''ú, e si''ú.', NULL, NULL, 'Español: vigor', 'import-espanol-bubi'),
  ('boebba', 's.', 'm.', NULL, 'Cl. 1', 'el - o boebba; -s baebba, los -s a baebba.', NULL, NULL, 'Español: vinatero', 'import-espanol-bubi'),
  ('ritolló', 's.', 'm.', NULL, 'Cl. 5', 'el- e ritolló; -s batol ló, los -s a batolló.', NULL, NULL, 'Español: vínculo', 'import-espanol-bubi'),
  ('boebba', 's.', 'm.', NULL, 'Cl. 1', 'el - o boebba; -es baebba, los -es a baebba.', NULL, NULL, 'Español: vinicultor', 'import-espanol-bubi'),
  ('weem', 's.', 'm.', NULL, 'Cl. 3', 'el- o wem; -s biem, los -s e biem. * - de palma ba''u. * dulce de palma basellé. * - tinto wiló wíl\o, el - tinto o wilówíllO.', NULL, NULL, 'Español: vino', 'import-espanol-bubi'),
  ('boheppo', 's.', 'm.', NULL, 'Cl. 1', 'el - o boheppo, e eheperi; -s baheppo, biheperi, los -s a baheppo, e biheperi.', NULL, NULL, 'Español: visitante', 'import-espanol-bubi'),
  ('eyéíyébba', 's.', 'm.', NULL, 'Cl. 7', 'el - e eyéíyébba; -es biyéíyébba, los -es e biyéíyébba.', NULL, NULL, 'Español: vítor', 'import-espanol-bubi'),
  ('hükiiluún', 's.', 'f.', NULL, 'Cl. 2', '«( '' 1. 1 ), la - ii l1iil\"III;II I, -s bakotuári, las -s a b;lkillUúl i.', NULL, NULL, 'Español: viuda', 'import-espanol-bubi'),
  ('bokolto', 's.', 'f.', NULL, 'Cl. 3', 'la - ii biikiill", -l''S bekottO, las -es e bekültó.', NULL, NULL, 'Español: viudedad', 'import-espanol-bubi'),
  ('tobba', 'v.', NULL, NULL, NULL, 'pas. punt. la tormenta volcó el bidón e pullá e tobbi o bOlonká; paso duro los ratones volcaban la taza e ebitya be tobessi e sikoppo. 2. -se o tObeea; paso punto el coche se volcó o motóo bO tObeei; paso duro las cosas se volcaban a lokko la tobieseei.', 'pas. | paso duro los ratones volcaban la taza e ebitya be tobessi e sikoppo. | paso punto el coche se volcó o motóo bO tObeei;', NULL, 'Español: volcar', 'import-espanol-bubi'),
  ('ehoro', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehoro, e ehorá; -s bihoro, bihorá, los -s e bihoro, e bihorá. vosotros, 1. prono pers. lúe. 2. prono suj. lo; coméis lo la ráa.', 'coméis lo la ráa.', NULL, 'Español: vómito', 'import-espanol-bubi'),
  ('balabba', 'v.', NULL, NULL, NULL, 'paso duro balabessi.', 'paso duro balabessi.', NULL, 'Español: yacer', 'import-espanol-bubi'),
  ('ráa', 'v.', NULL, NULL, NULL, 'paso punto ellos yantaron toda la cabra ba réi e póríi kubbaa.', 'paso punto ellos yantaron toda la cabra ba réi e póríi kubbaa.', NULL, 'Español: yantar', 'import-espanol-bubi'),
  ('bolabó''o', 's.', 'm.', NULL, 'Cl. 1', 'el- o bolabó''o;-s bolabó''o, los -s a bolabó''o. yo, prono tÍne; pref, suj, ne, n.', 'pref, suj, ne, n.', NULL, 'Español: yerno', 'import-espanol-bubi'),
  ('bOnabba', 's.', 'm.', NULL, 'Cl. 1', 'el - o bonabba; -s banabba, los -s a banabba.', NULL, NULL, 'Español: zafio', 'import-espanol-bubi');

-- Lote 42 (entradas 2226 a 2230)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('piéssa', 's.', 'm.', NULL, 'Cl. 9', 'el - e piéssa; zagua nes piéssa, los zaguanes i piéssa.', 'zagua nes piéssa, los zaguanes i piéssa.', NULL, 'Español: zaguán', 'import-espanol-bubi'),
  ('sússu', 's.', 'm.', NULL, 'Cl. 9', 'el - e sússu; -s sússu, los -s i sÚssU.', NULL, NULL, 'Español: zapato', 'import-espanol-bubi'),
  ('sisússu', 's.', 'm.', NULL, 'Cl. 13', '(el. l2), el - e sisússu; -s tosússu, los -s o tosússu.', NULL, NULL, 'Español: zapatito', 'import-espanol-bubi'),
  ('bükckc', 's.', 'm.', NULL, 'Cl. 2', '(CI. 1 ), el - ii biikckkc; -s bakekke, los -s a bakckkc.', NULL, NULL, 'Español: zurdo', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'pas. punto antaño los m¡les tros zurraba a los alumnos IÍlmalé a bc'' lúa ba ópessi a bakuerakueráa.', NULL, NULL, 'Español: zurrar', 'import-espanol-bubi');

COMMIT;

-- ✅ Parte 2 de 2 completada
-- Total de entradas en esta parte: 1030