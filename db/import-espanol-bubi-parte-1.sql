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
  ('onno', 'adv.', NULL, NULL, NULL, 'oke, onnotyé; voy hacia - n la hella onno, n la hella oke; los muchachos están - a baseseppe bá lé onno, a baseseppe bá lé oke, ni estoy arriba ni estoy n tyí oOO''ó n tyí onnotyé.', 'voy hacia - n la hella onno, n la hella oke;', NULL, 'Español: abajo', 'import-espanol-bubi'),
  ('bototto', 's.', 'm.', NULL, 'Cl. 3', '- grande OOtotto, el - grande o botottO, - pequeño sipopótto, el- pequeño e sipopótto; -s grandes betotto, los - grandes e betottO; -s pequeños topopótto, los - pequeños o topopótto; la joven casadera de mi pueblo lle va muchos -s grandes o bulla 00 á e eriia m bo oríi betotto bikébíke; el bebé lleva -s pequeños en sus muñecas e sine''e si oríi topopótto a abbó bossó báí.', 'la joven casadera de mi pueblo lle va muchos -s grandes o bulla 00 á e eriia m bo oríi betotto bikébíke;', NULL, 'Español: abalorio', 'import-espanol-bubi'),
  ('tyí''a', 'v.', NULL, NULL, NULL, 'Ej. E xpr.: mi gente me abandonó en la plaza a batyo m ba le tyí''i o riossa, abandono mi trabajo n la solla e elakó m [n la sOleelakóm ).', NULL, NULL, 'Español: abandonar', 'import-espanol-bubi'),
  ('eOOllá', 's.', 'm.', NULL, 'Cl. 7', 'el- e ebollá, el - está sobre el asiento ebollá e lá e empa puá; -s mOOllá, ibollá, los -s e mbollá; quiero tres -s na na''a mbollá bié bittá.', 'quiero tres -s na na''a mbollá bié bittá.', NULL, 'Español: abanico', 'import-espanol-bubi'),
  ('okanna', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: abarcar', 'import-espanol-bubi'),
  ('riotta', 's.', 'm.', NULL, 'Cl. 5', 'obóttó, el - e riotta, o bootta; -s baotta, beotta, los -s a baotta; e beotta; el - proviene del duro trabajo o bootta bó la puel la o á e elakó.', 'e beotta;', 'bootta', 'Español: abatimiento', 'import-espanol-bubi'),
  ('oHáa', 'v.', NULL, NULL, NULL, 'tú abatías bO olessi, él abatía a olessi, etc. Ej. E xpr.: el cazador abatió el venado o obébá orí e so''í, llevo veinte días abatiendo cuervos ne''a billótyilla ná n la olláa ka''á.', NULL, NULL, 'Español: abatir', 'import-espanol-bubi'),
  ('buellá', 's.', 'm.', NULL, 'Cl. 3', 'el - o buellá; -es biellá, los -es e biellá; el - del niño está duro o buellá bO a o bOllá bo e to''ú, me duele el- o buelláIÍI bo e rop pá.', 'el - del niño está duro o buellá bO a o bOllá bo e to''ú, me duele el- o buelláIÍI bo e rop pá.', NULL, 'Español: abdomen', 'import-espanol-bubi'),
  ('bonkinki', 's.', 'm.', NULL, 'Cl. 3', 'el - o bonkinki, e enkinki el - negro o bOnkinki builló; -s benkinki, binkinki, los -s e benkinki, e binkinki; hay muchos -s en la casa he benkinki bikébíke o tyóbbo.', 'hay muchos -s en la casa he benkinki bikébíke o tyóbbo.', NULL, 'Español: abejorro', 'import-espanol-bubi'),
  ('bono''u', 's.', 'm.', NULL, 'Cl. 3', 'el - o bono''u; -s beno''u, los -s e beno''u; el río Cope está en un - e ríe rá Koppé ré bono''u wela.', 'el río Cope está en un - e ríe rá Koppé ré bono''u wela.', NULL, 'Español: abismo', 'import-espanol-bubi'),
  ('seké', 'adj.', NULL, NULL, 'Cl. 12', 'ekakká; el- e seké, e ekakká; -s tueké, bikak ká, los -s o tueké, e bikakká; estas -, eres un - we seké, we ekakká.', 'el- e seké, e ekakká; | estas -, eres un - we seké, we ekakká.', NULL, 'Español: abobado', 'import-espanol-bubi'),
  ('obulaella', 's.', 'm.', NULL, 'Cl. 1', 'el - o obulaella, o oburí, este es mi - ólo ká o obulaella IÍ1; -s abulaella, aburí (eI.2), los -s a abulael la, a aburí; los -s asisten a los ladrones a abu laella ba bulaella i húbbé.', 'los -s asisten a los ladrones a abu laella ba bulaella i húbbé.', 'oburí', 'Español: abogado', 'import-espanol-bubi'),
  ('esokobbi', 's.', 'm.', NULL, 'Cl. 7', 'el - e esokobbi; -s bisokobbi, mbitabitta, los -s e bisokobbi, e mbitabit ta; la ley ya no castiga el - e eette e tyá la akka e esokobbi.', 'la ley ya no castiga el - e eette e tyá la akka e esokobbi.', NULL, 'Español: aborto', 'import-espanol-bubi'),
  ('apála', 'v.', NULL, NULL, NULL, 'o ukalla, o kápárea bi''o, o húkalla, tú abrazas o la apála, o la hátyibianna, o la ukalla, etc., él abraza a la apála, a la hátyi bianna, a la ukalla, etc., tú abrazaste o apári, o hátyibiia, o ukari, etc., él abrazó a apári, a há tyibiia, a ukari, etc., tú abrazab...', NULL, 'ukalla, kápárea, húkalla, la, la, hátyibiia, ukari', 'Español: abrazar', 'import-espanol-bubi'),
  ('boappo', 's.', 'm.', NULL, 'Cl. 3', 'ehá tyibianna, el- o boappo, e eapaIla, e ehátyibianna; -s beappo, bihátyibianna, los -s e beappo, e bihátyibianna; dame un -, apalla le, m pa le ehátyibianna.', 'dame un -, apalla le, m pa le ehátyibianna.', NULL, 'Español: abrazo', 'import-espanol-bubi'),
  ('kobba', 's.', 'm.', NULL, 'Cl. 9', 'el - e kobba; -s kob ba, los -s i kobba; tengo un ne okkí kobba, dame tu - e''era le e k5bba ó', NULL, NULL, 'Español: abrigo', 'import-espanol-bubi'),
  ('ityaribba', 's.', 'm.', NULL, 'Cl. 5', 'el mes de - tiene muchos tormentas o buéá wá ityaribba bo okkí pullá hNkehNke.', NULL, NULL, 'Español: abril', 'import-espanol-bubi'),
  ('tyotyóbia', 'v.', NULL, NULL, NULL, 'la tierra absorbió todo el aceite o bobba bo tyotyóbiia a biitá ba mmaa.', 'la tierra absorbió todo el aceite o bobba bo tyotyóbiia a biitá ba mmaa.', NULL, 'Español: absorber', 'import-espanol-bubi'),
  ('ilIa', 'v.', NULL, NULL, NULL, '2. -se o ilIa; me abstengo de tomar alcohol n ka íri i koroko.', 'me abstengo de tomar alcohol n ka íri i koroko.', NULL, 'Español: abstener', 'import-espanol-bubi'),
  ('boyolIa', 's.', 'm.', NULL, 'Cl. 1', 'el - o boyolIa; -s bayoIla, los -s a bayolla; mi - está en la finca o boyolla m a le obáám, tengo muchos -s n okkí bayolla bikébíke.', 'mi - está en la finca o boyolla m a le obáám, tengo muchos -s n okkí bayolla bikébíke.', NULL, 'Español: abuelo', 'import-espanol-bubi'),
  ('ulla', 'v.', NULL, NULL, NULL, 'este envoltorio abulta con el frio rilo rihúo ri la ulla la e sille.', 'este envoltorio abulta con el frio rilo rihúo ri la ulla la e sille.', NULL, 'Español: abultar', 'import-espanol-bubi'),
  ('bíke', 'adj.', NULL, NULL, 'Cl. 10', 'bíke (els. 2,4, 6, 8), Jíke, IíkeIíke, hNke, túke; - gente batyo bíke, -s plátanos bekobbe bíke, -s camas baatyé bíke; -s asuntos labba Iíke, - poblados biriia bíke, -s sardinas kollo hÑke, -s pájaros tOnorí túke.', NULL, NULL, 'Español: abundante', 'import-espanol-bubi'),
  ('bukká', 'v.', NULL, NULL, NULL, 'este año abundan las f rutas 1010 loa e bihMrna bi bukkí.', 'este año abundan las f rutas 1010 loa e bihMrna bi bukkí.', NULL, 'Español: abundar', 'import-espanol-bubi'),
  ('etyitre', 's.', 'm.', NULL, 'Cl. 7', 'witítt6, eheá, esurí, el - e etyitte, o witíttó, e eheá, e esurí; -s bityitte, bitíttó, biheá, bisurí, los -s e bityitte, e bitíttó, e biheá.', NULL, 'witíttó', 'Español: abuso', 'import-espanol-bubi'),
  ('háIlo', 'adv.', NULL, NULL, NULL, 'de - para allá tyue tyíri hállo la hallé.', 'de - para allá tyue tyíri hállo la hallé.', NULL, 'Español: acá', 'import-espanol-bubi');

-- Lote 2 (entradas 26 a 50)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('héttáa', 'v.', NULL, NULL, NULL, 'los hechos acaecieron durante la noche e bilabba bí''a hétyíi botyíó, todo acaecerá en la guerra a labba lammaa lá''a héttá''á e bittá wela.', 'los hechos acaecieron durante la noche e bilabba bí''a hétyíi botyíó, todo acaecerá en la guerra a labba lammaa lá''a héttá''á e bittá wela.', NULL, 'Español: acaecer', 'import-espanol-bubi'),
  ('boello', 's.', 'm.', NULL, 'Cl. 3', 'el - o boello, -s beello, los -s e beello; los -s no son bue nos en época de lluvia e beello be tyi biebie e esubba.', 'los -s no son bue nos en época de lluvia e beello be tyi biebie e esubba.', NULL, 'Español: acantilado', 'import-espanol-bubi'),
  ('ebbia', 'v.', NULL, NULL, NULL, 'acato las leyes n la ebbiera e biette, si no aca tas las leyes serás castigado na o ta ebbieria e biette o la akkio.', 'acato las leyes n la ebbiera e biette, si no aca tas las leyes serás castigado na o ta ebbieria e biette o la akkio.', NULL, 'Español: acatar', 'import-espanol-bubi'),
  ('tápella', 'v.', NULL, NULL, NULL, 'el jefe del pueblo acoge a la gente o botúkku a la tápella a batyo; acojo a mi hermano n la tápella o bobelle ro.', 'el jefe del pueblo acoge a la gente o botúkku a la tápella a batyo;', NULL, 'Español: acoger', 'import-espanol-bubi'),
  ('ritutera', 'adj.', NULL, NULL, 'Cl. 5', 'la - e ritutera; -s batutera, las -s a batutera; la doncella tuvo una buena - o bulla a okkí ritutera rere.', 'la doncella tuvo una buena - o bulla a okkí ritutera rere.', NULL, 'Español: acogida', 'import-espanol-bubi'),
  ('eseríi', 's.', 'm.', NULL, 'Cl. 7', 'sokko; el- e eserii, e elabba, e sokko; -s biseríi, bilabba, tokko, los -s e biseríi, e bilabba, o tokko; los -s de ayer e bilabba bia mpári.', 'el- e eserii, e elabba, e sokko; | los -s de ayer e bilabba bia mpári.', 'tokko', 'Español: acontecimiento', 'import-espanol-bubi'),
  ('ribósekka', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribósekka; acordeones abósekka, los acordeones a abó sekka; el anciano toca bien el- e obéolla é la óppa e ribósekka lelle.', 'acordeones abósekka, los acordeones a abó sekka;', NULL, 'Español: acordeón', 'import-espanol-bubi'),
  ('lokkia', 'v.', NULL, NULL, NULL, 'acuesto al niño n la lok kia o bollá. 2. -se o lokka, me acuesto pronto n la lokka bakasso; -se con alguien o lokanna, o lokalla.', 'acuesto al niño n la lok kia o bollá.', 'lokalla', 'Español: acostar', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'el- e elab ba, e ronno; -s bilabba, honno, los -s e bilabba; el- se deja para maña na e elabba e tyieri o obari.', 'el- se deja para maña na e elabba e tyieri o obari.', NULL, 'Español: acto', 'import-espanol-bubi'),
  ('sá', 'v.', NULL, NULL, NULL, 'o pénna; he actuado durante mucho tiempo n ka pénn a ebéló etoeto.', 'he actuado durante mucho tiempo n ka pénn a ebéló etoeto.', 'pénna', 'Español: actuar', 'import-espanol-bubi'),
  ('ehattá', 's.', 'm.', NULL, 'Cl. 7', 'buane r í, 10''0 (el. 1 1), el - e ehattá, e ehuáeri, o buanerí; -s bihattá, bianerí; los -s e bihattá, e bianerí; de - 1515, eée, áelé; estoy de - 1515, n ka ebbia.', 'los -s e bihattá, e bianerí; | estoy de - 1515, n ka ebbia.', 'buanerí', 'Español: acuerdo', 'import-espanol-bubi'),
  ('etyakaké', 's.', 'm.', NULL, 'Cl. 7', 'el- e etyakaké [ee tSakaké); -s bityakaké, los -s e bityakaké.', NULL, NULL, 'Español: adefesio', 'import-espanol-bubi'),
  ('obosso', 'adv.', NULL, NULL, NULL, 'voy hacia - na hella obosso, ¡-! to etta''e.', NULL, NULL, 'Español: adelante', 'import-espanol-bubi'),
  ('borillo', 's.', 'm.', NULL, 'Cl. 3', 'el - o borillo, e epolo [eepolo), ademanes berilio, ipolo, mpolo, los ademanes e berilio, e ipOlo, e mpolo.', NULL, NULL, 'Español: ademán', 'import-espanol-bubi'),
  ('bosoko', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosoko; -s basoko, los -s a basoko; los - s llenan la ciudad el día de la fiesta a basoko ba eri e ripottO ello á e ripelló.', 'los - s llenan la ciudad el día de la fiesta a basoko ba eri e ripottO ello á e ripelló.', NULL, 'Español: adolescente', 'import-espanol-bubi'),
  ('ké', 'adv.', NULL, NULL, NULL, 'ké tye?; ¿- vas? ké tyé o la bella é?, voy - me da la gana n la bella e tyé n la na''a é [n la hellé tSe n la na''a él.', NULL, NULL, 'Español: adónde', 'import-espanol-bubi'),
  ('tápella', 'v.', NULL, NULL, NULL, 'he adoptado un niño n tápcri bollá [n taperi bOlla).', 'he adoptado un niño n tápcri bollá [n taperi bOlla).', NULL, 'Español: adoptar', 'import-espanol-bubi'),
  ('ite', 's.', 'm.', NULL, 'Cl. 7', 'el - e ite; adoquines bate, los adoquines a bate.', 'adoquines bate, los adoquines a bate.', NULL, 'Español: adoquín', 'import-espanol-bubi'),
  ('mpessó', 's.', 'm.', NULL, 'Cl. 3', 'el- o mpessó; -s ipessó, los -s e ipessó.', NULL, NULL, 'Español: adoquinado', 'import-espanol-bubi'),
  ('looppo', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), lopippo (el. 1 1), el o looppo, o lopippo; -s koppo (el. ID), pippo, los -s i koppo, i pippo, los -s de Navidad i koppo yá e kirisiméssi.', NULL, 'lopippo', 'Español: adorno', 'import-espanol-bubi'),
  ('riori', 's.', 'f.', NULL, 'Cl. 5', 'la - e riori; adqui siciones baori, las adquisiciones a baori; la - del terreno fue ayer e riori ri o bobba ri séi mpári.', 'adqui siciones baori, las adquisiciones a baori;', NULL, 'Español: adquisición', 'import-espanol-bubi'),
  ('eosso', 'adv.', NULL, NULL, 'Cl. 7', 'la muchacha me abrazó - o boláwáarí a le hátyibianna e eosso.', NULL, NULL, 'Español: adrede', 'import-espanol-bubi'),
  ('obotyíbótyi', 'adj.', NULL, NULL, 'Cl. 1', 'el- o obotyi bótyi; -es abotyibótyi, los -es a abOtyibó tyi; los -es mienten a abOtyibótyi ba lá sooa bisoí.', 'los -es mienten a abOtyibótyi ba lá sooa bisoí.', NULL, 'Español: adulador', 'import-espanol-bubi'),
  ('bekolla', 'v.', NULL, NULL, NULL, 'no me adules tanto we le bekoUe líkelíke.', 'no me adules tanto we le bekoUe líkelíke.', NULL, 'Español: adular', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'el - o botyo ésappá; -s batyo bésappa, los -s a batyo bésappá.', NULL, NULL, 'Español: adversario', 'import-espanol-bubi');

-- Lote 3 (entradas 51 a 75)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('wewe', 'adj.', NULL, NULL, 'Cl. 1', '-s bebe; una persona botyo wewe, unas personas -s batyo bebe; es una persona -, no le falta al respeto a nadie e bOtyo wewe sóté, ata pukiia botyo bulále.', 'una persona botyo wewe, unas personas -s batyo bebe;', NULL, 'Español: afable', 'import-espanol-bubi'),
  ('ebotyera', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebotyera; -s bibotyera, los -s e bibotyera, gesto de - ebotyera.', NULL, NULL, 'Español: afecto', 'import-espanol-bubi'),
  ('booa', 'v.', NULL, NULL, NULL, 'o booa. 2. -se o boea; me afeito todos los días n la ba booa elló ebba.', 'me afeito todos los días n la ba booa elló ebba.', NULL, 'Español: afeitar', 'import-espanol-bubi'),
  ('bassáa', 'v.', NULL, NULL, NULL, '- el cuchillo o bassáa o lo''obbá, - el machete o bassáa e isaké. a f " I r', NULL, NULL, 'Español: afilar', 'import-espanol-bubi'),
  ('e''ee', 's.', 'f.', NULL, 'Cl. 7', 'la - e e''ee (e''ee]; afir maciones bi''ee, las afirmaciones e bi''ee.', 'afir maciones bi''ee, las afirmaciones e bi''ee.', NULL, 'Español: mación', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'esta vida me aflige riló ribOtyo ri lá le batyáa. 2. -se o batyábi'' o; mi abuelo se aflige siempre o boyólla rÍl a la batyábi''o tyommaa.', 'esta vida me aflige riló ribOtyo ri lá le batyáa. | mi abuelo se aflige siempre o boyólla rÍl a la batyábi''o tyommaa.', NULL, 'Español: afligir', 'import-espanol-bubi'),
  ('ríe', 's.', 'm.', NULL, 'Cl. 5', 'el- e ríe; -s bíe, los -s a bíe; todos los -s van al mar a bíe barnmaa ba lá hella e elo''állo.', 'todos los -s van al mar a bíe barnmaa ba lá hella e elo''állo.', NULL, 'Español: afluente', 'import-espanol-bubi'),
  ('pe''o', 's.', 'm.', NULL, 'Cl. 9', 'el - e pe''o; -s pe''o, los -s i pe''o. afrenta, s''¡: rikupí, la - e rikupí; -s baku pi, las -s a bakupí; todos sufrimos la del gobierno túe arnmaa to la o''áa e roppá rá e rikupí rá e kóbinna.', 'todos sufrimos la del gobierno túe arnmaa to la o''áa e roppá rá e rikupí rá e kóbinna.', NULL, 'Español: aforismo', 'import-espanol-bubi'),
  ('walállo', 'adv.', NULL, NULL, 'Cl. 8', 'walállo (CI. 3), las -s e bialállo.', NULL, NULL, 'Español: afuera', 'import-espanol-bubi'),
  ('kokotta', 'v.', NULL, NULL, NULL, 'me aga cho cuando veo al rey n la kokotta ná n la elláa o bohítáari, ¡no te agaches! we kokotte!', NULL, NULL, 'Español: agacharse', 'import-espanol-bubi'),
  ('ebalabala', 's.', 'f.', NULL, 'Cl. 7', 'la - e ebalabala; -s ibalabala, las -s e ibalabala; este chico tiene -s oló boseseppe okkí rálló.', 'este chico tiene -s oló boseseppe okkí rálló.', NULL, 'Español: agalla', 'import-espanol-bubi'),
  ('lorá', 's.', 'm.', NULL, 'Cl. 4', '(el. 1 1), el- o lorá; -s berá, los -s e berá; plato en un - elobbo, platos en un - bilobbo.', 'plato en un - elobbo, platos en un - bilobbo.', NULL, 'Español: ágape', 'import-espanol-bubi'),
  ('bolotta', 's.', 'm.', NULL, 'Cl. 1', 'el - o bolotta, - de policía eporoporo, el - de policía e epo roporo; -s balotta, los -s a balotta, los -s de policía e iporoporo; los -s salu dan a las personas e iporoporo bi lá bóállo a batyo.', 'los -s salu dan a las personas e iporoporo bi lá bóállo a batyo.', NULL, 'Español: agente', 'import-espanol-bubi'),
  ('ekasso', 'adj.', NULL, NULL, 'Cl. 7', 'sitárityí (el. (2); eres muy - we ekasso sóté.', 'eres muy - we ekasso sóté.', NULL, 'Español: ágil', 'import-espanol-bubi'),
  ('maityi', 's.', 'm.', NULL, 'Cl. 6', 'el mes de - o buéá buá maityi.', NULL, NULL, 'Español: agosto', 'import-espanol-bubi'),
  ('bOtyibíi', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOtyi bíi; -s betyibíi, los -s e betyibíi.', NULL, NULL, 'Español: agotamiento', 'import-espanol-bubi'),
  ('buébué', 'adj.', NULL, NULL, 'Cl. 5', 'biébié (els. 4 y 8), réré; una persona - botyo buébué, una historia - boatta buébué, una ciudad - ripottó rere, una prenda - luua (el. 1 1) luélué, un cuento - siat ta sésé; -s bébé (els. 2 y 6) unas perso nas -s batyo bébé; biébié (els. 4 y 8), unas mantas -s bekutta biébié; unos poblados -s biriia biébié; tuétué unos cuentos -s toatta tuétué.', 'una persona - botyo buébué, una historia - boatta buébué, una ciudad - ripottó rere, una prenda - luua (el. | biébié (els. | unos poblados -s biriia biébié;', NULL, 'Español: agradable', 'import-espanol-bubi'),
  ('bosákko', 's.', 'm.', NULL, 'Cl. 3', 'bOsakóo, bosa''ó, el- o bOsákko, e epotópotóo, o bosakóo, o bosa''ó; -s besákko, mpotópotoo, besakóo, besa''ó; los -s e besákko, e mpotópotóo, o bOsakóo, o bosa''ó; son buenos los -s de las personas del pueblo bié biébié e besákko biá batyo bá e eriia.', 'los -s e besákko, e mpotópotóo, o bOsakóo, o bosa''ó;', 'bosakóo, bosa''ó, b, bosa''ó', 'Español: agradecimiento', 'import-espanol-bubi'),
  ('lopéllo', 's.', 'm.', NULL, 'Cl. 10', '(el. (1), el - o lopéllo; -s péllo, los -s i péllo.', NULL, NULL, 'Español: agravio', 'import-espanol-bubi'),
  ('káké', 'adj.', NULL, NULL, NULL, 'pettáa; el plátano está - o bokobbé bo e e káké; la comida está agria o bOra''ó bo láa pettáa.', 'el plátano está - o bokobbé bo e e káké;', NULL, 'Español: agrio', 'import-espanol-bubi'),
  ('epiiá', 's.', 'm.', NULL, 'Cl. 7', 'el- e epiiá; -s mpiiá, los -s e mpiiá; los -s se pueden comer con plátano asado e mpiiá bi pá''e o rálla ó bekobbe be nooe.', 'los -s se pueden comer con plátano asado e mpiiá bi pá''e o rálla ó bekobbe be nooe.', NULL, 'Español: aguacate', 'import-espanol-bubi'),
  ('biálla', 'v.', NULL, NULL, 'Cl. 2', 'los trabaja dores aguantan su trabajo todos los días a balakóláko bá la biálla e elakó ábó elló eba. 2. -se o hMmótea, o biálla; si alguien te molesta, aguántate na botyo o tyipóbia, hMmotéá.', 'los trabaja dores aguantan su trabajo todos los días a balakóláko bá la biálla e elakó ábó elló eba. | si alguien te molesta, aguántate na botyo o tyipóbia, hMmotéá.', 'biálla', 'Español: aguantar', 'import-espanol-bubi'),
  ('betella', 'v.', NULL, NULL, NULL, 'aguárdame un momento betella le lakóokóo, yo aguardo que cese la lluvia nne n la betella ná o lóllá ló eppe, aguardo mi momento n la oyáera e ebélló ro.', 'aguárdame un momento betella le lakóokóo, yo aguardo que cese la lluvia nne n la betella ná o lóllá ló eppe, aguardo mi momento n la oyáera e ebélló ro.', NULL, 'Español: aguardar', 'import-espanol-bubi'),
  ('koróko', 's.', 'm.', NULL, 'Cl. 10', 'el- i koróko; el - perjudica a las personas i koróko i lá kap pa a batyo.', 'el - perjudica a las personas i koróko i lá kap pa a batyo.', NULL, 'Español: aguardiente', 'import-espanol-bubi'),
  ('ehokko', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehokko; aguijones bihokko, los agui jones e biehokko; los aguijones del puercoespín se clavaron en su pierna e biehokko bi á e epa''á be bó tyoppíi o loponná lo ái.', 'aguijones bihokko, los agui jones e biehokko;', NULL, 'Español: aguijón', 'import-espanol-bubi');

-- Lote 4 (entradas 76 a 100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bolló', 's.', 'm.', NULL, 'Cl. 3', 'bukká, pi''í, el - o bOlló, o bu''a, o bukká; -s beolló, yu''a, biukká, pi''í; los -s e beolló, e yu''á, e biukká, i pi''í; hay muchos -s en la casa he beolló bíkebíke o tyóbbo.', 'los -s e beolló, e yu''á, e biukká, i pi''í;', 'bu''a, bukká', 'Español: agujero', 'import-espanol-bubi'),
  ('aho', 'adv.', NULL, NULL, NULL, 'hay gente - aho be batyo; - estare mos cuando lleguéis to la sá aho 10 la poallá.', 'hay gente - aho be batyo;', NULL, 'Español: ahí', 'import-espanol-bubi'),
  ('kóbbia', 'v.', NULL, NULL, NULL, 'el sobrino aho gó a su tío e neppó e kóbbia o boióppé áe. 2. -se o kóbba, o oppa; se ahogó bebiendo agua a oppi a ressi lá boppé.', 'el sobrino aho gó a su tío e neppó e kóbbia o boióppé áe. | se ahogó bebiendo agua a oppi a ressi lá boppé.', 'oppa', 'Español: ahogar', 'import-espanol-bubi'),
  ('nkuáaó', 'adv.', NULL, NULL, NULL, 'tyútyulé, dyíto, láOlé, lála; ven - mismo púllóo nkuáaó wete.', 'ven - mismo púllóo nkuáaó wete.', NULL, 'Español: ahora', 'import-espanol-bubi'),
  ('heñkalla', 'v.', NULL, NULL, NULL, 'el bubi no ahorca a las personas o obobée a tyá la hehkalla a batyo, el goberna dor ahorcó a cinco personas e kóbinna a soriia batyo be battó. 2. -se o heñkalea.', 'el bubi no ahorca a las personas o obobée a tyá la hehkalla a batyo, el goberna dor ahorcó a cinco personas e kóbinna a soriia batyo be battó.', NULL, 'Español: ahorcar', 'import-espanol-bubi'),
  ('naríbia', 'v.', NULL, NULL, NULL, 'el niño ahuyenta a los pollitos o bóllá a la naríbia o toko''e.', 'el niño ahuyenta a los pollitos o bóllá a la naríbia o toko''e.', NULL, 'Español: ahuyentar', 'import-espanol-bubi'),
  ('ehurú', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehu r ú, e ehurúru, -s bihurú, bihurúru, los -s e bihurú, e bihurúru; el está frío e ehurú é sille.', 'el está frío e ehurú é sille.', NULL, 'Español: aire', 'import-espanol-bubi'),
  ('erippí', 's.', 'm.', NULL, 'Cl. 7', 'de las mujeres borippí; -s birippí, bitukké, -s de las mujeres berippí.', NULL, NULL, 'Español: aislamiento', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'de tanto tocarlo ajó la ver dura o esi''a Iíke o boka''o abo kappi. 2. -se o kapea, o lokolla. aldeíta I 355', 'de tanto tocarlo ajó la ver dura o esi''a Iíke o boka''o abo kappi.', 'lokolla', 'Español: ajar', 'import-espanol-bubi'),
  ('buaéa', 's.', 'm.', NULL, 'Cl. 3', 'el - o buaéa; -s biaéa, los -s e biaéa; quiero comprar -s n la na''a o olla biaéa [n la na''o ola biaéa).', 'quiero comprar -s n la na''a o olla biaéa [n la na''o ola biaéa).', NULL, 'Español: alambre', 'import-espanol-bubi'),
  ('rilokko', 's.', 'm.', NULL, 'Cl. 5', 'el - e rilokko, e tyóbbo; -s balokko, tyóbbo, los -s a balokko, i tyóbbo; el - está lle no de gente e rilokko ri séri o ella batyo [e rilok ko seró ella batSo); hay dos -s en la ciudad he balokko be appa e ripottó wela [he balokko be appa e ripotto wéla).', 'el - está lle no de gente e rilokko ri séri o ella batyo [e rilok ko seró ella batSo);', NULL, 'Español: albergue', 'import-espanol-bubi'),
  ('ekerikeri', 'adj.', NULL, NULL, 'Cl. 7', 'el - e ekerikeri; -s bikerikeri, los -s e bikeri keri; el - ganó el encuentro e ekerikeri e tó''i e suppá [eekerikeri e tó''ié suppá), hay muchos-s en el pueblo he bikerikeri bikébíke eriia wela.', 'el - ganó el encuentro e ekerikeri e tó''i e suppá [eekerikeri e tó''ié suppá), hay muchos-s en el pueblo he bikerikeri bikébíke eriia wela.', NULL, 'Español: albino', 'import-espanol-bubi'),
  ('nokonoko', 's.', 'm.', NULL, 'Cl. 9', 'el- e nokonoko; -s nokonoko (el. lO), los -s i nokonoko; hay mucho - aquí he nokonoko hNke hállo.', 'hay mucho - aquí he nokonoko hNke hállo.', NULL, 'Español: alboroto', 'import-espanol-bubi'),
  ('pi', 's.', 'm.', NULL, 'Cl. 7', '. epityi, ityuhó, ityuheri, las - e ipityi, e ityuhó, e ityu heri.', NULL, NULL, 'Español: albricias', 'import-espanol-bubi'),
  ('bOtúkku', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOtúkku; -s batúkku, los -s a batúkku; todos los -s es tuvieron en Moka a batúkku bamrnaa bá bá séi o Moka [a batukkú barnmaa bá séyó mokáa). 2.', 'todos los -s es tuvieron en Moka a batúkku bamrnaa bá bá séi o Moka [a batukkú barnmaa bá séyó mokáa).', NULL, 'Español: alcalde', 'import-espanol-bubi'),
  ('bOkóppi', 's.', 'm.', NULL, 'Cl. 1', 'el- o bokóppi; -s bakóppi, los -s a bakóppi; no eres - o tyí bokóppi.', 'no eres - o tyí bokóppi.', NULL, 'Español: alcohólico', 'import-espanol-bubi'),
  ('botyo', 'adj.', NULL, NULL, 'Cl. 12', 'soy un - ne botyo ériia, no eres un - o tyí botyo ériia. aldeíta, dim. siriia, la - e siriia; -s toriia, las -s o toriia; antaño había muchas-s aotya ha séi toriia tukétúke. 3S() / Hlcccionar', 'soy un - ne botyo ériia, no eres un - o tyí botyo ériia. | antaño había muchas-s aotya ha séi toriia tukétúke.', NULL, 'Español: aldeano', 'import-espanol-bubi'),
  ('ollé', 's.', 'm.', NULL, 'Cl. 7', '- pasa esta mañana ha lá héttáa ollé eló ebari.', NULL, NULL, 'Español: algo', 'import-espanol-bubi'),
  ('eserubba', 's.', 'm.', NULL, 'Cl. 7', 'kíó kíO, el- e eserubba, e kótiin, el - no engaña e eserubba e tyá la sooa; algodones biserubba, kótiin, los algodones e biserubba, i kótiin; buscamos - de la palma para hacer una almo hada to la utya kíókío to báe eleaeró.', 'algodones biserubba, kótiin, los algodones e biserubba, i kótiin;', NULL, 'Español: algodón', 'import-espanol-bubi'),
  ('bOhó''o', 's.', 'm.', NULL, 'Cl. 4', '(eI.3), el- o bohó''o; -s behó''o, los -s e behó''o; - arbóreo bOhó''o.', NULL, NULL, 'Español: algodonero', 'import-espanol-bubi'),
  ('eporoporo', 's.', 'm.', NULL, 'Cl. 7', 'el - e eporoporo, e eporosía; -es iporoporo, ipi)rosía, los -es e iporoporo, e iporosía. alguien, botyo; hay - aquí he botyo hállo, no hay - aquí ha tyí bOtyo hállo.', 'hay - aquí he botyo hállo, no hay - aquí ha tyí bOtyo hállo.', NULL, 'Español: alguacil', 'import-espanol-bubi'),
  ('siapa', 's.', 'm.', NULL, 'Cl. 12', 'el - e siapa, e elappa; -s toapa, bilap pa, los -s o tolapa, e bilappa; busco -s para arreglar el coche n la utya tolapa o lakae lIa o motóo. almohada I 357', 'busco -s para arreglar el coche n la utya tolapa o lakae lIa o motóo.', NULL, 'Español: alicate', 'import-espanol-bubi'),
  ('boo', 's.', 'm.', NULL, 'Cl. 3', 'ehulá, el - o boo, o moo, e ehulá; - s beoo, meoo, bíhuula, los -s e meoo, e beoo, e bíhuula.', NULL, 'moo', 'Español: aliento', 'import-espanol-bubi'),
  ('lorá', 's.', 'm.', NULL, 'Cl. 11', 'el- o lorá, o bora''o; -s berá, bera''o, los -s e berá; el- se compra en el mercado o bora''o bó la olla o o mmakétte.', 'el- se compra en el mercado o bora''o bó la olla o o mmakétte.', 'bora''o', 'Español: alimento', 'import-espanol-bubi'),
  ('bolekko', 's.', 'f.', NULL, 'Cl. 3', 'la - o bolekko; alineaciones belekko, las alineaciones e belekko; la - de los soldados o bolekko bo i so tyáa.', 'alineaciones belekko, las alineaciones e belekko;', NULL, 'Español: alineación', 'import-espanol-bubi');

-- Lote 5 (entradas 101 a 125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sotya', 'v.', NULL, NULL, NULL, 'o lekkia, o siela; alineo todos los asientos n la lekkia e bimpa birnmaa.', 'o lekkia, o siela;', 'siela', 'Español: alinear', 'import-espanol-bubi'),
  ('irera', 'v.', NULL, NULL, NULL, 'alisto al muchacho n la ire ra o boseseppe, he alista do a mi hijo para ir a la escuela n ka ireriia o bollá ro o hélla o sikuella. 2. -se o ireriia; quiero alistarme n la na''a o irerea, no quiero alistarme n tyá na''a o irerea, no puedo alistar me n ta pá''e o irerea.', 'alisto al muchacho n la ire ra o boseseppe, he alista do a mi hijo para ir a la escuela n ka ireriia o bollá ro o hélla o sikuella. | quiero alistarme n la na''a o irerea, no quiero alistarme n tyá na''a o irerea, no puedo alistar me n ta pá''e o irerea.', NULL, 'Español: alistar', 'import-espanol-bubi'),
  ('botupori', 's.', 'm.', NULL, 'Cl. 3', 'el o botupori, e sehehí; -s betupori, tuehehí, los -s e betupori, o tuehehí; este traba jo ha sido un - para mí ello elako e le heri botupori.', 'este traba jo ha sido un - para mí ello elako e le heri botupori.', 'tuehehí', 'Español: alivio', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, NULL, 'el o botyo e rihuee; -s batyo ba e rihuee, los -s a batyo ba e rihuee.', NULL, NULL, 'Español: allegado', 'import-espanol-bubi'),
  ('hallé', 'adv.', NULL, NULL, NULL, 'las personas están - a batyo be hallé.', 'las personas están - a batyo be hallé.', NULL, 'Español: allí', 'import-espanol-bubi'),
  ('bOle''ú', 's.', 'm.', NULL, 'Cl. 3', 'bole''o, esillo, - de ñames eopó, esappí, el- o bole''u, e sittó, o bOle''o, e esil lo; el- de ñames e eopó, e esappí, el - del dinero e reppo ra i tyokko; almacenes bele''ú, tottó, bele''o, bisillo, los almace nes e bele''n, o tottó, e bele'' o, e bisillo, los gran des almacenes o tottó tOtte.', 'el- de ñames e eopó, e esappí, el - del dinero e reppo ra i tyokko;', 'b, tottó', 'Español: almacén', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, 'almaceno la comida n la leppa o bora''o, he almacenado todas las cosas n la leppi a lokko lammaa.', 'almaceno la comida n la leppa o bora''o, he almacenado todas las cosas n la leppi a lokko lammaa.', NULL, 'Español: almacenar', 'import-espanol-bubi'),
  ('bole''o', 's.', 'm.', NULL, 'Cl. 1', 'el- o bole''o; -s bale''o, los -s a bale''o.', NULL, NULL, 'Español: almacenista', 'import-espanol-bubi'),
  ('ribélo', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribélo; -s abélo, los -s a abélo; el- está en la pared e ribélo ri lé eteppe bi''o.', 'el- está en la pared e ribélo ri lé eteppe bi''o.', NULL, 'Español: almanaque', 'import-espanol-bubi'),
  ('bOakká', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOakká, pequeña sakká, la - pequeña e sakká; -s beakká, las -s e beakká, -s pequeñas tuakká, las -s pequeñas o tuakká.', NULL, NULL, 'Español: almendra', 'import-espanol-bubi'),
  ('sakká', 's.', 'm.', NULL, 'Cl. 12', 'el- e sakká;-s tuakká, los -s o tuakká.', NULL, NULL, 'Español: almendrillo', 'import-espanol-bubi'),
  ('sitátyi', 's.', 'm.', NULL, 'Cl. 12', 'el- e sitátyi; almi dones totátyi, los almidones o totátyi; el - es bueno para la ropa e sitátyi si serí i kuua sese.', 'almi dones totátyi, los almidones o totátyi;', NULL, 'Español: almidón', 'import-espanol-bubi'),
  ('sitátyibbia', 'v.', NULL, NULL, NULL, 'quiero - mi camisa n la na''a o sitátyibbia é sottero.', 'quiero - mi camisa n la na''a o sitátyibbia é sottero.', NULL, 'Español: almidonar', 'import-espanol-bubi'),
  ('rihatta', 's.', 'm.', NULL, 'Cl. 5', 'el - e rihatta; -s bahatta, los -s a bahatta; el - tiene lugar en la casa del pueblo e rihatta ri lé o tyóbbo á e eriia.', 'el - tiene lugar en la casa del pueblo e rihatta ri lé o tyóbbo á e eriia.', NULL, 'Español: almuerzo', 'import-espanol-bubi'),
  ('bOlokia', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOlokia; -es balokia, los -es a balokia; el- ha ido a la ciudad o bOlokia a heri ripottó.', 'el- ha ido a la ciudad o bOlokia a heri ripottó.', NULL, 'Español: alojador', 'import-espanol-bubi'),
  ('rilokko', 's.', 'm.', NULL, 'Cl. 5', 'el- e rilokko; -s balokko, los -s a balokko.', NULL, NULL, 'Español: alojamiento', 'import-espanol-bubi'),
  ('wettya', 's.', 'm.', NULL, 'Cl. 3', 'la - o wettya; -s biettya, las -s e biettya.', NULL, NULL, 'Español: alquería', 'import-espanol-bubi'),
  ('bóra', 'v.', NULL, NULL, NULL, 'o relÍ.tibbia; alquilo mi casa n la bóra e tyóbbo rn, n la relÍ.tibbia e tyóbbo rn.', 'alquilo mi casa n la bóra e tyóbbo rn, n la relÍ.', NULL, 'Español: alquilar', 'import-espanol-bubi'),
  ('renti', 's.', 'm.', NULL, 'Cl. 5', 'el - e renti; -es benti, los -es a benti; ¿cuánto cuesta el -? e renti ré la be''e?, no he pagado el - n te obella e renti.', NULL, NULL, 'Español: alquiler', 'import-espanol-bubi'),
  ('kolottá', 's.', 'm.', NULL, 'Cl. 10', 'la carretera se hace con - e telle e lá pénera o kolottá.', NULL, NULL, 'Español: alquitrán', 'import-espanol-bubi'),
  ('bi''o', 'adv.', NULL, NULL, NULL, '- de mi casa e tyóbbo rn bi''o, estoy - del oratorio n la e róhiáa bi''o.', NULL, NULL, 'Español: alrededor', 'import-espanol-bubi'),
  ('bosalelle', 'adj.', NULL, NULL, 'Cl. 1', 'persona - bOsa lelle, el- o bOsalelle, la persona - o bosalel le; -s basalelle, personas -s basal elle, los -s a basal elle.', NULL, NULL, 'Español: altruista', 'import-espanol-bubi'),
  ('rikókko', 's.', 'm.', NULL, 'Cl. 5', 'el- e rikókko; -s bakókko, los -s a bakókko; el - públi co e rikókko rá e eriia.', 'el - públi co e rikókko rá e eriia.', NULL, 'Español: alumbrado', 'import-espanol-bubi'),
  ('bue''á', 's.', 'm.', NULL, 'Cl. 1', 'el o bue''á, o wanapana; -s be''á, banapana, los -s a bé''a, a banapana; los -s de la escuela a banapana bá o sikuella.', 'los -s de la escuela a banapana bá o sikuella.', 'wanapana', 'Español: alumno', 'import-espanol-bubi'),
  ('baoppó', 's.', 'm.', NULL, 'Cl. 6', 'el - a baoppó; alu viones baoppó; el- arrastró las casas del pueblo a baoppó ba arí i tyóbbo yá e eriia.', 'alu viones baoppó;', NULL, 'Español: aluvión', 'import-espanol-bubi');

-- Lote 6 (entradas 126 a 150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ebotyera', 'adj.', NULL, NULL, 'Cl. 7', 'persona - bOhOlátyo, obotyera; -s bibotyera, bahOlátyo, abotyera, las personas -s llevan la paz al pueblo a bahOlátyo bá la poal la e ehOíhoí e eríia wela. amado, a, buelello, ríhólle, mohóle, bOpaoséla, paoséla, ellla - a o bueJello, e rihólle, o mohóle, o bOpaosé la, e paoséla; -s, as belello, bahólle, mahóle, bapaoséla, paoséla (el. lO), los -s, las -as a belello, a bahólle, a mahó...', NULL, 'mohóle, b', 'Español: amable', 'import-espanol-bubi'),
  ('sehehí', 's.', 'm.', NULL, 'Cl. 12', 'el- e sehehí; -s tue hehí, los -s o tuehehí.', NULL, NULL, 'Español: amaine', 'import-espanol-bubi'),
  ('mil', 's.', NULL, NULL, 'Cl. 1', 'mil bohólláa. - de la gente boholátyo, wanatyo, ekokonno, epomporo, pa''á, el - o bohól láa, o wanatyo, e ekokonno, e epomporo, e pa''á; -s bahólláa, - de la gente baholátyo, banatyo, bikokonno, ipomporo, los -s a bahól láa, a banatyo, e bikokonno, e epomporo, los -s de la gente a baholátyo.', NULL, 'wanatyo', 'Español: amante', 'import-espanol-bubi'),
  ('hOlláa', 'v.', NULL, NULL, NULL, 'amo a una chica n hoom boláwáarí, creo que te amo nsiá ko hOríi. 2. -se o holláno; nos amamos to ba holláno. 3. hacer - o hOránna; las personas se presentan pero no se hacen amar (depende de ellas amarse) batyo e tapánna o wáae a tyi e horánna o.', 'amo a una chica n hoom boláwáarí, creo que te amo nsiá ko hOríi. | nos amamos to ba holláno. | las personas se presentan pero no se hacen amar (depende de ellas amarse) batyo e tapánna o wáae a tyi e horánna o.', NULL, 'Español: amar', 'import-espanol-bubi'),
  ('lopetyípetyíi', 'adj.', NULL, NULL, 'Cl. 7', 'lopetyípetyíi (el. 1 1), epetyíi, káké, pettáa; el plátano está - o bokobbe bo lá pettáa.', 'el plátano está - o bokobbe bo lá pettáa.', NULL, 'Español: amargo', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'm.', NULL, 'Cl. 4', '(el. 1 1), el o lopetyíi; -es epetyíi, los -es e epetyíi.', NULL, NULL, 'Español: amargor', 'import-espanol-bubi'),
  ('ebotúbotu', 'adj.', NULL, NULL, 'Cl. 7', 'ebottu; eres - we ebotúbotu.', 'eres - we ebotúbotu.', NULL, 'Español: ambiguo', 'import-espanol-bubi'),
  ('alo', 's.', 'm.', NULL, NULL, 'ee, eelé, alo le.', NULL, NULL, 'Español: amén', 'import-espanol-bubi'),
  ('mmása', 's.', 'm.', NULL, 'Cl. 1', 'el- o rnmása; -s ammá sa, los -s a ammása; yo soy el - nné n le o rnmása.', 'yo soy el - nné n le o rnmása.', NULL, 'Español: amo', 'import-espanol-bubi'),
  ('bassáa', 'v.', NULL, NULL, NULL, 'tengo que - este machete n tori o bassáa riló isaké. o okanna, o kótta; los hom bres amontonan las piñas de cacao a baié ba lá kótta e birnmáloto.', 'tengo que - este machete n tori o bassáa riló isaké. | los hom bres amontonan las piñas de cacao a baié ba lá kótta e birnmáloto.', 'kótta', 'Español: amolar', 'import-espanol-bubi'),
  ('rihólé', 's.', 'm.', NULL, 'Cl. 6', '(Cl. 5), el - e rihólé; -es bahólé, los -es a bahólé; el - malo e rihólé ribé; eres mi - wé o lé rihólé rÍl, mal de -es roppá rá rihólé; -es reñidos -es queridos bi tébbi yé ba bié bi lé''a kokótya.', 'el - malo e rihólé ribé;', NULL, 'Español: amor', 'import-espanol-bubi'),
  ('io', 's.', 'm.', NULL, 'Cl. 1', 'buenos días tue''a obari é io.', NULL, NULL, 'Español: amorcito', 'import-espanol-bubi'),
  ('eburi', 's.', 'm.', NULL, 'Cl. 7', 'el - e eburi; -s mburi, los -s e mburi; estoy al - de la ley n la e eburi atá á e eette. amplio, a, botée una manta - bokutta botée; lotée (Cl. 11) un vestído -Iuua loree; biotee unas mantas -s bekutta biotee; kotee unos vestidos -s kuua kotee, etc.; quiero una chaqueta - n la na''a kótte kotee.', 'estoy al - de la ley n la e eburi atá á e eette. | lotée (Cl. | biotee unas mantas -s bekutta biotee;', NULL, 'Español: amparo', 'import-espanol-bubi'),
  ('robbo', 's.', 'm.', NULL, 'Cl. 5', 'el- e robbo; -5 bob bo, los -s a bobbo; el - es para la fiebre e robbo ké re a bi''ó.', 'el - es para la fiebre e robbo ké re a bi''ó.', NULL, 'Español: amuleto', 'import-espanol-bubi'),
  ('epanapénne', 's.', 'm.', NULL, 'Cl. 7', 'el - e epana pénne; - mpanapénne, los - e mpanapénne; mi padre tiene una plantación de - o boie rÍl okkíi epátta a mpanapénne.', 'mi padre tiene una plantación de - o boie rÍl okkíi epátta a mpanapénne.', NULL, 'Español: ananás', 'import-espanol-bubi'),
  ('bOtyílé', 's.', 'm.', NULL, 'Cl. 1', 'motyílé, el - o botyílé, o boyólla, o mo tyílé; -s batyílé, bayólla, matyílé, los -s a batyílé, a bayólla, a matyílé; nuestros -s hacían hechos asombrosos a bayól la báó ba sessi i pohá.', 'nuestros -s hacían hechos asombrosos a bayól la báó ba sessi i pohá.', 'boyólla, mo', 'Español: ancestro', 'import-espanol-bubi'),
  ('boyólla', 's.', 'm.', NULL, 'Cl. 1', 'obétyityi (Cl. 7), el - o boyólla, e obéolla, e obe tyityi; -s bayólla, biobéolla, biobetyityi, los -s a bayólla, e biobéolla, e biobetyityi; consejo de -s e inoOá rá e biobéol la. ancho, a, bote (els. 1 y 3) persona - botyo bOte, cara - bOssó bote; bote (els. 2 y 6) perso nas -s batyo bote, camas -s baatyé bote, beote caras - bessó Mote, roté cama - raatyé rote, ote muslo - epasso ote...', 'consejo de -s e inoOá rá e biobéol la. | bote (els.', NULL, 'Español: anciano', 'import-espanol-bubi'),
  ('uánna', 'v.', NULL, NULL, NULL, 'la calle está anegada o bokoo bo uáán.', 'la calle está anegada o bokoo bo uáán.', NULL, 'Español: anegar', 'import-espanol-bubi'),
  ('bOhekkáa', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOhek káa; anfitriones bahekkáa, los anfitrio nes a bahékkáa.', 'anfitriones bahekkáa, los anfitrio nes a bahékkáa.', NULL, 'Español: anfitrión', 'import-espanol-bubi'),
  ('boatyo', 's.', 'm.', NULL, 'Cl. 3', 'el - o boatyo; -s beatyo, los -s e beatyo.', NULL, NULL, 'Español: anguilero', 'import-espanol-bubi'),
  ('elella', 'v.', NULL, NULL, NULL, 'no anheles lo que no es tuyo we elelle ollé ná tyi''é ao.', 'no anheles lo que no es tuyo we elelle ollé ná tyi''é ao.', NULL, 'Español: anhelar', 'import-espanol-bubi'),
  ('eeleri', 's.', 'm.', NULL, 'Cl. 7', 'el- e eeleri; -s bieleri, los -s e bieleri. aniDo, ríín, el - e ríín; -s bíín, los -s a bíín; los -s se compran en la tienda a bíín ba lá olla o o sáppo.', 'los -s se compran en la tienda a bíín ba lá olla o o sáppo.', NULL, 'Español: anhelo', 'import-espanol-bubi'),
  ('mmetya', 'adj.', NULL, NULL, 'Cl. 1', 'el - o rnmetya; de jóvenes bosókkó; -es ametya, -es de jóvenes basókkó; los -es se ríen a ametya bá la nooa tooa.', 'de jóvenes bosókkó; | los -es se ríen a ametya bá la nooa tooa.', NULL, 'Español: animador', 'import-espanol-bubi'),
  ('nabba', 's.', 'm.', NULL, 'Cl. 9', 'el - e nabba; -s nab ba, los -s i nabba, los -s malos i nabba bé, aquellos -es son del jefe de poblado ile nab ba kí o botúkku, el - blanco e nabba hótóttó.', NULL, NULL, 'Español: animal', 'import-espanol-bubi'),
  ('ehaé', 's.', 'm.', NULL, 'Cl. 7', 'etémá, el - e ehaé, e etébbá, e etémá; -s bihaé, los -s e bihaé, e bitébbá, e rnitémá,', NULL, NULL, 'Español: ánimo', 'import-espanol-bubi');

-- Lote 7 (entradas 151 a 175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOambó', 'adj.', NULL, NULL, 'Cl. 1', 'el- o boambó; annoboneses baambó, los annoboneses a baambó; los annoboneses son de Annobón a baambó ba púríi e annobóon.', 'annoboneses baambó, los annoboneses a baambó;', NULL, 'Español: annobonés', 'import-espanol-bubi'),
  ('itoMri', 's.', 'm.', NULL, 'Cl. 5', 'losóo (el. 1 1), el - e itoMri, e eosó, o 10sóo; -s batoberi, biosó, kosóO (el. 1 0), los -8 a batoberi, e biosó, i kosóo. anochecer, 1. buatotyio, el - o buatotyio; -es biatotyio, los -es e biato tyio; mi padre llegó al - o boie ID a pooi o buatotyio. 2. o ko''a, o sílla; anochece pronto hoy o bokó bO lá ko''a bakasso lel10.', 'mi padre llegó al - o boie ID a pooi o buatotyio. | anochece pronto hoy o bokó bO lá ko''a bakasso lel10.', 'sílla', 'Español: ano', 'import-espanol-bubi'),
  ('irera', 'v.', NULL, NULL, NULL, 'anoto lo que dice el maestro n la irera alo a la oháa lá o bue''iáa, no anotes nada we irere ollé á mmuae. o elella; ansío tener paz n la elella', 'anoto lo que dice el maestro n la irera alo a la oháa lá o bue''iáa, no anotes nada we irere ollé á mmuae.', NULL, 'Español: anotar', 'import-espanol-bubi'),
  ('mmalé', 'adv.', NULL, NULL, NULL, 'aotya, aossa; los hombres de - a baie bá mmalé, las cosas de - e bilabba biá aotya.', 'los hombres de - a baie bá mmalé, las cosas de - e bilabba biá aotya.', NULL, 'Español: antaño', 'import-espanol-bubi'),
  ('lobbó', 's.', 'm.', NULL, 'Cl. 11', '(el. 1 1), loMo, el - o lobbo, o loMo; -s abbó, aMo.', NULL, 'lo', 'Español: antebrazo', 'import-espanol-bubi'),
  ('okátya', 'v.', NULL, NULL, NULL, 'el jefe del pueblo antepone los problemas o bOtúkku a la okátya e belláa. 2. -se o okátta.', 'el jefe del pueblo antepone los problemas o bOtúkku a la okátya e belláa.', NULL, 'Español: anteponer', 'import-espanol-bubi'),
  ('aotya', 'adv.', NULL, NULL, NULL, '- vivía aquí aotya n ka péém hállo. 2. morf ha; lláma me - de que llegue tu madre elélla lé na a té pooa ba o obéríi o.', 'lláma me - de que llegue tu madre elélla lé na a té pooa ba o obéríi o.', NULL, 'Español: antes', 'import-espanol-bubi'),
  ('mmalé', 'adv.', NULL, NULL, 'Cl. 5', 'aotya; - llovía mu cho en el poblado de Belebú aotya ha séssi kól1á e Belebú. antiguo, adf. bOlólló, molOlO, moló (els. 1 y 3), bololló, moló, meOlóló, meOló (els. 2, 4 Y 6), rOlólló, lololló, olólló, bio lólló, kolólló (els. 9 y 10), lolólló, solólló, tolólló, hololló; una persona antigua botyo bolólló, un árbol antiguo botté bolól1ó, unas personas antiguas batyo bololló, unos árboles a...', 'una persona antigua botyo bolólló, un árbol antiguo botté bolól1ó, unas personas antiguas batyo bololló, unos árboles a.', NULL, 'Español: antiguamente', 'import-espanol-bubi'),
  ('sétyi', 's.', 'm.', NULL, 'Cl. 12', 'el e sétyi, e sibelo; -s tuétyi, tobelo, los -s o tuétyi; el cazador vende cinco -s o obébá a la ótta tuétyi tué toto; es - y no lo es sétyi tyí sét yi sé; los -s corren mucho o tobelo to lá húbbia lobó.', 'el cazador vende cinco -s o obébá a la ótta tuétyi tué toto; | los -s corren mucho o tobelo to lá húbbia lobó.', NULL, 'Español: antílope', 'import-espanol-bubi'),
  ('bonokoa', 'adj.', NULL, NULL, 'Cl. 3', 'este niño es 010 bollá e bOnokoa.', 'este niño es 010 bollá e bOnokoa.', NULL, 'Español: antipático', 'import-espanol-bubi'),
  ('ekulekulé', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekulekulé, e elekúléku; -s bikulekulé, bilekúléku, los -s e bikulekulé, e bilekúléku.', NULL, NULL, 'Español: antro', 'import-espanol-bubi'),
  ('sétyanna', 'v.', NULL, NULL, NULL, 'o kakkia; o kibbia; anu lo mi viaje de mañana n la kibbia o loetto m lo a obaam.', 'o kakkia; | anu lo mi viaje de mañana n la kibbia o loetto m lo a obaam.', NULL, 'Español: anular', 'import-espanol-bubi'),
  ('obélló', 'adj.', NULL, NULL, 'Cl. 1', 'el - o obélló; -es abélló, los -es a abél1ó; los -es llegan del mar a abélló ba lá púl1áa e eloál1o.', 'los -es llegan del mar a abélló ba lá púl1áa e eloál1o.', NULL, 'Español: anunciador', 'import-espanol-bubi'),
  ('belélla', 'v.', NULL, NULL, NULL, 'o bél1a, o opálla; yo anuncio el peligro n la belélla e bittá, el alguacil anunció el peligro a los hom bres e eporoporo e beléri e rioppo a baié; la radio anuncia tres días de descanso e riberí ri lá bélla IOhebbO lua billo bié bittá.', 'yo anuncio el peligro n la belélla e bittá, el alguacil anunció el peligro a los hom bres e eporoporo e beléri e rioppo a baié;', 'opálla', 'Español: anunciar', 'import-espanol-bubi'),
  ('ribélla', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1), el - e ribélla; -s abélla, los -s a abélla; escucho el - de la radio n la batóbiera e ribélla rá e riberí.', 'escucho el - de la radio n la batóbiera e ribélla rá e riberí.', NULL, 'Español: anuncio', 'import-espanol-bubi'),
  ('sihúku', 's.', 'm.', NULL, 'Cl. 12', 'el - e sihúku, e silobbó; -s tohúku, tolobbo, los -s o tohúku, o tOlobbo; con mi - pesco mucho la e sihúku m n la sellá o lobbáa sóté, voy al mercado a buscar -s n la hélla o mma kétte o utya tOlobbo.', 'con mi - pesco mucho la e sihúku m n la sellá o lobbáa sóté, voy al mercado a buscar -s n la hélla o mma kétte o utya tOlobbo.', 't', 'Español: anzuelo', 'import-espanol-bubi'),
  ('heráa', 'v.', NULL, NULL, NULL, 'o tolaella; he añadido dos ñames a los tuyos n hería e billo o mma bi''o.', 'he añadido dos ñames a los tuyos n hería e billo o mma bi''o.', 'tolaella', 'Español: añadir', 'import-espanol-bubi'),
  ('loa', 's.', 'm.', NULL, 'Cl. 11', 'el- o loa, el- Nuevo o loa lo hé, Feliz - Nuevo o''a loa lo hé, Feliz - Nuevo a todos lO''a loa lo hé; -s báa, diez -s báa bé bó, tengo sesenta y seis -s ne báa batyílla battá la ra''a.', NULL, NULL, 'Español: año', 'import-espanol-bubi'),
  ('bohuláhúlla', 'adj.', NULL, NULL, 'Cl. 1', 'boté''í, el - o bOhuláhúlla, o boté''!; -es bahuláhúlIa, baté''í, los -es a bahuláhúlla, a batc''í.', NULL, 'boté''', 'Español: apaciguador', 'import-espanol-bubi'),
  ('hobbia', 'v.', NULL, NULL, NULL, 'el anciano apacigua a los guerreros e obéolla é la hobbia a apoderarse I 363 abitábítta. 2. -se o pélla; ¡apaciguaos, que ya está bien! pélláám, seí kállo!', 'el anciano apacigua a los guerreros e obéolla é la hobbia a apoderarse I 363 abitábítta.', NULL, 'Español: apaciguar', 'import-espanol-bubi'),
  ('mMpe', 'adj.', NULL, NULL, 'Cl. 1', 'boppá; -es bMpe, boppá, los -es a bMpe, a boppá.', NULL, NULL, 'Español: apaleador', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'los ladrones fueron apa leados i húbbé ye óppi o.', 'los ladrones fueron apa leados i húbbé ye óppi o.', NULL, 'Español: apalear', 'import-espanol-bubi'),
  ('emasíín', 's.', 'm.', NULL, 'Cl. 7', 'el - e emasíín; -s mmasíín, los -s e mmasíín. 2. - de radio riberí (el. 5, el- de radio e riberí; -s de radio aberí, los -s de radio a aberí; escucho los -s de radio n la batóbiera a aberi.', 'escucho los -s de radio n la batóbiera a aberi.', NULL, 'Español: aparato', 'import-espanol-bubi'),
  ('leporea', 'v.', NULL, NULL, NULL, 'mi aparato de radio no aparece e riberi ID ri tyi leporea.', 'mi aparato de radio no aparece e riberi ID ri tyi leporea.', NULL, 'Español: aparecer', 'import-espanol-bubi'),
  ('kossá', 'v.', NULL, NULL, NULL, 'el maestro de ceremo nias apareja a las personas e eebí a la kossá a batyo.', 'el maestro de ceremo nias apareja a las personas e eebí a la kossá a batyo.', NULL, 'Español: aparejar', 'import-espanol-bubi');

-- Lote 8 (entradas 176 a 200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('koppia', 'v.', NULL, NULL, NULL, 'o bó''a bi''o; aparto mis cosas n la koppia a lokko ID. 2. -se o púllá bi''o; me aparto de ti n la o púllá bi''o.', 'o bó''a bi''o; | me aparto de ti n la o púllá bi''o.', NULL, 'Español: apartar', 'import-espanol-bubi'),
  ('etyupiáera', 's.', 'm.', NULL, 'Cl. 7', 'ribotyílla (Cl. 5), el- e etyupiáera, e ribOtyílla, el pri mer - del gobernante no es de la isla de los bubis e etyupiáera eotya o boitta e tá púri e etúllá wela á abobée; -s bityupiáera, abOtyíl la, los -s e bityupiáera, a abotyílla; hay un libro de los apellidos bubis he ribúkku rá abotyíl la bá abobée.', 'hay un libro de los apellidos bubis he ribúkku rá abotyíl la bá abobée.', NULL, 'Español: apellido', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'o ó''a roppá; este asunto me apena elo elabba é la le ó''ia rop pá. 2. -se o batyá bi''o; estoy apenado n la batyáa bi''o.', 'o ó''a roppá; | estoy apenado n la batyáa bi''o.', NULL, 'Español: apenar', 'import-espanol-bubi'),
  ('ehólle', 's.', 'f.', NULL, 'Cl. 7', 'la - e ehólle; -s bihólle, las -s e bihólle.', NULL, NULL, 'Español: apetencia', 'import-espanol-bubi'),
  ('eotyú', 's.', 'm.', NULL, 'Cl. 7', 'ebu''á, el - e eotyú, e ebukká, e ebu''á; -s biotyú, mbukká, mbu''á, los -s e biotyú, e mbukká, e mbu''á.', NULL, NULL, 'Español: apetito', 'import-espanol-bubi'),
  ('ó''ia', 'v.', NULL, NULL, NULL, 'me apiada su buen corazón o bOtébbá bo áí buebue bo lá le ó''ia losi si. 2. -se o ó''ella losisi; me apiadas mucho n la o ó''el la losisi sóté.', 'me apiada su buen corazón o bOtébbá bo áí buebue bo lá le ó''ia losi si. | me apiadas mucho n la o ó''el la losisi sóté.', NULL, 'Español: apiadar', 'import-espanol-bubi'),
  ('ebinaeri', 's.', 'm.', NULL, 'Cl. 7', 'el- e ebi naeri; -s ibinaeri, los -s e ibinaeri.', NULL, NULL, 'Español: aplastamiento', 'import-espanol-bubi'),
  ('óppa', 'v.', NULL, NULL, NULL, 'cuando habla el jefe la gente aplaude na á la to''ólla o botúkku a batyo ba lá óppa ibátyo.', 'cuando habla el jefe la gente aplaude na á la to''ólla o botúkku a batyo ba lá óppa ibátyo.', NULL, 'Español: aplaudir', 'import-espanol-bubi'),
  ('ebátyo', 's.', 'm.', NULL, 'Cl. 7', 'el e ebátyo; -s ibátyo, mbasso, los -s e ibátyo, e mbasso; las personas aplau dieron mucho a batyo ba óppi ibátyo bíkebíke.', 'las personas aplau dieron mucho a batyo ba óppi ibátyo bíkebíke.', NULL, 'Español: aplauso', 'import-espanol-bubi'),
  ('heráa', 'v.', NULL, NULL, NULL, 'mi madre aplica el ungiien to a mi herída o oberíi m a la heráa o bOlallo e peké ID bi''o.', 'mi madre aplica el ungiien to a mi herída o oberíi m a la heráa o bOlallo e peké ID bi''o.', NULL, 'Español: aplicar', 'import-espanol-bubi'),
  ('ekakká', 'adj.', NULL, NULL, 'Cl. 7', 'seké, seéle, el- e ekakká, e seké, e seéle; -s bikakká, tueké, tueé1e, los -s e bikakká, o tueké, o tueéle.', NULL, 'tueké, tueéle', 'Español: apocado', 'import-espanol-bubi'),
  ('sikkiáa', 'v.', NULL, NULL, NULL, 'las imágenes de televisión apocan a los niños e birikiriki bi láa ekébbia a bóllá; esta persona es muy apoca da 010 Mtyo sekké.', 'las imágenes de televisión apocan a los niños e birikiriki bi láa ekébbia a bóllá;', NULL, 'Español: apocar', 'import-espanol-bubi'),
  ('inf', 's.', NULL, NULL, NULL, 'los continentales se apoderan de nuestra tierra a barannó ba lá itya o bobba M áó. 364 / apodo', 'los continentales se apoderan de nuestra tierra a barannó ba lá itya o bobba M áó.', NULL, 'Español: apoderarse', 'import-espanol-bubi'),
  ('sibotyílla', 's.', 'm.', NULL, 'Cl. 12', 'el- e sibOtyílla;-s tobotyíBa, los -s o ilibOtyílla; mi - es astucia extrema, no es mi nombre e sibOtyílla rÍl ká misí miomó tyi'' á e ílla rÍl, en el pasado muchos -s se convirtieron en apellidos rínnalé ilibotyílla túke túke to heri bityupiáera.', 'mi - es astucia extrema, no es mi nombre e sibOtyílla rÍl ká misí miomó tyi'' á e ílla rÍl, en el pasado muchos -s se convirtieron en apellidos rínnalé ilibotyílla túke túke to heri bityupiáera.', NULL, 'Español: apodo', 'import-espanol-bubi'),
  ('etyubbá', 's.', 'm.', NULL, 'Cl. 7', 'etubá, rúúm, ro (CI. 7), el - e etyubbá, e róm, e etubá, e rúúm, e ro; -s bityubbá, bóm, bitubá, búúm, bio, los -s e bityubbá, a bóm, e bitubá, a búúm, e bio.', NULL, NULL, 'Español: aposento', 'import-espanol-bubi'),
  ('petta', 'v.', NULL, NULL, NULL, 'o petta bueka; no quiero - contigo n tyá na''a o petaBa la úwe.', 'no quiero - contigo n tyá na''a o petaBa la úwe.', 'petta', 'Español: apostar', 'import-espanol-bubi'),
  ('leára', 'v.', NULL, NULL, NULL, 'o tealla, o tupiáe ra; apoya tu bastón contra la pared leará e sa''á o la e eteppe. 2. - a alguien o lolella, o iálla; no tengo a nadie que me apo ye n ta okkí botyo a le iáBe. 3. -se o leárea, o tyúpea; me apoyo en la pared n la leárea e eteppe, mi vecino no puede caminar y se apoya con un bastón o botyo á é epatto rÍl ata pá''e o etta a la tyúpea sa''á.', 'apoya tu bastón contra la pared leará e sa''á o la e eteppe. | no tengo a nadie que me apo ye n ta okkí botyo a le iáBe. | me apoyo en la pared n la leárea e eteppe, mi vecino no puede caminar y se apoya con un bastón o botyo á é epatto rÍl ata pá''e o etta a la tyúpea sa''á.', 'tealla, tupiáe, iálla, tyúpea', 'Español: apoyar', 'import-espanol-bubi'),
  ('etyuppo', 's.', 'm.', NULL, 'Cl. 7', 'lotup pió (el. 1 1), botyúppo, eléálo, etu piáeri, el- e etyuppo, e reetyo, o IOtuppio, o bOtyúppo, e eléálo, e etupiáe ri; -s bityuppo, beetyo, biléálo, bitupiáeri, tuppio (el. ID); los -s e bityuppo, a beetyo, e biléálo, etc.', 'los -s e bityuppo, a beetyo, e biléálo, etc.', 'b', 'Español: apoyo', 'import-espanol-bubi'),
  ('bue''á', 's.', 'm.', NULL, 'Cl. 1', 'el - o bue''á; -ces be''á, los -ces a bé''a.', NULL, NULL, 'Español: aprendiz', 'import-espanol-bubi'),
  ('bakasso', 'adv.', NULL, NULL, NULL, 'el caballo va muy aprisa e ossi e lá etta bakasso.', 'el caballo va muy aprisa e ossi e lá etta bakasso.', NULL, 'Español: aprisa', 'import-espanol-bubi'),
  ('ebbiera', 'v.', NULL, NULL, NULL, 'mi jefe ha aprobado mis vacaciones o mmása IÍl a ebbieria o IOhebbo r Í l. 2. o hettáa; el alumno ha aprobado o bue''á a hetyíi.', 'mi jefe ha aprobado mis vacaciones o mmása IÍl a ebbieria o IOhebbo r Í l. | el alumno ha aprobado o bue''á a hetyíi.', NULL, 'Español: aprobar', 'import-espanol-bubi'),
  ('ripétyoo', 's.', 'm.', NULL, 'Cl. 5', 'el - e ripétyoo; -s apétyoo, los -s a apétyoo; el - de la casa sostiene el poste del centro e ripétyOo rá e tyóbbo ri rÍlmetyi e eho''o á o botel lo.', 'el - de la casa sostiene el poste del centro e ripétyOo rá e tyóbbo ri rÍlmetyi e eho''o á o botel lo.', NULL, 'Español: apuntalamiento', 'import-espanol-bubi'),
  ('hállo', 'adv.', NULL, NULL, NULL, 'estoy - ne háBo, todos estamos tue arnmaa tue hállo, siéntate - itánno hállo.', 'estoy - ne háBo, todos estamos tue arnmaa tue hállo, siéntate - itánno hállo.', NULL, 'Español: aquí', 'import-espanol-bubi'),
  ('apatta', 'v.', NULL, NULL, NULL, 'el gato me ha arañado e sipóssi si le apatyi.', 'el gato me ha arañado e sipóssi si le apatyi.', NULL, 'Español: arañar', 'import-espanol-bubi'),
  ('bOityé', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOityé; -s bai tyé, los -s a baityé; el - paró el encuen tro de fútbol o boityé a kibbia e suppá.', 'el - paró el encuen tro de fútbol o boityé a kibbia e suppá.', NULL, 'Español: árbitro', 'import-espanol-bubi');

-- Lote 9 (entradas 201 a 225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('botté', 's.', 'm.', NULL, 'Cl. 3', 'el - o botté, el primer o botté bo''otya, - de las castañas botebú, - divino boruppe, - de madera blanda y blanca obakká, - de la papaya opoppo, - de la nipa bOtyerú, - de la suela bO tyappa, botyOletyólle, - de la resi na bohOllá, - del plátano rikobbe, nkobbe, - de corteza gris verdoso bosaá sá''a, - de tolla (Urophyllum rubens) boto lla, - del aguacate bopía - de la guayaba bOkuamá, - de la ca...', NULL, NULL, 'Español: árbol', 'import-espanol-bubi'),
  ('sitté', 's.', 'm.', NULL, 'Cl. 12', '- de la berenjena liityé''a, - de hojas verdes grandes y amargas biihóhOó, - trepador de frutos ovoides y sépalos de color rojo vivo (Mussaenda erythrophylla) bokolekko, de hojas tintóreas y de líquido venenoso bota bué, - parásito IOpópo (el. 1 1), - de la rafia bOtekka; -s totté, toruppú, -s de la berenjena batyé''a, -s de hojas verdes grandes y amargas behóhiió, -s trepadores de fruto...', NULL, NULL, 'Español: arbusto', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, 'he archivado todos mis libros n ka leppi a abúkku rh bammaa.', 'he archivado todos mis libros n ka leppi a abúkku rh bammaa.', NULL, 'Español: archivar', 'import-espanol-bubi'),
  ('bolakka', 's.', 'm.', NULL, 'Cl. 3', '- en la entrada de un poblado botapetappe, el - o bolakka, el en la entrada de un poblado o botapetappe; -s belakka, -s en la entrada de un poblado o betapetappe, los -s e belakka, los -s en la entrada de un poblado e betapetappe.', NULL, NULL, 'Español: arco', 'import-espanol-bubi'),
  ('nokko', 's.', 'm.', NULL, 'Cl. 9', 'el - e nokko; nokko, los - i nokko.', 'nokko, los - i nokko.', NULL, 'Español: arcoiris', 'import-espanol-bubi'),
  ('ruppa', 'v.', NULL, NULL, NULL, 'arden las hojas o tonta to lá ruppa, ha ardido la manta o bokutta bO ruppi.', 'arden las hojas o tonta to lá ruppa, ha ardido la manta o bokutta bO ruppi.', NULL, 'Español: arder', 'import-espanol-bubi'),
  ('eburí', 'adj.', NULL, NULL, 'Cl. 7', '-s iburí.', NULL, NULL, 'Español: ardiente', 'import-espanol-bubi'),
  ('ehalle', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehalle; -s bihalle, los -s e bihalle. 366 I argolla', NULL, NULL, 'Español: arenque', 'import-espanol-bubi'),
  ('eleppo', 's.', 'm.', NULL, 'Cl. 7', 'el- e eleppo; -s bileppo, los -s e bileppo.', NULL, NULL, 'Español: armario', 'import-espanol-bubi'),
  ('ekollé', 's.', 'm.', NULL, 'Cl. 7', '- de la puerta erib bé (eI.7), el- e ekollé, el- de la puerta e eribbé; armazones bikollé, armazones de la puerta biribbé, los armazones e bikollé, los armazones de la puerta e biribbé.', 'armazones bikollé, armazones de la puerta biribbé, los armazones e bikollé, los armazones de la puerta e biribbé.', NULL, 'Español: armazón', 'import-espanol-bubi'),
  ('lopáa', 's.', 'm.', NULL, 'Cl. 7', '(el. 1 1), esokka, loppáa (el. 1 1), el- o lopáa, e esokka, o loppáa;-s kopáa, bisokka, los -s i kopáa, e bisokka.', NULL, 'loppáa', 'Español: aro', 'import-espanol-bubi'),
  ('ehokko', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehokko; arpones bihokko, los arpones e bihokko.', 'arpones bihokko, los arpones e bihokko.', NULL, 'Español: arpón', 'import-espanol-bubi'),
  ('riheri', 's.', 'm.', NULL, 'Cl. 5', 'el - e riheri; -s babe ri, los -s a baheri; el - de la casa dura mucho e riheri ra e tyóbbo ri lá oppa lobbó.', 'el - de la casa dura mucho e riheri ra e tyóbbo ri lá oppa lobbó.', NULL, 'Español: arreglo', 'import-espanol-bubi'),
  ('oOO''ó', 'adv.', NULL, NULL, NULL, 'obo''ó; voy hacia - n la bella obo''ó, las mujeres viven siempre - a baísso ba lá pélla o obo''ó tyommaa.', 'voy hacia - n la bella obo''ó, las mujeres viven siempre - a baísso ba lá pélla o obo''ó tyommaa.', NULL, 'Español: arriba', 'import-espanol-bubi'),
  ('ríe', 's.', 'm.', NULL, 'Cl. 5', 'el - e ríe; -s bíe, los -s a bíe; los -s están secos a bíe ba héi.', 'los -s están secos a bíe ba héi.', NULL, 'Español: arroyo', 'import-espanol-bubi'),
  ('ressi', 's.', 'm.', NULL, 'Cl. 10', 'el - i ressi; quiero comer - mañana n la na''a o ráa ressi obaam.', 'quiero comer - mañana n la na''a o ráa ressi obaam.', NULL, 'Español: arroz', 'import-espanol-bubi'),
  ('OOnoa', 'adj.', NULL, NULL, 'Cl. 3', 'pollo - ko''e á bonoa, el - o bonoa, el pollo - e ko''e á aspirar I 367 bonoa; -s benoa, pollos -s ko''e yá bonoa, los -s e benoa, los pollos -s i ko''e yá bonoa.', NULL, NULL, 'Español: asado', 'import-espanol-bubi'),
  ('loatya', 's.', 'm.', NULL, 'Cl. 5', '(el. 1 1), ribissó, el - o loatya, e ribissó; -es baatya, abissó; el - está averiado o loatya lo kapei. ascua, s'' ¡: ematyotyo, el- e ematyotyo;-s bimatyotyo, las -s e bimatyotyo; pone mos las -s en la plancha e bimatyotyo to la bi heráa e ehaíeen wela.', 'el - está averiado o loatya lo kapei. | pone mos las -s en la plancha e bimatyotyo to la bi heráa e ehaíeen wela.', NULL, 'Español: ascensor', 'import-espanol-bubi'),
  ('eiloom', 's.', 'm.', NULL, 'Cl. 7', 'el- e eiloom; -s biiloom, los -s e biiloom; el - está cerrado e eiloom e ribei.', 'el - está cerrado e eiloom e ribei.', NULL, 'Español: aseo', 'import-espanol-bubi'),
  ('olláa', 'v.', NULL, NULL, NULL, 'el presidente ha sido ase sinado o boitta botee oríi o, no es bueno asesinar a alguien o olláa botyo tyi lelle.', 'el presidente ha sido ase sinado o boitta botee oríi o, no es bueno asesinar a alguien o olláa botyo tyi lelle.', NULL, 'Español: asesinar', 'import-espanol-bubi'),
  ('lállo', 'adv.', NULL, NULL, 'Cl. 5', 'allo; - es allo se, - habló el espíri tu allo kálo a to''óm la o mmo; -- ro''oro''o.', NULL, NULL, 'Español: así', 'import-espanol-bubi'),
  ('eakko', 's.', 'm.', NULL, 'Cl. 7', 'el - e eakko, e eappo; -s biakko, biappo, los -s e biakko, e biappo.', NULL, NULL, 'Español: asidero', 'import-espanol-bubi'),
  ('empa', 's.', 'm.', NULL, 'Cl. 7', 'el - e empa, e euppa; -s bimpa, biuppa, -s nuevos bimpa bi he, los -s e bimpa, e biuppa, los -s delanteros e bimpa bi obOsso; - pequeño simpa, - grande empampa, el - peque ño e simpa, el- grande e empampa, -s pequeños rompa, -s grandes bim pampa, los -s pequeños o tompa, los -s grandes e bimpampa.', NULL, NULL, 'Español: asiento', 'import-espanol-bubi'),
  ('bopuératá', 'adj.', NULL, NULL, 'Cl. 1', 'boiálla, emmaeri, el - o bopueratá, o boiál la, e emmaeri; -s bapueratá, baiálla, bimmaeri, los -s a bapuératá, a baiálla, e bimmaeri.', NULL, 'boiál', 'Español: asistente', 'import-espanol-bubi'),
  ('sihám', 's.', 'm.', NULL, 'Cl. 12', 'el - e sihám, o watyatya; -s tohám, beatyatya, los -s o tohám, e beatyatya; tiene buen - okkí bosso buebue.', 'tiene buen - okkí bosso buebue.', 'watyatya', 'Español: aspecto', 'import-espanol-bubi');

-- Lote 10 (entradas 226 a 250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOkottó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bokotto; -s bekotto, los -s e bekottó; el día del - la gente no va a la finca e ello a o bOkotto a batyo bá tyi a hella obáám.', 'el día del - la gente no va a la finca e ello a o bOkotto a batyo bá tyi a hella obáám.', NULL, 'Español: asueto', 'import-espanol-bubi'),
  ('bo', 's.', 'm.', NULL, 'Cl. 3', '1áa, elabba, botólló, labba, el - o boláa, e elabba, o botólló, a labba; -s beláa, bi labba, betólló, los -s e beláa, e bilabba, e betólló; los -s tradicionales e bilabba ya ribOtyo, -s importantes bilabba bióte. 2. asuntillo, dim. silabba, el- e silabba; -s tolabba, los -s o tOlab ba; tengo muchos -s que tratar n okkí tOlabba to se.', 'los -s tradicionales e bilabba ya ribOtyo, -s importantes bilabba bióte. | tengo muchos -s que tratar n okkí tOlabba to se.', 'botólló', 'Español: asunto', 'import-espanol-bubi'),
  ('bosáráa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosáráa; -es basáráa, besáráa, los -es a basáráa; hay muchas personas que son -es he batyo bikébíke ná basáráa.', 'hay muchas personas que son -es he batyo bikébíke ná basáráa.', NULL, 'Español: asustador', 'import-espanol-bubi'),
  ('loakke', 's.', 'm.', NULL, 'Cl. 11', 'el-o lOakke; -s beak ke, los -s e beakke.', NULL, NULL, 'Español: atado', 'import-espanol-bubi'),
  ('ipuaera', 's.', 'm.', NULL, 'Cl. 5', 'el - e ipuaera, o mooka; -s apuaera, meoka, los -s a apuaera, e meoka; el- llega al pobla do e ipuaera é la pella obessé.', 'el- llega al pobla do e ipuaera é la pella obessé.', 'mooka', 'Español: atajo', 'import-espanol-bubi'),
  ('rioppo', 's.', 'm.', NULL, 'Cl. 5', '- de nervios rikokko, el - e rioppo; -s baoppo, -s de nervios bakokko; el - de nervios no le deja hablar e rikokko ri tyi tyuará a to''óm.', 'el - de nervios no le deja hablar e rikokko ri tyi tyuará a to''óm.', NULL, 'Español: ataque', 'import-espanol-bubi'),
  ('buatotyio', 's.', 'm.', NULL, 'Cl. 3', 'el - o buato tyio, llegó al- a pooi buatotyío; -es biatotyio, los -es e biatotyio.', NULL, NULL, 'Español: atardecer', 'import-espanol-bubi'),
  ('lobakka', 's.', 'm.', NULL, 'Cl. 3', '(el. 1 1), bokíssi; -es bakka, biokíssi; el- llegó cuan do el cadáver estaba ya enterrado o lobakka lo pooi ná e erutta e''a tyileri o.', 'el- llegó cuan do el cadáver estaba ya enterrado o lobakka lo pooi ná e erutta e''a tyileri o.', NULL, 'Español: ataúd', 'import-espanol-bubi'),
  ('bosáráa', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bosáráa; -es basáráa, besáráa, los -es a basáráa.', NULL, NULL, 'Español: aterrador', 'import-espanol-bubi'),
  ('sára', 'v.', NULL, NULL, NULL, 'esta estatua aterra a los cuervos bolo botebótyo bo lá sára i ka''á.', 'esta estatua aterra a los cuervos bolo botebótyo bo lá sára i ka''á.', NULL, 'Español: aterrar', 'import-espanol-bubi'),
  ('áppia', 'v.', NULL, NULL, NULL, 'la madre ateta al niño o oberíi a la áppia o bollá.', 'la madre ateta al niño o oberíi a la áppia o bollá.', NULL, 'Español: atetar', 'import-espanol-bubi'),
  ('elláa', 'v.', NULL, NULL, NULL, 'atisbo un cayu co a lo lejos n la elláa wáttoo ototo.', 'atisbo un cayu co a lo lejos n la elláa wáttoo ototo.', NULL, 'Español: atisbar', 'import-espanol-bubi'),
  ('kóbba', 'v.', NULL, NULL, NULL, 'o obbá; - el fuego o kóbba o boissó [o kobbó boissó); atizo el fuego n la obbá o boissó [na obbó boissó).', 'atizo el fuego n la obbá o boissó [na obbó boissó).', 'obbá', 'Español: atizar', 'import-espanol-bubi'),
  ('ekébbia', 'v.', NULL, NULL, NULL, 'esta noticia atonta a los oyentes bolo bOatta bo lá ekébbia a bOátyera. 2. -se o ekébba; el perro se atonta con el true no e puá e lá ekébba la e ekuku.', 'esta noticia atonta a los oyentes bolo bOatta bo lá ekébbia a bOátyera. | el perro se atonta con el true no e puá e lá ekébba la e ekuku.', NULL, 'Español: atontar', 'import-espanol-bubi'),
  ('tyipóbia', 'v.', NULL, NULL, NULL, 'el humo le atormenta e ehútu e lá bo tyipóbia.2. -se o tyipóbba; no me atonnen tes we le tyipóbie.', 'el humo le atormenta e ehútu e lá bo tyipóbia. | no me atonnen tes we le tyipóbie.', NULL, 'Español: atormentar', 'import-espanol-bubi'),
  ('oppa', 'v.', NULL, NULL, NULL, 'cuando como pesca do me atraganto na IÍ la ráa tyué n la oppa. 2. -se o oppa, o kobba; cuando como pescado me atraganto na IÍ la rá tyué n la oppa.', 'cuando como pesca do me atraganto na IÍ la ráa tyué n la oppa. | cuando como pescado me atraganto na IÍ la rá tyué n la oppa.', 'kobba', 'Español: atragantar', 'import-espanol-bubi'),
  ('rnmetta', 'v.', NULL, NULL, NULL, 'atrapo los mangos n la r hmetta e imallkoro, el alguacil atrapa al pescador e eporosía e lá mmetta o boobbe.', 'atrapo los mangos n la r hmetta e imallkoro, el alguacil atrapa al pescador e eporosía e lá mmetta o boobbe.', NULL, 'Español: atrapar', 'import-espanol-bubi'),
  ('nná', 'adv.', NULL, NULL, NULL, 'nnápua; siéntate - pélla e nnápua.', 'siéntate - pélla e nnápua.', NULL, 'Español: atrás', 'import-espanol-bubi'),
  ('péréa', 'v.', NULL, NULL, NULL, 'atravieso la calle n la péréa o bokóo [n la peréo bokóo).', 'atravieso la calle n la péréa o bokóo [n la peréo bokóo).', NULL, 'Español: atravesar', 'import-espanol-bubi'),
  ('elasálássá', 's.', 'm.', NULL, 'Cl. 7', 'el - e elasálássá, e rappo; -s bilasálássá, bappo, los -s e bilasá lássá, a bappo.', NULL, NULL, 'Español: atrevimiento', 'import-espanol-bubi'),
  ('pá', 'v.', NULL, NULL, NULL, 'atribuyo el albo roto a los escolares n takiáeriia e nokonoko a bakuerakueráa.', 'atribuyo el albo roto a los escolares n takiáeriia e nokonoko a bakuerakueráa.', NULL, 'Español: atribuir', 'import-espanol-bubi'),
  ('binna', 'v.', NULL, NULL, NULL, 'el coche atropelló al buey o motóO bo binni e pókkó, no cruces para que no te atropelle un coche we pérée o ta péri o binna ó motóo.', 'el coche atropelló al buey o motóO bo binni e pókkó, no cruces para que no te atropelle un coche we pérée o ta péri o binna ó motóo.', NULL, 'Español: atropellar', 'import-espanol-bubi'),
  ('bOhétyo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOhétyo; -s behétyo, los -s e behétyo; los -s se secan con el calor del Sol e behétyo bé la héa la e húé e itóhí.', 'los -s se secan con el calor del Sol e behétyo bé la héa la e húé e itóhí.', NULL, 'Español: atuendo', 'import-espanol-bubi'),
  ('hóbba', 'v.', NULL, NULL, NULL, 'o heúbba; el perro aúlla e puá é la hóbba.', 'o heúbba;', NULL, 'Español: aullar', 'import-espanol-bubi'),
  ('ebé''i', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebé''í; -s ibé''í, los -s e ibé''í; el- del perro me des pertó e ebé''í é pua e le ebbi.', 'el- del perro me des pertó e ebé''í é pua e le ebbi.', NULL, 'Español: aullido', 'import-espanol-bubi');

-- Lote 11 (entradas 251 a 275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('owera', 'v.', NULL, NULL, NULL, 'o herá bi''o; la suerte aumentó mis ahorros e ri''uá ri oweriia e reppo rh.', 'la suerte aumentó mis ahorros e ri''uá ri oweriia e reppo rh.', 'herá', 'Español: aumentar', 'import-espanol-bubi'),
  ('elotolottó', 's.', 'm.', NULL, 'Cl. 7', 'el- e elotolot tó; -es bilotolottó, los -es e bilotolottó; los -es están en la tienda e bilotolottó bi lé o sáppo.', 'los -es están en la tienda e bilotolottó bi lé o sáppo.', NULL, 'Español: auricular', 'import-espanol-bubi'),
  ('roorí', 's.', 'm.', NULL, 'Cl. 5', 'el - e roorí, e roréa; -s boorí, boréa, los -s a boorí, a boréa; los -s son buenos para los pueblos a boréa ba seri e biriia bebe.', 'los -s son buenos para los pueblos a boréa ba seri e biriia bebe.', NULL, 'Español: autogobierno', 'import-espanol-bubi'),
  ('euláúla', 's.', 'm.', NULL, 'Cl. 7', 'el - e euláúla, o motóo; -es biuláúla, meotóo, los -es e biuláúla, e meotó6; los -es corren mucho e biuláúla bi lá húbbia lobó lobó.', 'los -es corren mucho e biuláúla bi lá húbbia lobó lobó.', 'motóo', 'Español: automóvil', 'import-espanol-bubi'),
  ('bulaerea', 'v.', NULL, NULL, NULL, 'me autoprotejo de la lluvia na bulaerea o lóllá.', 'me autoprotejo de la lluvia na bulaerea o lóllá.', NULL, 'Español: autoprotegerse', 'import-espanol-bubi'),
  ('opénera', 'adj.', NULL, NULL, 'Cl. 1', 'el- o opénera; -es apénera, los -es a apénera; el firmó mi carta o opénera a saatyi o boataboatyó l Í 1.', 'el firmó mi carta o opénera a saatyi o boataboatyó l Í 1.', NULL, 'Español: autor', 'import-espanol-bubi'),
  ('eiállo', 's.', 'm.', NULL, 'Cl. 7', 'el- e eiállo; -s biiállo, los -s e biiállo.', NULL, NULL, 'Español: auxilio', 'import-espanol-bubi'),
  ('sipoppi', 'adj.', NULL, NULL, 'Cl. 12', 'el - e sipoppi; -s topoppi, los -s o topoppi; creo que no soy - n siá n tyi sipoppi, esta persona es avara 010 bOtyo e sipoppi.', 'creo que no soy - n siá n tyi sipoppi, esta persona es avara 010 bOtyo e sipoppi.', NULL, 'Español: avaro', 'import-espanol-bubi'),
  ('bokáa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOkáa; -es bao káa, los -es a baokáa, los -es hacen huel ga a baokáa bá la pénna bokibakibba.', NULL, NULL, 'Español: aviador', 'import-espanol-bubi'),
  ('bokáa', 's.', 'm.', NULL, 'Cl. 3', 'el - o bokáa; aviones bekáa, los aviones e bekáa; el- llegó a las dos o bOkáa bo pooi e éppa lé.', 'aviones bekáa, los aviones e bekáa;', NULL, 'Español: avión', 'import-espanol-bubi'),
  ('riborí', 's.', 'm.', NULL, 'Cl. 5', 'el- e ribOrí; -s aborí, los -s a abon; el - llegó tarde e riborí ri pooi buatoo.', 'el - llegó tarde e riborí ri pooi buatoo.', NULL, 'Español: aviso', 'import-espanol-bubi'),
  ('riotótto', 's.', 'm.', NULL, 'Cl. 5', 'opop5tto, el - e riotótto, o opopotto; -s baotótto, epop5tto, los -s a baotótto, e epopottO.', NULL, 'opopotto', 'Español: avispero', 'import-espanol-bubi'),
  ('boapí', 's.', 'm.', NULL, 'Cl. 3', 'el- o boapí; avispo nes beapí, los avispones e beapí.', 'avispo nes beapí, los avispones e beapí.', NULL, 'Español: avispón', 'import-espanol-bubi'),
  ('mpári', 'adv.', NULL, NULL, 'Cl. 7', '- por la mañana mpári e ebari; el- rÍlmalé. ayuda, s.. f eiállo, la - e eiállo, la - del gobierno eiállo é kobinna; -s biiállo, las -s e biiállo; esperé una - tuya pero no lo recibí m beteri e eiállo o wáae n ta e tápéri.', 'el- rÍlmalé. | esperé una - tuya pero no lo recibí m beteri e eiállo o wáae n ta e tápéri.', NULL, 'Español: ayer', 'import-espanol-bubi'),
  ('bOpueratá', 'adj.', NULL, NULL, 'Cl. 1', 'boiálla, el - o bOpueratá, o bOiálla, el - del jefe del pue blo o bopueratá ó bOtúkku; -s bapueratá, baiálla, los -s a bapueratá, a baiál la; los -s del gran jefe a bapueratá bá o bOtúkku bote; - del sacer dote bubi empo, eebí, el - del sacerdote bubi e empo, e eebí, -s del sacerdote bubi bimpo, biebí, los -s del sacerdote bubi e bimpo, e biebí.', 'los -s del gran jefe a bapueratá bá o bOtúkku bote;', 'b', 'Español: ayudante', 'import-espanol-bubi'),
  ('bebabebba', 'adj.', NULL, NULL, 'Cl. 9', 'bullú, el e bebabebba, o bullú, el - del firmamento e bebabebba ó lobákko; -es bebabebba, biullú, los -es i bebabebba, e biullú, el color - e tetya bebba.', NULL, 'bullú', 'Español: azul', 'import-espanol-bubi'),
  ('kóbba', 'v.', NULL, NULL, NULL, '- el fuego o kób ba o boissó.', NULL, NULL, 'Español: azuzar', 'import-espanol-bubi'),
  ('hókobbia', 'v.', NULL, NULL, NULL, 'pres. el perro babea e puá e lá hókobbia, el bebé babea e sine''é si lá hókobbia, etc.; paso punto el perro babeó e puá e hókobiia, el bebé babeó e sine''é si hókobiia, etc.;pas. duro el perro babeaba e puá e hókobiesiia, el bebé babeaba e sine''é si hókobiesiia, etc.', 'pres. | paso punto el perro babeó e puá e hókobiia, el bebé babeó e sine''é si hókobiia, etc.', NULL, 'Español: babear', 'import-espanol-bubi'),
  ('bohókko', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOhókko;-s bahókko, los -s a bahókko.', NULL, NULL, 'Español: baboso', 'import-espanol-bubi'),
  ('píssi', 's.', 'm.', NULL, 'Cl. 9', 'el - e píssi; -s píssi, los -s e píssi.', NULL, NULL, 'Español: bacalao', 'import-espanol-bubi'),
  ('eppó', 's.', 'm.', NULL, 'Cl. 7', 'el - e eppó; bacines ippó, los bacines e ippó.', 'bacines ippó, los bacines e ippó.', NULL, 'Español: bacín', 'import-espanol-bubi'),
  ('sa''á', 's.', 'm.', NULL, 'Cl. 12', 'el- e sa''á; -s tua''á, los -s o tua''á.', NULL, NULL, 'Español: báculo', 'import-espanol-bubi'),
  ('boakká', 's.', 'm.', NULL, 'Cl. 3', 'el- o boakká, e esessé; badenes beakká, bisessé, los badenes e beakká, e bisessé.', 'badenes beakká, bisessé, los badenes e beakká, e bisessé.', NULL, 'Español: badén', 'import-espanol-bubi'),
  ('inf', 's.', NULL, NULL, NULL, 'pas. duro yo bailaba n biléssi, tú bailabas o biléssi, él bailaba a bilés si, etc. 2. hacer - o bíráa, paso punto yo hice bailar n bíría, tú hiciste bailar o bíría, él hizo bai lar a bíría, e...', NULL, NULL, 'Español: bailar', 'import-espanol-bubi'),
  ('lobileri', 's.', 'm.', NULL, 'Cl. 9', '(el. 1 1), el - o lobileri, voy al - n la hella 00 lobileri, bubi (danza del pez) kattyá, - con cam panas de madera bolebbó, - de hombres y mujeres bosari, el - bubi (danza del pez) e kattyá, el - con campanas de madera o bolebbó, el - de hombres y mujeres o bosari; -s bileri, -s bubis (danzas del pez) kattyá, -s con campanas de madera belebbó, -s de hombres y mujeres besari, los -s i bileri, l...', NULL, NULL, 'Español: baile', 'import-espanol-bubi');

-- Lote 12 (entradas 276 a 300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('esotyo', 's.', 'f.', NULL, 'Cl. 7', 'losootyo (el. 1 1), la e esotyo; -s bisotyo, besootyo las -s e bisotyo.', NULL, NULL, 'Español: bajada', 'import-espanol-bubi'),
  ('bOnná', 's.', 'f.', NULL, 'Cl. 3', 'la - o bonná, quiero una - n la na''a bOnná; -s benná, las -s e ben ná, las -s me respetan e benná be tyí''a la elláa.', NULL, NULL, 'Español: bala', 'import-espanol-bubi'),
  ('ikíra', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: balancear', 'import-espanol-bubi'),
  ('ke''o', 's.', 'f.', NULL, 'Cl. 9', 'la - e ke''o, e sikiére; -s ke''o (el. lO), tokiére, las -s i ke''o, o tokiére; la - de pagos o lososso lo a apeám.', 'la - de pagos o lososso lo a apeám.', 'tokiére', 'Español: balanza', 'import-espanol-bubi'),
  ('kuakuabia', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: balbucear', 'import-espanol-bubi'),
  ('lokuakua', 's.', 'm.', NULL, 'Cl. 4', '(el. 1 1), el - o lokua kua; -s bekuakua, los -s e bekuakua.', NULL, NULL, 'Español: balbuceo', 'import-espanol-bubi'),
  ('sityotyo', 's.', 'm.', NULL, 'Cl. 12', 'el - e sityotyo; -s totyotyo, los -s o totyotyo.', NULL, NULL, 'Español: ballenato', 'import-espanol-bubi'),
  ('suppá', 's.', 'm.', NULL, 'Cl. 12', 'el - e suppá, e pelótta. jugar al - o puussa e suppá, o puussa e pelótta [o puusse pelót tal; balones tuppá, pelótta, los balones o tuppá, i pelótta.', 'balones tuppá, pelótta, los balones o tuppá, i pelótta.', 'puussa', 'Español: balón', 'import-espanol-bubi'),
  ('ebo''u', 's.', 'f.', NULL, 'Cl. 7', 'la - e ebo''u, e eribba; -s mbo''u, biribba, las -s e mbo''u, e biribba; agua de - boppé bá ebo''u.', 'agua de - boppé bá ebo''u.', NULL, 'Español: balsa', 'import-espanol-bubi'),
  ('bOtyerú', 's.', 'm.', NULL, 'Cl. 3', 'el - o botyerú; -es batyerú, betyerú, los -es a batyerú, e betyerú, tengo una cabaña de - n okkí wettya w a batyerú.', NULL, NULL, 'Español: bambú', 'import-espanol-bubi'),
  ('inanáa', 's.', 'f.', NULL, 'Cl. 5', 'la - e inanáa; -s bana náa, las -s a bananáa, quiero comprar-s n la na''a o olla bananáa.', NULL, NULL, 'Español: banana', 'import-espanol-bubi'),
  ('eberí', 's.', 'm.', NULL, NULL, 'buía bo a bananáa, el- e eberí a bananáa, o buía bo a bananáa; -es iberí bi a bananáa, biía bi a bananáa, los -es e iberí bi a bananáa, e biía bi a bananáa.', NULL, 'buía', 'Español: bananal', 'import-espanol-bubi'),
  ('rikobbe', 's.', 'm.', NULL, 'Cl. 5', 'el e rikobbe, e inanáa; -s bakobbe, bananáa, los -s a bakobbe, a bananáa.', NULL, NULL, 'Español: banano', 'import-espanol-bubi'),
  ('reppo', 's.', 'm.', NULL, 'Cl. 56', '- para sentarse em pa, el- e reppo, el- para sentarse e empa; -s beppo, -s para sentarse bim pa; mi dinero está en el- i bonní ro i lá e reppo wela.', 'mi dinero está en el- i bonní ro i lá e reppo wela.', NULL, 'Español: banco', 'import-espanol-bubi'),
  ('sikuua', 's.', 'm.', NULL, 'Cl. 12', 'el- e sikuua; ban derines tOkuua, los banderines o tOkuua.', 'ban derines tOkuua, los banderines o tOkuua.', NULL, 'Español: banderín', 'import-espanol-bubi'),
  ('bákko', 'adj.', NULL, NULL, 'Cl. 9', 'el - e bákko; -s bákkO, los -s i bákkO.', NULL, NULL, 'Español: bandido', 'import-espanol-bubi'),
  ('eette', 's.', 'm.', NULL, 'Cl. 7', 'el- e eette, el - del alcalde e eette ó botúkku, el- de los ladrones o wallá bo i húb bé; -s biette, biallá, los -s e biette, e biallá.', NULL, NULL, 'Español: bando', 'import-espanol-bubi'),
  ('bákkO', 'adj.', NULL, NULL, 'Cl. 9', 'el - e bákkO; -s bákkO, los -s i bákkO. baneíno, a, bOnéi, bOnebba, el - o bonéí, o bOnebba, yo soy - ne bonéi, ne bonebba; -s banéi, banebba.', NULL, 'b', 'Español: bandolero', 'import-espanol-bubi'),
  ('bueppo', 's.', 'm.', NULL, 'Cl. 1', 'el - o bueppo; -s baeppo, los -s a baeppo.', NULL, NULL, 'Español: banquero', 'import-espanol-bubi'),
  ('loréi', 's.', 'm.', NULL, 'Cl. 9', '(el. 1 1), kompite, el - o loréi; -s beréi, kompite, los-s e beréi.', NULL, NULL, 'Español: banquete', 'import-espanol-bubi'),
  ('simpa', 's.', 'm.', NULL, 'Cl. 12', 'el- e simpa, el de los acusados e simpa sa batyo ba rikoriia bo ba; -s tompa, los -s o tompa.', NULL, NULL, 'Español: banquillo', 'import-espanol-bubi'),
  ('isubbó', 's.', 'm.', NULL, 'Cl. 5', 'lotyua (el. 1 1), lOOa (el. 1 1), cuarto de - isubbó, el- e isubbó, o 10 tyua, o lOOa, el cuarto de - e isubbó; -s basubbó (eL 6), tyua (eL 10), bOOa, cuartos de - basubbó; voy al- n la bella e isubbó wela, ¿dónde está el-? ké tyé me e isubbó?', NULL, 'l', 'Español: baño', 'import-espanol-bubi'),
  ('riebba', 's.', 'm.', NULL, 'Cl. 5', 'el - e riebba; -es baebba, los -es a baebba.', NULL, NULL, 'Español: bar', 'import-espanol-bubi'),
  ('boseruseru', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOseruse ru; -s baseruseru, los -s a baseruseru.', NULL, NULL, 'Español: barbado', 'import-espanol-bubi'),
  ('kelle', 's.', 'f.', NULL, 'Cl. 9', 'la - e kelle, e hObahobbá; -es kelle, hObahob bá, las -s i kelle, i hObahobbá.', NULL, NULL, 'Español: barbaridad', 'import-espanol-bubi');

-- Lote 13 (entradas 301 a 325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('nabba', 'adj.', NULL, NULL, 'Cl. 9', 'el - e nabba, esta persona es un - 010 botyo nabba; -s nabba, los -s i nabba.', NULL, NULL, 'Español: bárbaro', 'import-espanol-bubi'),
  ('boseruseru', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOseruse ru; -s baseruseru, los -s a baseruseru. barco, a, buátto, sitírnma, el - o buátto, e sitírnma; -s biátto, totímma, los -s e biátto, o totímrna; antaño los-s españoles se llevaron a nuestros hermanos mrnalé, e biátto bi a apanná bie arí a bobelle ba áó.', 'antaño los-s españoles se llevaron a nuestros hermanos mrnalé, e biátto bi a apanná bie arí a bobelle ba áó.', 'totímrna', 'Español: barbudo', 'import-espanol-bubi'),
  ('bOitta', 's.', 'm.', NULL, 'Cl. 1', 'el - o boitta; barones baitta, los barones a baitta.', 'barones baitta, los barones a baitta.', NULL, 'Español: barón', 'import-espanol-bubi'),
  ('bone''u', 's.', 'm.', NULL, 'Cl. 3', 'elekúléku, boello, el - o bOne''u, o bOsessa, e elekúléku, o bOello; -s bene''u, besessa, bilekúléku, beello, los -s e bene''u, e besessa, e bile kúléku, e beello.', NULL, 'b, b', 'Español: barranco', 'import-espanol-bubi'),
  ('ribbia', 'v.', NULL, NULL, NULL, 'el camino está barrado e telle e ribiia.', 'el camino está barrado e telle e ribiia.', NULL, 'Español: barrar', 'import-espanol-bubi'),
  ('ehá', 's.', 'm.', NULL, 'Cl. 7', 'opalláa, epánna, epatyí, el - e ehá, e ehao, o opalláa, e epánna, e epatyí; -s bihá, bihao (8), epalláa, mpánna, ipatyí, los -s e bihá, e bihao, e epalláa, e mpánna, e ipatyí.', NULL, 'opalláa', 'Español: barreño', 'import-espanol-bubi'),
  ('ruelláa', 's.', 'm.', NULL, 'Cl. 5', 'el - o ruelláa; ba rrigones belláa, los barrigones a belláa.', 'ba rrigones belláa, los barrigones a belláa.', NULL, 'Español: barrigón', 'import-espanol-bubi'),
  ('ribetté', 's.', 'm.', NULL, 'Cl. 5', '- en el que se muelen los dátiles lolóa (el. 1 1), el - e ribetté, o bolonká, el - en el que se muelen los dátiles o IOlóa, el- de petróleo e ribetté ri i karo síi; -es abetté, belon ká, - en los que se muelen los dátiles lóa, los -es a abetté, e beIonká, los -es en los que se muelen los dátiles i lóa.', NULL, 'bolonká', 'Español: barril', 'import-espanol-bubi'),
  ('epatto', 's.', 'm.', NULL, 'Cl. 7', '- de extranjeros rikará, persona de - botyo a epatto, el - e epatto, o loba''o, mi - e epatto m, tu - tiene luz e epatto ó okkí láppo;-s ipatto, aba''o, los -s e ipatto, a aba''o, los -s de la ciudad e ipatto ya ripottó.', NULL, 'loba''o', 'Español: barrio', 'import-espanol-bubi'),
  ('etokotokko', 's.', 'm.', NULL, 'Cl. 7', 'el- e etokotok ko; -es bitokotokko, los -es e bitokotokko.', NULL, NULL, 'Español: barrizal', 'import-espanol-bubi'),
  ('etokkó', 's.', 'm.', NULL, 'Cl. 7', 'el - e etokkó; -s bitokkó, los -s e bitokkó; hay mucho - en época de lluvia be bitokkó bikébíke e esubba.', 'hay mucho - en época de lluvia be bitokkó bikébíke e esubba.', NULL, 'Español: barro', 'import-espanol-bubi'),
  ('lokkó', 's.', 'm.', NULL, NULL, '(6), los -s a lokkó; quiero enviar mis - al pueblo n la na''a o ará a lokkó m obessé.', 'quiero enviar mis - al pueblo n la na''a o ará a lokkó m obessé.', NULL, 'Español: bártulos', 'import-espanol-bubi'),
  ('bOmpá', 's.', 'm.', NULL, 'Cl. 3', 'buppá, kipáám, el- o bompá, o bo tyípótyípóo, o bilppá, e kipáám; -s bempá, betyípótyípóo, biuppá, kipáám, los -s e bempá, e betyípótyípóo, e biuppá, i kipáám; no me traigas - we le pere buppá, no quiero - n tyí''a na''a buppá. belleza / 377', 'no me traigas - we le pere buppá, no quiero - n tyí''a na''a buppá.', 'bo, bilppá', 'Español: barullo', 'import-espanol-bubi'),
  ('bosakatoo', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bosa katoo; yo soy - ne bosakatoo, tú no eres - o tyi bOsakatoo; -s basakatoo, los -s a basakatoo; los -s son del Sol en la frente a basakatoo ba púríi itohí óppá''a e polló. base, s..f ripotta, ekutyú, la - e ripotta, e ekutyú; -s apotta, bikutyú, las -s a apottá, e bikutyú; la - de este asunto está en ti e ekutyú á elo elabba e lé o ao. ¡basta! exc. tó''el, seeí ká1lo!', 'yo soy - ne bosakatoo, tú no eres - o tyi bOsakatoo; | los -s son del Sol en la frente a basakatoo ba púríi itohí óppá''a e polló. | la - de este asunto está en ti e ekutyú á elo elabba e lé o ao.', NULL, 'Español: basakateño', 'import-espanol-bubi'),
  ('botyúppo', 's.', 'm.', NULL, 'Cl. 3', 'el o botyúppo, e sa''á, el- de mando e sa''á sá o to''ú; bastones betyúppo, tua''á, los bastones e betyúppo, o tua''á. basura, s..f botyuttá, bOtuttá, boá (Cl. 3), la - o botyuttá, o bOtuttá, o bOá; -s be tyuttá, betuttá, beoá, las -s e betyuttá, e betuttá, e beoá; hay mucha - detrás de la residencia del presidente he botyuttá búkebúke e tyóbbo ohNná ó bOitta botee.', 'bastones betyúppo, tua''á, los bastones e betyúppo, o tua''á. | hay mucha - detrás de la residencia del presidente he botyuttá búkebúke e tyóbbo ohNná ó bOitta botee.', 'tua''á, b, b', 'Español: bastón', 'import-espanol-bubi'),
  ('boá', 's.', 'm.', NULL, 'Cl. 3', 'boáa, el- o bOá, o buía, o bOáa; -s beOá, biía, beoáa, los -s e beoá, e biía, e beoáa. bata, s..f luua, la - o luua; -s kuua, las -s i kuua.', NULL, 'buía, b', 'Español: basurero', 'import-espanol-bubi'),
  ('ekétekéte', 's.', 'f.', NULL, 'Cl. 7', 'bit tá, la - e ekétekéte, e rioppo, e bittá, la - final e rioppo risubbá; -s bikétekéte, baoppo, bittá, las -s e bikétekéte, a baoppo, e bittá.', NULL, NULL, 'Español: batalla', 'import-espanol-bubi'),
  ('obitábítta', 'adj.', NULL, NULL, 'Cl. 1', 'el- o obitábít ta; -es abitábítta, los -es a abitábítta.', NULL, NULL, 'Español: batallador', 'import-espanol-bubi'),
  ('olá', 'v.', NULL, NULL, NULL, 'o olá1la; los pueblos batallaron durante todo el año e biriia bi ba Olám o loa lo mmaa.', 'los pueblos batallaron durante todo el año e biriia bi ba Olám o loa lo mmaa.', NULL, 'Español: batallar', 'import-espanol-bubi'),
  ('lohúa', 's.', 'm.', NULL, 'Cl. 11', 'el - o lohúa, el- de la muerte o IOhúa ló a riwéi; batallones bahúa, los batallones a bahúa.', 'batallones bahúa, los batallones a bahúa.', NULL, 'Español: batallón', 'import-espanol-bubi'),
  ('isoppó', 's.', 'f.', NULL, 'Cl. 5', 'la - e isoppó; -s basop pó, las -s a basoppó. batidora, s..f ribinno, la - e ribinno; -s abinno, las -s a abinno. batuta, s..f buuko, sitáa, la - o buuko, e sitáa; -s biuko, totáa, las -s e biuko, o totáa, la - no es buena o buuko bo tyí buebue.', NULL, 'totáa', 'Español: batata', 'import-espanol-bubi'),
  ('lobakka', 's.', 'm.', NULL, 'Cl. 11', 'el- o lobakka, o bokíssi; -es bakka, biokíssi, los -es i bakka, e biokíssi.', NULL, 'bokíssi', 'Español: baúl', 'import-espanol-bubi'),
  ('ebatto', 's.', 'm.', NULL, 'Cl. 7', 'el e ebatto, a boppé; -s ibatto (Cl. 8), bop pé, los -s e ibatto, a boppé.', NULL, NULL, 'Español: bautismo', 'import-espanol-bubi'),
  ('sáppo', 's.', 'm.', NULL, 'Cl. 12', 'el - e sáppo; -es tuáppo, los -es o tuáppo.', NULL, NULL, 'Español: bazar', 'import-espanol-bubi'),
  ('sine''e', 's.', 'm.', NULL, 'Cl. 12', 'el- e sine''e; -s tone''e, los -s o tone''e; he visto a tres - n ka eelÍ1 tone'' e to é tobba.', 'he visto a tres - n ka eelÍ1 tone'' e to é tobba.', NULL, 'Español: bebé', 'import-espanol-bubi');

-- Lote 14 (entradas 326 a 350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boebba', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOebba; -es baebba, los -es a baebba; el - de vino de palma o boebba á ba''u, o bOrá á ba''u.', 'el - de vino de palma o boebba á ba''u, o bOrá á ba''u.', 'b', 'Español: bebedor', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 12', 'el - e sipókkó; -s topókkó, los -s o topókkó.', NULL, NULL, 'Español: becerro', 'import-espanol-bubi'),
  ('obellá', 's.', 'm.', NULL, 'Cl. 3', '- venenoso buehe, el - o obellá, el - venenoso o buehe; -s ebellá, -s venenosos beehe, los -s e ebellá, los -s venenosos e beehe.', NULL, NULL, 'Español: bejuco', 'import-espanol-bubi'),
  ('buebue', 's.', 'f.', NULL, 'Cl. 3', 'la - o buebue, o wakká; -es biebie, biakká, las -es e biebie, e biakká.', NULL, 'wakká', 'Español: beldad', 'import-espanol-bubi'),
  ('bOnya''o', 'adj.', NULL, NULL, 'Cl. 9', 'bOnya''o (Cl. 3), lehílehí, el - o bonya''o, e lehílehí; -s benya''o, lehílehí, los -s e be nya''o, i lehílehí.', NULL, NULL, 'Español: belicoso', 'import-espanol-bubi'),
  ('buebue', 's.', 'f.', NULL, 'Cl. 3', 'wakká, e rirnrno, la - o buebue, la - del pueblo o 378 I bello, a wakká wá e eriia; -s biébié, biakká, bammo, las -s e biébié, e biakká, a bammo. bello, a, buébué (els. 1 y 3) una persona botyo buébué, un - atardecer buatotyio buébué; reré una joven y - doncella rikamosa reré; éé un - poblado eriia éé; luélué (el. 1 1) un cuerpo - Iottó luélué; sésé un - bebé siné''e sesé, etc. bellos, ...', 'reré una joven y - doncella rikamosa reré; | luélué (el. | sésé un - bebé siné''e sesé, etc.', NULL, 'Español: belleza', 'import-espanol-bubi'),
  ('bohulahúlla', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bo hulahúlla; -s bahulahúlla, los -s a bahu lahúlla.', NULL, NULL, 'Español: bendiciente', 'import-espanol-bubi'),
  ('ripeám', 's.', 'm.', NULL, 'Cl. 5', 'el - e ripeám, e riobbo; -s apeám, baobbo, los -s a apeám, a baobbo.', NULL, NULL, 'Español: beneficio', 'import-espanol-bubi'),
  ('to''ú', 's.', 'm.', NULL, 'Cl. 13', 'el - o to''ú; -s to''ú, los -s o to''ú; hago esto con el- del alcalde n la pénna lállo la o to''ú to o botúkku.', 'hago esto con el- del alcalde n la pénna lállo la o to''ú to o botúkku.', NULL, 'Español: beneplácito', 'import-espanol-bubi'),
  ('buébué', 'adj.', NULL, NULL, 'Cl. 3', 'gusano - bose''e buébué; réré : araña - ribobo réré; éé : caza - ebebba éé; néné (els. 9 y 10): tormen ta - pullá néné; luélué (el. 1 1): arco - lonokko luélué; sésé : partícula - situbbá sésé;-s biébié (els. 4 y 8): gusanos -s bese''e biébié; bébé : arañas -s abobo bébé; tuétué : partículas -s totubbá tuétué.', 'réré : araña - ribobo réré; | néné (els. | luélué (el.', NULL, 'Español: benigno', 'import-espanol-bubi'),
  ('bOsubóbbe', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOsu bóbbe, soy el - nné n le o bOsubóbbe; benjamines basubóbbe, los benjamines a basubóbbe.', 'benjamines basubóbbe, los benjamines a basubóbbe.', NULL, 'Español: benjamín', 'import-espanol-bubi'),
  ('kapátya', 'v.', NULL, NULL, NULL, 'pres. la cabra berrea e póríi e lá kapátya;pas. punto la cabrita berreó e sipóríi si kapátyiia;pas. duro el niño berreaba o bóllá a kapátyesiia.', NULL, NULL, 'Español: berrear', 'import-espanol-bubi'),
  ('bonobbe', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOnobbe; -s benobbe, los -s e benobbe. besar, v, o kisálla, o besálla; quiero besarte n la na''a o kisálla o, no me beses we le kisálle, ayer me besó mi amante mpári e pa''álÍl e lé kisám.', 'quiero besarte n la na''a o kisálla o, no me beses we le kisálle, ayer me besó mi amante mpári e pa''álÍl e lé kisám.', 'kisálla, besálla', 'Español: berrinche', 'import-espanol-bubi'),
  ('esóppiáa', 's.', 'm.', NULL, 'Cl. 7', 'el - e esóppiáa; -s bisóppiáa, los -s e bisóppiáa; quiero un - n la na''a esóppiáa.', 'quiero un - n la na''a esóppiáa.', NULL, 'Español: beso', 'import-espanol-bubi'),
  ('ribetté', 's.', 'm.', NULL, 'Cl. 5', 'lusiánno (el. 1 1), el- e ribetté, o bOlonká, o lusiánno; bido nes abetté, belonká, kusiánno, los bidones a abetté, e belonká, i kusiánno.', 'bido nes abetté, belonká, kusiánno, los bidones a abetté, e belonká, i kusiánno.', 'b, lusiánno', 'Español: bidón', 'import-espanol-bubi'),
  ('léllé', 'adv.', NULL, NULL, 'Cl. 10', 'está -lé léllé, no está -la tyí léllé. 2. -es, ka''ó, mis - están en mi pueblo i ka'' ó lÍl i lá e eriia lÍl.', NULL, NULL, 'Español: bien', 'import-espanol-bubi'),
  ('bohOlátyo', 'adj.', NULL, NULL, 'Cl. 1', 'bosaléle, el - o bOhOJátyo, o bosaléle; -es baholátyo, basaléle, los -es a baholátyo, a basaléle; no son muchos los -es a bahOlátyo ba tyí bíke.', 'no son muchos los -es a bahOlátyo ba tyí bíke.', 'bosaléle', 'Español: bienhechor', 'import-espanol-bubi'),
  ('atyí', 'adv.', NULL, NULL, NULL, 'ketto nellá.', NULL, NULL, 'Español: bis', 'import-espanol-bubi'),
  ('rietyá', 'adj.', NULL, NULL, 'Cl. 5', 'el - e rietyá; -s baetyá, los -s a baetyá; este niño es - OJo bóllá e rietyá. bombear / 379', 'este niño es - OJo bóllá e rietyá.', NULL, 'Español: bizco', 'import-espanol-bubi'),
  ('bisikittí', 's.', 'm.', NULL, 'Cl. 9', 'el - e bisikittí; -s bisikittÍ, los -s i bisikittí. biznieto, a, natta, el- e natta; -s nat ta, los -s i natta; tengo quince -s ka okkí natta yé ó.', 'tengo quince -s ka okkí natta yé ó.', NULL, 'Español: bizcocho', 'import-espanol-bubi'),
  ('seké', 'adj.', NULL, NULL, 'Cl. 12', 'el- e seké; bobali cones tueké, los bobalicones o tueké.', 'bobali cones tueké, los bobalicones o tueké.', NULL, 'Español: bobalicón', 'import-espanol-bubi'),
  ('ekakká', 'adj.', NULL, NULL, 'Cl. 7', 'el- e ekakká; -s bikakká, los -s e bikakká.', NULL, NULL, 'Español: bobo', 'import-espanol-bubi'),
  ('pofopofu', 's.', 'm.', NULL, 'Cl. 9', 'el - e PC?fUpofit; -s pofop�fit, los -s i pofupofU.', NULL, NULL, 'Español: bollo', 'import-espanol-bubi'),
  ('pokette', 's.', 'm.', NULL, 'Cl. 9', 'el - e pokiitte; -s pokette (el. lO), los -s i pokiitte; mi camisa lle va cinco -s e sótte m si ari pókette yé ntyó.', 'mi camisa lle va cinco -s e sótte m si ari pókette yé ntyó.', NULL, 'Español: bolsillo', 'import-espanol-bubi'),
  ('etyu''a', 's.', 'm.', NULL, 'Cl. 7', 'etuká, ri sokká, el- e etyu''a, e risokká;-s bityu''a, bitúkká, bituká, basokká, los -s e bityu''a, e bitúkká, e bituká, a basokká; mi mujer tiene cuarenta -s o waísso m okkí bitúkká bié batyílla appa.', 'mi mujer tiene cuarenta -s o waísso m okkí bitúkká bié batyílla appa.', NULL, 'Español: bolso', 'import-espanol-bubi');

-- Lote 15 (entradas 351 a 375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('kunké', 's.', 'm.', NULL, 'Cl. 9', 'el e kunké, e edoroma; kunké, bidoroma, los -s betébbá i kunké, e bidoroma.', 'kunké, bidoroma, los -s betébbá i kunké, e bidoroma.', NULL, 'Español: bombo', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 9', 'el - e suítti; bom bones suítti, los bombones i suítti.', 'bom bones suítti, los bombones i suítti.', NULL, 'Español: bombón', 'import-espanol-bubi'),
  ('botyo', 'adj.', NULL, NULL, 'Cl. 1', 'es una persona - botyo buebue; son unas personas -s batyo bebe, las personas -s a batyo bebe.', 'son unas personas -s batyo bebe, las personas -s a batyo bebe.', NULL, 'Español: bondadoso', 'import-espanol-bubi'),
  ('isoppó', 's.', 'm.', NULL, 'Cl. 5', 'el - e isoppó; -s basoppó, los -s a basoppó. bonito, a, 1. adj. buebue (els. 1 y 3) una persona - botyo buebue, una nariz - bompo buebue, rere una mejilla - rikekko rere, lele un - asunto labba lele, ee un pueblo - eriia ee, nene una casa - ty6b bo nene, luelue un vestido - o lohétyá luelue, sese un cuento - e siatta sese, MM un lugar - habba MM. 2. bonitos,', NULL, NULL, 'Español: boniato', 'import-espanol-bubi'),
  ('pI', 'adj.', NULL, NULL, 'Cl. 13', 'bebe (el. 2 y 6) personas - batyo bebe, mejillas - bakekko bebe, biebie (els. 4 y 8) narices - bempo biebie, pueblos - biriia biebie, nene (el. lO) casas - ty6bbo nene, tuetue cuentos - toatta tuetue.', NULL, NULL, 'Español: as', 'import-espanol-bubi'),
  ('toom', 's.', 'm.', NULL, 'Cl. 13', 'el - o toom; -s toom, los -s o toom.', NULL, NULL, 'Español: boñigo', 'import-espanol-bubi'),
  ('bOnko', 'adj.', NULL, NULL, 'Cl. 2', 'bOnko (el.l), el - o bOnko; -s banko, los -s a banko.', NULL, NULL, 'Español: borracho', 'import-espanol-bubi'),
  ('kassáa', 'v.', NULL, NULL, NULL, 'preso yo borro las letras n la kassáa e biletera; paso punto el maestro borró las letras o bue''iáa a kas sí e biletera; paso duro el perro borraba las letras e puá e kasessi e biletera.', 'preso yo borro las letras n la kassáa e biletera; | paso duro el perro borraba las letras e puá e kasessi e biletera.', NULL, 'Español: borrar', 'import-espanol-bubi'),
  ('etyubbo', 's.', 'f.', NULL, 'Cl. 9', '(eL 7), pullá, la e etyubbo, i pullá; -s bityubbo, pullá, las -s e bityubbo, i pullá.', NULL, NULL, 'Español: borrasca', 'import-espanol-bubi'),
  ('buía', 's.', 'm.', NULL, 'Cl. 3', 'el - o buía, e ehobbá; -s biía, bihob bá, los -s e biía, e bihObbá.', NULL, NULL, 'Español: bosque', 'import-espanol-bubi'),
  ('nobba', 'v.', NULL, NULL, NULL, 'preso las personas que escuchan al mandatario bostezan a batyo ba lá batóbiera bá o boitta ba la nobba;pas. duro yo bostezaba mientras hablabas n nobessi o towessi lá.', 'preso las personas que escuchan al mandatario bostezan a batyo ba lá batóbiera bá o boitta ba la nobba;', NULL, 'Español: bostezar', 'import-espanol-bubi'),
  ('nobanoba', 's.', 'm.', NULL, 'Cl. 9', 'el - e nobanoba; -s nobanoba, los -s i nobanoba.', NULL, NULL, 'Español: bostezo', 'import-espanol-bubi'),
  ('ekakká', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekakká; -s bikakká, los -s e bikakká.', NULL, NULL, 'Español: botarate', 'import-espanol-bubi'),
  ('bOkoteri', 's.', 'f.', NULL, 'Cl. 3', 'opoteri, mokoteri (Cl. 3), bokotyí, la - o bokoteri, o opilo, o opoteri, o mokoteri, o bokotyí; -s bekoteri, epilo, ep6teri, mekoteri, bekotyí, las -s e bekoteri, e epilo, e epoteri, e mekoteri, e bekotyí; voy a comprar dos -s de leche n ka olla'' á bekoteri bi a abelle bi é eppa; - de cerve za obíía, la - de cerveza o obíía; -s de cer veza ebíía, las -s de cerveza e ebíía.', 'voy a comprar dos -s de leche n ka olla'' á bekoteri bi a abelle bi é eppa;', 'opilo, opoteri, mokoteri, bokotyí', 'Español: botella', 'import-espanol-bubi'),
  ('kullá', 's.', 'm.', NULL, 'Cl. 9', 'el- e kullá; -s kullá, los -s i kullá.', NULL, NULL, 'Español: botijo', 'import-espanol-bubi'),
  ('bOtiin', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOtiin; botones bi!iJtiín, los botones e beotiin; mi chaque ta lleva diez botones e kótte m ari beotiin bié bi6.', 'botones bi!iJtiín, los botones e beotiin;', NULL, 'Español: botón', 'import-espanol-bubi'),
  ('bokoé', 's.', 'm.', NULL, 'Cl. 1', 'el o bOkoé, o bOkollé; -s bakoé, bakollé, los -s a bakoé, a bakollé; el barco lleva a los -s o buátto bO lá alláa a bakoé.', 'el barco lleva a los -s o buátto bO lá alláa a bakoé.', 'b', 'Español: bracero', 'import-espanol-bubi'),
  ('kapátya', 'v.', NULL, NULL, NULL, 'preso el buey brama e p6kkó e lá kapátya; paso punto el cerdo bramó e esól6 e kapátyiia; paso duro el preso bramaba o botyele mán a kapátyesiia. buitre / 381', 'preso el buey brama e p6kkó e lá kapátya; | paso duro el preso bramaba o botyele mán a kapátyesiia.', NULL, 'Español: bramar', 'import-espanol-bubi'),
  ('ebankolosi', 's.', 'm.', NULL, 'Cl. 7', 'emanko10si, - de tyíbbO eppá, el- e ebank010si, e ehakko, e emank010si, el - de tyíbbo e eppá; -s ibanko10si, bihakko, imankolosi, -s de tyíbbo mpá, los -s e ibank01osi, e bihakko, e imanko10si, los -s de tyíbbo e mpá.', NULL, NULL, 'Español: brazalete', 'import-espanol-bubi'),
  ('bOsoí', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosoí, o bosoisói; bribones basoí, basoi sói, los bribones a basoí, a basoisói.', 'bribones basoí, basoi sói, los bribones a basoí, a basoisói.', 'bosoisói', 'Español: bribón', 'import-espanol-bubi'),
  ('erera', 'v.', NULL, NULL, NULL, 'el suelo de mi casa brilla mucho o bobba bo e tyóbbo rÍI bO lá erera sóté, ayer brillaba la puerta mpári ereriia e eribbé, el mármol brilla i Dalle í la tyátya.', 'el suelo de mi casa brilla mucho o bobba bo e tyóbbo rÍI bO lá erera sóté, ayer brillaba la puerta mpári ereriia e eribbé, el mármol brilla i Dalle í la tyátya.', NULL, 'Español: brillar', 'import-espanol-bubi'),
  ('watyatya', 's.', 'm.', NULL, 'Cl. 3', 'el o watyatya e ebaribia; -s beatyatya, mba ribia, ibuerabuera, los -s e beatya tya, embaribia. 2. sacarle - a algo o erera.', NULL, NULL, 'Español: brillo', 'import-espanol-bubi'),
  ('patyíbba', 'v.', NULL, NULL, NULL, 'el anciano brinca como un saltamontes e obéolla é la patyíbba la patyípatyí, brinqué cuando pasó el coche m pa tyíbi bué le hétte o motóo.', 'el anciano brinca como un saltamontes e obéolla é la patyíbba la patyípatyí, brinqué cuando pasó el coche m pa tyíbi bué le hétte o motóo.', NULL, 'Español: brincar', 'import-espanol-bubi'),
  ('bosorá', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOsorá; -s beso rá, los -s e besorá.', NULL, NULL, 'Español: brinco', 'import-espanol-bubi'),
  ('batté', 's.', 'm.', NULL, 'Cl. 6', 'el - a batté; -s batté, los -s a batté; esta penona tiene - 010 botyo okkí batté.', 'esta penona tiene - 010 botyo okkí batté.', NULL, 'Español: brío', 'import-espanol-bubi');

-- Lote 16 (entradas 376 a 400)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ehul', 's.', 'm.', NULL, 'Cl. 7', '0, el - e ehu10; -s bihu10, los -s e bihu10.', NULL, NULL, 'Español: brote', 'import-espanol-bubi'),
  ('botyiálÍtyo', 'adj.', NULL, NULL, 'Cl. 1', 'el - o botyiálÍtyo; -s batyiáIítyo, los -s a batyiálÍtyo; todos los -s están en la cárcel a batyiálÍtyo bammaa ba 1á e tyaróm.', 'todos los -s están en la cárcel a batyiálÍtyo bammaa ba 1á e tyaróm.', NULL, 'Español: brujo', 'import-espanol-bubi'),
  ('nabba', 's.', 'm.', NULL, 'Cl. 9', 'el - e nabba; -s nabba, los -s i nabba.', NULL, NULL, 'Español: bruto', 'import-espanol-bubi'),
  ('obObée', 'adj.', NULL, NULL, 'Cl. 1', 'botyo, el- o obo bée, o bOtyo; -s abobée, batyo, los -s a abobée, a batyo; soy bubi ne obo bée, De botyO.', 'soy bubi ne obo bée, De botyO.', 'b', 'Español: bubi', 'import-espanol-bubi'),
  ('ehetúhéttu', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehetúhéttu; -s bihetúhéttu, los -s e bihetúhéttu.', NULL, NULL, 'Español: buche', 'import-espanol-bubi'),
  ('Vid', 'adj.', NULL, NULL, NULL, 'Vid. bueno.', NULL, NULL, 'Español: buen', 'import-espanol-bubi'),
  ('kóppó', 's.', 'm.', NULL, 'Cl. 9', 'el- e kóp pó, e pókkó; -es kóppó, pókkó (el. lO), los -es i kóppó, i pókkó; los hombres vencieron a los -es y construyeron el poblado de los ven cedores de los -es a baie ba tó''i i pókkó ebelló ba bái e eriia a batóipókkó.', 'los hombres vencieron a los -es y construyeron el poblado de los ven cedores de los -es a baie ba tó''i i pókkó ebelló ba bái e eriia a batóipókkó.', NULL, 'Español: buey', 'import-espanol-bubi'),
  ('opello', 'adj.', NULL, NULL, 'Cl. 1', 'el- o opello; bufones apello, los bufones a apello.', 'bufones apello, los bufones a apello.', NULL, 'Español: bufón', 'import-espanol-bubi'),
  ('ka''á', 's.', 'm.', NULL, 'Cl. 9', 'el - e ka''á; -s ka''á (el. lO), los -s i ka''á. 382 / buitrón', NULL, NULL, 'Español: buitre', 'import-espanol-bubi'),
  ('bOatyó', 's.', 'm.', NULL, 'Cl. 3', 'el - o boatyó; bui trones beatyó, los buitrones e beatyó.', 'bui trones beatyó, los buitrones e beatyó.', NULL, 'Español: buitrón', 'import-espanol-bubi'),
  ('okkó', 's.', 'm.', NULL, 'Cl. 3', 'el - e okkó, e ekotekotte; -s biokkó, bikotekotte, los -s e biokkó, e bikotekotte.', NULL, NULL, 'Español: búho', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'el - e rihúo; -s bahúo, los -s a bahúo.', NULL, NULL, 'Español: bulto', 'import-espanol-bubi'),
  ('pofopofo', 's.', 'm.', NULL, 'Cl. 9', 'el - e pofopofo; -s p<?/Upofo, los -s i pofopofu.', NULL, NULL, 'Español: buñuelo', 'import-espanol-bubi'),
  ('buátto', 's.', 'm.', NULL, 'Cl. 3', 'el o buattO, e sitímma; -s biattó, totímma, los -s e biattó, o totímma.', NULL, 'totímma', 'Español: buque', 'import-espanol-bubi'),
  ('pobbá', 'v.', NULL, NULL, NULL, 'o pobbá. 2. -se o pobbá; me burlo de ti n la o póbba, por favor, no te burles de mí tyuíi we le póbbe, te burlas de ti mismo o la ba pobbá ó.', 'me burlo de ti n la o póbba, por favor, no te burles de mí tyuíi we le póbbe, te burlas de ti mismo o la ba pobbá ó.', NULL, 'Español: burlar', 'import-espanol-bubi'),
  ('opello', 'adj.', NULL, NULL, 'Cl. 1', 'el- o openo, o rnmetya; burlones apello, ametya, los burlones a apeno, a ametya.', 'burlones apello, ametya, los burlones a apeno, a ametya.', 'rnmetya', 'Español: burlón', 'import-espanol-bubi'),
  ('bona''a', 'adj.', NULL, NULL, 'Cl. 1', 'wekera, bona''l, el - o bona''a, o wekera, o bona''í; -es bana''a, bekera, bana''í, los -es a bana''a, a bekera, a bana''í.', NULL, 'wekera, bona''í', 'Español: buscador', 'import-espanol-bubi'),
  ('ekera', 'v.', NULL, NULL, NULL, 'o uttya, o na''a; busco a mi padre n la uttya o boie IÍl, bus co a alguien n la ekera botyo. 2. - para o ekella.', 'o uttya, o na''a;', 'na''a', 'Español: buscar', 'import-espanol-bubi'),
  ('bokíssi', 's.', 'm.', NULL, 'Cl. 3', '- de cartas bokissi wa beatabeatyó, el - o bokíssi; buzones biokíssi, los buzones e biokissi.', 'buzones biokíssi, los buzones e biokissi.', NULL, 'Español: buzón', 'import-espanol-bubi'),
  ('boie', 's.', 'm.', NULL, 'Cl. 1', 'el- o boie, o boitta; -s baie, baitta, los-s a baie, a baitta.', NULL, 'boitta', 'Español: caballero', 'import-espanol-bubi'),
  ('ossi', 's.', 'm.', NULL, 'Cl. 7', 'el- e ossi, e eossi, el - blanco e ossi ehótóttó, un ossi; -s biossi, los -s e biossi, los -s corren mucho e biossi bí la húbbia sóté.', NULL, NULL, 'Español: caballo', 'import-espanol-bubi'),
  ('esílla', 's.', 'm.', NULL, 'Cl. 7', 'el- e esílla, el blanco e esílla ehótóttó; -s bisílla, los -s e bisílla, unos -s largos bisílla bitó.', NULL, NULL, 'Español: cabello', 'import-espanol-bubi'),
  ('olláa', 'v.', NULL, NULL, NULL, 'preso esta persona cabe entre nosotros oló botyo e ollá''e bi''o.', 'preso esta persona cabe entre nosotros oló botyo e ollá''e bi''o.', NULL, 'Español: caber', 'import-espanol-bubi'),
  ('wihó', 'adj.', NULL, NULL, 'Cl. 3', 'etyokoleppo, el - o wihó, e etyokoleppo; -s bihó, bityokoleppo, los -s e bihó, e bityokoleppo.', NULL, NULL, 'Español: cabezudo', 'import-espanol-bubi'),
  ('bosappo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOsappo; -s besappo, los -s e besappo.', NULL, NULL, 'Español: cable', 'import-espanol-bubi');

-- Lote 17 (entradas 401 a 425)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('boalla', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOalla; -s bealla, los -s e bealla.', NULL, NULL, 'Español: cabo', 'import-espanol-bubi'),
  ('nobbe', 's.', 'm.', NULL, 'Cl. 9', 'el o bonobbe, tengo un - ne bonobbe, ne nobbe; -8 nobbe, benobbe, los-s i nobbe, e benobbe. 384 / cacao', NULL, NULL, 'Español: cabreo', 'import-espanol-bubi'),
  ('ernmáloto', 's.', 'm.', NULL, 'Cl. 7', 'el - e emmáloto; -s birnmáloto, los -s e bim máloto.', NULL, NULL, 'Español: cacao', 'import-espanol-bubi'),
  ('lopatta', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o lopatta; -s patta, los -s i patta.', NULL, NULL, 'Español: cachete', 'import-espanol-bubi'),
  ('epatapatta', 's.', 'm.', NULL, 'Cl. 7', 'el- e epatapat ta; cachetones ipatapatta, los cachetones e ipatapatta.', 'cachetones ipatapatta, los cachetones e ipatapatta.', NULL, 'Español: cachetón', 'import-espanol-bubi'),
  ('eheká', 's.', 'm.', NULL, 'Cl. 7', 'el- e eheká; -s biheká, los -s e biheká.', NULL, NULL, 'Español: cacho', 'import-espanol-bubi'),
  ('rityakápe''e', 's.', 'm.', NULL, 'Cl. 5', 'el- e rityaká pe''e; -s batyakápe''e, los -s a batyakápe''e.', NULL, NULL, 'Español: cachondeo', 'import-espanol-bubi'),
  ('húbbé', 's.', 'm.', NULL, 'Cl. 9', 'el - e húbbé; -s húbbé, los -s i húbbé; los -s de la ciudad i hub bé í á ripottó.', 'los -s de la ciudad i hub bé í á ripottó.', NULL, 'Español: caco', 'import-espanol-bubi'),
  ('eleppé', 's.', 'm.', NULL, 'Cl. 7', 'el - e eleppé, e erutta; -es bileppé, birutta, los -es e bileppé, e birutta.', NULL, NULL, 'Español: cadáver', 'import-espanol-bubi'),
  ('kuá', 'v.', NULL, NULL, NULL, '2. -se o kuá. 3. - la noche o síba1la; la noche cae o botyíó bó la síballa; se cayó el vestido o bua lo ba hóyo.', 'la noche cae o botyíó bó la síballa;', NULL, 'Español: caer', 'import-espanol-bubi'),
  ('botoom', 's.', 'm.', NULL, 'Cl. 1', 'el- o botoom; cago nes batoom, los cagones a batoom.', 'cago nes batoom, los cagones a batoom.', NULL, 'Español: cagón', 'import-espanol-bubi'),
  ('rikettá', 's.', 'm.', NULL, 'Cl. 5', 'el- e rikettá; caíma nes bakettá, los caimanes a bakettá.', 'caíma nes bakettá, los caimanes a bakettá.', NULL, 'Español: caimán', 'import-espanol-bubi'),
  ('bokíssi', 's.', 'm.', NULL, 'Cl. 3', 'el- o bokíssi; cajones biokíssi, los cajones e biokíssi.', 'cajones biokíssi, los cajones e biokíssi.', NULL, 'Español: cajón', 'import-espanol-bubi'),
  ('tyélle', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyélle; -s tyélle, los -s i tyélle.', NULL, NULL, 'Español: calabozo', 'import-espanol-bubi'),
  ('tyí', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyí; -es tyí (el. lO), los -es i tyí. calambre rikokottó, rihíhi, el - e rikokottó, e rihíhi; -s bakokottó, bahí hi, los -s a bakokotto, a bahíhi.', NULL, NULL, 'Español: calamar', 'import-espanol-bubi'),
  ('bo''á', 's.', 'm.', NULL, 'Cl. 12', '(6), súppu, el- a bo''á, e súppu; -s bo''á, túppu, los -s a bo''á, o túppu.', NULL, 'túppu', 'Español: caldo', 'import-espanol-bubi'),
  ('ribélo', 's.', 'm.', NULL, 'Cl. 5', 'el e ribélo, e ebélo; -s abélo, ibélo, los -s a abélo, e ibélo.', NULL, NULL, 'Español: calendario', 'import-espanol-bubi'),
  ('no''iáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: calentar', 'import-espanol-bubi'),
  ('húé', 'adj.', NULL, NULL, 'Cl. 9', '-s húé, el día está - elló é húé, los - días de febrero e billó bi e húé bi o moakanne.', NULL, NULL, 'Español: cálido', 'import-espanol-bubi'),
  ('húé', 'adj.', NULL, NULL, 'Cl. 9', 'el caldo está - e súppu sé húé; -s húé (el. lO), los cal dos están -s o túppu tué húé. camisón / 385', NULL, NULL, 'Español: caliente', 'import-espanol-bubi'),
  ('etyakka', 's.', 'm.', NULL, 'Cl. 7', 'el - e etyakka; cálices bityakka, los cálices e bityakka.', 'cálices bityakka, los cálices e bityakka.', NULL, 'Español: cáliz', 'import-espanol-bubi'),
  ('húé', 's.', 'm.', NULL, 'Cl. 9', '. el- e húé, hace - he húé; -es húé, los -es i húé.', NULL, NULL, 'Español: calor', 'import-espanol-bubi'),
  ('sússu', 's.', 'm.', NULL, 'Cl. 9', 'el - e sússu; -s sússu, los -s i sÚssu.', NULL, NULL, 'Español: calzado', 'import-espanol-bubi'),
  ('ribatyu', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribatyu, e rekká; -s abatyu, bekká, los -s a abatyu, a bekká.', NULL, NULL, 'Español: calzoncillo', 'import-espanol-bubi'),
  ('lowátéte', 's.', 'm.', NULL, 'Cl. 11', 'loókóra (el. 1 1), el - o lowátéte, o lOókóra; camaleones wá téte, biókóra, los camaleones i wátéte, e biókóra.', 'camaleones wá téte, biókóra, los camaleones i wátéte, e biókóra.', 'l', 'Español: camaleón', 'import-espanol-bubi');

-- Lote 18 (entradas 426 a 450)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bueá', 's.', 'm.', NULL, 'Cl. 3', 'el- o bueá; camaro nes bieá, los camarones e bieá.', 'camaro nes bieá, los camarones e bieá.', NULL, 'Español: camarón', 'import-espanol-bubi'),
  ('tyentyi', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyentyi; -s tyentyi, los -s i tyentyi.', NULL, NULL, 'Español: cambio', 'import-espanol-bubi'),
  ('ooetta', 's.', 'm.', NULL, 'Cl. 1', 'el - o boetta, o bosalóetyi; -s baetta, basalóetyi, los -s a baetta, a basalóetyi. * los -s de mi pueblo a baetta ba e eriia m [a baet ta bériaam); - no hay camino, se hace camino al andar ooetta ha tyi telle, e telle e láa pénna la o loetto.', NULL, 'bosalóetyi', 'Español: caminante', 'import-espanol-bubi'),
  ('etta', 'v.', NULL, NULL, NULL, 'tú caminabas o etessi, él caminaba a etessi, nosotros caminábamos to etessi, vosotros cami nabais lo etessi, ellos caminaban ba etessi.', NULL, NULL, 'Español: caminar', 'import-espanol-bubi'),
  ('sitelle', 's.', 'm.', NULL, 'Cl. 12', 'el - e sitelle; -s totelle, los -s o totelle.', NULL, NULL, 'Español: caminito', 'import-espanol-bubi'),
  ('bosekka', 's.', 'm.', NULL, 'Cl. 3', 'ooso''e, el- o bosekka, e telle, o ooso''e; -s besek ka, telle, beso''e, los -s e besekka, i telle, e beso''e; los - del bosque i telle i e ehobbá wela, los - del cielo e beso''e bio lobákko puá. camlOn, rikotye, el - e rikotye; camiones bakotye, los camiones a bakotye.', 'los - del bosque i telle i e ehobbá wela, los - del cielo e beso''e bio lobákko puá. | camiones bakotye, los camiones a bakotye.', 'ooso''e', 'Español: camino', 'import-espanol-bubi'),
  ('simmí', 's.', 'm.', NULL, 'Cl. 12', 'el- e simmí; cami sones tuimmí, los camisones o tuimmí. 386 / camorra', 'cami sones tuimmí, los camisones o tuimmí.', NULL, 'Español: camisón', 'import-espanol-bubi'),
  ('buéllo', 's.', 'f.', NULL, 'Cl. 3', 'la - o buéllo; -s biél lo, las -s e biéllo.', NULL, NULL, 'Español: camorra', 'import-espanol-bubi'),
  ('botuppó', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOtuppó; -s batuppó, benya''o, los -s a batuppó.', NULL, NULL, 'Español: camorrista', 'import-espanol-bubi'),
  ('riossa', 's.', 'm.', NULL, 'Cl. 5', '- de fútbol riossa, el - e riossa, o buáám, el -de fútbol e riossa; -s baossa, biáám, -s de fútbol baossa, los -s a baossa, e biáám, los -s de fútbol a baossa, los -s de arroz e biáám bi i réssi.', NULL, 'buáám', 'Español: campo', 'import-espanol-bubi'),
  ('bOle''o', 's.', 'm.', NULL, 'Cl. 3', 'el - o bole''o, o bonno; -s bele''o, benno, los -s e bele''o, e benno.', NULL, 'bonno', 'Español: camposanto', 'import-espanol-bubi'),
  ('puá', 's.', 'm.', NULL, 'Cl. 9', 'el- e puá; -es puá, los -es i puá.', NULL, NULL, 'Español: can', 'import-espanol-bubi'),
  ('lotyánnó', 's.', 'f.', NULL, 'Cl. 11', 'la - o lotyánnó; -s tyánnó, las -s i tyánnó.', NULL, NULL, 'Español: cana', 'import-espanol-bubi'),
  ('bolekké', 's.', 'm.', NULL, 'Cl. 3', 'el - o bolekké; -es belekké, los -es e belekké.', NULL, NULL, 'Español: canal', 'import-espanol-bubi'),
  ('bOakká', 's.', 'm.', NULL, 'Cl. 3', 'el- o boakká; cana lones heakká, los canalones e beakká.', 'cana lones heakká, los canalones e beakká.', NULL, 'Español: canalón', 'import-espanol-bubi'),
  ('parlold', 's.', 'm.', NULL, 'Cl. 9', 'el - e parloki; -s parloki, los -s i parloki.', NULL, NULL, 'Español: candado', 'import-espanol-bubi'),
  ('siláppo', 's.', 'm.', NULL, 'Cl. 12', 'el - e siláppo, e ripa''o; -es toláppo, apa''o, los -es o toláppi), a apa''o.', NULL, NULL, 'Español: candil', 'import-espanol-bubi'),
  ('riballá', 's.', 'm.', NULL, 'Cl. 5', 'el - e riballá; cane lones aballá, los canelones aballá.', 'cane lones aballá, los canelones aballá.', NULL, 'Español: canelón', 'import-espanol-bubi'),
  ('lokká', 's.', 'm.', NULL, 'Cl. 11', '- de no iteke (Cl. 5), rassó, - de mar sibotótó, el- o lok ká, el- de no e iteke, e rassó, el- de mar e sibotótó; -s ká, -s de no bateke, bassó, -s de mar tobotótó, los -s i ká, los -s de río a bateke, a bassó, los -s de mar o tobotótó.', NULL, NULL, 'Español: cangrejo', 'import-espanol-bubi'),
  ('opepúu', 's.', 'f.', NULL, 'Cl. 3', 'la - o opepúu; -s epe púu, las -s e epepúu.', NULL, NULL, 'Español: canilla', 'import-espanol-bubi'),
  ('botyibíi', 's.', 'm.', NULL, 'Cl. 3', 'el - o botyibíi, o bütuppi; -s betyibíi, betuppi, los -s e betyibíi, e betuppi.', NULL, 'bütuppi', 'Español: cansancio', 'import-espanol-bubi'),
  ('neppí', 's.', 'm.', NULL, 'Cl. 9', 'el- e neppí; -s nep pí, los -s i neppí.', NULL, NULL, 'Español: cantante', 'import-espanol-bubi'),
  ('bella', 'v.', NULL, NULL, NULL, 'imp. canta bellá; - para o belella; - con o belalla; - el gallo o boláa.', NULL, NULL, 'Español: cantar', 'import-espanol-bubi'),
  ('kullá', 's.', 'm.', NULL, 'Cl. 9', 'el - e kullá; -s kullá, los -s i kullá.', NULL, NULL, 'Español: cántaro', 'import-espanol-bubi'),
  ('IOberí', 's.', 'm.', NULL, 'Cl. 11', 'siallo, el - o loberí, e eallo, e siallo; -s berí, biallo, toallo, los-s i berí, e biallo, o toallo; los -s del oratorio o toa 1 10 to e róhiáa.', 'los -s del oratorio o toa 1 10 to e róhiáa.', 'toallo', 'Español: cántico', 'import-espanol-bubi');

-- Lote 19 (entradas 451 a 475)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eeppí', 's.', 'm.', NULL, 'Cl. 7', 'el - e eeppí; -s bieppí, los -s e bieppí. carro / 387', NULL, NULL, 'Español: canto', 'import-espanol-bubi'),
  ('neppí', 's.', 'm.', NULL, 'Cl. 9', 'el- e neppí, e tóritóri; -es neppí (el. lO), tóritóri, los -es i neppí, i tóritóri.', NULL, NULL, 'Español: cantor', 'import-espanol-bubi'),
  ('loko''ó', 's.', 'f.', NULL, 'Cl. 3', '(el. 1 1), - de azúcar bO''ó, la - o loko''ó, la - de azúcar o bo''ó; -s ko''ó (el. lO), -s de azúcar be''ó, las -s i ko''ó, las -s de azúcar e be''ó.', NULL, NULL, 'Español: caña', 'import-espanol-bubi'),
  ('peppa', 's.', 'm.', NULL, 'Cl. 9', 'el - e peppa, e kalabátyoko; caolines peppa, kalabáty()ko (el. lO), los caolines i peppa, i kalabátyoko.', 'caolines peppa, kalabáty()ko (el.', NULL, 'Español: caolín', 'import-espanol-bubi'),
  ('epoppó', 's.', 'm.', NULL, 'Cl. 8', 'el - e epoppó; caparazones mpoppó, los caparazones e mpoppó.', 'caparazones mpoppó, los caparazones e mpoppó.', NULL, 'Español: caparazón', 'import-espanol-bubi'),
  ('wakóo', 's.', 'm.', NULL, 'Cl. 3', 'el- o wakóo, e sisula; capones biakóo, tosula, los capones e biakóo, o tosula.', 'capones biakóo, tosula, los capones e biakóo, o tosula.', 'tosula', 'Español: capón', 'import-espanol-bubi'),
  ('eeleri', 's.', 'm.', NULL, 'Cl. 7', 'el- e eeleri; -s bieleri, los -s e bieleri.', NULL, NULL, 'Español: capricho', 'import-espanol-bubi'),
  ('hMmóta', 'v.', NULL, NULL, NULL, 'preso yo capturo a la jineta n la hmmóta e tyippa; paso punto yo capturé al ladrón n hMmótyi e húbbé ''', 'preso yo capturo a la jineta n la hmmóta e tyippa;', NULL, 'Español: capturar', 'import-espanol-bubi'),
  ('tottyí', 's.', 'm.', NULL, 'Cl. 9', '- grande de mar elollá - pequeño buekéke, - de río pe''a , el- gran de o bosoppa, el - grande de mar e elollá, el - pequeño o buekéke, el - de río e pe''a; -es tottyi (el. lO), -es grandes besoppa -es grandes de mar bilollá, -es pequeños biekéke, -es de río pe''a, los -es i tottyí, ), los -es grandes e besoppa, los -es gran des de mar e bilollá, los -es pequeños e bie kéke, ...', NULL, NULL, 'Español: caracol', 'import-espanol-bubi'),
  ('bokeú', 's.', 'm.', NULL, 'Cl. 3', 'el - o bokeú, o werí; caracteres bekeú, bierí, los caracteres e bekeú, e bierí. ¡caramba! int. kuítarí!', 'caracteres bekeú, bierí, los caracteres e bekeú, e bierí.', 'werí', 'Español: carácter', 'import-espanol-bubi'),
  ('suítti', 's.', 'm.', NULL, 'Cl. 9', 'el- e suítti; -s suít ti, los -s i suítti.', NULL, NULL, 'Español: caramelo', 'import-espanol-bubi'),
  ('emasosso', 's.', 'm.', NULL, 'Cl. 7', 'el - e emasosso, e isobbá; carbones bimasosso, basobbá, los carbo nes e bimasosso. a basobbá.', 'carbones bimasosso, basobbá, los carbo nes e bimasosso.', NULL, 'Español: carbón', 'import-espanol-bubi'),
  ('ritoatooa', 's.', 'f.', NULL, 'Cl. 5', 'la - e ritoatooa; -s batoatooa, las -s a batoatooa.', NULL, NULL, 'Español: carcajada', 'import-espanol-bubi'),
  ('tyaróm', 's.', 'f.', NULL, 'Cl. 9', 'tyélle , la - e tya róm, e tyélle; -s tyaróm, tyélle, las -es i tyaróm, i tyélle.', NULL, NULL, 'Español: cárcel', 'import-espanol-bubi'),
  ('bolobbó', 's.', 'f.', NULL, 'Cl. 3', 'la - o bolobbó; -s belobbó, las -s e belobbó.', NULL, NULL, 'Español: careta', 'import-espanol-bubi'),
  ('boritto', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOrit to, o bo''e; -s beritto, be''e, las -s e beritto, e be''e.', NULL, 'bo''e', 'Español: carga', 'import-espanol-bubi'),
  ('ebotyera', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebotyera; -s bibotyera, los -s e bibotye ra; hola - ko bóyá\10 eio.', 'hola - ko bóyá\10 eio.', NULL, 'Español: cariño', 'import-espanol-bubi'),
  ('rn', 's.', NULL, NULL, 'Cl. 5', 'rn. robetyoru, el - e robetyoru; -s bobetyoru, los -s a bobetyoru.', NULL, NULL, 'Español: carnero', 'import-espanol-bubi'),
  ('ría', 'adv.', NULL, NULL, NULL, 'el pan sale - e isoppo ré ría; los panes salen -s a basoppo be ría.', 'el pan sale - e isoppo ré ría;', NULL, 'Español: caro', 'import-espanol-bubi'),
  ('kapinta', 's.', 'm.', NULL, 'Cl. 9', 'pájaro - ripi''e, el - e kapiñta, el pájaro e ripi''e; -s kapiñta, pájaros -s api''e, los -s i kapiñta, los pájaros -s a api''e.', NULL, NULL, 'Español: carpintero', 'import-espanol-bubi'),
  ('rn', 's.', NULL, NULL, 'Cl. 7', 'rn. ekomkoolÍ1, el - e ekom koolÍ1; -s bikomkoolÍ1 (CI. 8), los -s e bikomkoolÍ1.', NULL, NULL, 'Español: carraspeo', 'import-espanol-bubi'),
  ('kárityi', 's.', 'm.', NULL, 'Cl. 9', 'el - e kárityi, el - de la compra e kárityi a riori e kárityi 388 / carta ó olla; -s kárityi (el. lO), los -s i kárityi, los -s de la compra i kárityi i á e riori.', NULL, NULL, 'Español: carro', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'el- e rihúo, i:i bonná; -s bahúo, benná, los -s a bahúo, e benná.', NULL, NULL, 'Español: cartucho', 'import-espanol-bubi'),
  ('ribállá', 's.', 'm.', NULL, 'Cl. 5', 'el- e ribállá; -s abállá, los -s a abállá.', NULL, NULL, 'Español: casamiento', 'import-espanol-bubi'),
  ('silebbó', 's.', 'm.', NULL, 'Cl. 12', 'el- e silebbó; -es ti:iJebb6, los -es o tolebb6.', NULL, NULL, 'Español: cascabel', 'import-espanol-bubi');

-- Lote 20 (entradas 476 a 500)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Ji', 's.', 'm.', NULL, 'Cl. 7', ':iba''o (el. 1 1), epatto, el- i:i li:iba''o, e epatto, el - de los vinateros o loba''o lo a baebba; -s aba''o, ipatto, los -s a aba''o, e ipatto.', NULL, NULL, 'Español: caserío', 'import-espanol-bubi'),
  ('sikápáa', 's.', 'm.', NULL, 'Cl. 12', 'árbol de la - bokápáa, la - e sikápáa, e sitebú; -s tokápáa, totebú, las-s i : i ti:ikápáa, o ti:itebú.', NULL, 'ti', 'Español: castaña', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, 'preso yo castigo al muchacho n la akka o boseseppe; paso punto ayer le castigué al muchacho mpári n bo akki o bi:iseseppe.', 'preso yo castigo al muchacho n la akka o boseseppe;', NULL, 'Español: castigar', 'import-espanol-bubi'),
  ('riakkí', 's.', 'm.', NULL, 'Cl. 5', 'el - e riakkí, e rii:ippí; -s baakkí, baoppí, los -s a baakkí, a baoppí.', NULL, NULL, 'Español: castigo', 'import-espanol-bubi'),
  ('botya''á', 's.', 'm.', NULL, 'Cl. 1', 'el - o botya''á; cataplines betya''á, los cataplines e be tya''á.', 'cataplines betya''á, los cataplines e be tya''á.', NULL, 'Español: cataplín', 'import-espanol-bubi'),
  ('bohom', 's.', 'm.', NULL, 'Cl. 3', 'el - o bohom; -s behOlÍl, los -s e behom.', NULL, NULL, 'Español: catarro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 2', '- personas batyo be b6 1a bale, - camas baatyé be b6 la bale; bi6 la biele, - plátanos bekobbe bié bi6 la biele, - poblados biriia bié bi6 la biele; n6 la nne, - animales nabba yé n6 la nne; t6 la tuele, - pájaros tonorí tué t6 la tue\e.', 'bi6 la biele, - plátanos bekobbe bié bi6 la biele, - poblados biriia bié bi6 la biele; | t6 la tuele, - pájaros tonorí tué t6 la tue\e.', NULL, 'Español: catorce', 'import-espanol-bubi'),
  ('raatyé', 's.', 'm.', NULL, 'Cl. 5', 'el - e raatyé, e saatyé; -s baatyé, saatyé, los -s a baatyé, o tuaatyé.', NULL, 'tuaatyé', 'Español: catre', 'import-espanol-bubi'),
  ('buátto', 's.', 'm.', NULL, 'Cl. 3', 'el - i:i buátto, e kunnú; -s biátto, kunnú, los -s e biátto, i kunnú. caza, s'' ¡: ebébá, - del antílope ebétyi, la - e ebébá, la - del antílope e ebétyi; -s ibébá, - del antílope ibétyi, las -s e ibébá, las -s del antílo pe e ibétyi. cerilla / 389', NULL, NULL, 'Español: cayuco', 'import-espanol-bubi'),
  ('obébá', 's.', 'm.', NULL, 'Cl. 1', 'el - o obébá, el va a la cacería o obébá a la bella ohittá; -es abébá, los -es a abébá.', NULL, NULL, 'Español: cazador', 'import-espanol-bubi'),
  ('esello', 's.', 'm.', NULL, 'Cl. 7', 'el - e esello, e ribetébéte; -s bisello, abetébéte, los -s e bisello, a abetébéte.', NULL, NULL, 'Español: cebo', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'el o bolotyi, o bolotta; -es balotyi, balotta, los -es a balotyi, a balotta.', NULL, 'bolotta', 'Español: celador', 'import-espanol-bubi'),
  ('tyélle', 's.', 'm.', NULL, 'Cl. 9', 'la - e tyélle; -s tyélle, las -s i tyélle.', NULL, NULL, 'Español: celda', 'import-espanol-bubi'),
  ('sokolityé', 'adj.', NULL, NULL, 'Cl. 12', 'el- e sokolityé;-s tokolityé, los -s o tokolityé.', NULL, NULL, 'Español: célebre', 'import-espanol-bubi'),
  ('biile''o', 's.', 'm.', NULL, 'Cl. 3', 'el - o bole''o, o bonno; -s bele''o, benno, los -s e bele''o, e benno.', NULL, 'bonno', 'Español: cementerio', 'import-espanol-bubi'),
  ('simenti', 's.', 'm.', NULL, 'Cl. 12', 'el - e simenti; -s tomenti, los -s o fomenti.', NULL, NULL, 'Español: cemento', 'import-espanol-bubi'),
  ('silebbó', 's.', 'm.', NULL, 'Cl. 12', 'el- e silebbó; -s tolebbó, los -s o tolebbó. * estar como un - (estar loco) o sá tyoppo.', NULL, NULL, 'Español: cencerro', 'import-espanol-bubi'),
  ('elopa', 's.', 'm.', NULL, 'Cl. 7', 'el - e elopa; -s bilopa, los -s e bilopa.', NULL, NULL, 'Español: cenizo', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'el - o bolotyi, o bOlotta; -s balotyi, balotta, los -s a balotyi, a balotta.', NULL, 'b', 'Español: centinela', 'import-espanol-bubi'),
  ('iteke', 's.', 'm.', NULL, 'Cl. 5', 'el- e iteke; -s bateke, los -s a bateke; el - está muy rico e ite ke rébOro sóté.', 'el - está muy rico e ite ke rébOro sóté.', NULL, 'Español: centollo', 'import-espanol-bubi'),
  ('wela', 's.', 'm.', NULL, NULL, 'en el - o bOtéllo, - ciu dad ripottó weIa.', 'en el - o bOtéllo, - ciu dad ripottó weIa.', NULL, 'Español: centro', 'import-espanol-bubi'),
  ('kuttyá', 's.', 'm.', NULL, 'Cl. 9', '- de dientes tyostíkki, - para peinarse etyiori, kónna, el - e kuttyá, el - de dientes e tyostíkki, el para peinarse e etyiori, e kónna; -s kuttyá, -s de dientes tyostíkki,-s para peinarse bityiori, kónna (el. J O), los -s i kuttyá, los -s de dientes i tyostíkki, los -s para peinarse e bityiori, i kónna.', NULL, NULL, 'Español: cepillo', 'import-espanol-bubi'),
  ('rikkí', 's.', 'm.', NULL, 'Cl. 5', '- de piedras loke''oo (el. 1 1), el- e rikkí, el- de piedras o loke''oo;-s bikkí, -s de piedras ke''oo, los -s a bikkí, los -s de piedras i ke''oo.', NULL, NULL, 'Español: cercado', 'import-espanol-bubi'),
  ('rikkí', 's.', 'm.', NULL, 'Cl. 5', 'el- e rikkí; -s bikkí, los -s a bikkí, -s de alambres bikki ba biaéa.', NULL, NULL, 'Español: cerco', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'el- e esóló; -s bisóJó, los -s e bisóló.', NULL, NULL, 'Español: cerdo', 'import-espanol-bubi');

-- Lote 21 (entradas 501 a 525)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tokko', 's.', 'm.', NULL, NULL, '(13), el- o tokko, el- huma no o tokko to bOtyo.', NULL, NULL, 'Español: cerebro', 'import-espanol-bubi'),
  ('soko', 's.', 'm.', NULL, 'Cl. 12', 'el - e soko; -s toko, los -s o toko.', NULL, NULL, 'Español: cero', 'import-espanol-bubi'),
  ('lobityo', 's.', 'm.', NULL, NULL, '(el. 1 1), el - o lobityo; -s bityo (el. 1 0), los -s i bityo.', NULL, NULL, 'Español: cerrojo', 'import-espanol-bubi'),
  ('sitúkká', 's.', 'm.', NULL, 'Cl. 12', 'el - e sitúkká; -s totúkká, los -s o totúkká.', NULL, NULL, 'Español: cesto', 'import-espanol-bubi'),
  ('sakká', 's.', 'm.', NULL, 'Cl. 12', 'el - e sakká; -s tuakká, los -s o tuakká.', NULL, NULL, 'Español: cetro', 'import-espanol-bubi'),
  ('elobalóbba', 's.', 'm.', NULL, 'Cl. 8', 'el - e elo balóbba; champiñones bilobalób ba, los champiñones e bilobalóbba.', 'champiñones bilobalób ba, los champiñones e bilobalóbba.', NULL, 'Español: champiñón', 'import-espanol-bubi'),
  ('etyubbo', 's.', 'm.', NULL, 'Cl. 7', 'el - e etyubbo; chaparrones bityubbo, los chaparrones e bityubbo.', 'chaparrones bityubbo, los chaparrones e bityubbo.', NULL, 'Español: chaparrón', 'import-espanol-bubi'),
  ('pobba', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: charlar', 'import-espanol-bubi'),
  ('tóritóri', 's.', 'm.', NULL, 'Cl. 9', 'el - e tóritóri; charlatanes tóritóri, los charlatanes i tóritóri; éste es el barrio de los charlatanes elo ká e epatto i tóritóri.', 'charlatanes tóritóri, los charlatanes i tóritóri;', NULL, 'Español: charlatán', 'import-espanol-bubi'),
  ('bóllá', 's.', 'm.', NULL, 'Cl. 1', 'el - o bollá; -es bollá , los -es a bollá.', NULL, NULL, 'Español: chaval', 'import-espanol-bubi'),
  ('bonní', 's.', 'm.', NULL, 'Cl. 9', 'tyokko, el - e bonní, e tyokko; -s bonní, tyokko, los -s i bonní, i tyokko.', NULL, NULL, 'Español: chavo', 'import-espanol-bubi'),
  ('waakká', 's.', 'm.', NULL, 'Cl. 8', 'el- o waakká; chi chones biaakká, los chichones e biaakká; chichones en la frente biaakká bi e polló.', 'chi chones biaakká, los chichones e biaakká;', NULL, 'Español: chichón', 'import-espanol-bubi'),
  ('bollá', 's.', 'm.', NULL, 'Cl. 1', 'el- o bóllá; -s bollá, los -s a bollá; los -s del pueblo a bollá bá e eriia.', 'los -s del pueblo a bollá bá e eriia.', NULL, 'Español: chico', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyoppo; -s tyoppo, los -s i tyoppo; hay muchos -s hé tyoppo hNke, hé tyoppo hNkéé ''m.', 'hay muchos -s hé tyoppo hNke, hé tyoppo hNkéé ''m.', NULL, 'Español: chiflado', 'import-espanol-bubi'),
  ('etábatábba', 's.', 'm.', NULL, 'Cl. 7', 'el- e etábatábba, e ekapátya; -s bitábatábba, bikapátya, los -s e bitábatábba, e bikapátya.', NULL, NULL, 'Español: chillido', 'import-espanol-bubi'),
  ('tatapó''a', 's.', 'm.', NULL, 'Cl. 9', 'el- e tatapó''a; -s tatapó''a (el. lO), los -s i tatapó''a.', NULL, NULL, 'Español: chimpancé', 'import-espanol-bubi'),
  ('soláe', 's.', 'm.', NULL, 'Cl. 12', 'el - e soláe; -s toláe, los -s o toláe.', NULL, NULL, 'Español: chiquillo', 'import-espanol-bubi'),
  ('ribba', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribba; -s bib ba, los -s a bibba.', NULL, NULL, 'Español: chirimiri', 'import-espanol-bubi'),
  ('bosawasawá', 's.', 'm.', NULL, 'Cl. 3', 'el- o bosa wasawá; -s besawasawá, los -s e besawa sawá.', NULL, NULL, 'Español: chirimoyo', 'import-espanol-bubi'),
  ('sityatyó', 's.', 'm.', NULL, 'Cl. 12', 'el- e sityatyó; -s totyatyó, los -s o totyatyó; los -s per judicaron al alcalde o totyatyó to haória o botúkku.', 'los -s per judicaron al alcalde o totyatyó to haória o botúkku.', NULL, 'Español: chismoso', 'import-espanol-bubi'),
  ('sityatyó', 's.', 'm.', NULL, 'Cl. 12', 'el- e sityatyó;-s totyatyó, los -s o totyatyó; eres un - we sityatyó, we totyatyó.', 'eres un - we sityatyó, we totyatyó.', NULL, 'Español: chivato', 'import-espanol-bubi'),
  ('eppí', 's.', 'm.', NULL, 'Cl. 7', 'tyítyá, el - e eppí, e epoppó; -s ippí, mpoppó, tyítyá, los -s e ippí, e mpoppó.', NULL, NULL, 'Español: chocho', 'import-espanol-bubi'),
  ('botté', 's.', 'm.', NULL, 'Cl. 3', '- del país bosappá, el - o bOtté, el - del país o bosappá; -s batté, -s del país basappá, los -s a bat té, los -s del país a basappá.', NULL, NULL, 'Español: chopo', 'import-espanol-bubi'),
  ('etyubbo', 's.', 'm.', NULL, 'Cl. 7', 'el - e etyubbo : -s bityubbo, los -s e bityubbo.', NULL, NULL, 'Español: chubasco', 'import-espanol-bubi'),
  ('sipuá', 's.', 'm.', NULL, 'Cl. 12', 'el- e sipuá; -s topuá, los -s o topuá.', NULL, NULL, 'Español: chucho', 'import-espanol-bubi');

-- Lote 22 (entradas 526 a 550)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('enokonokko', 's.', 'm.', NULL, 'Cl. 7', 'el- e enokono ko; -s binokonokko, los -s e binokonokko.', NULL, NULL, 'Español: cíclope', 'import-espanol-bubi'),
  ('eboránókko', 's.', 'm.', NULL, 'Cl. 7', 'el - e eboránokkó; -s mbOránókko, los -s e mboránókko.', NULL, NULL, 'Español: ciego', 'import-espanol-bubi'),
  ('lobákko', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o lobákko; -s bákko, los -s i bákko; los -s de mi tie rra i bákko yá e eriia m.', 'los -s de mi tie rra i bákko yá e eriia m.', NULL, 'Español: cielo', 'import-espanol-bubi'),
  ('esokólla', 's.', 'm.', 'pl.', 'Cl. 7', '- delgado biiloka lóka (Cl. 3), el- e esokólla, el- delga do o bOlokaloká; - (pI.) bisokólla, - del gados belokaloká, los - e bisokólla, los - delgados e belokaloká.', NULL, NULL, 'Español: ciempiés', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 5', 'numo (dinero) ityílla, batyílla; - casas tyóbbo yé ityílla.', NULL, NULL, 'Español: cien', 'import-espanol-bubi'),
  ('ripello', 's.', 'm.', NULL, 'Cl. 5', 'el - e ripello; -s apel lo, los -s a apello.', NULL, NULL, 'Español: cierre', 'import-espanol-bubi'),
  ('sikkiáa', 's.', 'm.', NULL, 'Cl. 12', 'el- e sikkiáa; -s tokkiáa, los -s o tokkiáa.', NULL, NULL, 'Español: cigarrillo', 'import-espanol-bubi'),
  ('sikkiáa', 's.', 'm.', NULL, 'Cl. 12', 'el - e sikkiáa; -s tokkiáa, los -s o tokkiáa. cigüeña f sikokkí, la - e sikokkí, la de la torre e sikokkí si o bosoppo; -s ilikokkí, las -s o tokokkí.', NULL, NULL, 'Español: cigarro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 4', 'numo bato (els. 2 y 6) - personas batyo bato, - alcaldes batúkku bato; beto - his torias beatta beto; bito - poblados biriia bito; tyo - sardinas kollo yé tyo; toto - antílopes tobelo tué toto.', 'beto - his torias beatta beto; | tyo - sardinas kollo yé tyo;', NULL, 'Español: cinco', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, '- per sonas batyo be batyí1la appa la bó, - poblados biriia bié batyíl1a appa la bió, etc.', NULL, NULL, 'Español: cincuenta', 'import-espanol-bubi'),
  ('birikirikki', 's.', 'm.', NULL, 'Cl. 8', 'el - e birikirikki; -s birikirikki, los -s e birikirikki.', NULL, NULL, 'Español: cine', 'import-espanol-bubi'),
  ('ebelefte', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehelefte; cinturones ihelette, mbelette, los cinturones e ibeletle, e mheliffte.', 'cinturones ihelette, mbelette, los cinturones e ibeletle, e mheliffte.', NULL, 'Español: cinturón', 'import-espanol-bubi'),
  ('ele''o', 's.', 'm.', NULL, 'Cl. 7', 'el- e ele''o;-s bile''o, los -s e bile''o; los -s de la cabaña e bile''o bi o wettya.', 'los -s de la cabaña e bile''o bi o wettya.', NULL, 'Español: círculo', 'import-espanol-bubi'),
  ('epólla', 'v.', NULL, NULL, NULL, 'preso yo cir cuncido a un niño n la epólla bóllá, n la lakaella bollá, tú circuncidas a un niño o la epólla bóllá, o la lakaella bollá, él circuncida a un niño a la epólla bóllá, a la lakaella bollá, ete., paso duro yo circuncidaba 11 epuessi, n lakaelessi, tú circuncid...', 'preso yo cir cuncido a un niño n la epólla bóllá, n la lakaella bollá, tú circuncidas a un niño o la epólla bóllá, o la lakaella bollá, él circuncida a un niño a la epólla bóllá, a la lakaella bollá, ete.', 'la', 'Español: circuncidar', 'import-espanol-bubi'),
  ('botyubbe', 's.', 'm.', NULL, 'Cl. 3', 'el- o botyubbe; -s betyubbe, los -8 e betyubbe.', NULL, NULL, 'Español: ciruelo', 'import-espanol-bubi'),
  ('itappá', 's.', 'm.', NULL, 'Cl. 5', '- de los repartidores buatuppo, - de los observadores boekká, el - e itappá, el - de los repartidores o buatuppo, el - de los observadores o boekká, -es batappá, -es de los repartidores baa tuppo, -es de los observadores baekká, los -es a batappá, los -es de los reparti dores a baatuppo, los -es de los observadores a baekká.', NULL, NULL, 'Español: clan', 'import-espanol-bubi'),
  ('nélalla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: clavar', 'import-espanol-bubi'),
  ('tokko', 's.', 'm.', NULL, 'Cl. 9', 'el- e tokko, e néri; -s tokko, néri, los -s i tokko, i néri.', NULL, NULL, 'Español: clavo', 'import-espanol-bubi'),
  ('pittóo', 's.', 'm.', NULL, 'Cl. 9', 'el - e pittóo; -es pit tóo (el. ID), los -es i pittóo.', NULL, NULL, 'Español: claxon', 'import-espanol-bubi'),
  ('pateri', 's.', 'm.', NULL, 'Cl. 9', 'el - e pateri, o bohiárúppe; -s pateri, bohiárúppe, los -s i pated, a bohiárúppe.', NULL, 'bohiárúppe', 'Español: clérigo', 'import-espanol-bubi'),
  ('bo''olla', 's.', 'm.', NULL, 'Cl. 1', 'el - o bo''olla; -s ba''olla, los -s a ba''olla.', NULL, NULL, 'Español: cliente', 'import-espanol-bubi'),
  ('bonappí', 's.', 'm.', NULL, 'Cl. 3', 'el - o bonappí; -s benappí, los -s e benappí.', NULL, NULL, 'Español: clítoris', 'import-espanol-bubi'),
  ('wallá', 's.', 'm.', NULL, 'Cl. 3', '- nocturno elekúléku, el - o wallá, el - nocturno e elekúléku; -es biallá, -es nocturnos bilekú léku, los -es e biallá, los -es nocturnos e bilekúléku.', NULL, NULL, 'Español: club', 'import-espanol-bubi'),
  ('lopatto', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o lOpatto;-s patto, los -s i patto.', NULL, NULL, 'Español: cobertizo', 'import-espanol-bubi'),
  ('lokkia', 'v.', NULL, NULL, NULL, 'preso yo cobijo al extranje r o n la lokkia o bOríbáa; paso punto el extranjero me cobijó o bonbáa a le lokkiia', 'preso yo cobijo al extranje r o n la lokkia o bOríbáa;', NULL, 'Español: cobijar', 'import-espanol-bubi');

-- Lote 23 (entradas 551 a 575)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('kokotya', 'v.', NULL, NULL, NULL, 'preso yo cuezo agua n la kokotya boppé; paso punto yo cocí el aceite n koko tyiia a biitá; paso duro yo cocía el agua salada n kokotyesiia a bo''á. coger / 393', 'preso yo cuezo agua n la kokotya boppé; | paso duro yo cocía el agua salada n kokotyesiia a bo''á.', NULL, 'Español: cocer', 'import-espanol-bubi'),
  ('motóO', 's.', 'm.', NULL, 'Cl. 3', '-s meotóO, los -s e meotóo, - de línea euláúla, -s de línea biuláúla, el - o motóo, el - de mi jefe o motóo bó mmásarh, un - turismo simotóO, el - turismo e simotóO, - grande mo tóo bOtee, emotomotóo.', NULL, NULL, 'Español: coche', 'import-espanol-bubi'),
  ('bolapá''ó', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOlapá''ó;-s balapá''ó, los -s a balapá''ó.', NULL, NULL, 'Español: cocinero', 'import-espanol-bubi'),
  ('bokóko', 's.', 'm.', NULL, 'Cl. 3', 'el o bokóko, o wakalekko; -s bekóko, bia kalekko, los -s e bekóko, e biakalekko.', NULL, 'wakalekko', 'Español: coco', 'import-espanol-bubi'),
  ('rikettá', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikettá; -s bakettá, los -s a bakettá.', NULL, NULL, 'Español: cocodrilo', 'import-espanol-bubi'),
  ('wakalekko', 's.', 'm.', NULL, 'Cl. 3', 'el- o wakalek ko; -s biakalekko, los -s e biakalekko.', NULL, NULL, 'Español: cocotero', 'import-espanol-bubi'),
  ('obeké', 's.', 'm.', NULL, 'Cl. 3', 'el- o oOOké; -s ebeké, los -s e ebeké.', NULL, NULL, 'Español: codo', 'import-espanol-bubi'),
  ('etuónná', 's.', 'm.', NULL, 'Cl. 7', 'el - e etuónná; -s bituónná, los -s e bituónná. * estar hasta el - o tyibbáa.', NULL, NULL, 'Español: cogote', 'import-espanol-bubi'),
  ('bohMmeri', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOhMmeri; -s behMmeri, los -s e behMmeri.', NULL, NULL, 'Español: coito', 'import-espanol-bubi'),
  ('botya''á', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOtya''á, o boheú; cojones betya''á, beheú, los cojones e betya''á, e beheú.', 'cojones betya''á, beheú, los cojones e betya''á, e beheú.', 'boheú', 'Español: cojón', 'import-espanol-bubi'),
  ('bosikké', 's.', 'f.', NULL, 'Cl. 3', '- de pez ebatyú, - del gallo rikká, la - o bosikké, e ri''é, la - de pez e ebatyú, la - del gallo e rikká; -s besikké, bi''é, -s de pez ibatyú, -s del gallo bikká , las -s e besikké, a bi''é, las -s de pez e ibatyú, las -s del gallo a bikká. Tb. kola.', NULL, NULL, 'Español: cola', 'import-espanol-bubi'),
  ('buéso''o', 's.', 'm.', NULL, 'Cl. 1', 'el - o buéso''o; -s béso''o, los -s a béso''o.', NULL, NULL, 'Español: colega', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 12', 'el - e sikuella; -s tokuella, los -s o tokuella.', NULL, NULL, 'Español: colegio', 'import-espanol-bubi'),
  ('bOhonno', 's.', 'm.', NULL, 'Cl. 3', 'el - o bohonno; -s behonno, los -s e behonno.', NULL, NULL, 'Español: cólera', 'import-espanol-bubi'),
  ('buttú', 's.', 'm.', NULL, 'Cl. 9', 'el- e buttú; -s buttú, los -s i buttú.', NULL, NULL, 'Español: cólico', 'import-espanol-bubi'),
  ('esokka', 's.', 'm.', NULL, 'Cl. 7', 'el - e esokka, o bototto; -es bisokka, betotto, los -es e bisokka, e betotto.', NULL, 'bototto', 'Español: collar', 'import-espanol-bubi'),
  ('botólló', 's.', 'm.', NULL, 'Cl. 3', 'el - o botólló; -s betólló, los -s e betólló.', NULL, NULL, 'Español: coloquio', 'import-espanol-bubi'),
  ('wikíra', 's.', 'm.', NULL, 'Cl. 3', 'el o wikíra, e esikiri; -s beikíra, bisikiri, los -s e beikíra, e bisikiri.', NULL, NULL, 'Español: columpio', 'import-espanol-bubi'),
  ('buéllo', 's.', 'm.', NULL, 'Cl. 3', 'el o buéllo, e rioppo; -s biéllo, baoppo, los -s e biéllo, a baoppo.', NULL, NULL, 'Español: combate', 'import-espanol-bubi'),
  ('bonya''o', 'adj.', NULL, NULL, 'Cl. 1', 'bolállo, el- o bonya''o, o bOlállo; -s banya''o, baolállo, los -s a banya''o, a baolállo.', NULL, 'b', 'Español: combatiente', 'import-espanol-bubi'),
  ('irello', 's.', 'm.', NULL, 'Cl. 5', 'el - e irello; -es barello, los -es a barello; los -es de los pobres a barello ba o tobólló.', 'los -es de los pobres a barello ba o tobólló.', NULL, 'Español: comedor', 'import-espanol-bubi'),
  ('bityolla', 'v.', NULL, NULL, NULL, 'pas. duro yo comenzaba n bi t y uessi, n papelessi, tú comenzabas o bityuessi, o papelessi, él comen zaba a bityuessi, a papelessi, etc.', NULL, 'papelessi', 'Español: comenzar', 'import-espanol-bubi'),
  ('ráa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: comer', 'import-espanol-bubi'),
  ('sáppo', 's.', 'm.', NULL, 'Cl. 12', 'el - e sáppo; -s tuáppo, los -s o tuáppo. concubina I 395', NULL, NULL, 'Español: comercio', 'import-espanol-bubi'),
  ('ometya', 'adj.', NULL, NULL, 'Cl. 1', 'el - o ometya; -s ametya, los -s a ametya.', NULL, NULL, 'Español: cómico', 'import-espanol-bubi');

-- Lote 24 (entradas 576 a 600)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bOra''', 's.', 'f.', NULL, 'Cl. 3', '6, lorá, riaka, la - o bora''6, o lorá, e riaka; -s bera''6, baaka, las -s e bera''6, a baaka, las-s ofrecidas al espíritu guardián e besi''o.', NULL, 'lorá', 'Español: comida', 'import-espanol-bubi'),
  ('laotya', 's.', 'm.', NULL, 'Cl. 9', 'rokáteri (C\. 5), euhori, el - a laotya, e paperi, e rokáteri, e euhori; -s paperi, bokáteri, biuhori, los -s i paperi, a bokáteri, e biuhori.', NULL, NULL, 'Español: comienzo', 'import-espanol-bubi'),
  ('buéso''o', 's.', 'm.', NULL, 'Cl. 1', 'el- o buéso''o, o wéso''o; -s béso''o, los-s a béso''o, mis -s de trabajo a béso''o rÍl bá e elak6.', NULL, 'wéso''o', 'Español: compañero', 'import-espanol-bubi'),
  ('ehánaeri', 's.', 'f.', NULL, 'Cl. 7', 'la - e ehánae ri; -s bihánaeri, las -s e bihá naeri.', NULL, NULL, 'Español: competencia', 'import-espanol-bubi'),
  ('OO''olla', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bo''olla; -es ba''olla, los -es a ba''olla.', NULL, NULL, 'Español: comprador', 'import-espanol-bubi'),
  ('sakká', 's.', 'm.', NULL, 'Cl. 12', 'el - e sakká; -s tuakká, los -s o tuakká.', NULL, NULL, 'Español: comprimido', 'import-espanol-bubi'),
  ('ebeh', 's.', 'm.', NULL, 'Cl. 7', '�ra, el- e ebelera; -s ibelera, los -s e ibelera.', NULL, NULL, 'Español: compromiso', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', '-s betákko, los -s e betákko.', NULL, NULL, 'Español: comunicado', 'import-espanol-bubi'),
  ('sétya', 'v.', NULL, NULL, NULL, 'preso tú concluyes tu his toria o la sétya o OOatta 6; paso punto he concluido n ka sétyiia, no he con cluido n té sétya.', 'preso tú concluyes tu his toria o la sétya o OOatta 6;', NULL, 'Español: concluir', 'import-espanol-bubi'),
  ('pa''á', 's.', 'f.', NULL, 'Cl. 9', 'la - e pa''á; -s pa''á, las -8 i pa''á. 396 I concurso', NULL, NULL, 'Español: concubina', 'import-espanol-bubi'),
  ('looppo', 's.', 'm.', NULL, 'Cl. 11', 'el- o looppo; -s koppo, los -s i koppo.', NULL, NULL, 'Español: concurso', 'import-espanol-bubi'),
  ('akio', 's.', 'f.', NULL, 'Cl. 7', 'la - e akio, e riakkí; -s biakio, baakkí, las -s e biakio, a baakí.', NULL, NULL, 'Español: condena', 'import-espanol-bubi'),
  ('abbiáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: condenar', 'import-espanol-bubi'),
  ('tyutyúra', 'v.', NULL, NULL, NULL, 'Expr. yo conduzco tu coche n la tyutyúra o motóo o, yo no conduzco tu coche n tyá la tyutyúra o motóO o.', NULL, NULL, 'Español: conducir', 'import-espanol-bubi'),
  ('bokólla', 's.', 'm.', NULL, 'Cl. 1', 'el- o bokólla; -es bokólla, los -es a bokólla; el- del autobús conduce bien o bokólla bO e rikotye a la tyutyúra lelle.', 'el- del autobús conduce bien o bokólla bO e rikotye a la tyutyúra lelle.', NULL, 'Español: conductor', 'import-espanol-bubi'),
  ('sirábette', 's.', 'm.', NULL, 'Cl. 12', 'el- e sirábette; -s torábeUe, los -s o torábette.', NULL, NULL, 'Español: conejo', 'import-espanol-bubi'),
  ('betólla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: confesar', 'import-espanol-bubi'),
  ('esapá', 's.', 'm.', NULL, 'Cl. 7', 'el- e esapá; -s bisapá, los -s e bisapá.', NULL, NULL, 'Español: conflicto', 'import-espanol-bubi'),
  ('etohó', 's.', 'm.', NULL, 'Cl. 7', '- de los diputados e inMa ri a bariariia, el - e etohó, e koperi; -s bitohó, koperi, los -s e bitohó, i koperi.', NULL, NULL, 'Español: congreso', 'import-espanol-bubi'),
  ('rikótto', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikótto; -s bakótto, los -s a bakótto.', NULL, NULL, 'Español: conjunto', 'import-espanol-bubi'),
  ('buétáa', 's.', 'm.', NULL, 'Cl. 3', 'el - o buétáa, o bolebóri; -s biétáa, belebóri, los -s e biétáa, e belebóri.', NULL, 'bolebóri', 'Español: conocimiento', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'el- o bohuel la; -s bahuella, los -s e bahuella. ·', NULL, NULL, 'Español: consejero', 'import-espanol-bubi'),
  ('re''a', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: consolar', 'import-espanol-bubi'),
  ('báa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: construir', 'import-espanol-bubi'),
  ('rite''í', 's.', 'm.', NULL, 'Cl. 5', 'el- e rite''í; -s bate''í, los -s a bate''í.', NULL, NULL, 'Español: consuelo', 'import-espanol-bubi');

-- Lote 25 (entradas 601 a 625)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rikatto', 's.', 'm.', NULL, 'Cl. 5', '- de cuento bosabóatta, - de historia bosabóat ta, el- e rikatto, o bosá, el- de cuento o b iisabóatta, el - de historia o bosabóatta; -es bakatto, basá, -es de cuento basa bóatta, -es de historia basabóatta; los -es a bakatto, a basá, los -es de cuento a basabóatta, los -es de historia a basabóatta.', 'los -es a bakatto, a basá, los -es de cuento a basabóatta, los -es de historia a basabóatta.', 'bosá', 'Español: contador', 'import-espanol-bubi'),
  ('re''áeri', 's.', 'm.', NULL, 'Cl. 5', 'el - e re''áeri; -s be''áeri, los -s a be''áeri.', NULL, NULL, 'Español: contagio', 'import-espanol-bubi'),
  ('notella', 'v.', NULL, NULL, NULL, 'preso los visitantes contemplan la salida del sol e beheppoo be lá ekkáa e ripurí ri e itohí; paso punto yo contem plé el ir rmamento n ekkíi o lobákko.', 'preso los visitantes contemplan la salida del sol e beheppoo be lá ekkáa e ripurí ri e itohí;', NULL, 'Español: contemplar', 'import-espanol-bubi'),
  ('ribetté', 's.', 'm.', NULL, 'Cl. 5', 'luarí (el. 1 1), de basura ribetté rá buía, el - e ribetté, o luari, el - de basura e ribetté rá buía; -es abetté, kuarí, -es de basura abetté bá buía, los -es a abetté, i kuarí, los -es de basura a abetté bá buía.', NULL, 'luari', 'Español: contenedor', 'import-espanol-bubi'),
  ('bi', 's.', 'm.', NULL, 'Cl. 1', ':iebba, el - o boebba; -s baebba, los -s a baebba. contestación, s''¡: botubáero, la - o botu báero; contestaciones betubáero, las con testaciones e betubáero.', 'contestaciones betubáero, las con testaciones e betubáero.', NULL, 'Español: contertulio', 'import-espanol-bubi'),
  ('luari', 's.', 'm.', NULL, 'Cl. 11', 'el- o luarí, el africano o luari lo e Áfrikka, o bobba bo e Áfrikka; -s kuari, beobba, los -s i kuari.', NULL, 'bobba', 'Español: continente', 'import-espanol-bubi'),
  ('petta', 'v.', NULL, NULL, NULL, 'o petta (buekka);pres. mi abue lo contraría siempre a su hijo o boyólla rh a la petta la o bóllá áí buekka tyommaa.', NULL, NULL, 'Español: contrariar', 'import-espanol-bubi'),
  ('ebelera', 's.', 'm.', NULL, 'Cl. 7', '- de arrendamien to ebeléra a ribóra, el - e ebelera, el de arrendamiento e ebelera a ribóra; -s ibelera, -s de arrendamiento ibelera i a ribóra, los -s e ibele r a, los -s de arrendamiento e ibelera i a ribóra.', NULL, NULL, 'Español: contrato', 'import-espanol-bubi'),
  ('lotta', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: controlar', 'import-espanol-bubi'),
  ('bobbáa', 'v.', NULL, NULL, NULL, 'pas. duro yo convencía a los tra bajadores n bobessi a balakóláko, tú convencías a los policías o bobessi e iporoporo, etc.', NULL, NULL, 'Español: convencer', 'import-espanol-bubi'),
  ('ehattá', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehattá; -s bihattá, los -s e bihattá.', NULL, NULL, 'Español: convenio', 'import-espanol-bubi'),
  ('hekkáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: convidar', 'import-espanol-bubi'),
  ('kompite', 's.', 'm.', NULL, 'Cl. 9', 'el - e kompite; -s k ompite (el. lO), los -s i kompite.', NULL, NULL, 'Español: convite', 'import-espanol-bubi'),
  ('konyákko', 's.', 'm.', NULL, 'Cl. 9', 'el - e konyákko; -s konyákko (el. lO), los -s i konyákko. * una botella de - bokonyákko.', NULL, NULL, 'Español: coñac', 'import-espanol-bubi'),
  ('eppí', 's.', 'm.', NULL, 'Cl. 7', 'el - e eppí, e tyítyá; -s ippí, tyítyá (el. l O), los -s e ippí; mi calle está en el quinto - o bokóo rh bo lá otótto.', 'mi calle está en el quinto - o bokóo rh bo lá otótto.', NULL, 'Español: coño', 'import-espanol-bubi'),
  ('kobaera', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: copiar', 'import-espanol-bubi'),
  ('etébbá', 's.', 'm.', NULL, 'Cl. 7', 'el - e etébbá; -s bitébbá (Cl. 8), los -s e bitébbá.', NULL, NULL, 'Español: coraje', 'import-espanol-bubi'),
  ('bOtébbá', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOtébbá; cora zones betébbá, los corazones e betébbá.', 'cora zones betébbá, los corazones e betébbá.', NULL, 'Español: corazón', 'import-espanol-bubi'),
  ('irullo', 's.', 'm.', NULL, 'Cl. 5', 'el - e irullo; -s barul lo, los -s a barullo.', NULL, NULL, 'Español: corcho', 'import-espanol-bubi'),
  ('sisorí', 's.', 'm.', NULL, 'Cl. 12', 'el- e sisorí; -es toso rí, los -es o tosorí.', NULL, NULL, 'Español: cordel', 'import-espanol-bubi'),
  ('sityoru', 's.', 'm.', NULL, 'Cl. 12', 'el - e sityoru; -s totyoru, los -s o totyoru. * - de Dios si tyoru sa ruppé.', NULL, NULL, 'Español: cordero', 'import-espanol-bubi'),
  ('bOsorí', 's.', 'm.', NULL, 'Cl. 3', '- umbilical bokóru, el - o bOsorí, el - umbilical o bokóru; cordones besorí, cordones umbilicales beokóru, los cordones e besorí, los cor dones umbilicales e beokóru.', 'cordones besorí, cordones umbilicales beokóru, los cordones e besorí, los cor dones umbilicales e beokóru.', NULL, 'Español: cordón', 'import-espanol-bubi'),
  ('húbbia', 'v.', NULL, NULL, NULL, 'criado / 399,', NULL, NULL, 'Español: correr', 'import-espanol-bubi'),
  ('epólla', 'v.', NULL, NULL, NULL, 'o tatáa,', NULL, NULL, 'Español: cortar', 'import-espanol-bubi'),
  ('eaó', 's.', 'm.', NULL, 'Cl. 7', '- de pelo botyi''ori, - de la palmera ebákko, el- e eaó, e tobbó, el- de pelo o bOtyi''o ri, el - de la palmera e ebákko; -s biaó, tobbó, -s de pelo betyi''ori, -s de la palmera ibákko, los -s e biaó, i tobbO, los -s de pelo e betyi''ori, los -s de la palmera e ibákko.', NULL, NULL, 'Español: corte', 'import-espanol-bubi');

-- Lote 26 (entradas 626 a 650)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('wakóo', 's.', 'm.', NULL, 'Cl. 3', 'el o wakóO, e sisula; coscorrones biakóo, ttisula, los coscorrones e biakoo, o tosula.', 'coscorrones biakóo, ttisula, los coscorrones e biakoo, o tosula.', 'tosula', 'Español: coscorrón', 'import-espanol-bubi'),
  ('riari', 's.', 'f.', NULL, 'Cl. 5', '. - de dátiles riari, la - e riari, la - de dátiles e riari; -s baari, -s de dátiles baari, las -s a baari, las -s de dátiles a baari.', NULL, NULL, 'Español: cosecha', 'import-espanol-bubi'),
  ('pattáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: cosechar', 'import-espanol-bubi'),
  ('sóa', 'v.', NULL, NULL, NULL, 'preso yo coso mi camisa n la sóa e sótte ro; paso punto la donce lIa cosió su vestido o bulla a sój o luua lo áí; paso duro los hombres cosían sus macutos a baje ba sóessi a bOttó ba ábó.', 'preso yo coso mi camisa n la sóa e sótte ro; | paso duro los hombres cosían sus macutos a baje ba sóessi a bOttó ba ábó.', NULL, 'Español: coser', 'import-espanol-bubi'),
  ('silabba', 's.', 'f.', NULL, 'Cl. 12', 'la - e silabba, e sollé; -s tolabba, tollé (el. 1 3), las -s o tolabba, o tollé.', NULL, 'tollé', 'Español: cosita', 'import-espanol-bubi'),
  ('eessó', 's.', 'f.', NULL, 'Cl. 7', 'la - e eessó; -s biessó, las -s e bjessó.', NULL, NULL, 'Español: costa', 'import-espanol-bubi'),
  ('sá', 'v.', NULL, NULL, NULL, 'pres. el pan cues ta caro e isoppo ré ría, la vida cuesta e ribOtyo ré to''ú; paso punto esta casa costó caro eló tyób bo e séi ría.', 'pres. | paso punto esta casa costó caro eló tyób bo e séi ría.', NULL, 'Español: costar', 'import-espanol-bubi'),
  ('bohNnó', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOhNnó; -s behNnó, las -s e behNnó.', NULL, NULL, 'Español: costumbre', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 13', 'como sityatyó (el. 1 2), el- e sityatyó;-s totyatyó, los -s o totyatyó.', NULL, NULL, 'Español: cotilla', 'import-espanol-bubi'),
  ('bOkákálló', 's.', 'm.', NULL, 'Cl. 3', 'el o bOkákálló, e epóppti; -s bekákálIó, ipóppo, los -s e bekákálIó, e ipóppo.', NULL, NULL, 'Español: cráneo', 'import-espanol-bubi'),
  ('báa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: crear', 'import-espanol-bubi'),
  ('biitá', 's.', 'f.', NULL, 'Cl. 6', 'la - a biitá; -s biitá, las -s a biitá.', NULL, NULL, 'Español: crema', 'import-espanol-bubi'),
  ('ltitáppa', 's.', 'f.', NULL, 'Cl. 10', '(el. 1 1), la - o lotáppa, la - de la ola o bOebba puá; -s táppa, las -s i táppa.', NULL, NULL, 'Español: cresta', 'import-espanol-bubi'),
  ('bokóllé', 's.', 'm.', NULL, 'Cl. 1', 'bOkóé, el- o bokóllé, o botákkí, o bokóé; -s bakóllé, batákkí, bakóé, los -s a bakóllé, a batákkí, a bakóé. 400 / crianza', NULL, 'botákkí, bokóé', 'Español: criado', 'import-espanol-bubi'),
  ('bópáa', 'v.', NULL, NULL, NULL, 'preso la gaUina cría a sus pollitos e karió''e e lá bópáa o toko''e to áe; paso punto este hombre no crió a su hijo oló boie a ta bópíi o bóllá áí roló bOie ata bópio bolááí].', 'preso la gaUina cría a sus pollitos e karió''e e lá bópáa o toko''e to áe;', NULL, 'Español: criar', 'import-espanol-bubi'),
  ('bóllá', 's.', 'm.', NULL, 'Cl. 1', 'el - o bóllá; -s bóllá, los -s a bóllá.', NULL, NULL, 'Español: crio', 'import-espanol-bubi'),
  ('bokirió', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOkirió; -s bakirió, los -s a bakirió.', NULL, NULL, 'Español: criollo', 'import-espanol-bubi'),
  ('biileppo', 's.', 'm.', NULL, 'Cl. 3', 'trozo de - epóteri, el - o boleppo, el trozo de - e epóteri; -es beleppo, trozos de -es mpóteri, los -es e beleppo, los trozos de -es e mpóteri.', NULL, NULL, 'Español: cristal', 'import-espanol-bubi'),
  ('tyuappó', 's.', 'm.', NULL, 'Cl. 13', 'el - o tyuappó; -s t yuappa, los -s o tyuappa.', NULL, NULL, 'Español: cruce', 'import-espanol-bubi'),
  ('kurússu', 's.', 'm.', NULL, 'Cl. 9', 'el - e kurússu; -s kurússu, los -s i kurússu.', NULL, NULL, 'Español: crucifijo', 'import-espanol-bubi'),
  ('epa''i', 's.', 'm.', NULL, 'Cl. 7', 'el- e epa''i; -s ipa''i, los -s e ipa''L cuánto, int. abe''e (els. 2 y 6) ¿- gente hay aquí? he batyo abe''e hállo?, ebe''e ¿-s plátanos quieres? o la na''a bekobbe ebe''e?, ibe''e ¿-s pueblos hay? he biriia ibe''e?, be''e ¿-s sardinas hay en la charca? he kollo be''e e erib ba wela?, tobe''e ¿-s cuentos me vas a contar? o la le sella toatta tobe''e?, labe''e (todas las clases) ¿- cuesta esta carne? ele nabba...', NULL, NULL, 'Español: cuadro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 7', '- personas batyo be batyílla appa. cuarto, 1. etubá, - de baño isubbó, - de aseo koppí, el - e etubá, el - de baño e isubbó, el - de aseo e koppí; -s bitubá, -s de baño basubbó, -s de aseo koppí, los - e bitubá, los -s de baño a basubbó, los -s de aseo i koppí. 2. ardo bale (Cls. 2 y 6) la cuarta persona o botyo a bále, la cuarta cama e raatyé ri a bale; biele la cuarta hist...', 'biele la cuarta hist.', NULL, 'Español: cuarenta', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, 'Cl. 4', 'numo bale (els. 2 y 6) - personas batyo be bale, - camas baatyé be bale; biele - historias beatta bié biele; bile - poblados biriia bié bile; une - vestidos kuua yé nne; tuele - cuen tos toatta tué tuele.', 'biele - historias beatta bié biele; | une - vestidos kuua yé nne;', NULL, 'Español: cuatro', 'import-espanol-bubi'),
  ('numo', 'adj.', NULL, NULL, NULL, 'numo (dinero) batyílla bale.', NULL, NULL, 'Español: cuatrocientos', 'import-espanol-bubi'),
  ('rikattó', 's.', 'm.', NULL, 'Cl. 5', 'tampulla, el- e rikattó, e kappa, e tampul la; -s bakattó, kappa, tampulla, los -s a bakattó, i kappa, i tampulla.', NULL, NULL, 'Español: cubilete', 'import-espanol-bubi');

-- Lote 27 (entradas 651 a 675)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ehao', 's.', 'm.', NULL, 'Cl. 7', 'ekítollo, el - e ehao, e ehá, e ekítollo; -s bihao, bihá, hi kítollo, los -s e bihao, e bihá, e bikí tollo.', NULL, NULL, 'Español: cubo', 'import-espanol-bubi'),
  ('boassó', 's.', 'm.', NULL, 'Cl. 3', 'el - o boassó; -s beassó, los -s e beassó.', NULL, NULL, 'Español: cubrecama', 'import-espanol-bubi'),
  ('hNko', 's.', 'm.', NULL, 'Cl. 9', 'el - e hNko; -s hNko, los -s i hNko.', NULL, NULL, 'Español: cuello', 'import-espanol-bubi'),
  ('siatta', 's.', 'm.', NULL, 'Cl. 12', 'el- e siatta; -s toatta, los -s o toatta.', NULL, NULL, 'Español: cuento', 'import-espanol-bubi'),
  ('lue''a', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1), el - o lue''a; -s be''a, los -s a be''a.', NULL, NULL, 'Español: cuerno', 'import-espanol-bubi'),
  ('kaákaá', 's.', 'm.', NULL, 'Cl. 9', 'el- e kaá kaá, e i ka''á; -s kaákaá, ka''á, los -s i kaákaá, i ka''á.', NULL, NULL, 'Español: cuervo', 'import-espanol-bubi'),
  ('pelta', 'v.', NULL, NULL, NULL, 'o pelta buekka.', NULL, NULL, 'Español: cuestionar', 'import-espanol-bubi'),
  ('losoo', 's.', 'm.', NULL, 'Cl. 11', 'el - o losóo; -s kosóo, los -s i kosóo.', NULL, NULL, 'Español: culo', 'import-espanol-bubi'),
  ('bo''o', 's.', 'm.', NULL, 'Cl. 1', 'el - o bo''o; -s bo''o, los -s a bo''o.', NULL, NULL, 'Español: cuñado', 'import-espanol-bubi'),
  ('bosella', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosella, o bohiammo; -s basella, bohiammo, los -s a basella, a bohiammo.', NULL, 'bohiammo', 'Español: curandero', 'import-espanol-bubi'),
  ('bolotta', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOlotta, o bolotyi, el - de la lengua bubi o bOlotta o lotólló lo etyo; -s balot ta, balotyi, los -s a baIotta, a balotyi.', NULL, 'bolotyi', 'Español: custodio', 'import-espanol-bubi'),
  ('sityatyá', 's.', 'm.', NULL, 'Cl. 12', 'el - e sityatyá, e tyatyá; -s totyatyá, tyatyá (el. 1 0), los -s o totyatyá, i tyatyá.', NULL, NULL, 'Español: dado', 'import-espanol-bubi'),
  ('roppá', 's.', 'm.', NULL, 'Cl. 5', 'el - e roppá; -s boppá, los -s a boppá; me haces - o la le ó''ia roppá.', 'me haces - o la le ó''ia roppá.', NULL, 'Español: daño', 'import-espanol-bubi'),
  ('botyikka', 's.', 'm.', NULL, 'Cl. 3', 'el - o botyikka; -s betyikka, los -s ti betyikka.', NULL, NULL, 'Español: dardo', 'import-espanol-bubi'),
  ('narnmo', 's.', 'm.', NULL, 'Cl. 9', 'el- e námmo, e pillá; -es narnmo (el. lO), pillá, los -es i narnmo, i pillá. de, caneco a, e; el pueblo - los hom bres ti eriia a baie, persona -1 mis mo pueblo botyo a ti eriia.', 'el pueblo - los hom bres ti eriia a baie, persona -1 mis mo pueblo botyo a ti eriia.', NULL, 'Español: dátil', 'import-espanol-bubi'),
  ('onno', 'adv.', NULL, NULL, 'Cl. 9', '*atá (efr. bubi); el hombre está - de la cama o bOie a la e raatyé atá. deber, 1. mpo, el- e mpo; -es mpo, los -es i mpo. 2. o hOálla,', 'el hombre está - de la cama o bOie a la e raatyé atá.', NULL, 'Español: debajo', 'import-espanol-bubi'),
  ('obottó', 'adj.', NULL, NULL, 'Cl. 3', 'el - o obottó; -es abóttó, los -es a abottó.', NULL, NULL, 'Español: débil', 'import-espanol-bubi'),
  ('lokolla', 'v.', NULL, NULL, NULL, 'preso me debilito n la lokolla, te debilitas o la lokolla, se debilita a la lokolla, etc.; paso punto me debilité n lokori, te debilitaste o lokori, se debilitó a lokori, etc.; paso duro me debilitaba n lokolessi, te debilita bas o lokolessi, se debilitaba a lokolessi, etc.', 'preso me debilito n la lokolla, te debilitas o la lokolla, se debilita a la lokolla, etc. | paso punto me debilité n lokori, te debilitaste o lokori, se debilitó a lokori, etc. | paso duro me debilitaba n lokolessi, te debilita bas o lokolessi, se debilitaba a lokolessi, etc.', NULL, 'Español: debilitarse', 'import-espanol-bubi'),
  ('epólla', 'v.', NULL, NULL, NULL, 'paso duro las personas de antaño decapitaban a los blancos a batyo ba rnmalé ba epuessi i hNko i á apotto.', 'paso duro las personas de antaño decapitaban a los blancos a batyo ba rnmalé ba epuessi i hNko i á apotto.', NULL, 'Español: decapitar', 'import-espanol-bubi'),
  ('buelláa', 'v.', NULL, NULL, NULL, 'o héttáa, o oháa, ¿qué dices? ká o la oháa le?, ¿qué has...', NULL, 'héttáa, oháa', 'Español: decir', 'import-espanol-bubi'),
  ('botó''ia', 's.', 'm.', NULL, 'Cl. 3', 'el - o botó''ia; -s betó''ia, los -s e betó''ia.', NULL, NULL, 'Español: decoro', 'import-espanol-bubi'),
  ('bone', 's.', 'm.', NULL, 'Cl. 3', '- del pie bonessú, el - o boné, el - del pie o bOnessú; -s bene, -s del pie benessú, los -s e bene, los -s del pie e benessú.', NULL, NULL, 'Español: dedo', 'import-espanol-bubi'),
  ('elebbáa', 's.', 'm.', NULL, 'Cl. 7', 'el - e elebbáa; -s bilebbáa, los -s e bilebbáa.', NULL, NULL, 'Español: defecto', 'import-espanol-bubi'),
  ('bulaella', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: defender', 'import-espanol-bubi'),
  ('oburó', 's.', 'm.', NULL, 'Cl. 1', 'el - o oburó; -s aburó, los -s a aburó.', NULL, NULL, 'Español: defendido', 'import-espanol-bubi');

-- Lote 28 (entradas 676 a 700)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribuéi', 's.', 'm.', NULL, 'Cl. 5', 'la e ribuéi, e riwéi; defunciones abuéi, awéi, las defunciones a abuéi, a awéi.', 'defunciones abuéi, awéi, las defunciones a abuéi, a awéi.', NULL, 'Español: defunción', 'import-espanol-bubi'),
  ('tyi''a', 'v.', NULL, NULL, NULL, '2. - para alguien o tyíella, paso punto yo dejé una noticia para la gente n tyíeri a batyo bOatta, tú me dejaste tiempo o le tyí...', NULL, NULL, 'Español: dejar', 'import-espanol-bubi'),
  ('bOsuállo', 's.', 'm.', NULL, 'Cl. 3', '- de *álo; - de mi casa e tyóbbo rÍl álo, - del coche o motóO álo.', NULL, NULL, 'Español: delante', 'import-espanol-bubi'),
  ('rikora', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: delatar', 'import-espanol-bubi'),
  ('bOtákko', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOtákko; -s batákko, los -s a batákko; el- del gobierno o bOtákko bO e kobinna.', 'el- del gobierno o bOtákko bO e kobinna.', NULL, 'Español: delegado', 'import-espanol-bubi'),
  ('boroo', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOroo; -s heroo, los -s e beroo.', NULL, NULL, 'Español: deleite', 'import-espanol-bubi'),
  ('eposso', 's.', 'm.', NULL, 'Cl. 7', 'el- e eposso; delfines mposso, los delfines e mposso; a los niños les gustan los delfines a bollá bá horíi e mposso.', 'delfines mposso, los delfines e mposso;', NULL, 'Español: delfín', 'import-espanol-bubi'),
  ('losikko', 's.', 'f.', NULL, 'Cl. 3', '(el. 1 1), bosikkí, la - o losikko, o bosikkí; -ces besikko, besikkí, las -ces e besikko, e besikkí.', NULL, 'bosikkí', 'Español: delgadez', 'import-espanol-bubi'),
  ('tyoppo', 's.', 'f.', NULL, 'Cl. 9', 'la - e tyoppo, o botyoppo; -s tyoppo, betyoppo, las -s i tyoppo, e betyoppo.', NULL, 'botyoppo', 'Español: demencia', 'import-espanol-bubi'),
  ('tyoppo', 'adj.', NULL, NULL, 'Cl. 9', 'el - e tyoppo; -s tyoppo (el. lO), los -s i tyoppo.', NULL, NULL, 'Español: demente', 'import-espanol-bubi'),
  ('halla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: demoler', 'import-espanol-bubi'),
  ('mmo', 's.', 'm.', NULL, 'Cl. 1', 'el- o mmo; -s bibbó, los -s a bibbo; el - del pueblo o mmo á e eriia.', 'el - del pueblo o mmo á e eriia.', NULL, 'Español: demonio', 'import-espanol-bubi'),
  ('tappáa', 'v.', NULL, NULL, NULL, 'o tappáa.; pas punto yo demostré n tappíi, tú demostraste o tappíi, etc.;', 'pas punto yo demostré n tappíi, tú demostraste o tappíi, etc.', NULL, 'Español: demostrar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 6', 'la - a bello.', NULL, NULL, 'Español: dentadura', 'import-espanol-bubi'),
  ('oarnmo', 'adv.', NULL, NULL, NULL, '- de buela; *wela (Cji: bubi). o oballa,', NULL, NULL, 'Español: dentro', 'import-espanol-bubi'),
  ('bole''o', 's.', 'm.', NULL, 'Cl. 1', 'el- o bole''o;-s bale''o, los -s a bale''o.', NULL, NULL, 'Español: depositario', 'import-espanol-bubi'),
  ('rileppo', 's.', 'm.', NULL, 'Cl. 5', '- de cadáver es ileppé (CI. 5), el- e rileppo, el- de cadáveres e ileppé;-s baleppo, -s de cadáveres baleppé, los - s a baleppo, los -s de cadáveres a baleppé.', NULL, NULL, 'Español: depósito', 'import-espanol-bubi'),
  ('bakasso', 'adv.', NULL, NULL, NULL, 'esta persona habla - OIó botyo a la to''ólla bakasso.', 'esta persona habla - OIó botyo a la to''ólla bakasso.', NULL, 'Español: deprisa', 'import-espanol-bubi'),
  ('esootyi', 's.', 'm.', NULL, 'Cl. 7', 'el- e esootyi; -s bisootyi, los -s e bisootyi.', NULL, NULL, 'Español: derecho', 'import-espanol-bubi'),
  ('púlláa', 'v.', NULL, NULL, NULL, 'el cansancio deriva del trabajo o botyibíi bo lá puella e elakó.', 'el cansancio deriva del trabajo o botyibíi bo lá puella e elakó.', NULL, 'Español: derivar', 'import-espanol-bubi'),
  ('tó''', 'v.', NULL, NULL, NULL, 'pres. nosotros derrotamos a los militares to la tó''a a abitábítta. paso punto mis abuelos derrotaron a los bueyes a bayólla m ba tó''i i pókkó.', 'pres.', NULL, 'Español: derrotar', 'import-espanol-bubi'),
  ('telle', 's.', 'm.', NULL, 'Cl. 9', 'el - e telle; -s telle, los -s i telle.', NULL, NULL, 'Español: derrotero', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, 'pres. este hombre desa cierta siempre oló bOie a la itta tyommaa; paso punto el gobierno ha desacertado e kóbinna e ityi.', 'paso punto el gobierno ha desacertado e kóbinna e ityi.', NULL, 'Español: desacertar', 'import-espanol-bubi'),
  ('eityi', 's.', 'm.', NULL, 'Cl. 7', 'el - e eityi; -s biityi, los -s e biityi.', NULL, NULL, 'Español: desacierto', 'import-espanol-bubi'),
  ('tobálera', 'v.', NULL, NULL, NULL, 'preso yo te desafio n la o tobálera, yo no te desafio n tyi''a la o tobálera, no me desafies we le tobálere.', 'preso yo te desafio n la o tobálera, yo no te desafio n tyi''a la o tobálera, no me desafies we le tobálere.', NULL, 'Español: desafiar', 'import-espanol-bubi');

-- Lote 29 (entradas 701 a 725)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buelálabbé', 'adj.', NULL, NULL, 'Cl. 1', '), el o buelálabbé; -s belálabbé, los -s a belá labbé.', NULL, NULL, 'Español: desafortunado', 'import-espanol-bubi'),
  ('lopello', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o lopello; -s pello, los -s i pello.', NULL, NULL, 'Español: desaire', 'import-espanol-bubi'),
  ('solla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: desasir', 'import-espanol-bubi'),
  ('ehatto', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehatto; -s bihatto, los -s e bihatto; damos por la mañana to la páa ehatto e ebari; - incluido chatto léso''o.', 'damos por la mañana to la páa ehatto e ebari;', NULL, 'Español: desayuno', 'import-espanol-bubi'),
  ('kokoppé', 's.', 'm.', NULL, 'Cl. 9', 'el - e kokop pé; -s kokoppé, los -s i kokoppé.', NULL, NULL, 'Español: desazonado', 'import-espanol-bubi'),
  ('ba''a', 'v.', NULL, NULL, NULL, 'pres. yo desbasto la pal mera n la ba''a o obílla; pas. punto yo desbasté la palmera n ba''i o obílla; pas. duro yo desbastaba el bambú n ba''essi o botyerú.', 'pas. | pas.', NULL, 'Español: desbastar', 'import-espanol-bubi'),
  ('epapara', 's.', 'm.', NULL, 'Cl. 7', 'el - e epapara, e ekóri; -s mpa para, bikóri, los -s e mpapara, e bikóri.', NULL, NULL, 'Español: desbroce', 'import-espanol-bubi'),
  ('hobbá', 'v.', NULL, NULL, NULL, 'pres. yo des brozo la parcela n la hobbá e eyári, tú desbrozas tu finca o la hObbá o buáám ó; paso punto yo desbrocé el camino n hObbí e telle, tú des brozasté el bosque o hobbí e ehobbá.', 'paso punto yo desbrocé el camino n hObbí e telle, tú des brozasté el bosque o hobbí e ehobbá.', NULL, 'Español: desbrozar', 'import-espanol-bubi'),
  ('hetyólla', 'v.', NULL, NULL, NULL, 'preso yo descalzo al niño nne n la hetyólla o bóllá i sússu.', 'preso yo descalzo al niño nne n la hetyólla o bóllá i sússu.', NULL, 'Español: descalzar', 'import-espanol-bubi'),
  ('boebbó', 's.', 'm.', NULL, 'Cl. 3', 'lohebbó (el. 1 1), riebba, el- o ooebbó, e eheberi, o lohebbó, e riebba; -s beebbó, biheberi, bahebbó, baebba, los -s e beebbó, e biheberi, a bahebbó, a baebba; el - eterno o lohebbó lo a tyommaa.', 'el - eterno o lohebbó lo a tyommaa.', 'lohebbó', 'Español: descanso', 'import-espanol-bubi'),
  ('íhóra', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: descargar', 'import-espanol-bubi'),
  ('bobora', 's.', 'm.', NULL, 'Cl. 1', 'el - o bObo ra; -s babora, los -s a babora.', NULL, NULL, 'Español: descendiente', 'import-espanol-bubi'),
  ('esotyo', 's.', 'm.', NULL, 'Cl. 7', 'losootyo (el. 1 1); el- e esotyo; -s bisotyo, besootyo, los -s e bisotyo.', 'el- e esotyo;', NULL, 'Español: descenso', 'import-espanol-bubi'),
  ('nélolla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: desclavar', 'import-espanol-bubi'),
  ('betélolla', 'v.', NULL, NULL, NULL, 'todo el mundo desconfia del gobierno a batyo ba mmaa ba lá betélolla e kobinna.', NULL, NULL, 'Español: desconfiar', 'import-espanol-bubi'),
  ('ripukké', 's.', 'm.', NULL, 'Cl. 5', 'el - e ripukké; desdenes apukké, bakupí, los -s a apukké.', 'desdenes apukké, bakupí, los -s a apukké.', NULL, 'Español: desdén', 'import-espanol-bubi'),
  ('eborábéllo', 'adj.', NULL, NULL, 'Cl. 7', 'el - e ebo rábéllo; -s iborábéllo, los -s e iborábéllo.', NULL, NULL, 'Español: desdentado', 'import-espanol-bubi'),
  ('kuppia', 'v.', NULL, NULL, NULL, '410 / desdicha', NULL, NULL, 'Español: desdeñar', 'import-espanol-bubi'),
  ('hótolla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: desdoblar', 'import-espanol-bubi'),
  ('hOlláa', 'v.', NULL, NULL, NULL, 'o elella, pos. punto yo deseé n horí, 1 1 na''i, tú deseaste o hOrí, o na''i, él deseó a horí, a 1 1a''i, etc.; pos. duro yo deseaba n hOléssi, n na''essi, tú deseabas o hOléssi, o na'' essi, él deseaba a hOles si, a na'' essi, etc.', 'pos.', 'elella, na''i, na''', 'Español: desear', 'import-espanol-bubi'),
  ('héya', 'v.', NULL, NULL, NULL, 'o sétaella; preso en verano se deseca el río grande e tyokkó ri láa héa e ríe rotee [e tJokkó rí láa héa e ríe rótee); paso punto la piscina se quedó sin agua e eribba e sétaeri boppé [eeribba e sétáerí booppé); paso duro la piscina se quedaba sin agua e eribba e sétaelessi boppé [eeribba e sétáeléssí booppé).', 'preso en verano se deseca el río grande e tyokkó ri láa héa e ríe rotee [e tJokkó rí láa héa e ríe rótee); | paso duro la piscina se quedaba sin agua e eribba e sétaelessi boppé [eeribba e sétáeléssí booppé).', 'sétaella', 'Español: desecar', 'import-espanol-bubi'),
  ('hékia', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: desechar', 'import-espanol-bubi'),
  ('eeléri', 's.', 'm.', NULL, 'Cl. 7', 'el - e celéri; -s bieléri, los -s e bieléri.', NULL, NULL, 'Español: deseo', 'import-espanol-bubi'),
  ('eubáa', 's.', 'm.', NULL, 'Cl. 7', 'el - e eubáa.', NULL, NULL, 'Español: desfalco', 'import-espanol-bubi'),
  ('salolla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: desgajar', 'import-espanol-bubi');

-- Lote 30 (entradas 726 a 750)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('saatta', 'v.', NULL, NULL, 'Cl. 7', '-se o sábba; la lona se desgarró e etapóllo é sábbi. desgarrón,.1''. etata, etatari (C\. 7), el- e etata, e etatari; desgarrones bitata, bitatari, los desgarrones e bi tata, e bitatari. desnudo I 411', 'la lona se desgarró e etapóllo é sábbi. | desgarrones bitata, bitatari, los desgarrones e bi tata, e bitatari.', NULL, 'Español: desgarrar', 'import-espanol-bubi'),
  ('kopolla', 'v.', NULL, NULL, NULL, 'pres. yo desgrano mis piñas de cacao n la kopolla e bimmáloto lÍ1; paso duro los niños des granaban las piñas de cacao a bó11á ba kopuessi e bimmáloto.', 'paso duro los niños des granaban las piñas de cacao a bó11á ba kopuessi e bimmáloto.', NULL, 'Español: desgranar', 'import-espanol-bubi'),
  ('lobotyobotyo', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o lobo tyobotyo; -s botyobotyo, los -s i botyo botyo. o usólla; paso punto he designado a tres personas n usóri batyo bé battá.', 'paso punto he designado a tres personas n usóri batyo bé battá.', NULL, 'Español: desierto', 'import-espanol-bubi'),
  ('pohá', 's.', 'm.', NULL, 'Cl. 9', 'el- e pohá; desmanes pohá, los desmanes i pohá.', 'desmanes pohá, los desmanes i pohá.', NULL, 'Español: desmán', 'import-espanol-bubi'),
  ('esélásélá', 's.', 'm.', NULL, 'Cl. 7', 'lokukke (el. I 1), el- e esélásélá, o lokukke; -s bisé lásélá, bekukke, los -s e bisélase la, e bekukke.', NULL, 'lokukke', 'Español: desmayo', 'import-espanol-bubi'),
  ('sikkiáa', 'v.', NULL, NULL, NULL, 'preso el hambre desmedra al perro e tya11á e lá sikkiáa e puá. 2. -se o sikkáa; preso el abuelo se desmedra con el tiempo o bOyolla a la sikkáa la e ebéló.', 'preso el hambre desmedra al perro e tya11á e lá sikkiáa e puá. | preso el abuelo se desmedra con el tiempo o bOyolla a la sikkáa la e ebéló.', NULL, 'Español: desmedrar', 'import-espanol-bubi'),
  ('kétya', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: desmenuzar', 'import-espanol-bubi'),
  ('epapara', 's.', 'm.', NULL, 'Cl. 7', 'el e epapara, e ekóri; -s mpapara, bikóri, los -s e mpapara, e bikóri. in! o hetyólla, o hetyóra; preso yo', NULL, 'hetyóra', 'Español: desmonte', 'import-espanol-bubi'),
  ('ehetyoro', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehetyoro; -s bihetyoro, los -s e bihetyoro. 412/ desobedecer', NULL, NULL, 'Español: desuudo', 'import-espanol-bubi'),
  ('buihó', 'adj.', NULL, NULL, 'Cl. 2', 'buihó (els. 1 y 3), el- o buihó; -s bihó, los -s a bihó. in! o kakára, o kappa, o halla; paso punto los malhechores desolaron el poblado a basalábbe ba kakária e eriia.', 'paso punto los malhechores desolaron el poblado a basalábbe ba kakária e eriia.', 'kappa, halla', 'Español: desobediente', 'import-espanol-bubi'),
  ('ekorokoro', 's.', 'm.', NULL, 'Cl. 7', 'el- e ekorokoro, e fÍlítya; desórde nes bikofokoro, baiJ.tya, los desór denes e bikorokoro, a baiJ.tya.', 'desórde nes bikofokoro, baiJ.', NULL, 'Español: desorden', 'import-espanol-bubi'),
  ('labotólábot', 'adv.', NULL, NULL, NULL, 'labotólábot6; yo camino - n la etta labotóláboto.', 'yo camino - n la etta labotóláboto.', NULL, 'Español: despacio', 'import-espanol-bubi'),
  ('tyiololla', 'v.', NULL, NULL, NULL, 'paso punto yo despeiné a mi abuelo n', NULL, NULL, 'Español: despeinar', 'import-espanol-bubi'),
  ('buátyi', 's.', 'm.', NULL, 'Cl. 8', 'el - o buátyi; -es biátyi, los -es e biátyi.', NULL, NULL, 'Español: despertador', 'import-espanol-bubi'),
  ('ebba', 'v.', NULL, NULL, NULL, '2. -se o ebea; preso me despierto n la ebea, te despiertas o la ebea, se des pierta a la ebea, etc.; paso punto me desperté n ebei, te despertaste o ebei, se despertó a ebei, etc.; paso duro me despertaba n ebeseei, te des per...', 'preso me despierto n la ebea, te despiertas o la ebea, se des pierta a la ebea, etc. | paso punto me desperté n ebei, te despertaste o ebei, se despertó a ebei, etc. | paso duro me despertaba n ebeseei, te des per.', NULL, 'Español: despertar', 'import-espanol-bubi'),
  ('rikappi', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikappi; -s bakappi, los -s a bakappi.', NULL, NULL, 'Español: despilfarro', 'import-espanol-bubi'),
  ('sulla', 'v.', NULL, NULL, NULL, '-se o sulea; el pollo se despluma e ko''e e lá sulea.', 'el pollo se despluma e ko''e e lá sulea.', NULL, 'Español: desplumar', 'import-espanol-bubi'),
  ('boánna', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: despojar', 'import-espanol-bubi'),
  ('baráa', 'v.', NULL, NULL, NULL, 'pres. el alcalde desposa a los novios o botúkku a la baráa a bana''í; paso duro la alcaldesa desposaba a los prometidos o botúkuáari a bare siia a bana''í, etc. 2. -se o balárea.', 'paso duro la alcaldesa desposaba a los prometidos o botúkuáari a bare siia a bana''í, etc.', NULL, 'Español: desposar', 'import-espanol-bubi'),
  ('mareri', 's.', 'm.', NULL, 'Cl. 9', 'los - e maréri, e ribállá; - (PI) mareri, abállá, los - i mareri, a abállá.', NULL, NULL, 'Español: desposorios', 'import-espanol-bubi'),
  ('kuppia', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: despreciar', 'import-espanol-bubi'),
  ('lopéllo', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el- o lopéllo;-s pello, los -s i pello.', NULL, NULL, 'Español: desprecio', 'import-espanol-bubi'),
  ('salolla', 'v.', NULL, NULL, NULL, 'tú des prendiste el dátil o salori e pillá, etc. 2. -se o salolea; preso las hojas de palma de desprenden con...', 'preso las hojas de palma de desprenden con.', NULL, 'Español: desprender', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 10', 'tyopu , el- e tyópu; -s tyó pu, los -s i tyópu.', NULL, NULL, 'Español: destajo', 'import-espanol-bubi'),
  ('bityolla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: destapar', 'import-espanol-bubi');

-- Lote 31 (entradas 751 a 775)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tokólla', 'v.', NULL, NULL, 'Cl. 12', '2. -s o bi lolla. destello,.1''. sityetyee, el - e sityetyee; -s totyetyee, los -s o totyetyee.', NULL, NULL, 'Español: destejer', 'import-espanol-bubi'),
  ('pupuálla', 'v.', NULL, NULL, NULL, 'preso los ancianos des tierran a mi madre e biobéolla bi lá pupuálla o oberii IÍI; paso punto el gobierno desterró a los presos e k6binna a pupuám a batyelemán; paso dur. la abuela desterraba a su hijo cada año o bonánna a pupuálessi o b611á áí 16a lo e lo ba.', 'preso los ancianos des tierran a mi madre e biobéolla bi lá pupuálla o oberii IÍI; | paso dur.', NULL, 'Español: desterrar', 'import-espanol-bubi'),
  ('eira', 's.', 'm.', NULL, 'Cl. 7', 'el- e eira; -s bii ra, los -s e biira.', NULL, NULL, 'Español: destete', 'import-espanol-bubi'),
  ('etyí''o', 's.', 'm.', NULL, 'Cl. 7', 'el- e elyí''o, e esatta; -s bityí''o, bisatta, los -s e bityí'' o, e bisatta.', NULL, NULL, 'Español: destierro', 'import-espanol-bubi'),
  ('ribotyo', 's.', 'm.', NULL, 'Cl. 5', 'el - e ribotyo; -s abOtyo, los -s a abotyo; el - de mi vida e telle e ribOtyo IÍI ''', NULL, NULL, 'Español: destino', 'import-espanol-bubi'),
  ('rikappi', 's.', 'm.', NULL, 'Cl. 5', 'el - e rikappi; -s bakappi, los -s a bakappi.', NULL, NULL, 'Español: destrozo', 'import-espanol-bubi'),
  ('halla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: destruir', 'import-espanol-bubi'),
  ('okanolla', 'v.', NULL, NULL, NULL, 'preso el dolor desune a las personas e roppá ri lá okanolla a batyo; paso punto el hambre desunió a los hombres e tyallá e okanori a baie; paso duro los hijos desu nían al matrimonio a bóllá ba okanolessi e ribá lIá.', 'preso el dolor desune a las personas e roppá ri lá okanolla a batyo; | paso duro los hijos desu nían al matrimonio a bóllá ba okanolessi e ribá lIá.', NULL, 'Español: desunir', 'import-espanol-bubi'),
  ('sibólló', 's.', 'm.', NULL, 'Cl. 12', 'el- e sibólló; -s tobólló, los -s o tobólló; los -s del pue blo o tobólló to e eriia wela.', 'los -s del pue blo o tobólló to e eriia wela.', NULL, 'Español: desvalido', 'import-espanol-bubi'),
  ('lepolla', 'v.', NULL, NULL, NULL, '.', 'paso duro yo desvelaba los secretos del gobierno n lepuessi e bihattá bi e kóbinna, tú desvelabas nuestro pacto o lepuessi e ehattá áó, etc.', NULL, 'Español: desvelar', 'import-espanol-bubi'),
  ('ehette', 's.', 'm.', NULL, 'Cl. 7', 'el- e ehette; -s bihette, los -s e bihette.', NULL, NULL, 'Español: desvelo', 'import-espanol-bubi'),
  ('tyebólla', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyebólla, e sóppo; -s tyebólla, sóppij, los -s i tyebólla, i sóppo.', NULL, NULL, 'Español: detergente', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'pres. el frío deteriora las piñas de cacao e sille si lá kappa e bimmáloto; paso punto los ladrones deterioraron la imagen del pueblo i húbbé i kappi e rubbí ri e eriia. 2. -se o kapea; preso el motor del coche se deteriora e emasíín o motóo e lá kapea.', 'paso punto los ladrones deterioraron la imagen del pueblo i húbbé i kappi e rubbí ri e eriia. | preso el motor del coche se deteriora e emasíín o motóo e lá kapea.', NULL, 'Español: deteriorar', 'import-espanol-bubi'),
  ('kooa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: detestar', 'import-espanol-bubi'),
  ('onná', 'adv.', NULL, NULL, NULL, '- de nnabí''o.', NULL, NULL, 'Español: detrás', 'import-espanol-bubi'),
  ('bOaó', 's.', 'f.', NULL, 'Cl. 3', 'la - o boaó; -s beaó, las -s e beaó.', NULL, NULL, 'Español: deuda', 'import-espanol-bubi'),
  ('péppa', 'v.', NULL, NULL, NULL, 'pres. la doncella devana la madeja o bulla bo lá péppa e eillóo.', 'pres.', NULL, 'Español: devanar', 'import-espanol-bubi'),
  ('nokóbiera', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: devorar', 'import-espanol-bubi'),
  ('bokó', 's.', 'm.', NULL, 'Cl. 3', '- siguiente obari; de - okó, el - o bOkó, e elló; -s beokó, billó, los -s e beokó, e billó; le vi de - n bo eeÍl e okó.', 'de - okó, el - o bOkó, e elló; | le vi de - n bo eeÍl e okó.', NULL, 'Español: día', 'import-espanol-bubi'),
  ('sibbó', 's.', 'm.', NULL, 'Cl. 12', 'el - e sibbó; -s tuibbó (el. 1 3), los -s o tuibbó; los malos -s o tuib bó robé.', 'los malos -s o tuib bó robé.', NULL, 'Español: diablillo', 'import-espanol-bubi'),
  ('rnmó', 's.', 'm.', NULL, 'Cl. 1', 'el - o mmó; -s bibbó, ibbó, los -s a bibbó, a ibbó.', NULL, NULL, 'Español: diablo', 'import-espanol-bubi'),
  ('to''ólla', 'v.', NULL, NULL, NULL, 'preso nosotros dialoga mos mucho túe to la to''ólla likélíke; paso punto tú dialogaste con el diablo o to''óm la o mmó; paso duro ella dialogaba con su madre a towessi la o oberíi áí.', 'preso nosotros dialoga mos mucho túe to la to''ólla likélíke; | paso duro ella dialogaba con su madre a towessi la o oberíi áí.', NULL, 'Español: dialogar', 'import-espanol-bubi'),
  ('botólló', 's.', 'm.', NULL, 'Cl. 3', 'el - o botólló; -s betólló, los -s e betólló. diario, 1. ribúkku ri elló eba. 2. elló eba; a - visito a mi tío elló eba n la hepella o boióppé IÍI.', 'a - visito a mi tío elló eba n la hepella o boióppé IÍI.', NULL, 'Español: diálogo', 'import-espanol-bubi'),
  ('ribúkku', 's.', 'm.', NULL, NULL, 'ra balláa.', NULL, NULL, 'Español: diccionario', 'import-espanol-bubi'),
  ('kesse', 's.', 'm.', NULL, 'Cl. 9', 'el - e kesse; -s kesse, los -s i kesse.', NULL, NULL, 'Español: dicho', 'import-espanol-bubi');

-- Lote 32 (entradas 776 a 800)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('buelálelle', 'adj.', NULL, NULL, 'Cl. 1', 'el - o buelálelle; -s belálelle, los -s a belálelle.', NULL, NULL, 'Español: dichoso', 'import-espanol-bubi'),
  ('asámOóte', 's.', 'm.', NULL, NULL, 'el mes de - o buéá bo a asámOóte.', NULL, NULL, 'Español: diciembre', 'import-espanol-bubi'),
  ('opippa', 's.', 'm.', NULL, 'Cl. 1', 'el o opippa, o mrnatta; -es apippa, r nmatta, los -es a apippa, a mmatta; el- de mi país o opippa á e eriia IÍI.', 'el- de mi país o opippa á e eriia IÍI.', 'mrnatta', 'Español: dictador', 'import-espanol-bubi'),
  ('bopippí', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOpippí, e raakio; -s bepippí, baakio, las -s e bepippí, a baakio. diecinueve, numo ó la biele; - dedos bene bié ó la biele, personas batyo be ó la bale, - camas baatyé be ó la bale, - pue blos biriia bié ó la bile, - sardinas koIlo yé ó la nne, - pájaros tonorí tué ó la tuele. 416/ dieciocho dieciocho, numo ó la betá; - dedos bene bié ó la betá, - personas batyo be ó la batá, - ...', NULL, NULL, 'Español: dictadura', 'import-espanol-bubi'),
  ('rello', 's.', 'm.', NULL, 'Cl. 5', 'el- e rello; -s bello, los -s a bello; -s de oro bello ba 0010110. diez, numo bó (els. 2 y 6): - personas batyo be bó, - mejillas bakekko be bó; bió (els. 4 y 8): - his torias beatta bié bió, - pueblos biriia bié bió; nó : - sardinas kollo yé nó; tó : pueblecitos toriia tué tó.', 'bió (els. | nó : - sardinas kollo yé nó;', NULL, 'Español: diente', 'import-espanol-bubi'),
  ('to''ú', 'adj.', NULL, NULL, 'Cl. 13', 'la respuesta es - e ehMmero é to''ú, e eehMmero é obó, una persona - botyo a bonokoa.', 'la respuesta es - e ehMmero é to''ú, e eehMmero é obó, una persona - botyo a bonokoa.', NULL, 'Español: dificil', 'import-espanol-bubi'),
  ('mmo', 's.', 'm.', NULL, 'Cl. 1', 'el - o mmo; -s bibbo, ibbo, los :-,S a bibbO, a ibbo.', NULL, NULL, 'Español: difunto', 'import-espanol-bubi'),
  ('ekasso', 'adj.', NULL, NULL, 'Cl. 7', 'el - e ekasso; -s bikasso, los -s e bikasso; sé - sil ekasso.', 'sé - sil ekasso.', NULL, 'Español: diligente', 'import-espanol-bubi'),
  ('ekolakolla', 's.', 'm.', NULL, 'Cl. 7', 'el- e ekolakolla; -s bikolakolla, los -s e bikolakolla.', NULL, NULL, 'Español: diluvio', 'import-espanol-bubi'),
  ('bonní', 's.', 'm.', NULL, 'Cl. 9', 'el - e bonní, e tyokko; -s bonní (el. lO), tyokko, los -s i bonní, i tyokko.', NULL, NULL, 'Español: dinero', 'import-espanol-bubi'),
  ('eruppé', 's.', 'm.', NULL, 'Cl. 7', '-a Madre Bisílla; - de la música y la salud Laha; - del trueno Riobátta; - del amor Ebi''o, el- e eruppé; -es biruppé, los -es e biruppé.', NULL, NULL, 'Español: dios', 'import-espanol-bubi'),
  ('takkí', 's.', 'm.', NULL, 'Cl. 9', 'el - e takkí; -es tak kí, los -es i takkí; el- del banco e takkí é reppo, e takkí ó lobakka lo i bonní.', 'el- del banco e takkí é reppo, e takkí ó lobakka lo i bonní.', NULL, 'Español: director', 'import-espanol-bubi'),
  ('bolekia', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bolekia; -s balekia, los -s a balekia; sé -sí ekassó.', 'sé -sí ekassó.', NULL, 'Español: dirigente', 'import-espanol-bubi'),
  ('lekkia', 'v.', NULL, NULL, NULL, 'pas. duro yo dirigía n lekie siia, tú dirigías o lekiesiia, él dirigía a lekiesiia, etc. 2. -se o tóttáa, o bekalla; preso me dirijo n la tóttáa, n la bekalla, te diriges o la tóttáa, o la bekal la, se dirige a la tóttáa, a la bekalla, etc.; paso punto me dirigi n tótyíi, n bekari, te dirigis te o tótyíi, o bekari,...', 'preso me dirijo n la tóttáa, n la bekalla, te diriges o la tóttáa, o la bekal la, se dirige a la tóttáa, a la bekalla, etc. | paso punto me dirigi n tótyíi, n bekari, te dirigis te o tótyíi, o bekari,.', 'bekalla, la, bekari', 'Español: dirigir', 'import-espanol-bubi'),
  ('bOlebbóo', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOlebboo; -s balebboo, los -s a balebbOo.', NULL, NULL, 'Español: discapacitado', 'import-espanol-bubi'),
  ('bue''áa', 's.', 'm.', NULL, 'Cl. 1', 'el - o bue''áa; -s be''áa, los -s a be''áa.', NULL, NULL, 'Español: discípulo', 'import-espanol-bubi'),
  ('tyikkó', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyikkó; -s tyikkó, los -s i tyikkó.', NULL, NULL, 'Español: disco', 'import-espanol-bubi'),
  ('buihó', 's.', 'm.', NULL, 'Cl. 1', '-s bihó, los -s a bihó.', NULL, NULL, 'Español: díscolo', 'import-espanol-bubi'),
  ('petta', 'v.', NULL, NULL, NULL, 'pres. yo discrepo conti go n la petta bueka la úwe; paso punto él discrepó e a petyi bueka.', 'pres. | paso punto él discrepó e a petyi bueka.', NULL, 'Español: discrepar', 'import-espanol-bubi'),
  ('boatta', 's.', 'm.', NULL, 'Cl. 3', 'el - o boatta; -s beatta, los -s e beatta.', NULL, NULL, 'Español: discurso', 'import-espanol-bubi'),
  ('obálla', 'v.', NULL, NULL, NULL, 'paso duro yo discutia n obálessi, tú discutias o obálessi, él discutía a obálessi, nosotros discutíamos túe to obálessi, vosotros discutiais túe lo obálessi, ellos discutian be ba obálessi.', 'paso duro yo discutia n obálessi, tú discutias o obálessi, él discutía a obálessi, nosotros discutíamos túe to obálessi, vosotros discutiais túe lo obálessi, ellos discutian be ba obálessi.', NULL, 'Español: discutir', 'import-espanol-bubi'),
  ('in', 's.', NULL, NULL, NULL, 'in/ tyipóbia; o heráa buallé, o heráa nobbe; preso yo te disgusto n la o tyipóbia, n la o heráa buallé, n la o heráa nobbe; paso punto tu conducta me disgustó e eseríi o e le hería buallé. 2. -se o sá bual lé; preso mi madre se disgusta cada día o oberíi rÍl a sá buaIlé ello eba.', 'o heráa buallé, o heráa nobbe; | paso punto tu conducta me disgustó e eseríi o e le hería buallé. | preso mi madre se disgusta cada día o oberíi rÍl a sá buaIlé ello eba.', 'heráa', 'Español: disgustar', 'import-espanol-bubi'),
  ('buallé', 's.', 'm.', NULL, 'Cl. 3', 'nobbe, el - o buallé, o wallée; -s biallé, biallée, los -s e biallé, e biallée, i nobbe.', NULL, 'wallée', 'Español: disgusto', 'import-espanol-bubi'),
  ('opelle', 's.', 'm.', NULL, 'Cl. 3', 'el- o opelle; -s epelIe, los -s e epelle.', NULL, NULL, 'Español: disoluto', 'import-espanol-bubi'),
  ('ekokoo', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekokoo; -s bikokoo, los -s e bikokoo.', NULL, NULL, 'Español: disparo', 'import-espanol-bubi');

-- Lote 33 (entradas 801 a 825)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('IOba''o', 's.', 'm.', NULL, 'Cl. 3', '(el. 1 1); - en una ciudad loba'' o, el- o loba'' o, o bobba, el - como división judicial bobba; -s aba''o, biobba, los -s a aba''o, e biobba.', NULL, 'bobba', 'Español: distrito', 'import-espanol-bubi'),
  ('ribákéri', 's.', 'm.', NULL, 'Cl. 5', 'el- e ribákéri;-s abákéri, los -s a abákeri.', NULL, NULL, 'Español: disturbio', 'import-espanol-bubi'),
  ('esori', 's.', 'm.', NULL, 'Cl. 7', 'el - e esori; -s bisori, los -s e bisori.', NULL, NULL, 'Español: divorcio', 'import-espanol-bubi'),
  ('rokútta', 's.', 'm.', NULL, 'Cl. 5', 'el - e rokútta, e rokítta; -es bokútta, rokítta, los -es a bokútta, a bokítta.', NULL, NULL, 'Español: doctor', 'import-espanol-bubi'),
  ('ripepáa', 's.', 'm.', NULL, 'Cl. 5', 'el - e ripepáa; -s apepáa, los -s a apepáa. dudar / 419', NULL, NULL, 'Español: documento', 'import-espanol-bubi'),
  ('batyáa', 'v.', NULL, NULL, NULL, 'preso duele la mano o 10bM lo lá batyáa, tu boca te duele o bue''e o bo lá ba tyáa, etc.; paso punto te dolió tu oreja o lotóo o lo batyíi batyíi, le dolió el corazón o botébbá bo áí bO ba tyíi, etc.; paso duro me dolía el dedo del pie bo batyessi o bOnessú m, te dolía tu dedo meñique e siítyi o si batyessi, etc.', 'preso duele la mano o 10bM lo lá batyáa, tu boca te duele o bue''e o bo lá ba tyáa, etc. | paso punto te dolió tu oreja o lotóo o lo batyíi batyíi, le dolió el corazón o botébbá bo áí bO ba tyíi, etc. | paso duro me dolía el dedo del pie bo batyessi o bOnessú m, te dolía tu dedo meñique e siítyi o si batyessi, etc.', NULL, 'Español: doler', 'import-espanol-bubi'),
  ('roppá', 's.', 'm.', NULL, 'Cl. 5', 'el - e roppá; -es boppá, los -es a boppá.', NULL, NULL, 'Español: dolor', 'import-espanol-bubi'),
  ('i''a', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: domesticar', 'import-espanol-bubi'),
  ('ihuollo', 's.', 'm.', NULL, 'Cl. 5', 'el e ihuollo; -s bahuollo, los -s a bahuollo, i ityotyi; el - que viene i ityotyi i lá púlláa i o o [iitSotSi i láa pullá yoo).', 'el - que viene i ityotyi i lá púlláa i o o [iitSotSi i láa pullá yoo).', NULL, 'Español: domingo', 'import-espanol-bubi'),
  ('etáka', 's.', 'm.', NULL, 'Cl. 7', 'el- e etáka, e ritákkí; -s bitáka, baták kí, los -s e bitáka, a batákkí.', NULL, NULL, 'Español: dominio', 'import-espanol-bubi'),
  ('interrogo', 'adv.', NULL, NULL, NULL, 'interrogo ké tye? ¿- vas? ké tye o la hélla é? [ke tSé ó la hellá é).', NULL, NULL, 'Español: dónde', 'import-espanol-bubi'),
  ('bolokka', 's.', 'm.', NULL, 'Cl. 1', 'el- 6 bolokka; dormilones balokka, los dormilones a balokka.', 'dormilones balokka, los dormilones a balokka.', NULL, 'Español: dormilón', 'import-espanol-bubi'),
  ('ilokko', 's.', 'm.', NULL, 'Cl. 5', 'el - e i1okko; -s balokko, los -s a balokko. dos, numo appa (els. 2 y 6): - personas batyo be appa, - camas baatyé be appa; eppa : historias beatta bié eppa; mmaJibba : pueblos biriia bié mma, - males ibbé yé ibba; mpa : - sardinas kollo yé mpa; t6bba : - pájaros tonorí tué t6bba. doscientos, numo batyílla appa.', 'eppa : historias beatta bié eppa; | mpa : - sardinas kollo yé mpa;', NULL, 'Español: dormitorio', 'import-espanol-bubi'),
  ('páa', 'v.', NULL, NULL, NULL, 'paso punto a la doncella le han dotado con doscientos euros 6 bulla a péi o ba tyílla appa [o bulla a peyoo batSílla appa).', 'paso punto a la doncella le han dotado con doscientos euros 6 bulla a péi o ba tyílla appa [o bulla a peyoo batSílla appa).', NULL, 'Español: dotar', 'import-espanol-bubi'),
  ('enokonokko', 's.', 'm.', NULL, 'Cl. 7', 'el - e enoko nokko; dragones binokonokko, los dragones e binokonokko.', 'dragones binokonokko, los dragones e binokonokko.', NULL, 'Español: dragón', 'import-espanol-bubi'),
  ('ebátya', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebátya; -s ibátya, los -s e ibátya.', NULL, NULL, 'Español: drama', 'import-espanol-bubi'),
  ('lekella', 'v.', NULL, NULL, NULL, 'pres. yo dreno el agua de la lluvia n la lekella a boppé bá o lóllá.', NULL, NULL, 'Español: drenar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'el - o mmása; -s mmása, los -s a mmása.', NULL, NULL, 'Español: dueño', 'import-espanol-bubi'),
  ('boroo', 's.', 'm.', NULL, 'Cl. 3', 'suítti el - o boróo, e suítti; -s beróo, suítti, los -s e beróo, i suítti.', NULL, NULL, 'Español: dulce', 'import-espanol-bubi'),
  ('bOróo', 's.', 'm.', NULL, 'Cl. 3', 'el- o boróo; -es beróo, los -es e beróo.', NULL, NULL, 'Español: dulzor', 'import-espanol-bubi'),
  ('eoppi', 's.', 'f.', NULL, 'Cl. 7', 'la - e eoppi; duraciones bioppi, las duraciones e bioppi.', 'duraciones bioppi, las duraciones e bioppi.', NULL, 'Español: duración', 'import-espanol-bubi'),
  ('oppa', 'v.', NULL, NULL, NULL, 'preso la piedra dura e ire ri láa oppa, tú duras o la oppa, él dura a la oppa, etc.; paso punto las sardinas du raron delante del gato i kollo i oppi e sipóssi alo, tú duraste o oppi, él duró a oppi, etc.;', 'preso la piedra dura e ire ri láa oppa, tú duras o la oppa, él dura a la oppa, etc. | paso punto las sardinas du raron delante del gato i kollo i oppi e sipóssi alo, tú duraste o oppi, él duró a oppi, etc.', NULL, 'Español: durar', 'import-espanol-bubi'),
  ('Iobbó', 'adj.', NULL, NULL, NULL, '·obó; una persona dura bOtyo bO obó, etue obó.', 'una persona dura bOtyo bO obó, etue obó.', NULL, 'Español: duro', 'import-espanol-bubi'),
  ('como', 's.', NULL, NULL, 'Cl. 9', 'el - e Iwpifzta; -s Iwpifzta, los -s i Iwpifzta.', NULL, NULL, 'Español: ebanista', 'import-espanol-bubi'),
  ('boribbí', 'adj.', NULL, NULL, 'Cl. 3', 'ribómrna; -s beribbí, abómma; estoy - ne borib bí, estamos -s tue beribbí.', 'estoy - ne borib bí, estamos -s tue beribbí.', NULL, 'Español: ebrio', 'import-espanol-bubi');

-- Lote 34 (entradas 826 a 850)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('eoko', 's.', 'm.', NULL, 'Cl. 7', 'el - e eoko, e ebOehoe; -s bioko, bibOehoe, los -s e bioko, e bibOebOe.', NULL, NULL, 'Español: eco', 'import-espanol-bubi'),
  ('tyóbbo', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyóbbo; -s tyóbbo, los -s i tyóbbo.', NULL, NULL, 'Español: edificio', 'import-espanol-bubi'),
  ('bokutta', 's.', 'm.', NULL, 'Cl. 3', 'el - o bokutta; edredones bekutta, los edredones e bekutta; el - del Norte o bokutta bO opuá [o bOkutta bó opuá).', 'edredones bekutta, los edredones e bekutta;', NULL, 'Español: edredón', 'import-espanol-bubi'),
  ('e''iáa', 'v.', NULL, NULL, NULL, 'preso el anciano educa a sus nietos e obéolla e lá e''iáa i bobbé i áe; paso punto el mari 422 / efectuar nero educó a los niños o boobbe a e''ía a bollá.', 'preso el anciano educa a sus nietos e obéolla e lá e''iáa i bobbé i áe;', NULL, 'Español: educar', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'el - e elabba, e silabba; -s bilabba, tOlabba, los -s e bilabba, o tolabba. 2. por labóatta.', NULL, 'tolabba', 'Español: ejemplo', 'import-espanol-bubi'),
  ('lohúa', 's.', 'm.', NULL, 'Cl. 6', '(el. 1 1), el - o lohúa; -s bahúa, los -s a bahúa. el, det. arto o, e; - hombre o bOtyo, - árbol o bOtté, - machete e isaké - asiento e empa (CI. 7), - perro e puá (el. lO), - brazo o 10bbO, - cuento e siatta, etc. él, prono sujo a, e; mi hermano - lloraba o bobél lelÍ1 a bé''éssi, el niño - llora o bollá e bé''a, o bollá a la bé''a.', 'mi hermano - lloraba o bobél lelÍ1 a bé''éssi, el niño - llora o bollá e bé''a, o bollá a la bé''a.', 'bollá', 'Español: ejército', 'import-espanol-bubi'),
  ('eossí', 's.', 'm.', NULL, 'Cl. 7', 'el - e eossí; -s biossí, los -s e biossí.', NULL, NULL, 'Español: elefantiasis', 'import-espanol-bubi'),
  ('suppáa', 'v.', NULL, NULL, NULL, 'preso yo elijo el mejor asiento n la suppáa e empa éé; paso punto tú elegiste mi coche o suppíi o motóo lÍ1.', 'preso yo elijo el mejor asiento n la suppáa e empa éé;', NULL, 'Español: elegir', 'import-espanol-bubi'),
  ('ribisso', 's.', 'm.', NULL, 'Cl. 5', 'loatya (el. 1 1), el e ribisso, o loatya; -es abisso, los -es a abisso; el - está estropeado e ribisso ri kapei.', 'el - está estropeado e ribisso ri kapei.', 'loatya', 'Español: elevador', 'import-espanol-bubi'),
  ('ribekko', 's.', 'm.', NULL, 'Cl. 5', 'OOsa''o, ritolállo; el - e ribekko, o OOsákko, o OOsa''o, e ritolállo; -s abekko, biisákko, besa''o, baililállo, los -s a abekko, e besákko, e besa'' o, a batOlállo.', 'el - e ribekko, o OOsákko, o OOsa''o, e ritolállo;', NULL, 'Español: elogio', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', 'el - o botákko, o bobatakí; -es betákko, babatakí, los -es e betákko, a babatakí. embalar, 11. o kapélla,', NULL, 'bobatakí', 'Español: embajador', 'import-espanol-bubi'),
  ('rebbá', 's.', 'm.', NULL, 'Cl. 5', 'el e rebbá. e etobO; -s bebbá, bitobo, los -s a bebbá, e bitobo. * - de pocas semanas sebbé, el - de pocas semanas e sebbé, -s de pocas semanas tuebbé, los -s de pocas semanas o tuebbé.', NULL, NULL, 'Español: embarazo', 'import-espanol-bubi'),
  ('ribbiáa', 'v.', NULL, NULL, NULL, 'preso el vino emborracha o buém bo lá ribbiáa; paso punto el vino de palma le emborrachó a ba''u ba bó ribbía, etc. 2. -se o ríbbáa, o boballa, o nkóbba; pres. me emborracho n la boballa, n la nkóbba, te embo rrachas o la boballa, o la nkóbba, se emborracba a la bobalIa, a la nkóbba, etc.; paso punto me embo rraché n bobari, n nkóbbi, te emborrachaste o nkóbbi, se emborrachó a nkóbbi,...', 'preso el vino emborracha o buém bo lá ribbiáa; | pres. | paso punto me embo rraché n bobari, n nkóbbi, te emborrachaste o nkóbbi, se emborrachó a nkóbbi,.', 'boballa, nkóbba, la', 'Español: emborrachar', 'import-espanol-bubi'),
  ('ehutéri', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehutéri; -s bihutéri, los -s e bihutéri, los -8 de las mantas e bihutéri bi e bekutta. encargar / 423', NULL, NULL, 'Español: embozo', 'import-espanol-bubi'),
  ('ribbiáa', 'v.', NULL, NULL, NULL, 'preso el vino embriaga o buem bO lá ribbiáa; paso punto el coñac le embriagó i konyákko i bó ribbía, etc. 2. -se o boballa, o nkóbba; preso me emborracho n la boballa, n la nkóbba, te emborrachas o la boballa, o la nkóbba, se emborracha a la bobal la, a la nkóbba, etc.; paso punto me emborraché n bobari, n nkóbbi, te emborrachaste o nkóbbi, se emborrachó a nkóbbi, etc.; paso duro me ...', 'preso el vino embriaga o buem bO lá ribbiáa; | preso me emborracho n la boballa, n la nkóbba, te emborrachas o la boballa, o la nkóbba, se emborracha a la bobal la, a la nkóbba, etc. | paso punto me emborraché n bobari, n nkóbbi, te emborrachaste o nkóbbi, se emborrachó a nkóbbi, etc.', 'nkóbba, la', 'Español: embriagar', 'import-espanol-bubi'),
  ('bOtyípótyípóo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bO tyípótyípóo; -s betyípótyípóo, los -s e betyípÓtyípóo.', NULL, NULL, 'Español: embrollo', 'import-espanol-bubi'),
  ('isera', 'v.', NULL, NULL, NULL, 'preso mi jefe me embruja o mmássa ro a la le isera; paso punto el visitante me embrujó o boheppóo a le iseriia isenna.', 'preso mi jefe me embruja o mmássa ro a la le isera;', NULL, 'Español: embrujar', 'import-espanol-bubi'),
  ('bOntyó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bontyó; -s bentyó, los -s e bentyó.', NULL, NULL, 'Español: embrujo', 'import-espanol-bubi'),
  ('botyokáa', 's.', 'm.', NULL, 'Cl. 3', 'el - o botyokáa; -s betyokáa, los -s e betyokáa.', NULL, NULL, 'Español: embudo', 'import-espanol-bubi'),
  ('bosori', 's.', 'm.', NULL, 'Cl. 1', 'el - o bOsori; -s basori, baríbáa, los -s a basori.', NULL, NULL, 'Español: emigrante', 'import-espanol-bubi'),
  ('botákko', 's.', 'm.', NULL, 'Cl. 3', 'el- o botillo;-s batákko, los -s a batákko.', NULL, NULL, 'Español: emisario', 'import-espanol-bubi'),
  ('kapella', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: empaquetar', 'import-espanol-bubi'),
  ('kossá', 'v.', NULL, NULL, NULL, 'pres. el hombre empa reja a los pájaros o boie a la kossá o tonorí; paso punto los tios empa rejaron a sus sobrinos a baióppé ba kossí i nep pó i ábó; paso duro nosotros emparejábamos a los perros to kosessi i puá.', 'paso punto los tios empa rejaron a sus sobrinos a baióppé ba kossí i nep pó i ábó;', NULL, 'Español: emparejar', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 1', 'tákityé, el- o botákityé, e tákityé; -es batákityé, tákityé, los -es a batákityé, i tákityé.', NULL, NULL, 'Español: emperador', 'import-espanol-bubi'),
  ('papella', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: empezar', 'import-espanol-bubi');

-- Lote 35 (entradas 851 a 875)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('wela', 'adv.', NULL, NULL, NULL, '- el oratorio e róhiáa wela.', NULL, NULL, 'Español: en', 'import-espanol-bubi'),
  ('bopaosélla', 's.', 'm.', NULL, 'Cl. 1', 'el - o bopaosélla, e paoséla; -s bOpaosélla, paoséla, los -s a bapaosélla, i paoséla.', NULL, NULL, 'Español: enamorado', 'import-espanol-bubi'),
  ('okátella', 'v.', NULL, NULL, NULL, 'preso el sanador encabeza el ejército o bohiammó a la okátella o lohúa; paso punto yo encabecé n okáteri, tú encabezaste o (bo) okáteri, él encabezó a okáteri, nosotros encabezamos to okáteri, vosotros encabezasteis lo okáteri, ellos encabezaron ba okáteri.', 'preso el sanador encabeza el ejército o bohiammó a la okátella o lohúa;', NULL, 'Español: encabezar', 'import-espanol-bubi'),
  ('boloppo', 's.', 'm.', NULL, 'Cl. 3', 'el- o boloppo, e siossó; -es beloppo, tOossó, los -es e beloppo, o toossÓ.', NULL, 'tooss', 'Español: encendedor', 'import-espanol-bubi'),
  ('ebuté', 's.', 'f.', NULL, 'Cl. 7', 'la - e ebuté; -s ibuté, las -s e ibuté.', NULL, NULL, 'Español: encía', 'import-espanol-bubi'),
  ('oOO''ó', 'adv.', NULL, NULL, NULL, '*puá; - de la silla e empa puá.', NULL, NULL, 'Español: encima', 'import-espanol-bubi'),
  ('elláa', 'v.', NULL, NULL, NULL, 'pos. punto yo encontré n eelÍl, tú encontraste o eelÍl, él encontró a eelÍJ., etc.; pos. duro yo encontraba n elessi, tú encontrabas o elessi, él encontraba a elessi, etc. 2. -se o hítaella, o hítta; preso nos encontra mos en la plaza to la hítaella o e riossa pua.', 'pos. | preso nos encontra mos en la plaza to la hítaella o e riossa pua.', 'hítta', 'Español: encontrar', 'import-espanol-bubi'),
  ('witáeri', 's.', 'm.', NULL, 'Cl. 3', 'eopéri, eitánna, el - o witáeri, e etyiáeri, e eoperi, e eitánna; -s beitáeri, bityiáeri, bioperi, biitánna, los -s e beitáeri, e bityiáeri, e bioperi, e biitánna.', NULL, NULL, 'Español: encuentro', 'import-espanol-bubi'),
  ('elopa', 's.', 'm.', NULL, 'Cl. 7', 'el - e elopa; -s bilopa, los -s e bilopa.', NULL, NULL, 'Español: endiablado', 'import-espanol-bubi'),
  ('akka', 'v.', NULL, NULL, NULL, 'preso yo endurezco mi corazón n la akka o betébbá lÍl; pos. punto ella ha endurecido su corazón a akki o botébbé buáí. 2. -se o ak15a; preso su carácter se endurece o bokeú bo áí bo lá ak15a; pos. punto su carácter se endureció o bokeú bo áí 00 ak15i.', 'preso yo endurezco mi corazón n la akka o betébbá lÍl; | preso su carácter se endurece o bokeú bo áí bo lá ak15a;', NULL, 'Español: endurecer', 'import-espanol-bubi'),
  ('botyo', 's.', 'm.', NULL, 'Cl. 1', 'ésappá el- o botyo ésappá; -s batyo bésappá, los -s a batyo bé sappá. enemistad, s.. bosurí, la - o OOsuó; -es besuó, las -es e b15suó.', NULL, NULL, 'Español: enemigo', 'import-espanol-bubi'),
  ('bonokko', 's.', 'f.', NULL, 'Cl. 3', 'la - o bonokko. o boo; -s b15nokko, beoo, las -s e benokko, e beoo.', NULL, NULL, 'Español: energía', 'import-espanol-bubi'),
  ('asáityi', 's.', 'm.', NULL, NULL, 'el mes de - o buéá bo a sáityi.', NULL, NULL, 'Español: enero', 'import-espanol-bubi'),
  ('bonobbe', 's.', 'm.', NULL, 'Cl. 3', 'nobbe, el - o bonobbe, o buallé, e nobbe; -s b15nobbe, biallé, nobbe (el. lO), los -s e b15nobbe, e biallé, i nobbe.', NULL, 'buallé', 'Español: enfado', 'import-espanol-bubi'),
  ('akalla', 'v.', NULL, NULL, NULL, 'o kapella; 2. para alguien o akella; preso yo le enfardo la ropa n la 00 akella i kuua.', 'preso yo enfardo los leños n la akalla i kóólÍl; | preso yo le enfardo la ropa n la 00 akella i kuua.', 'kapella', 'Español: enfardar', 'import-espanol-bubi'),
  ('kaaí', 's.', 'f.', NULL, 'Cl. 9', 'la e kaaí, e roppá; -es kaaí (el. lO), OOppá, las -es i kaaí, a OOppá.', NULL, NULL, 'Español: enfermedad', 'import-espanol-bubi'),
  ('riseríi', 's.', 'f.', NULL, 'Cl. 5', 'la - e riseói; -s baseói, las -s a baseríi.', NULL, NULL, 'Español: enfermería', 'import-espanol-bubi'),
  ('bonnya', 's.', 'm.', NULL, 'Cl. 1', 'el- o OOnnya; -s bannya (eL 2), los -s a bannya.', NULL, NULL, 'Español: enfermero', 'import-espanol-bubi'),
  ('OOloari', 's.', 'm.', NULL, 'Cl. 1', 'el- o boloari; -s baloari, los -s a baIoari.', NULL, NULL, 'Español: enfermo', 'import-espanol-bubi'),
  ('bosuállo', 'adv.', NULL, NULL, 'Cl. 3', 'oOOsso, - de la casa o OOsuállo bo e tyóbbo. enriquecer I 425', NULL, NULL, 'Español: enfrente', 'import-espanol-bubi'),
  ('nánáa', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: enganchar', 'import-espanol-bubi'),
  ('ebotyí', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebOtyí; -s ibOtyí, bisoí, los -s e ibotyí.', NULL, NULL, 'Español: engaño', 'import-espanol-bubi'),
  ('tolaella', 'v.', NULL, NULL, NULL, 'preso yo engarzo las cadenas n la tolaella i tyókko, tú engarzas las cuentas o la tok ká e betotto; paso punto voso tros engarzasteis vuestras ideas lo tolaeri e betapáero bi áno; paso duro ellas engarzaban sus trenzas be ba tolaelessi e bésuppa be ábo.', 'preso yo engarzo las cadenas n la tolaella i tyókko, tú engarzas las cuentas o la tok ká e betotto; | paso duro ellas engarzaban sus trenzas be ba tolaelessi e bésuppa be ábo.', NULL, 'Español: engarzar', 'import-espanol-bubi'),
  ('bOseppa', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOseppa;-s baseppa, los -s a baseppa.', NULL, NULL, 'Español: engreído', 'import-espanol-bubi'),
  ('riakko', 's.', 'm.', NULL, 'Cl. 5', 'ritolló, el- e riakko, e eu''o, e ritolló; -s baakko, biu''o, batolló, los -s a baakko, e biu''o, a batolló.', NULL, NULL, 'Español: enlace', 'import-espanol-bubi');

-- Lote 36 (entradas 876 a 900)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tolaella', 'v.', NULL, NULL, NULL, 'pres. el pesca dor enlaza los cordones o boobbe a la tolaella e besorí, yo enlazo los dos caminos n la siaella i telle pa ebá; paso punto vosotros enlazas teis vuestras ideas lo tolaeri e betapáero bi áno; paso duro ellos enlazaban sus nipas be ba tolaelessi i tyerú i ábO.', 'pres. | paso punto vosotros enlazas teis vuestras ideas lo tolaeri e betapáero bi áno;', NULL, 'Español: enlazar', 'import-espanol-bubi'),
  ('bella', 'v.', NULL, NULL, NULL, 'preso los abuelos enmiendan sus vidas con la vejez a bayolla ba lá lakaella e ribotyo ri ábo la o borolla; paso punto yo no enmendé mi error n ta lakaeri e eitalla rÍ1.', 'preso los abuelos enmiendan sus vidas con la vejez a bayolla ba lá lakaella e ribotyo ri ábo la o borolla;', NULL, 'Español: enmendar', 'import-espanol-bubi'),
  ('bOnobbe', 's.', 'm.', NULL, 'Cl. 3', 'nobbe, el - o bOnobbe, o buallé, e nobbe; -s benobbe, biallé, nobbe (el. lO), los -s e bonobbe, e biallé, i nobbe.', NULL, 'buallé', 'Español: enojo', 'import-espanol-bubi'),
  ('tokká', 'v.', NULL, NULL, NULL, 'preso la doncella ensar ta las cuentas o bulla bo lá tokká e betotto, tú ensartas las con chas o la tiikká e biokollo; paso punto ellos ensartaron las bolas ba tokkí e betotto.', 'preso la doncella ensar ta las cuentas o bulla bo lá tokká e betotto, tú ensartas las con chas o la tiikká e biokollo;', NULL, 'Español: ensartar', 'import-espanol-bubi'),
  ('esori', 's.', 'm.', NULL, 'Cl. 7', 'rike''o, el - e esori, e eke''o, e rike''o; -s bisori, bike''o, bake''o, los -s e bisori, e bike''o, a bake''o.', NULL, NULL, 'Español: ensayo', 'import-espanol-bubi'),
  ('bue''iáa', 's.', 'm.', NULL, 'Cl. 1', '- (mujer) bue''iáari, el- o bue''iáa, la - o bue''iáari; -s be''iáa, - (mujeres) be''iáari, los -8 a be''iáa, las -s a be''iáari.', NULL, NULL, 'Español: enseñante', 'import-espanol-bubi'),
  ('lokko', 's.', 'm.', NULL, NULL, '(el. 1 1), los - a lokkó.', NULL, NULL, 'Español: enseres', 'import-espanol-bubi'),
  ('tollo', 's.', 'm.', NULL, 'Cl. 13', 'el - o tollo, e tyebbá.', NULL, NULL, 'Español: ensueño', 'import-espanol-bubi'),
  ('biikuppá', 's.', 'm.', NULL, 'Cl. 3', 'el - o biikuppá, e ro''áeri; -s bekuppá, bo''áeri, los -s e bekuppá, a bo''áeri.', NULL, NULL, 'Español: entendimiento', 'import-espanol-bubi'),
  ('biityilella', 's.', 'm.', NULL, 'Cl. 1', 'el- o biityilel la; -es batyilella, los -es a batyilella.', NULL, NULL, 'Español: enterrador', 'import-espanol-bubi'),
  ('botyileri', 's.', 'm.', NULL, 'Cl. 3', 'el - o botyileri; -8 betyileri, los -s e betyileri. equivocar / 427', NULL, NULL, 'Español: entierro', 'import-espanol-bubi'),
  ('otyé', 's.', 'm.', NULL, 'Cl. 3', 'el - o otyé; -s ityé, los -s ityé.', NULL, NULL, 'Español: entorno', 'import-espanol-bubi'),
  ('helóo''áa', 'v.', NULL, NULL, NULL, 'o hélla (oammó),', NULL, NULL, 'Español: entrar', 'import-espanol-bubi'),
  ('e''era', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: entregar', 'import-espanol-bubi'),
  ('tolaella', 'v.', NULL, NULL, NULL, 'pres. voso tros entrelazáis las nipas 10 la tolaella i tyerú; paso punto tú entrelazaste las madejas o tolaeri e biillóo.', 'pres. | paso punto tú entrelazaste las madejas o tolaeri e biillóo.', NULL, 'Español: entrelazar', 'import-espanol-bubi'),
  ('ripetyapetyá', 's.', 'f.', NULL, 'Cl. 6', '(eL 5), la - e epe tyapetyá; -s apetyapetyá, las -s a apetyapetyá.', NULL, NULL, 'Español: entrepierna', 'import-espanol-bubi'),
  ('bosobo', 's.', 'm.', NULL, NULL, '(eL 3), el - o bOsobo; -s besobo (eL 4), los -s e besobo.', NULL, NULL, 'Español: entretenimiento', 'import-espanol-bubi'),
  ('róho', 's.', 'm.', NULL, 'Cl. 6', '(el. 5/6), rohoho (el. 5/6), el- e róho, e rohoho; -s bóho, boho ho, los -s a bóho, a bohoho.', NULL, NULL, 'Español: entusiasmo', 'import-espanol-bubi'),
  ('eakakótte', 's.', 'm.', NULL, 'Cl. 7', 'el- eakakótte; -s biakakótte, los -s e biakakótte.', NULL, NULL, 'Español: envase', 'import-espanol-bubi'),
  ('rulla', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: envejecer', 'import-espanol-bubi'),
  ('borulla', 's.', 'm.', NULL, 'Cl. 3', 'el o bOrulla, o boruri; -s berulla (eL 4), beruri, los -s e berulla, e beruri.', NULL, 'boruri', 'Español: envejecimiento', 'import-espanol-bubi'),
  ('ará', 'v.', NULL, NULL, NULL, 'o senáera, oráa, 2. - a alguien o takólla, o ará botyo.', NULL, 'senáera, ará', 'Español: enviar', 'import-espanol-bubi'),
  ('buehé', 's.', 'f.', NULL, 'Cl. 3', 'la - o buehé, o bokoa; -s beehe, bekoa, las -s e beehe, e bekoa.', NULL, 'bokoa', 'Español: envidia', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'el - e rihúo; -s bahúo, los -s a bahúo; los -s de los extran jeros a bahúo bá bakóllé.', 'los -s de los extran jeros a bahúo bá bakóllé.', NULL, 'Español: envoltorio', 'import-espanol-bubi'),
  ('rihúo', 's.', 'm.', NULL, 'Cl. 5', 'el- e rihúo; -s bahúo, los -s a bahúo.', NULL, NULL, 'Español: envuelto', 'import-espanol-bubi');

-- Lote 37 (entradas 901 a 925)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ebelló', 's.', 'f.', NULL, 'Cl. 7', '- lluviosa esubba, - seca tyokkó, la - e ebelló, la - lluviosa e esubba, la -seca e tyokkó; -s ibelló -s lluviosas bisubba, -s secas tyokkó, las -s e ibelló, las -s lluviosas e bisubba, las -s secas i tyokkó.', NULL, NULL, 'Español: época', 'import-espanol-bubi'),
  ('itya', 'v.', NULL, NULL, NULL, '2. -se o itta; preso me equivoco n la itta, te equivocas o la itta, se equivoca a la itta, etc.; paso punto me equivo qué n ityi, te equivocaste o ityi, se equivocó a 428 / era ityi, etc.; paso duro me equivocaba n i...', 'preso me equivoco n la itta, te equivocas o la itta, se equivoca a la itta, etc. | paso punto me equivo qué n ityi, te equivocaste o ityi, se equivocó a 428 / era ityi, etc. | paso duro me equivocaba n i.', NULL, 'Español: equivocar', 'import-espanol-bubi'),
  ('epa''á', 's.', 'm.', NULL, 'Cl. 7', '- de mar epa''á, el - e epa''á, el - de mar e epa''á; -s ipa''á, -s de mar ipa''á, los -s e ipa''á, los -s de mar e ipa''á.', NULL, NULL, 'Español: erizo', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: errar', 'import-espanol-bubi'),
  ('loribbí', 's.', 'm.', NULL, 'Cl. 7', '(el. 1 1), eityi, eitalla, el- o loribbí, e eityi, e eitalla; -es beribbí, biityi, biitalla, los -es e beribbí, e biityi, e biitalla.', NULL, NULL, 'Español: error', 'import-espanol-bubi'),
  ('buebá', 's.', 'm.', NULL, 'Cl. 3', 'el - o buebá, o webbá; -s bebá, los -s e bebá.', NULL, 'webbá', 'Español: eructo', 'import-espanol-bubi'),
  ('kuppá', 's.', 'm.', NULL, 'Cl. 9', 'el - e kuppá; -s kup pá (el. lO), los -s i kuppá. esa, dem. *0 (efr. ese).', NULL, NULL, 'Español: erudito', 'import-espanol-bubi'),
  ('bOlakka', 's.', 'm.', NULL, 'Cl. 3', 'el- o bolakka; esca lones belakka, los escalones e belakka.', 'esca lones belakka, los escalones e belakka.', NULL, 'Español: escalón', 'import-espanol-bubi'),
  ('simpa', 's.', 'm.', NULL, 'Cl. 12', 'el- e simpa, e empa; -s tompa, bim pa, los -s o tompa, e bimpa.', NULL, NULL, 'Español: escaño', 'import-espanol-bubi'),
  ('sebbáa', 'v.', NULL, NULL, NULL, '2. -se o sebéa;', NULL, NULL, 'Español: escapar', 'import-espanol-bubi'),
  ('lotáppo', 's.', 'm.', NULL, 'Cl. 4', '(el. 1 1), el- o lotáppo; -s betáppo, los -s e betáppo.', NULL, NULL, 'Español: escaparate', 'import-espanol-bubi'),
  ('epippí', 's.', 'm.', NULL, 'Cl. 7', 'el - e epippí; -s ipippí, mpippí, los -s e ipippí, e mpippí.', NULL, NULL, 'Español: esclavo', 'import-espanol-bubi'),
  ('ukka', 'v.', NULL, NULL, NULL, 'preso yo escojo un libro n la ukka ribúkku, n la suppáa ribúkku; paso punto yo escogí una tela n ukki luua, n suppíi luua;pas. duro ella escogía el camino cor to a supessi e telle kutyú. Tb. o toM/la.', 'preso yo escojo un libro n la ukka ribúkku, n la suppáa ribúkku;', NULL, 'Español: escoger', 'import-espanol-bubi'),
  ('bOkuerakueráa', 'adj.', NULL, NULL, 'Cl. 1', 'el- o bOkuera k ueráa; -es bakuerakueráa, los -es a bakue r a k ueráa.', NULL, NULL, 'Español: escolar', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, '2. -se o lepea; preso me escondo n la lepea, te escondes o la lepea, se esconde a la lepea, etc.; paso punto me escondí n lepei, te escondiste o lepei, se escondíó a lepei, etc.; paso duro me escondía n lepieseei, te escondías o le...', 'preso me escondo n la lepea, te escondes o la lepea, se esconde a la lepea, etc. | paso punto me escondí n lepei, te escondiste o lepei, se escondíó a lepei, etc. | paso duro me escondía n lepieseei, te escondías o le.', NULL, 'Español: esconder', 'import-espanol-bubi'),
  ('eleppo', 's.', 'm.', NULL, 'Cl. 7', 'el - e eleppo, e rilekku; -s bileppo, balekku, los -s e bileppo, a balekku.', NULL, NULL, 'Español: escondite', 'import-espanol-bubi'),
  ('boelo''o', 's.', 'm.', NULL, 'Cl. 3', 'el - o boelo''o; escorpiones beelo''o, bielo''o, los escorpiones e beelo''o, e bielo''o.', 'escorpiones beelo''o, bielo''o, los escorpiones e beelo''o, e bielo''o.', NULL, 'Español: escorpión', 'import-espanol-bubi'),
  ('lopetyíi', 's.', 'm.', NULL, 'Cl. 11', 'el- o lopetyíi; -es epetyíi, los -es e epetyíi.', NULL, NULL, 'Español: escozor', 'import-espanol-bubi'),
  ('irera', 'v.', NULL, NULL, NULL, 'paso duro yo escribía a tu her mana n ireresiia o wetta o, tú escribías o ireresiia, o máke...', 'paso duro yo escribía a tu her mana n ireresiia o wetta o, tú escribías o ireresiia, o máke.', 'máke', 'Español: escribir', 'import-espanol-bubi'),
  ('sing', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bOátyera; -s baoátyera, los -s a baoátyera.', NULL, NULL, 'Español: escuchante', 'import-espanol-bubi'),
  ('batóbiera', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: escuchar', 'import-espanol-bubi'),
  ('kobo', 's.', 'm.', NULL, 'Cl. 9', 'el - e kobo; -s kobo, los -s i kobo.', NULL, NULL, 'Español: escudo', 'import-espanol-bubi'),
  ('puera', 'v.', NULL, NULL, 'Cl. 1', '2. - saliva o puera tuái. ese, dem. *0; 00 : - hombre 00 boie; obo : - árbol obo bOtté; ere : - Sol ere itohi; ee : - pueblo ee eriia, - animal ee nabba; 010 (el. 1 1): - vestido 010 luua; ese : - suceso ese sokko.', 'obo : - árbol obo bOtté; | ee : - pueblo ee eriia, - animal ee nabba; | ese : - suceso ese sokko.', NULL, 'Español: escupir', 'import-espanol-bubi'),
  ('eu''o', 's.', 'm.', NULL, 'Cl. 7', 'esiaello, el- e eu''o, e ritolló, e esiaello; eslabones biu''o, batolló, bisiaello, los eslabones e biu''o, a batolló, e bisiaello.', 'eslabones biu''o, batolló, bisiaello, los eslabones e biu''o, a batolló, e bisiaello.', NULL, 'Español: eslabón', 'import-espanol-bubi'),
  ('nópibia', 'v.', NULL, 'pl.', NULL, 'preso mi madre esnifa tabaco molido o oberii rh a la nópibia sinópi; paso punto los bra ceros esnifaron el tabaco molido a bakollé ba nópibiia e sinópi. eso, prono dem. ee : ese objeto, eso ee ollé, ee, entrégame - e''era le ee.', 'preso mi madre esnifa tabaco molido o oberii rh a la nópibia sinópi;', NULL, 'Español: esnifar', 'import-espanol-bubi');

-- Lote 38 (entradas 926 a 950)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bosáráa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bosáráa; -es basáráa, los -es a basáráa.', NULL, NULL, 'Español: espantador', 'import-espanol-bubi'),
  ('esárii', 's.', 'm.', NULL, 'Cl. 7', 'el - e esáríi, e esára; -s bisárii, bisára, los -s e bisárii, e bisára. España, s.f ripaasí, la - e ripaasí; -s apaa sí, las -s a apaasi.', NULL, NULL, 'Español: espanto', 'import-espanol-bubi'),
  ('opanná', 's.', 'm.', NULL, 'Cl. 1', '-a opanári, el - o opanná, la - o opanári; -es apanná, -as, apanári, los -es a apanná, las -as a apanári. 430 / esparcir', NULL, NULL, 'Español: español', 'import-espanol-bubi'),
  ('ehítaeri', 's.', 'm.', NULL, 'Cl. 7', 'el - e ehítaeri; -es bihítaeri, los -es e bihítaeri.', NULL, NULL, 'Español: espectador', 'import-espanol-bubi'),
  ('bOleppo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOleppo; -s beleppo, los -s e beleppo.', NULL, NULL, 'Español: espejo', 'import-espanol-bubi'),
  ('losorá', 's.', 'm.', NULL, 'Cl. 11', 'el - o losorá; -s basorá, los -s a basorá.', NULL, NULL, 'Español: esperma', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'el - o bolotyi; -s balo tyi, los -s a balotyi.', NULL, NULL, 'Español: espía', 'import-espanol-bubi'),
  ('bohiammo', 's.', 'm.', NULL, 'Cl. 1', 'el - o bohiammo, e elottyí; -s bohiammo, bilottyí, los -s a bohiammo, e bilottyí.', NULL, NULL, 'Español: espiritista', 'import-espanol-bubi'),
  ('rnmo', 's.', 'm.', NULL, 'Cl. 1', 'bOé, boteríbbo, el- o rnmo, o boribbo, o boé, o boteríbbo; -s bibbo, baribbo, beoé, bateríbbo, los -s a bibbó, a baribbo, e beoé, a bateríbbo.', NULL, 'boribbo, boé, boteríbbo', 'Español: espíritu', 'import-espanol-bubi'),
  ('bObbe', 's.', 'm.', NULL, 'Cl. 1', 'el- o bobbe; -s bobbe, abállá, los -s a bobbe, a abállá.', NULL, NULL, 'Español: esposo', 'import-espanol-bubi'),
  ('ekáókáó', 's.', 'm.', NULL, NULL, '(eL 7), el- e ekáókáó; -s bikáókáó (eL 8), los -s e bikáókáó.', NULL, NULL, 'Español: esputo', 'import-espanol-bubi'),
  ('rn', 's.', NULL, NULL, 'Cl. 4', 'rn. losikko (el. 1 1), luM (el. 1 1), el - o losikko, o luhá; -s besikko, kuhá, los -s e besikko, i kuhá.', NULL, 'luhá', 'Español: esqueleto', 'import-espanol-bubi'),
  ('dem', 'adj.', NULL, NULL, NULL, 'dem. *10 (efr. este).', NULL, NULL, 'Español: esta', 'import-espanol-bubi'),
  ('riiissa', 's.', 'm.', NULL, 'Cl. 6', '(eL 5), el- e riossa; -s baos sa, los -s a baossa.', NULL, NULL, 'Español: estadio', 'import-espanol-bubi'),
  ('ebo''u', 's.', 'm.', NULL, 'Cl. 7', 'el- e ebo''u; -s mbo''u, los -s e mbo''u.', NULL, NULL, 'Español: estanque', 'import-espanol-bubi'),
  ('dem', 'adj.', NULL, NULL, 'Cl. 3', 'dem. 010; - hombre 010 bOie , árbol bolo botté, - barril rilo ribetté, - pueblo elo eriia, - animal elo nabba, - brazo 1010 lobbo, - cochecito silo simotóo (eL 12), - cochecito es muy rápi do silo simotóo sí la húbbia sóté, etc. 2. osso.', NULL, NULL, 'Español: este', 'import-espanol-bubi'),
  ('onná', 'adv.', NULL, NULL, NULL, 'onná (punto cardinal). Tb. osso.', NULL, NULL, 'Español: este', 'import-espanol-bubi'),
  ('lotatáppa', 's.', 'f.', NULL, 'Cl. 11', 'la o lotatáppa, o bOassó; -s batatáppa, beas só, las -s a batatáppa, e beassó.', NULL, 'b', 'Español: estera', 'import-espanol-bubi'),
  ('boá', 's.', 'm.', NULL, 'Cl. 3', 'buía (eL 3), rituttá, el- o boá, o buía, e rituttá; -s beoá, biía, batuttá, los -s e beoá, e biía, a batuttá.', NULL, 'buía', 'Español: estercolero', 'import-espanol-bubi'),
  ('eoppa', 's.', 'm.', NULL, NULL, '(eL 7), el - e eoppa; -es biop pa (eL 8), los -es e bioppa.', NULL, NULL, 'Español: estéril', 'import-espanol-bubi'),
  ('tyokkó', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyokkó; -s tyok kó, los -s i tyokkó.', NULL, NULL, 'Español: estío', 'import-espanol-bubi'),
  ('rebbá', 's.', 'm.', NULL, 'Cl. 5', 'el e rebbá, o buelláa; -s bebbá, bielláa, los -s a bebbá, e bielláa.', NULL, 'buelláa', 'Español: estómago', 'import-espanol-bubi'),
  ('tyipóbia', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: estorbar', 'import-espanol-bubi'),
  ('etobbí', 's.', 'm.', NULL, 'Cl. 7', 'el - e etobbí; -s bitobbí, los -s e bitobbí.', NULL, NULL, 'Español: estorbo', 'import-espanol-bubi'),
  ('tyiétyié', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyiétyié, e etyihétyihé; -s tyiétyié, bityihétyihé, los -s i tyiétyié, e bityihétyihé.', NULL, NULL, 'Español: estornudo', 'import-espanol-bubi');

-- Lote 39 (entradas 951 a 975)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribetebette', 's.', 'f.', NULL, 'Cl. 5', 'ehurí, la - e ribetébétte, e esello, e ehurí; -s abetebétte (CI. 6), bisello (CI. 8), bihurí, las - s a abetebétte, e bisel lo, e bihurí.', NULL, NULL, 'Español: estratagema', 'import-espanol-bubi'),
  ('buppá', 's.', 'm.', NULL, 'Cl. 3', 'el - o bup pá, o bOmpá; -s biuppá, bempá, los -s e biuppá, e bempá.', NULL, 'b', 'Español: estrépito', 'import-espanol-bubi'),
  ('tyábbia', 'v.', NULL, NULL, 'Cl. 3', 'preso el calor estría el suelo de barro e húé e lá tyábbia o bobba bO e bitokko. 2. -se o tyábba; preso el suelo se estría o bobba bO lá tyábba;pas. punt. las chapas de zinc se estriaron i tyallá i tyábbi. 432 / estrofa estrofa, s'' ¡: bosari, la - o bosari; -s besa ri, las -s e besari.', 'preso el calor estría el suelo de barro e húé e lá tyábbia o bobba bO e bitokko. | preso el suelo se estría o bobba bO lá tyábba;', NULL, 'Español: estriar', 'import-espanol-bubi'),
  ('ribátto', 's.', 'm.', NULL, 'Cl. 5', 'kuttyá (els. 9 y 10), roppó; -s abátto, kuttyá, bOp pó; el - e ribátto, e kuttyá; los - a abátto, i kuttyá.', 'el - e ribátto, e kuttyá;', NULL, 'Español: estropajo', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'preso el perro estropea la comida e puá e lá kappa o bora''o; paso punto las ardillas estropea ron las piñas de cacao e besoppé be kappi e bimmáloto; paso duro tú estropeabas el agua o kapessi a bop pé. 2. -se o kapea; preso el coche se estropea mucho o motóo bo lá kapea Iíkelíke. 3. - para o kapella; preso nosotros estropeamos la escoba al barrendero to la kapella a bailola e ribetye.', 'preso el perro estropea la comida e puá e lá kappa o bora''o; | paso duro tú estropeabas el agua o kapessi a bop pé. | preso el coche se estropea mucho o motóo bo lá kapea Iíkelíke.', NULL, 'Español: estropear', 'import-espanol-bubi'),
  ('bOmpá', 's.', 'm.', NULL, 'Cl. 3', 'el - o bompá, o buppá; -s bempá, biuppá, los -s e bempá, e biuppá.', NULL, 'buppá', 'Español: estruendo', 'import-espanol-bubi'),
  ('bitta', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: estrujar', 'import-espanol-bubi'),
  ('wanapana', 's.', 'm.', NULL, 'Cl. 1', 'el - o wanapana, o bue''áa; -s banapana, be''áa, los -s a banapana, a be''áa.', NULL, 'bue''áa', 'Español: estudiante', 'import-espanol-bubi'),
  ('e''áa', 'v.', NULL, NULL, NULL, 'preso yo estudio la vida de la eminencia Riokaló n la e''áa e ribotyo ri o mmeá Riokaló; paso punto el escolar estudió la historia de su pueblo o bokuerakueráa e''í o boatta bO e eriia áí.', 'preso yo estudio la vida de la eminencia Riokaló n la e''áa e ribotyo ri o mmeá Riokaló;', NULL, 'Español: estudiar', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', 'el - e elabba; -s bilabba, los -s e bilabba.', NULL, NULL, 'Español: evento', 'import-espanol-bubi'),
  ('tapánna', 'v.', NULL, NULL, NULL, 'paso punto yo evoq ué mis recuerdos n tapán''a e betapáero m; preso vosotros evocáis las cosas de antaño lo la tapánna e bilabba bi á mmalé.', 'paso punto yo evoq ué mis recuerdos n tapán''a e betapáero m;', NULL, 'Español: evocar', 'import-espanol-bubi'),
  ('esori', 's.', 'm.', NULL, 'Cl. 7', 'el- e eso r i, e eke''o; exámenes bisori, bike''o, los exámenes e bisori, e bike''o.', 'exámenes bisori, bike''o, los exámenes e bisori, e bike''o.', NULL, 'Español: examen', 'import-espanol-bubi'),
  ('toom', 's.', 'm.', NULL, 'Cl. 13', 'botyappe, el- o toom, e raa''o, o botyappe; -s toom, baa''o, betyappe, los -s o toom, a baa''o, e betyappe. excusa, s'' ¡: ebotto, la - e ebotto; -s mbotto, las -s e mbotto.', NULL, 'botyappe', 'Español: excremento', 'import-espanol-bubi'),
  ('bOtó''i', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOtó''i; -s betó''i, los -s e betó''i.', NULL, NULL, 'Español: éxito', 'import-espanol-bubi'),
  ('botará', 'adj.', NULL, NULL, 'Cl. 3', 'el - o bOtará; -s beta rá, los -s e betará.', NULL, NULL, 'Español: experto', 'import-espanol-bubi'),
  ('anná', 'v.', NULL, NULL, NULL, 'pres. yo exprimo la naranja n la bitta e erelÍtya; paso punto tu hermana exprimió el limón o wet ta o a bityi e erem.', 'paso punto tu hermana exprimió el limón o wet ta o a bityi e erem.', NULL, 'Español: exprimir', 'import-espanol-bubi'),
  ('hékia', 'v.', NULL, NULL, NULL, 'pas. duro yo expulsaba n pupuálessi, tú expul sabas o pupuálessi, él expulsaba a pupuálessi, etc. * el alumno fue expulsado del colegio o bue''áa a hélda o o sikuella.', NULL, NULL, 'Español: expulsar', 'import-espanol-bubi'),
  ('bátyera', 'v.', NULL, NULL, NULL, 'extremidad / 433', NULL, NULL, 'Español: extender', 'import-espanol-bubi'),
  ('walállo', 's.', 'm.', NULL, 'Cl. 8', 'el - o walállo; -es bialállo, los -es e bialállo.', NULL, NULL, 'Español: exterior', 'import-espanol-bubi'),
  ('rilláa', 'v.', NULL, NULL, NULL, 'preso el demonio extermina mi hogar o mmo a la rilláa e tyóbbo r Í l, etc.; paso punto el ogro exterminó a las personas del pueblo e enokonoko e rirí a batyo ba e eriia wela, etc.', 'preso el demonio extermina mi hogar o mmo a la rilláa e tyóbbo r Í l, etc. | paso punto el ogro exterminó a las personas del pueblo e enokonoko e rirí a batyo ba e eriia wela, etc.', NULL, 'Español: exterminar', 'import-espanol-bubi'),
  ('tokka', 'v.', NULL, NULL, NULL, 'preso el pirómano extingue el incendio o boloppa a la tokka e riba saisso; paso punto el pueblo extinguió el fuego e eriia e tokkí o boissó, etc.', 'preso el pirómano extingue el incendio o boloppa a la tokka e riba saisso;', NULL, 'Español: extinguir', 'import-espanol-bubi'),
  ('haa', 'v.', NULL, NULL, NULL, 'pres. el médico extirpa la espina e rokútta ri lá haa o lonorí; paso punto nosotros extirpamos las niguas to haai e biortó, ellos extirparon los moluscos unival vos pequeños ba tokóri i tyetyélle.', 'paso punto nosotros extirpamos las niguas to haai e biortó, ellos extirparon los moluscos unival vos pequeños ba tokóri i tyetyélle.', NULL, 'Español: extirpar', 'import-espanol-bubi'),
  ('bokere', 's.', 'm.', NULL, 'Cl. 1', 'boríbáa, bokoé, el o bokere, o bOkollé, o oporto, o borí báa, o bokoé; -s bakere, bakollé, aportO, baríbáa, bakoé, los -s a bakere, a bakollé, a aporto, a barí báa, a bakoé.', NULL, 'b, oporto, borí, bokoé', 'Español: extranjero', 'import-espanol-bubi'),
  ('ebaeri', 's.', 'f.', NULL, 'Cl. 7', 'la - e ebaeri; -s ibaeri, las -s e ibaeri; las - de coches e ibaeri bi e mootó.', 'las - de coches e ibaeri bi e mootó.', NULL, 'Español: fábrica', 'import-espanol-bubi'),
  ('opénna', 's.', 'm.', NULL, 'Cl. 1', 'obáa (el. 1 ), (de collares) bOsokka, el - o opénna, o obáa, o bosokka; -s apénna, abáa, basokka, los -s a apénna, a abáa, a basokka.', NULL, 'obáa, bosokka', 'Español: fabricante', 'import-espanol-bubi');

-- Lote 40 (entradas 976 a 1000)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('báa', 'v.', NULL, NULL, NULL, 'pas. duro yo fabricaba n báes si, n pénessi, tú fabrica bas o báessi, o pénessi, él fabricaba a báessi, a pénessi, etc.', NULL, 'pénessi', 'Español: fabricar', 'import-espanol-bubi'),
  ('bosso', 's.', 'f.', NULL, 'Cl. 3', 'la - o bosso; -s besso, las -s e besso.', NULL, NULL, 'Español: faceta', 'import-espanol-bubi'),
  ('IOtappo', 's.', 'f.', NULL, 'Cl. 11', 'la - o lotappo; -s tappo, las -s i tappo; la - de la iglesia o lotappo 10 e tyotyi, las - de la iglesia i tappo i e tyotyi.', 'la - de la iglesia o lotappo 10 e tyotyi, las - de la iglesia i tappo i e tyotyi.', NULL, 'Español: fachada', 'import-espanol-bubi'),
  ('botóbóto', 'adj.', NULL, NULL, 'Cl. 9', 'ebotóebotó, el e botóboto, e ebotóebotó; -es botóboto, ibotóíbotó, los -es e botóbóto, e ibotóíbo tó; el - camino e telle botóbóto.', 'el - camino e telle botóbóto.', NULL, 'Español: fácil', 'import-espanol-bubi'),
  ('sáppo', 's.', 'f.', NULL, 'Cl. 12', 'la - e sáppo; -s tuáppo, las -s o tuáppo.', NULL, NULL, 'Español: factoría', 'import-espanol-bubi'),
  ('rikuera', 'v.', NULL, NULL, NULL, 'preso yo te facuIto para hablar por mí n la o pá to''ú o le tówelle (o tówella); paso punto faculté a tu trabajador para pedirte el dinero n péi o bolakoláko o o étte (o étta) i tyokko.', 'preso yo te facuIto para hablar por mí n la o pá to''ú o le tówelle (o tówella);', NULL, 'Español: facultar', 'import-espanol-bubi'),
  ('rokútta', 's.', 'm.', NULL, 'Cl. 5', 'el- e rokútta; -s bokútta, los -s a bokútta.', NULL, NULL, 'Español: facultativo', 'import-espanol-bubi'),
  ('elako', 's.', 'f.', NULL, 'Cl. 7', 'la - e elako, e mpo; -s bilako, mpo, las -s e bilako, i mpo.', NULL, NULL, 'Español: faena', 'import-espanol-bubi'),
  ('bókobia', 'v.', NULL, NULL, NULL, 'paso duro los hombres faenaban durante toda la noche a baie ba bóko biesiia o bOtyíó bo ubbaa.', 'paso duro los hombres faenaban durante toda la noche a baie ba bóko biesiia o bOtyíó bo ubbaa.', NULL, 'Español: faenar', 'import-espanol-bubi'),
  ('kissó', 's.', 'm.', NULL, 'Cl. 9', 'el - e kissó; faisanes kissó, los faisanes i kissó. 436 / faja faj a, s.f boutta, la - o boutta; -s beutta, las -s e beutta.', 'faisanes kissó, los faisanes i kissó.', NULL, 'Español: faisán', 'import-espanol-bubi'),
  ('boutta', 's.', 'm.', NULL, 'Cl. 3', 'el - o boutta; fajines beutta, los fajines e beutta. faj o, tyoppá, el - e tyoppá; -s tyoppá (el. lO), los -s i tyoppá.', 'fajines beutta, los fajines e beutta.', NULL, 'Español: fajín', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, '', NULL, NULL, 'Español: fallar', 'import-espanol-bubi'),
  ('eséri', 's.', 'm.', NULL, 'Cl. 7', 'riwéi, el- e eséri, e ribuéi, e riwéi; -s biséri, abuéi, awéi, los-s e biséri, a abuéi, a awéi.', NULL, NULL, 'Español: fallecimiento', 'import-espanol-bubi'),
  ('eityi', 's.', 'm.', NULL, 'Cl. 7', 'el- e eityi; -s bii tyi, los -s e biityi, hay un - he eityi.', NULL, NULL, 'Español: fallo', 'import-espanol-bubi'),
  ('booppá', 's.', 'm.', NULL, 'Cl. 3', '- gran de ityapotyapo, el- o booppá, e si pepe, el - grande e ityapotyapo; -s beoppá, tope pe, -s grandes batyapotyapo, los -s e beoppá, o topepe. los -s grandes a batyapo tyapo.', NULL, 'topepe', 'Español: falo', 'import-espanol-bubi'),
  ('sooa', 'v.', NULL, NULL, NULL, 'preso el militar falsea los hechos o obitábítta a la hótella e bilab ba; paso punto él falseó la fecha a hótem e elló.', 'preso el militar falsea los hechos o obitábítta a la hótella e bilab ba;', NULL, 'Español: falsear', 'import-espanol-bubi'),
  ('obotyibótyi', 'adj.', NULL, NULL, 'Cl. 1', 'el - o obotyibótyi; -s abotyibótyi, los -s a abotyíbótyi.', NULL, NULL, 'Español: falso', 'import-espanol-bubi'),
  ('itta', 'v.', NULL, NULL, NULL, '- al respeto o kup pia, - a la verdad o sooa; tu faltas a la verdad o la sooa.', 'tu faltas a la verdad o la sooa.', NULL, 'Español: faltar', 'import-espanol-bubi'),
  ('borannó', 's.', 'm.', NULL, 'Cl. 1', 'el - o borannó, o botonka; -s barannó, batonka, los -s a barannó, a batonka.', NULL, 'botonka', 'Español: fang', 'import-espanol-bubi'),
  ('etokkó', 's.', 'm.', NULL, 'Cl. 8', '(eI.7), lotokotokkó (el. 1 1), lotokkó (eL 11), el- e etokkó, o lotoko tokkó, o lotokkó; -s bitokkó, los -s e bitokkó.', NULL, 'lotoko, lotokkó', 'Español: fango', 'import-espanol-bubi'),
  ('mmó', 's.', 'm.', NULL, 'Cl. 3', '(eL 1), boé, el- o mmó, o boé; -s bibbó, beoé, ibbó, los -s a bibbó, e beoé, a ibbó.', NULL, 'boé', 'Español: fantasma', 'import-espanol-bubi'),
  ('bo''e', 's.', 'm.', NULL, 'Cl. 3', 'el - o bo''e; -s be''e, los -s e be''e.', NULL, NULL, 'Español: fardo', 'import-espanol-bubi'),
  ('bokuakuabia', 's.', 'm.', NULL, 'Cl. 1', 'el - o bokuakuabia; -s bakuakuabia, los -s a bakuakuabia.', NULL, NULL, 'Español: farfullero', 'import-espanol-bubi'),
  ('OOla', 's.', 'm.', NULL, 'Cl. 3', '110, meressi, el - o bolallo, e meressi; -s belallo, meressi, los -s e belallo, i meressi.', NULL, NULL, 'Español: fármaco', 'import-espanol-bubi'),
  ('bokokkó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bokokkó; -s bekokkó, los -s e bekokkó.', NULL, NULL, 'Español: faro', 'import-espanol-bubi');

-- Lote 41 (entradas 1001 a 1025)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('obotyibótyi', 's.', 'm.', NULL, 'Cl. 1', 'el - o obotyibótyi, o bosoisói; -s abotyibótyi, basoisói, los -s a abotyibótyi, a basoisói.', NULL, 'bosoisói', 'Español: farsante', 'import-espanol-bubi'),
  ('ehelen', 's.', 'm.', NULL, 'Cl. 7', 'el - e eheleri; -es biheleri, los -es e biheleri. * por - tyuíi. f ijo / 437', NULL, NULL, 'Español: favor', 'import-espanol-bubi'),
  ('moakanne', 's.', 'm.', NULL, 'Cl. 3', 'el mes de - o buéá bo a utamOóte.', 'el mes de - o buéá bo a utamOóte.', NULL, 'Español: febrero', 'import-espanol-bubi'),
  ('bi''ó', 'adj.', NULL, NULL, 'Cl. 6', 'estado - bi''ó, está - e bi''ó, el estado - a bi''ó.', NULL, NULL, 'Español: febril', 'import-espanol-bubi'),
  ('hMmiáa', 'v.', NULL, NULL, NULL, 'preso las heces de las vacas fecundan la tierra o t60m to i pókkó to lá hMmiáa o bobba; paso punto en el cuento, el ogro fecundó a la doncella e siatta wela, e eno konokko e hMmi o bulla.', 'preso las heces de las vacas fecundan la tierra o t60m to i pókkó to lá hMmiáa o bobba;', NULL, 'Español: fecundar', 'import-espanol-bubi'),
  ('rirnmarnmabi''o', 'adj.', NULL, NULL, 'Cl. 5', 'estoy - ne rim mammabi''o, ne lelle.', NULL, NULL, 'Español: feliz', 'import-espanol-bubi'),
  ('sélla', 'v.', NULL, NULL, NULL, 'preso el hombre fenece o bOie a la sélla; paso punto el hombre feneció o boie a séri; paso duro el anciano fenecía de vejez e obéolla e sélessi la o borulla.', 'preso el hombre fenece o bOie a la sélla; | paso duro el anciano fenecía de vejez e obéolla e sélessi la o borulla.', NULL, 'Español: fenecer', 'import-espanol-bubi'),
  ('ee', 'adj.', NULL, NULL, 'Cl. 7', 'es un hecho - elabba ee. fenómeno, 1. elabba, ebátya, el - e elabba, e ebátya; -s bilabba, ibátya, los -s e bilabba, e ibátya. 2. lelle; es - le lelle.', 'es un hecho - elabba ee. | es - le lelle.', NULL, 'Español: fenomenal', 'import-espanol-bubi'),
  ('bOlobbo', 's.', 'm.', NULL, 'Cl. 3', 'el o bolobbo, e enyankue; -s belobbó, binyankue, los -s e belobbo, e binyankue. fé retro, lobakka, el- o lobakka; -s bakka, los -s i bakka.', NULL, NULL, 'Español: feo', 'import-espanol-bubi'),
  ('nabba', 'adj.', NULL, NULL, 'Cl. 9', 'el- e nabba; feroces nab ba, los feroces i nabba; es una persona - 010 bOtyo nabba.', 'feroces nab ba, los feroces i nabba;', NULL, 'Español: feroz', 'import-espanol-bubi'),
  ('pénera', 'v.', NULL, NULL, NULL, 'preso nosotros festeja mos el día de su matrimonio túe to la pénera ello e mareri áí; paso punto ellos festejaron su victoria be ba péneriia e etó''a áí.', 'preso nosotros festeja mos el día de su matrimonio túe to la pénera ello e mareri áí;', NULL, 'Español: festejar', 'import-espanol-bubi'),
  ('ripelló', 's.', 'm.', NULL, 'Cl. 5', 'el - e ripelló; -s apel ló, los -s a apelló.', NULL, NULL, 'Español: festejo', 'import-espanol-bubi'),
  ('sipelló', 's.', 'm.', NULL, 'Cl. 12', 'el - e sipelló, e ripelló; festines topelló, apelló, los festines o topel1ó, a apelló.', 'festines topelló, apelló, los festines o topel1ó, a apelló.', NULL, 'Español: festín', 'import-espanol-bubi'),
  ('robbo', 's.', 'm.', NULL, 'Cl. 5', 'el - e robbo; -s bobbo, los -s a bobbo.', NULL, NULL, 'Español: fetiche', 'import-espanol-bubi'),
  ('bohiarnmo', 's.', 'm.', NULL, 'Cl. 1', 'el - o bo hiarnmo; -s bohiarnmo, los -s a bohiarnmo. f', NULL, NULL, 'Español: fetichero', 'import-espanol-bubi'),
  ('ribésse', 's.', 'f.', NULL, 'Cl. 5', 'la - e ribésse, e enénée; -s abésse, binénée, las -s a abéssé, e binénée. f', NULL, NULL, 'Español: iambrera', 'import-espanol-bubi'),
  ('eserubba', 's.', 'f.', NULL, 'Cl. 7', 'la - e eserubba; -s biserubba, las -s e biserubba. f', NULL, NULL, 'Español: ibra', 'import-espanol-bubi'),
  ('i''ia', 'v.', NULL, NULL, NULL, 'preso el policía ficha a los ladrones e eporosía e lá i''ia i húbbé; paso punto el guardián fichó a los visitantes o bolotyi a i''ia a babeppoo. f', 'preso el policía ficha a los ladrones e eporosía e lá i''ia i húbbé;', NULL, 'Español: ichar', 'import-espanol-bubi'),
  ('nabba', 's.', 'f.', NULL, 'Cl. 9', 'la - e nabba; -s nabba, las -s i nabba; es una - e nabba. f', 'es una - e nabba.', NULL, 'Español: iera', 'import-espanol-bubi'),
  ('hobabobbá', 'adj.', NULL, NULL, 'Cl. 9', 'el- e hobabobbá; -s hobabobbá, los -s i hObabobbá; es muy - e hObabobbá sóté. f', 'es muy - e hObabobbá sóté.', NULL, 'Español: iero', 'import-espanol-bubi'),
  ('ripelló', 's.', 'f.', NULL, 'Cl. 5', 'la - e ripel ló, e rOóbO; -s apelló, bOóbo, las-s a apelló, a boóbo. f', NULL, NULL, 'Español: iesta', 'import-espanol-bubi'),
  ('piri', 'adj.', NULL, NULL, NULL, 'rnmaeri; este poste está - elo eho''o e piri. 438 / fila f', 'este poste está - elo eho''o e piri.', NULL, 'Español: fijo', 'import-espanol-bubi'),
  ('botyobuebue', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOtyobuebue, o bohOlátyo; -s batyo bebe, bahOlátyo, los -s a batyobebe, a bahOlátyo. f', NULL, 'boh', 'Español: ilántropo', 'import-espanol-bubi'),
  ('inetta', 's.', 'm.', NULL, 'Cl. 5', 'el- e inetta; -s banetta, los -s a banetta; el - del cuchillo e inetta rá o lo''obbá.', 'el - del cuchillo e inetta rá o lo''obbá.', NULL, 'Español: ilo', 'import-espanol-bubi'),
  ('lekella', 'v.', NULL, NULL, NULL, 'preso yo filtro el aceite n la lekella a biitá.', 'preso yo filtro el aceite n la lekella a biitá.', NULL, 'Español: filtrar', 'import-espanol-bubi');

-- Lote 42 (entradas 1026 a 1050)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('botyokáa', 's.', 'm.', NULL, 'Cl. 3', 'el - o botyokáa; -s betyokáa, los -s e betyokáa. f', NULL, NULL, 'Español: filtro', 'import-espanol-bubi'),
  ('obuéi', 's.', 'm.', NULL, 'Cl. 1', 'el - o obuéi; -s abuéi, los -s a abuéi.', NULL, NULL, 'Español: inado', 'import-espanol-bubi'),
  ('hasubbá', 's.', 'm.', NULL, NULL, 'al - a hasubbá. f', NULL, NULL, 'Español: final', 'import-espanol-bubi'),
  ('séra', 'v.', NULL, NULL, NULL, 'o sétya; preso yo finalizo la historia mañana n la sétya o boatta obaam; paso punto yo f inalicé el trabajo ayer n sétyia e elakó mpári. f', 'preso yo finalizo la historia mañana n la sétya o boatta obaam;', 'sétya', 'Español: inalizar', 'import-espanol-bubi'),
  ('lobákko', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o lobákko; -s bákko, los -s i bákko. f', NULL, NULL, 'Español: irmamento', 'import-espanol-bubi'),
  ('saatta', 'v.', NULL, NULL, NULL, 'f', NULL, NULL, 'Español: irmar', 'import-espanol-bubi'),
  ('borikora', 's.', 'm.', NULL, 'Cl. 1', 'el - o borikora; -es barikora, los -es a barikora. f', NULL, NULL, 'Español: iscal', 'import-espanol-bubi'),
  ('kóno', 's.', 'm.', NULL, 'Cl. 12', 'bokóno (els. 1 y 3), el - e kóno, e sikóno, o bokóno; -s kóno, tokóno, bakóno, bekóno, los -s i kóno, o tokóno, a bakóno, e bekóno. f', NULL, 'bokóno, tokóno', 'Español: laco', 'import-espanol-bubi'),
  ('buítya', 's.', 'm.', NULL, 'Cl. 3', 'el - o buítya; -s bítya, los -s e bítya. f', NULL, NULL, 'Español: lato', 'import-espanol-bubi'),
  ('hútta', 'v.', NULL, NULL, NULL, 'preso la monja flexiona sus rodillas e materi e lá hútta e birúu bi áe; pas punto el empe rador flexionó sus rodillas o botákityé a hútyi e birú bi áí. 2. -se o hútéa; preso me flexiono cuando pasa la donce lla n la hútéa a la hettáa lá o bulla. f', 'preso la monja flexiona sus rodillas e materi e lá hútta e birúu bi áe; | preso me flexiono cuando pasa la donce lla n la hútéa a la hettáa lá o bulla.', NULL, 'Español: lexionar', 'import-espanol-bubi'),
  ('be''', 'v.', NULL, NULL, NULL, 'pres. los cayucos flotan e biát to be lá be''a, hay alguien que flota en el agua he bOtyo ná a la be''a a bop pé wela; paso punto ellos flotaron ba be''i; paso duro los asientos flotaban en el agua fracturar I 439 e bimpa bi be''essi a boppé wela. 2. - con o be''alla;pres. el hombre flota con un globo o boie a la be''alla ebolobOllóo. f', 'paso punto ellos flotaron ba be''i;', NULL, 'Español: lotar', 'import-espanol-bubi'),
  ('boppé', 's.', 'm.', NULL, 'Cl. 6', '- vaginal losorá (el. 1 1), el - a boppé; el - vaginal o losorá; -s boppé, -s vaginales basorá, los -s a bop pé, los -s vaginales a basorá.', 'el - vaginal o losorá;', NULL, 'Español: lujo', 'import-espanol-bubi'),
  ('rióo', 's.', 'm.', NULL, 'Cl. 5', 'el - e rióo; fogones bíóo, los fogones a bíóo.', 'fogones bíóo, los fogones a bíóo.', NULL, 'Español: fogón', 'import-espanol-bubi'),
  ('sipéppa', 's.', 'm.', NULL, 'Cl. 12', 'el - e sipéppa, ejoliio; -s topéppa,foliio (el. JO), los -s o topéppa, i fOliio.', NULL, NULL, 'Español: folio', 'import-espanol-bubi'),
  ('tuam', 's.', 'm.', NULL, 'Cl. 13', 'el - o tuam, e bintanta; -s tuam, bintanta, los -s o tuam, e bintanta.', NULL, NULL, 'Español: follaje', 'import-espanol-bubi'),
  ('bolláa', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOlláa; follones belláa, los follones e belláa.', 'follones belláa, los follones e belláa.', NULL, 'Español: follón', 'import-espanol-bubi'),
  ('bukkiáa', 'v.', NULL, NULL, NULL, 'preso el presidente fo menta el odio o botákityé a la bukkiáa o bo kooa; paso punto la dictadura fomentó el dolor en la población o bopippí bo bukía o bokooa a batyo wela, paso duro nosotros fo mentábamos el dolor to bukiesiia e roppá.', 'preso el presidente fo menta el odio o botákityé a la bukkiáa o bo kooa;', NULL, 'Español: fomentar', 'import-espanol-bubi'),
  ('bOno''u', 's.', 'm.', NULL, 'Cl. 3', 'el- o bono''u; -s beno''u, los -s e beno''u.', NULL, NULL, 'Español: fondo', 'import-espanol-bubi'),
  ('boribáa', 'adj.', NULL, NULL, 'Cl. 1', 'bokóllé, el o bOribáa, o bokóllé; -s baríbáa, bakóllé, los -s a baríbáa, a bakóllé.', NULL, 'bokóllé', 'Español: foráneo', 'import-espanol-bubi'),
  ('bOríbáa', 's.', 'm.', NULL, 'Cl. 1', 'el - o boribáa, o bOkóllé; -s baríbáa, bakóllé, los -s a baríbáa, a bakóllé.', NULL, 'b', 'Español: forastero', 'import-espanol-bubi'),
  ('é''ia', 'v.', NULL, NULL, NULL, 'pres. el maestro for ma a los alumnos o bui!''iáa a la é''ia a bakuera k u eráa; paso punto los abuelos formaron a sus nietos a bayólla ba é''ía i bobbé i ábó.', 'paso punto los abuelos formaron a sus nietos a bayólla ba é''ía i bobbé i ábó.', NULL, 'Español: formar', 'import-espanol-bubi'),
  ('óya', 'v.', NULL, NULL, NULL, 'preso nosotros fortalece mos nuestra amistad to la óya e belaka be áó; paso punto ellos fortalecieron sus relaciones be ba óía e bisaká bi ábó.', 'preso nosotros fortalece mos nuestra amistad to la óya e belaka be áó;', NULL, 'Español: fortalecer', 'import-espanol-bubi'),
  ('sing', 's.', NULL, NULL, 'Cl. 7', 'looleri (el. J J), la - o looleri. fo rtuna, f ka''ó (el. JO), kori (el. JO), la - i ka''ó, i korí; -s ka''ó (el. JO), kori (el. JO), las-s i ka''ó, i korÍ. fo rzar, o basólla, o fósibbia; preso los mili tares fuerzan la puerta a abitábítta ba lá basól la e púrúu, los soldados fuerzan a los estudiantes i sotyáa i la fó sibbia a banapana. fo sa, f esessé, bOlló, la - e esessé, o bolló; -s bisessé, b...', 'preso los mili tares fuerzan la puerta a abitábítta ba lá basól la e púrúu, los soldados fuerzan a los estudiantes i sotyáa i la fó sibbia a banapana.', 'basólla, fósibbia, bolló', 'Español: fortaleza', 'import-espanol-bubi'),
  ('esessé', 's.', 'm.', NULL, 'Cl. 7', 'el- e esessé; -s bisessé, los -s e bisessé.', NULL, NULL, 'Español: foso', 'import-espanol-bubi'),
  ('hára', 'v.', NULL, NULL, NULL, 'preso vosotros fotocopiáis esta imagen lo la katyobie ra eló ehánna.', 'preso vosotros fotocopiáis esta imagen lo la katyobie ra eló ehánna.', NULL, 'Español: fotocopiar', 'import-espanol-bubi');

-- Lote 43 (entradas 1051 a 1075)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('italla', 'v.', NULL, NULL, NULL, 'preso no hay nadie que fracasa ha tyí bOtyo bulálle ná a la italla; paso punto he fracasado n ka itari, n ka itaam.', 'preso no hay nadie que fracasa ha tyí bOtyo bulálle ná a la italla;', NULL, 'Español: fracasar', 'import-espanol-bubi'),
  ('eitalla', 's.', 'm.', NULL, 'Cl. 7', 'el- e eitalla, e esukuri; -s biitalla, bisukuri, los -8 e biitalla, e bi sukuri.', NULL, NULL, 'Español: fracaso', 'import-espanol-bubi'),
  ('attáa', 'v.', NULL, NULL, NULL, 'preso el jefe fracciona el trabajo o mmása a la attáa e elakó,', NULL, NULL, 'Español: fraccionar', 'import-espanol-bubi'),
  ('attáa', 'v.', NULL, NULL, NULL, 'paso punto ella fracturó tus dedos a bétyi e bené o. 2. -se o betéa; paso punto tus dedos se frac turaron e béné o be betéi.', 'paso punto tus dedos se frac turaron e béné o be betéi.', NULL, 'Español: fracturar', 'import-espanol-bubi'),
  ('epólIa', 'v.', NULL, NULL, 'Cl. 5', 'preso nosotros fragmentamos los panes to la epólla a basOppi:i, to la kétya a basoppo. Francia, s.ripuránsiia, la - e ripuránsiia.', 'preso nosotros fragmentamos los panes to la epólla a basOppi:i, to la kétya a basoppo.', NULL, 'Español: fragmentar', 'import-espanol-bubi'),
  ('sitó''o', 's.', 'm.', NULL, 'Cl. 12', 'el e sitó''o, e sikoppo; -s totó''o, tokoppo, los -s o totó''o, o tokoppo.', NULL, 'tokoppo', 'Español: frasco', 'import-espanol-bubi'),
  ('pélla', 'v.', NULL, NULL, NULL, 'preso la anciana frecuenta el oratorio e aríolla e lá pélla e rohiáa, el sacerdo te frecuenta el bar e pateri e lá sesella e riebba.', 'preso la anciana frecuenta el oratorio e aríolla e lá pélla e rohiáa, el sacerdo te frecuenta el bar e pateri e lá sesella e riebba.', NULL, 'Español: frecuentar', 'import-espanol-bubi'),
  ('ubolla', 'v.', NULL, NULL, NULL, 'ellos fregaron ba ubori.', NULL, NULL, 'Español: fregar', 'import-espanol-bubi'),
  ('tyetyéra', 'v.', NULL, NULL, NULL, 'preso yo frío el pescado n la tyetyéra i tyué, n la parabia i tyué; paso punto vosotros freisteis el pescado lo tyetyériia i tyué.', 'preso yo frío el pescado n la tyetyéra i tyué, n la parabia i tyué;', NULL, 'Español: freír', 'import-espanol-bubi'),
  ('sillé', 'adj.', NULL, NULL, 'Cl. 13', 'sillé (el. 1 2), el- e sillé; -s tuillé, los -s o tuillé.', NULL, NULL, 'Español: fresco', 'import-espanol-bubi'),
  ('silIé', 's.', 'm.', NULL, 'Cl. 12', 'el - e sillé; -es tuillé, los -es o tui lié.', NULL, NULL, 'Español: frescor', 'import-espanol-bubi'),
  ('sillé', 's.', 'm.', NULL, 'Cl. 12', 'el - e sillé; -s tuillé, los -s o tuillé.', NULL, NULL, 'Español: frío', 'import-espanol-bubi'),
  ('etyetyero', 'adj.', NULL, NULL, 'Cl. 7', 'el - e etyetyero; -s bityetyero, los -s e bityetyero.', NULL, NULL, 'Español: frito', 'import-espanol-bubi'),
  ('riobaera', 'v.', NULL, NULL, NULL, 'preso nosotros frotamos la copa to la riobaera e etyakka; paso punto ellos frotaron la pared ba rio baeriia é eteppé.', 'preso nosotros frotamos la copa to la riobaera e etyakka;', NULL, 'Español: frotar', 'import-espanol-bubi'),
  ('hMmáa', 'v.', NULL, NULL, NULL, 'preso las conversa ciones fructiferan e betó''ólló be lá hMmáa, e betó'' ólló be lá etta.', 'preso las conversa ciones fructiferan e betó''ólló be lá hMmáa, e betó'' ólló be lá etta.', NULL, 'Español: fructiferar', 'import-espanol-bubi'),
  ('ehMma', 's.', 'f.', NULL, 'Cl. 7', 'la - e ehMma; -s bihMma, las -s e bihMma.', NULL, NULL, 'Español: fruta', 'import-espanol-bubi'),
  ('rihMma', 's.', 'f.', NULL, 'Cl. 5', 'la - e rihMma; -s bahMma, las -s a bahMma.', NULL, NULL, 'Español: frutería', 'import-espanol-bubi'),
  ('bOissó', 's.', 'm.', NULL, 'Cl. 3', '- grande, ribasaisso, - de tres piedras ríóo, el - o bOissó, o moosó, el - grande e ribasaisso; -s beissó, meosó, -s grandes abasaisso, -s de tres piedras bíoo, los -s e beissó, e meosó, los -s grandes a abasaissO.', NULL, 'moosó', 'Español: fuego', 'import-espanol-bubi'),
  ('síoo', 's.', 'm.', NULL, 'Cl. 12', 'el e síóo, e siio; -s tuíoo, tuiio, los -s o tuíoo, o tuiio. fu elle, ebollá, el - e ebolIá; -s ibOlIá, los -s e ibolIá.', NULL, 'tuiio', 'Español: fueguecito', 'import-espanol-bubi'),
  ('walállo', 'adv.', NULL, NULL, 'Cl. 3', 'estoy - n la o walállo.', NULL, NULL, 'Español: fuera', 'import-espanol-bubi'),
  ('biítyií', 's.', 'm.', NULL, 'Cl. 1', 'el - i í biítyií o opelle; -s batyo, epelle, los -s a batyií, e epelle.', NULL, NULL, 'Español: fulano', 'import-espanol-bubi'),
  ('riwéi', 's.', 'm.', NULL, 'Cl. 5', 'ií bi ítyiléri; -es awéi, betyiléri, los -es a awéi, - e betyléri.', NULL, NULL, 'Español: funeral', 'import-espanol-bubi'),
  ('etataa', 's.', 'm.', NULL, 'Cl. 7', 'el - e etataa; -es bitataa, los -es e bitataa.', NULL, NULL, 'Español: fusil', 'import-espanol-bubi'),
  ('suppá', 's.', 'm.', NULL, 'Cl. 12', 'el e suppá, e pelófta; -es tuppá, pelótta, los -es o tuppá, i pelótta.', NULL, NULL, 'Español: fútbol', 'import-espanol-bubi'),
  ('iihelló', 'adj.', NULL, NULL, NULL, 'el- ii ohelló; el- del país o ohelló e eriia.', 'el- del país o ohelló e eriia.', NULL, 'Español: futuro', 'import-espanol-bubi');

-- Lote 44 (entradas 1076 a 1100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('mm', 's.', 'm.', NULL, 'Cl. 5', 'ityubbá (CI. 5), iso''o, el- e mm, e etyubbá, e iso''o; s búm, bityubbá, baso''o, los -s a búm, e bityubbá, a baso''o; el- del rey e ityub bá ri o bohítáari, el - del señor ministro e iso''o ri e mpó.', 's búm, bityubbá, baso''o, los -s a búm, e bityubbá, a baso''o;', NULL, 'Español: gabinete', 'import-espanol-bubi'),
  ('tyelle', 's.', 'm.', NULL, 'Cl. 9', 'el- e tyelle; -s tyelle, los -s i tyelle.', NULL, NULL, 'Español: gajo', 'import-espanol-bubi'),
  ('epólle', 's.', 'm.', NULL, 'Cl. 7', 'el - e epólle, e esapúsappú; -s ipólle, bisapúsappú, los -s e ipólle, e bisapúsappú.', NULL, NULL, 'Español: galápago', 'import-espanol-bubi'),
  ('esokka', 's.', 'm.', NULL, 'Cl. 7', 'el - e esokka; galardones bisokka, los galar dones e bisokka.', 'galardones bisokka, los galar dones e bisokka.', NULL, 'Español: galardón', 'import-espanol-bubi'),
  ('páa', 'v.', NULL, NULL, NULL, 'preso el presidente galardona al alcalde o botákityé a la páa o botúkku esokka; paso punto el alcalde galardonó al vinatero o botúkku a péi o boebba esokka.', 'preso el presidente galardona al alcalde o botákityé a la páa o botúkku esokka;', NULL, 'Español: galardonar', 'import-espanol-bubi'),
  ('boko''eerte', 's.', 'm.', NULL, 'Cl. 3', 'el- o boko''eette; -s beko'' eette (CI. 4), los -s e beko'' eerte.', NULL, NULL, 'Español: gallinero', 'import-espanol-bubi'),
  ('boteó''e', 's.', 'm.', NULL, 'Cl. 3', 'ko''e, el - o boteó''e, e tobeo''e, e ko''e; -s beteo''e, tobeo''e, ko''e, los -s e beteó''e, i tobeo''e, i ko''e.', NULL, NULL, 'Español: gano', 'import-espanol-bubi'),
  ('tyio', 's.', 'm.', NULL, 'Cl. 9', 'el- e tyio, e tokko; -s tyio, tokko, los -8 i tyio, i tokko.', NULL, NULL, 'Español: gancho', 'import-espanol-bubi'),
  ('eeppé', 's.', 'm.', NULL, 'Cl. 7', 'el - e eeppé; -es bieppé, los -es e bieppé.', NULL, NULL, 'Español: gandul', 'import-espanol-bubi'),
  ('epotyopotyo', 's.', 'm.', NULL, 'Cl. 7', 'el - e epotyopotyo, e etolótoló; -s ipotyopotyo, bitolótoló (CI. 8), los -s e ipotyopotyo, e bitolótoló. 444 / garfio', NULL, NULL, 'Español: ganso', 'import-espanol-bubi'),
  ('tyio', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyio; -s tyio, los -s i tyio.', NULL, NULL, 'Español: garfio', 'import-espanol-bubi'),
  ('ekáókáó', 's.', 'm.', NULL, 'Cl. 7', 'el - e ekáókáó; -s bikáókáó, los -s e bikáókáó.', NULL, NULL, 'Español: gargajo', 'import-espanol-bubi'),
  ('tyáa', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyáa; garrafo nes tyáa, los garrafones i tyáa.', 'garrafo nes tyáa, los garrafones i tyáa.', NULL, 'Español: garrafón', 'import-espanol-bubi'),
  ('ubbóo', 's.', 'm.', NULL, 'Cl. 7', 'el - e ubbóo; -s biubbóo, los -s e biubbóo.', NULL, NULL, 'Español: garrote', 'import-espanol-bubi'),
  ('kappa', 'v.', NULL, NULL, NULL, 'preso yo gasto tu dinero n la kappa i bonní ó; paso punto ellos gastaron sus bienes ba kappi i ka''ó i ábó; pas. duro yo gastaba dine r o n kapessi bonní.', 'preso yo gasto tu dinero n la kappa i bonní ó; | pas.', NULL, 'Español: gastar', 'import-espanol-bubi'),
  ('opótta', 'v.', NULL, NULL, NULL, 'pres. el bebé gatea e siné''e si lá opótta, el abuelo gatea porque ya es muy mayor o boyólla a la opótta kóri e''a bolólló;pas. punto el bebé gateó e siné''e si opó tyi.', NULL, NULL, 'Español: gatear', 'import-espanol-bubi'),
  ('obokkó', 's.', 'm.', NULL, 'Cl. 1', 'el - o obokkó; -s abokkó, los -s a abokkó.', NULL, NULL, 'Español: gemelo', 'import-espanol-bubi'),
  ('erutya', 's.', 'm.', NULL, 'Cl. 8', '(el..7), el - e erutya; -s birutya, los -s e birutya.', NULL, NULL, 'Español: gemido', 'import-espanol-bubi'),
  ('ké''a', 'v.', NULL, NULL, NULL, 'preso tú generas problemas o la báa bolláa.', 'preso tú generas problemas o la báa bolláa.', NULL, 'Español: generar', 'import-espanol-bubi'),
  ('buebué', 'adj.', NULL, NULL, 'Cl. 1', 'el - o buébué; -s bébé, los -s a bébé. * personas generosas batyo bébé.', NULL, NULL, 'Español: generoso', 'import-espanol-bubi'),
  ('kuppá', 's.', 'm.', NULL, 'Cl. 9', 'el - e kuppá; -s kuppá, los -s i kuppá.', NULL, NULL, 'Español: genio', 'import-espanol-bubi'),
  ('batyo', 's.', 'm.', NULL, 'Cl. 2', 'el - a batyo.', NULL, NULL, 'Español: gentío', 'import-espanol-bubi'),
  ('bOtyámaan', 'adj.', NULL, NULL, 'Cl. 1', 'el- o botyá maan; -s batyámaan, los -s a batyámaan.', NULL, NULL, 'Español: germánico', 'import-espanol-bubi'),
  ('botyámaan', 'adj.', NULL, NULL, 'Cl. 1', 'el - o bOtyá maan; -s batyámaan, los -s a batyámaan.', NULL, NULL, 'Español: germano', 'import-espanol-bubi'),
  ('puáa', 'v.', NULL, NULL, NULL, 'preso las semi llas germinan e biaakká be la puáa;pas. punt. los dátiles germinaron i pillá i puéi.', 'preso las semi llas germinan e biaakká be la puáa;', NULL, 'Español: germinar', 'import-espanol-bubi');

-- Lote 45 (entradas 1101 a 1125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ekéra', 'v.', NULL, NULL, NULL, 'preso el gobierno ges tiona los bienes del país e kóbinna a la ekéra i ka''ó i e eriia; pas. punto tú gestionaste tu vida o ekériia e ribotyo ó; paso duro los abuelos gestio naban los asuntos del pueblo a bayólla ba bi ckcrcsiia e bilabba bi e eriia.', 'preso el gobierno ges tiona los bienes del país e kóbinna a la ekéra i ka''ó i e eriia; | paso duro los abuelos gestio naban los asuntos del pueblo a bayólla ba bi ckcrcsiia e bilabba bi e eriia.', NULL, 'Español: gestionar', 'import-espanol-bubi'),
  ('ebotyéra', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebotyéra, e epoló; -s bibotyéra, mpoló, los -s e bibotye ra, e mpoló.', NULL, NULL, 'Español: gesto', 'import-espanol-bubi'),
  ('rutya', 'v.', NULL, NULL, NULL, 'preso el embajador gimotea porque murió su amigo o bobatákí a la rutya kóri a wéi o wéso''o áí. gotera / 445', 'preso el embajador gimotea porque murió su amigo o bobatákí a la rutya kóri a wéi o wéso''o áí.', NULL, 'Español: gimotear', 'import-espanol-bubi'),
  ('hótella', 'v.', NULL, NULL, NULL, 'o uálella; preso tú giras el asiento o la hótella e empa, o la uálella e empa, el coche gira o motóo bo lá hóterea; paso punto yo giré en la plaza n hóterei o riossa.', 'preso tú giras el asiento o la hótella e empa, o la uálella e empa, el coche gira o motóo bo lá hóterea;', 'uálella, la', 'Español: girar', 'import-espanol-bubi'),
  ('tetto', 's.', 'm.', NULL, 'Cl. 9', 'el - e tetto; -s tetto, los -s i tetto.', NULL, NULL, 'Español: glande', 'import-espanol-bubi'),
  ('ebolobolló', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebolobolló; -s ibolobolló, los -s e ibolobolló.', NULL, NULL, 'Español: globo', 'import-espanol-bubi'),
  ('bOossó', 's.', 'm.', NULL, 'Cl. 1', 'el - e kóbbe; glotones baossó, kóbbe, los glotones a baossó, i kóbbe.', 'glotones baossó, kóbbe, los glotones a baossó, i kóbbe.', NULL, 'Español: glotón', 'import-espanol-bubi'),
  ('ebolló', 's.', 'm.', NULL, 'Cl. 7', 'el- e ebOlló; -s ibOlló, los -s e ibolló.', NULL, NULL, 'Español: glúteo', 'import-espanol-bubi'),
  ('bOitta', 's.', 'm.', NULL, 'Cl. 1', 'kóbinna, el- o bOitta, o bOitta bOte, e kóbin na; -es baitta, baitta bote, kóbinna, los -es a baitta, a baitta bote, i kóbinna.', NULL, 'b', 'Español: gobernador', 'import-espanol-bubi'),
  ('botákkáa', 's.', 'm.', NULL, 'Cl. 1', 'el - o bolekkia; -s batákkáa, balekkia, los -s a balekkia.', NULL, NULL, 'Español: gobernante', 'import-espanol-bubi'),
  ('kóbinna', 's.', 'm.', NULL, 'Cl. 9', 'el- e kóbinna; -s kóbinna, los -s i kóbinna. goce m,. boróo, el - o bOróo; -s beróo, los -s e beróo.', NULL, NULL, 'Español: gobierno', 'import-espanol-bubi'),
  ('kóbbe', 's.', 'm.', NULL, 'Cl. 9', 'el - e kóbbe, o boossó; -s kóbbe, baossó, los -s i kóbbe, a baossó.', NULL, 'boossó', 'Español: goloso', 'import-espanol-bubi'),
  ('botee', 'adj.', NULL, NULL, 'Cl. 5', 'bokobbe bOtee; rotee rikekko rotee; otee eriia otee; kotee (els. 9 y lO), nabba kotee, kollo kotee; lotee (el. 1 1) lokollo lotee; sotee sinorí sotee; -s botee (els. 2 y 6) batyo botee, bakekko botee; beotee bekobbe beotee; lotee labba lotee; biotee hiriia biotee; totee tonori tOtee; hotee habba hotee.', 'rotee rikekko rotee; | kotee (els. | lotee (el.', NULL, 'Español: gordo', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'el - e esóló; -s bisó ló, los -s e bisóló.', NULL, NULL, 'Español: gorrino', 'import-espanol-bubi'),
  ('epetye', 's.', 'm.', NULL, 'Cl. 7', 'el- e epetye; gorriones ipetye, los gorriones e ipetye.', 'gorriones ipetye, los gorriones e ipetye.', NULL, 'Español: gorrión', 'import-espanol-bubi'),
  ('sibuttá', 's.', 'm.', NULL, 'Cl. 12', 'el e sibuttá, e sisokka; -s tobuttá, tosokka, los -s o tobuttá, o tosokka.', NULL, 'tosokka', 'Español: gorro', 'import-espanol-bubi'),
  ('o''áa', 'v.', NULL, NULL, NULL, 'o hMmabi''o; preso tú gozas mucho o la o''áa boroo s6té, o la hMmabi''o s6té; paso duro tú gozabas mucho 00 o''essi boroo s6té, o hMmessíbi''o s6té.', 'preso tú gozas mucho o la o''áa boroo s6té, o la hMmabi''o s6té;', 'h, la, h', 'Español: gozar', 'import-espanol-bubi'),
  ('boroo', 's.', 'm.', NULL, 'Cl. 3', 'el- o boroo, e rimmammabi''o; -s OOroo, bammarnmabi''o, los -s e OOroo, a bam mammabi''o.', NULL, NULL, 'Español: gozo', 'import-espanol-bubi'),
  ('sitampa', 's.', 'm.', NULL, 'Cl. 12', 'el- e sitampa; -s totampa, los -s o totampa.', NULL, NULL, 'Español: grabado', 'import-espanol-bubi'),
  ('epot', 's.', 'f.', NULL, 'Cl. 7', '6pot60, la - e epot6pot60; -s mpotópot6o, las -s e mpot6potóo; -s potóo, potóo, muchas -s potó potóo.', NULL, NULL, 'Español: gracia', 'import-espanol-bubi'),
  ('boteotto', 's.', 'f.', NULL, 'Cl. 3', 'la - o boteotto; -s beteotto, las -s e beteOtto.', NULL, NULL, 'Español: grada', 'import-espanol-bubi'),
  ('ele', 's.', 'f.', NULL, 'Cl. 7', '/era, la - e eletera; -s biletera, las -s e bifelera.', NULL, NULL, 'Español: grafia', 'import-espanol-bubi'),
  ('simeressi', 's.', 'f.', NULL, 'Cl. 12', 'la - e simeressi, e sakká; -s tOmeressi, tuakká, las -s o tomeressi, o tuakká.', NULL, 'tuakká', 'Español: gragea', 'import-espanol-bubi'),
  ('labé', 'adj.', NULL, NULL, NULL, 'un asunto - Iabba labé, esta persona está - 010 botyo e labé.', 'un asunto - Iabba labé, esta persona está - 010 botyo e labé.', NULL, 'Español: grave', 'import-espanol-bubi'),
  ('siruerué', 's.', 'm.', NULL, 'Cl. 12', 'el - e siruerué; -s toruerué, los -s o toruerué.', NULL, NULL, 'Español: grillo', 'import-espanol-bubi');

-- Lote 46 (entradas 1126 a 1150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tábba', 'v.', NULL, NULL, NULL, '2. - a alguien o táballa; preso yo grito a tu pariente n la táballa o botyo o; paso punto yo grité a tu pariente n bo tábari o botyo o, ellos gritaron al conductor ba tábari o bokólla.', 'preso yo grito a tu pariente n la táballa o botyo o;', NULL, 'Español: gritar', 'import-espanol-bubi'),
  ('etábatábba', 's.', 'm.', NULL, 'Cl. 7', 'el - e etábatábba; -s bitábatábba, los -s e bitábatábba.', NULL, NULL, 'Español: grito', 'import-espanol-bubi'),
  ('bOtee', 'adj.', NULL, NULL, 'Cl. 5', 'rotee, botee (els. 2 y 6), otee, biotee, kotee (els. 9 y 10), lOtee (el. 1 1), sOtee, ilitee, etc.', NULL, NULL, 'Español: grueso', 'import-espanol-bubi'),
  ('ekosso', 's.', 'm.', NULL, 'Cl. 7', 'el- e ekosso; -s bikosso, los -s e bikosso.', NULL, NULL, 'Español: gruñido', 'import-espanol-bubi'),
  ('nkóbba', 'v.', NULL, NULL, NULL, 'o nkuábbia; preso tu abuelo gruñe siempre o boyolla o a la nkóbba tyommaa, o bOyolla o a la nkuábbia tyommaa.', 'o nkuábbia;', 'b', 'Español: gruñir', 'import-espanol-bubi'),
  ('rittáa', 's.', 'm.', NULL, 'Cl. 5', 'riutyi, el- e rittáa, o wallá, e riutyi; -s bittáa, biallá, bautyi, los -s ii bittáa, e bial lá, a bautyi.', NULL, 'wallá', 'Español: grupo', 'import-espanol-bubi'),
  ('oosawasawáa', 's.', 'm.', NULL, 'Cl. 3', 'el- o bosa wasawáa; -s besawasawáa, los -s e besawa sawáa.', NULL, NULL, 'Español: guanábano', 'import-espanol-bubi'),
  ('buebue', 'adj.', NULL, NULL, 'Cl. 5', 'rere, etc.', NULL, NULL, 'Español: guapo', 'import-espanol-bubi'),
  ('leppa', 'v.', NULL, NULL, NULL, 'preso yo guardo n la leppa, tú guardas tu comida o la leppa o bOra''o o;pas. punto yo guardé sus cosas n leppi a lokko la áí.', 'preso yo guardo n la leppa, tú guardas tu comida o la leppa o bOra''o o;', NULL, 'Español: guardar', 'import-espanol-bubi'),
  ('bolotyi', 's.', 'm.', NULL, 'Cl. 1', 'el o bOlotyi, o bolotta; guardianes balotyi, balotta, los guardianes a balotyi, a balotta.', 'guardianes balotyi, balotta, los guardianes a balotyi, a balotta.', 'bolotta', 'Español: guardián', 'import-espanol-bubi'),
  ('esóló', 's.', 'm.', NULL, 'Cl. 7', 'el- e esóló; -s bisóló, los -s e bisóló.', NULL, NULL, 'Español: guarro', 'import-espanol-bubi'),
  ('bOkuemáa', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOkue máa; -s bakuemáa, los -s a bakuemáa.', NULL, NULL, 'Español: guayabo', 'import-espanol-bubi'),
  ('obitábítta', 's.', 'm.', NULL, 'Cl. 1', 'el - o obitábít ta; -s abitábítta, los -s a abitábítta.', NULL, NULL, 'Español: guerrero', 'import-espanol-bubi'),
  ('esibo', 's.', 'm.', NULL, 'Cl. 7', 'la - e esibo; -s bisibO, los -s e bisibO.', NULL, NULL, 'Español: guiño', 'import-espanol-bubi'),
  ('rityakápe''e', 's.', 'm.', NULL, 'Cl. 5', 'el- e rityaká pe''e; -s batyakápe''e, los -s a batya kápe''e.', NULL, NULL, 'Español: guirigay', 'import-espanol-bubi'),
  ('sise''e', 's.', 'm.', NULL, 'Cl. 12', 'el - e sise''e; -s tose''e, los -s o tose''e.', NULL, NULL, 'Español: gusanito', 'import-espanol-bubi'),
  ('bose''e', 's.', 'm.', NULL, 'Cl. 3', 'el - o bose''e; -s bese''e, los -s e bese''e.', NULL, NULL, 'Español: gusano', 'import-espanol-bubi'),
  ('bonotyó', 's.', 'm.', NULL, 'Cl. 3', 'el - o bonotyó, o bOroo; -s benotyó, beroo, los -s e benotyó, e beroo.', NULL, 'b', 'Español: gusto', 'import-espanol-bubi'),
  ('sá', 'v.', NULL, NULL, NULL, 'preso hay alguien aquí he botyo hállo, no hay nadie aquí ha tyi botyo háUo; pas. duro había alguien ha séi botyo, no había nadie ha tá séi botyo.', 'preso hay alguien aquí he botyo hállo, no hay nadie aquí ha tyi botyo háUo;', NULL, 'Español: haber', 'import-espanol-bubi'),
  ('bOpélla', 's.', 'm.', NULL, 'Cl. 1', 'el - o bopélla; -s bapélla, los - s a bapélla.', NULL, NULL, 'Español: habitante', 'import-espanol-bubi'),
  ('bohNno', 's.', 'm.', NULL, 'Cl. 3', 'el - o bohNno; -s behNno, los - s e behNno.', NULL, NULL, 'Español: hábito', 'import-espanol-bubi'),
  ('tóritóri', 's.', 'm.', NULL, 'Cl. 9', 'el- e tóritóri; -es tóritóri, los - es i tóritóri.', NULL, NULL, 'Español: hablador', 'import-espanol-bubi'),
  ('tóritóri', 's.', 'm.', NULL, 'Cl. 9', 'el - e tóritóri, o opatyáballá; -s tóritóri, apatyáballá, los - s i tóritó ri, a apatyáballá.', NULL, 'opatyáballá', 'Español: hablante', 'import-espanol-bubi'),
  ('obáa', 's.', 'm.', NULL, 'Cl. 1', 'bOsá, el- o obáa, o opénera, o bosá; -es abáa, apénera, basá, los - es a abáa, a apénera, a basá.', NULL, 'opénera, bosá', 'Español: hacedor', 'import-espanol-bubi'),
  ('kori', 's.', 'm.', NULL, 'Cl. 9', 'el - e korí; -s kori, los -s i kori.', NULL, NULL, 'Español: hacendado', 'import-espanol-bubi');

-- Lote 47 (entradas 1151 a 1175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sákkia', 'v.', NULL, NULL, NULL, 'paso punto el alcalde balagó las bazañas de las buestes o bOtúkku a sákíia i póhá i a bahúa.', NULL, NULL, 'Español: halagar', 'import-espanol-bubi'),
  ('esekeri', 's.', 'm.', NULL, 'Cl. 7', 'el- ese keri, e isá''o; -s bisekeri, basá''o, los -s e bisekeri, a basá''o.', NULL, NULL, 'Español: halago', 'import-espanol-bubi'),
  ('ittá', 'v.', NULL, NULL, NULL, 'paso punto yo bailé tres hom bres en el agua n ityí a boppé wela baie be batá; 2. -se o sá;pres. los barcos se bailan en el mar e biattó be lé e elo''a wela.', 'paso punto yo bailé tres hom bres en el agua n ityí a boppé wela baie be batá;', NULL, 'Español: hallar', 'import-espanol-bubi'),
  ('elepori', 's.', 'm.', NULL, 'Cl. 7', 'el - e elepori; -s bilepori, los - s e bilepori.', NULL, NULL, 'Español: hallazgo', 'import-espanol-bubi'),
  ('tyallá', 'adj.', NULL, NULL, 'Cl. 9', 'estoy - ne tyallá, estamos -s tue tyallá.', NULL, NULL, 'Español: hambriento', 'import-espanol-bubi'),
  ('eeppé', 's.', 'm.', NULL, 'Cl. 7', 'el- e eeppé; haraganes bieppé, los haraganes e bieppé.', 'haraganes bieppé, los haraganes e bieppé.', NULL, 'Español: haragán', 'import-espanol-bubi'),
  ('ebanfá', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebanfá; -s ibanfá, los - s e iban/a.', NULL, NULL, 'Español: harapo', 'import-espanol-bubi'),
  ('ebbiá', 'v.', NULL, NULL, NULL, 'preso los ñames hartan mucho e billo bi lá ebbia sóté; paso punto las malangas bubis hartaron a los invitados e bihem bi ebíía e baheppoo. 2. -se o ebbá; estoy barto de ti n ka o ebbi.', 'preso los ñames hartan mucho e billo bi lá ebbia sóté; | estoy barto de ti n ka o ebbi.', NULL, 'Español: hartar', 'import-espanol-bubi'),
  ('tya', 'adv.', NULL, NULL, NULL, '- mañana tya tué''a óbari, sóté obari.', NULL, NULL, 'Español: hasta', 'import-espanol-bubi'),
  ('isera', 'v.', NULL, NULL, NULL, 'preso el hechicero me hechiza o bOtyiáÍltyó a la le isera; paso punto mi vecino hechizó a mis hijos o botyo á e epatto m a iseriia a bóllá m.', 'preso el hechicero me hechiza o bOtyiáÍltyó a la le isera;', NULL, 'Español: hechizar', 'import-espanol-bubi'),
  ('bontyo', 's.', 'm.', NULL, 'Cl. 3', 'el - o bontyo; -s bentyo, los -s e bentyo.', NULL, NULL, 'Español: hechizo', 'import-espanol-bubi'),
  ('elabba', 's.', 'm.', NULL, 'Cl. 7', '- asom broso, insólito pohá, el - e e1abba, e eseri, el - asombroso, insólito e pohá; -s bilabba, biseri, -s asom brosos, insólitos pohá, los -s e bilabba, e biseri, los -s asombrosos, insólitos i pohá. 2. pequeño sipénaera, el- pequeño e sipé naera; -s pequeños topénaera, los -s pequeños o topénaera.', NULL, NULL, 'Español: hecho', 'import-espanol-bubi'),
  ('bobbó', 's.', 'm.', NULL, 'Cl. 4', '(Cl. 3), el- o bObbó; -es beob bó, los -es e beobbó.', NULL, NULL, 'Español: hedor', 'import-espanol-bubi'),
  ('IOketya', 's.', 'm.', NULL, 'Cl. 10', '(el. 1 1), el - o loketya; -s ketya, los -s i ketya.', NULL, NULL, 'Español: helecho', 'import-espanol-bubi'),
  ('bobora', 's.', 'm.', NULL, 'Cl. 1', 'el- o bObora;-s babora, los -s a babora.', NULL, NULL, 'Español: heredero', 'import-espanol-bubi'),
  ('bobelle', 's.', 'm.', NULL, 'Cl. 1', 'mayor bonatú''ó, - de la madre boióppé, el - o bobelle, o bobella, el - mayor o bonatú''ó, el- de la madre o bOióppé; -s bobelle, bobella, -s mayores banatú''ó, -s de la madre baióppé, los -s a bobel le, a bobella, los -s mayores a banatú''ó, los -s hermanos de la madre a baióppé. 2. - de madre obolóberíi, el- de madre o obolóberíi;-s de madre abolóberíi, los -s de madre a abolóberíi.', NULL, 'bobella', 'Español: hermano', 'import-espanol-bubi'),
  ('kobbe', 's.', 'm.', NULL, 'Cl. 9', 'el - e kobbé, o boabbí; -s kobbé (el. lO), baabbí, los -s i kobbé, a baabbí.', NULL, 'boabbí', 'Español: héroe', 'import-espanol-bubi'),
  ('ribótyikka', 's.', 'm.', 'pl.', 'Cl. 5', '- (pI.) abótyikka, los - a abótyikka.', NULL, NULL, 'Español: herpes', 'import-espanol-bubi'),
  ('bokussú', 's.', 'm.', NULL, 'Cl. 3', 'el- o bOkussú, o bohéle; -s bekussú, behéle, los -s e bekussú, e behéle.', NULL, 'bohéle', 'Español: hierro', 'import-espanol-bubi'),
  ('rálló', 's.', 'm.', NULL, 'Cl. 5', 'el- e rálló; -s bálló, los -s a bálló; su - es muy grande (es muy soberbio) e rálló ráí ré rotée.', 'su - es muy grande (es muy soberbio) e rálló ráí ré rotée.', NULL, 'Español: hígado', 'import-espanol-bubi'),
  ('bóllá', 's.', 'm.', NULL, 'Cl. 1', 'el - o bóllá, -s bOlIá, los -s a bOllá.', NULL, NULL, 'Español: hijo', 'import-espanol-bubi'),
  ('otta', 'v.', NULL, NULL, NULL, 'preso la araña hila su telara ña e ribobó ri lá otta e ripeppe ri áre; paso punto el pescador hiló su red o bOobbe a otyi e riotté ri áí.', 'preso la araña hila su telara ña e ribobó ri lá otta e ripeppe ri áre;', NULL, 'Español: hilar', 'import-espanol-bubi'),
  ('bolekko', 's.', 'f.', NULL, 'Cl. 3', 'la - o bOlekko; -s belekko, las -s e belekko.', NULL, NULL, 'Español: hilera', 'import-espanol-bubi'),
  ('sisorí', 's.', 'm.', NULL, 'Cl. 12', 'tereri, el - e sisorí, o bosorí, e tereri; -s tosorí, besorí, tereri (Cl. 10), los -s o tosorí, e beso rí, i tereri.', NULL, 'bosorí', 'Español: hilo', 'import-espanol-bubi'),
  ('eoto', 's.', 'm.', NULL, 'Cl. 7', 'el - e eoto; -es bioto, los -es e bioto.', NULL, NULL, 'Español: himen', 'import-espanol-bubi');

-- Lote 48 (entradas 1176 a 1200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ebéto', 's.', 'm.', NULL, 'Cl. 7', 'el - e ebé to, e eallo; -s ibéto, bial lo, los -s e ibéto, e biallo.', NULL, NULL, 'Español: himno', 'import-espanol-bubi'),
  ('etyéútyéu', 's.', 'm.', NULL, 'Cl. 7', 'el e etyéútyéu, e tyéútyéu; -s bityéú tyéu, tyéútyéu, los -s e bityéútyéu, i tyéútyéu.', NULL, NULL, 'Español: hipo', 'import-espanol-bubi'),
  ('ruebba', 's.', 'm.', NULL, 'Cl. 5', 'el - o ruebba; -s bebba, los -s a bebba.', NULL, NULL, 'Español: hipopótamo', 'import-espanol-bubi'),
  ('oompo', 's.', 'm.', NULL, 'Cl. 3', '- gran de IOmpo (11), el- o bOmpo, e rimpo, el- grande o lompo; -s bempo, -s grandes bimpo, los -s e bempo, los -s grandes e bimpo.', NULL, NULL, 'Español: hocico', 'import-espanol-bubi'),
  ('tyóbbo', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyóbbo; -es tyóbbo (el. lO), los -es i tyóbbo.', NULL, NULL, 'Español: hogar', 'import-espanol-bubi'),
  ('elo''ó', 's.', 'm.', NULL, 'Cl. 7', 'el- e elo''ó, e eeppé; holgazanes bilo''ó, bieppé, los holgazanes e bilo''ó, e bieppé.', 'holgazanes bilo''ó, bieppé, los holgazanes e bilo''ó, e bieppé.', NULL, 'Español: holgazán', 'import-espanol-bubi'),
  ('eappé', 's.', 'm.', NULL, 'Cl. 7', 'el - e eappé, e tuttú; -s biappé, tuttú, los - s e biappé, i tuttÚ.', NULL, NULL, 'Español: hollejo', 'import-espanol-bubi'),
  ('boie', 's.', 'm.', NULL, 'Cl. 1', 'el- o boie; -s baie, los -s a baie; el - es fuerte o bOie e to''ú, los - de mañana a baie bá obari.', 'el - es fuerte o bOie e to''ú, los - de mañana a baie bá obari.', NULL, 'Español: hombre', 'import-espanol-bubi'),
  ('eabába', 's.', 'm.', NULL, 'Cl. 7', 'el- e eabába; -s biabába, los -s e biabába; me duele el- e eabába m e lá he''a.', 'me duele el- e eabába m e lá he''a.', NULL, 'Español: hombro', 'import-espanol-bubi'),
  ('bono''u', 's.', 'm.', NULL, 'Cl. 3', 'el - o bono''u; -s beno''u, los -s e beno''u.', NULL, NULL, 'Español: hondo', 'import-espanol-bubi'),
  ('bOesuesu', 's.', 'm.', NULL, 'Cl. 3', 'el - o bOesuesu, e sitaetae; -s beesuesu, to taetae, los -s e beesuesu, o totaetae.', NULL, 'totaetae', 'Español: hongo', 'import-espanol-bubi'),
  ('ílla', 's.', 'm.', NULL, 'Cl. 5', 'el - e ílla; -es bílla, los -es a bílla.', NULL, NULL, 'Español: honor', 'import-espanol-bubi'),
  ('buello', 's.', 'm.', NULL, 'Cl. 3', 'el - o buello; -s biello, los -s e biello.', NULL, NULL, 'Español: horizonte', 'import-espanol-bubi'),
  ('rihúla', 's.', 'm.', NULL, 'Cl. 5', 'el - e rihúla, e ehulábette; -s bahúla, bihulábette, los -s a bahú la, e bihulábette.', NULL, NULL, 'Español: hormiguero', 'import-espanol-bubi'),
  ('epo''o', 's.', 'm.', NULL, 'Cl. 7', 'el - e epo''o; -s ipo''o, los -s e ipo''o.', NULL, NULL, 'Español: horno', 'import-espanol-bubi'),
  ('lokkia', 'v.', NULL, NULL, NULL, 'pres. la gente del pue blo hospeda a los visitantes a batyo bá e eriia ba lá lokkia a baheppoo; 2. -se o pélla; preso el médico se hospeda en casa del hechicero e rokútta a la pélla o tyóbbo o bOtyíáótyó.', 'preso el médico se hospeda en casa del hechicero e rokútta a la pélla o tyóbbo o bOtyíáótyó.', NULL, 'Español: hospedar', 'import-espanol-bubi'),
  ('rikaaí', 's.', 'm.', NULL, 'Cl. 5', 'el- e rikaaí, e tyóbbo í kaaí; -es bakaaí, los -es a bakaaí, i tyóbbo yí kaaí.', NULL, NULL, 'Español: hospital', 'import-espanol-bubi'),
  ('rilokko', 's.', 'm.', NULL, 'Cl. 5', 'el - e rilokko; -es balokko, los -es a balokko.', NULL, NULL, 'Español: hotel', 'import-espanol-bubi'),
  ('bolokia', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOlokia; -s balokia, los -s a balokia.', NULL, NULL, 'Español: hotelero', 'import-espanol-bubi'),
  ('lelló', 'adv.', NULL, NULL, NULL, '- y mañana lelló la obari, - es día primero de septiembre lel1ó ká elló e6tya o buéá bo a tomaityi.', NULL, NULL, 'Español: hoy', 'import-espanol-bubi'),
  ('esessé', 's.', 'm.', NULL, 'Cl. 3', '(e. 7), bolló, el- e eses sé, o bOlló; -s bisessé, beolló, los -s e bisessé, e beolló.', NULL, 'b', 'Español: hoyo', 'import-espanol-bubi'),
  ('lobokko', 's.', 'm.', NULL, 'Cl. 3', '(el. 1 1), bolló, el- o lobokko, o bolló; -s bokko (el. lO), beolló, los - s i bokko, e beolló. hurto / 453', NULL, 'bolló', 'Español: hueco', 'import-espanol-bubi'),
  ('tyiolla', 's.', 'm.', NULL, 'Cl. 9', 'el - e tyiolla; -s tyiolla, los -s i tyiolla.', NULL, NULL, 'Español: huérfano', 'import-espanol-bubi'),
  ('eberí', 's.', 'm.', NULL, 'Cl. 7', 'el- e eberí; -s ¡berí, los - s e iberí.', NULL, NULL, 'Español: huerto', 'import-espanol-bubi'),
  ('boribáa', 's.', 'm.', NULL, 'Cl. 1', 'el- o bOribáa, o opulábosso; -es baribáa, apulábosso, los -es a baribáa, a apu lábOsso.', NULL, 'opulábosso', 'Español: huésped', 'import-espanol-bubi');

COMMIT;

-- ✅ Parte 1 de 2 completada
-- Total de entradas en esta parte: 1200