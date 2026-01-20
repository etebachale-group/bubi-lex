-- Script de importación profesional del diccionario Bubi
-- PARTE 1 de 4
-- Bloques: 1 a 55
-- Total de entradas en esta parte: ~1375
-- Fecha: 2026-01-20

-- ⚠️ IMPORTANTE: Ejecutar las partes en orden (1, 2, 3, 4)

BEGIN;

INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('''e', 's.', NULL, NULL, NULL, NULL, 'sing. uña, pezuña. el. 7. Tb. ekke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('''ee', 's.', NULL, NULL, NULL, NULL, 'sing. afirmación. el. 7. e''enna, pret. v. o e''era ; n entregué, o - entregaste, e entregó, to - entregamos, 10 entregasteis, ba entregaron. e''era, v. entregar, ofrecer; e rokútta a la - a bOllá torneressi el médico entrega algunos medicamentos a los niños. Pret. e''enna, e''eresiia. e''eresiia, pret. v. o e''era ; n yo entregaba, 0- tú entre gabas, e - él entregaba, to - nosotros entregábamos, 10 - vosotros entregabais, ba - ellos entregaban. e''essi, pret. v. o e''áa ; n yo aprendía, o - tú aprendías, e - él aprendía, to - nosotros aprendíamos, 10 - vosotros aprendíais, ellos aprendían. ba e''Í, pret. v. o e''áa ; n - aprendí, n-e bilabba bimrnaa bi etyo aprendí todas las cosas tradicionales, n ta - no aprendí, n ta - e bilabba birnrnaa bi etyo no aprendí todas las cosas tradicionales. e''Ía, pret. v. o é''ia ; n enseñé, o enseñaste, e - enseñó, to enseñamos, 10 - enseñasteis, ba - enseñaron. é''ia, v. enseñar, educar, transmitir sabiduría; e elako lÍl ké o - baseseppe mi trabajo es el de enseña', NULL, 'o e''iáa', 'Fuente: bubi-español', 'import-script'),
  ('aba''o', 's.', NULL, NULL, NULL, NULL, 'pI. caseríos, aldeas. barrios, dis tritos en una ciudad, barriadas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abáa', 's.', NULL, NULL, NULL, NULL, 'pi. fabricantes, hacedores. el. 2. Tb. apénna. abaam, pret. v. o aballa ; n distribuí entre personas, o distribuiste entre personas, a - distribuyó entre personas, to - distri buimos entre personas, lii - distribuis teis entre personas, ba - distribuyeron entre personas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abáka', 's.', NULL, NULL, NULL, NULL, 'pI. tabacos. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abákeri', 's.', NULL, NULL, NULL, NULL, 'pI. revuelta. disturbios. el. 6. abalessi, pret. v. o aballa ; n compartía las cosas, 0- compartías las cosas, a - compartía las cosas, to - compartíamos las cosas, lo - compartíais las cosas, ba - compartían las cosas. aballa, v. distribuir entre personas; n la -a batyo basoppo yo distribuyo panes entre personas. com partir cosas. Pret. abari, abalessi', NULL, 'o ka baala', 'Fuente: bubi-español', 'import-script'),
  ('aballá', 's.', NULL, NULL, NULL, NULL, 'pI. canelones. rollitos de malan ga rallada. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abállá', 's.', NULL, NULL, NULL, NULL, 'pI. matrimonios, esposos, desposo rios. parejas no casadas, que conviven. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abapatyilla', 's.', NULL, NULL, NULL, NULL, 'pI. arañas peludas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abasaissii', 's.', NULL, NULL, NULL, NULL, 'pI. incendios, fuegos grandes. fallas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abasso', 's.', NULL, NULL, NULL, NULL, 'pI. pizarras, mármoles. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abatta', 's.', NULL, NULL, NULL, NULL, 'pI. leprosos. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abátta', 's.', NULL, NULL, NULL, NULL, 'pI. naturales de Bata, naturales de Río Muni. el. 2. Tb. barannó, baton ka. 58 / abatto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abatto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. vasos de libación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abátto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. esponjas. estropajos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abatya', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. palos bifurcados en tres. tri dentes, tenedores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abatyu', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. taparrabos, bragas, calzoncillos. . Tb. beklui', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Abba', 's.', NULL, NULL, NULL, NULL, 'sing. Sumo sacerdote. Este nombre ha perdido su prefijo de Clase 1 : bo-, así como el de la Clase 2: ba-. Encontramos hoy los términos bOabba y baabba que significan "repartidor" y "repartidores" respectivamente. abba, v. repartir algo. distribuir. dar; conj. preso n-yo reparto, o 1 - tú repartes, a 1 él/ella reparte. Tb. o kaaba; ej. conj. preso ne - yo reparto, we - tú repartes, e - él/ella reparte. Pret. abbi, abessi. abbáa, v. ser culpable. no tener razón; conj. preso n - "soy culpable", o l "tú eres cul pable", a 1 - "él/ella es culpable". Ej. conj. preso ne- yo no tengo razón, we tú no tie nes razón, e - él/ella no tiene razón. Pret. abbíi, abessi. abbi, pret. v. o abba ; n distribuí, o - distribuiste, a distribuyó, to - distribuimos, lO distribuisteis, ba - distribuyeron. abbíi, pret. v. o abbáa ; n - f ui culpable, o - fuiste culpable, a fue culpable, to - fuimos culpa bles, lO fuisteis culpables, ba - fueron culpables', NULL, 'o aabá', 'Fuente: bubi-español', 'import-script'),
  ('abbo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. brazos, antebrazos. . 10. lobiJo. abé, mori adj. malo, mala, feo, fea. Concuerda con los nombres de las Cls. 2 y 6; batyo - personas malas; baatyé camas malas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abe''a', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pi. nadadores, navegadores. . abe''e, interrogo ¿cuánto/s, cuánta/s? Se utiliza con los nombres de las Clases 2, 4 Y 6 como baie, batté, boppé, etc. Ej. e xpr. he batyo - hállo? cuántas personas hay aquí?, he boppé - e eribba wela ¿cuánta agua hay en la piscina?', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abé''í', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pI. llorones, quejumbrosos. . 2 s. pI. llanto, lloro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abébá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. cazadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abebba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. tiempos de arrancar los ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abebeppu', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. machos cabríos. . Tb. rimeme''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abébo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. carnicerías. . abeem, pret. v. o abella ; n - repartí para alguien, o - repartiste algo para alguien, a - repar tió algo para alguien, to - repartimos algo para alguien, lo - repartisteis algo para alguien, ba - repartieron algo para alguien. Ej. expr. a batyo m ba - i kuua a las personas les repartí la ropa', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 2 (entradas 26 a 50)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('abeki', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. sacos, macutos, talegos. ; n ka óttá''á - ba billo voy a vender sacos de ñames', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abekko', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. elogios, alabanzas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abekkú', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. emboscadas, encerronas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abekúbeku', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. papadas, barbillas grandes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abela', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. guías, anunciantes. . Tb. abélla. abelessi, pret. v. o abella ; n - distribuía algo para al guien, o - distribuías algo para alguien, a - distribuía algo para al guien, to - distribuíamos algo para alguien, lo - distribuíais algo para al guien, ba - distribuían algo para alguien. abella, v. distribuir algo para alguien. repartir para alguien; conj. preso n-yo distribuyo para, o 1-tú distribuyes para, a 1 - él/ella distribu ye para, etc. Pret. abeem, abelessi. 10. o kabeela', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abelle', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. leche materna. mamas, senos, tetas, pechos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abélló', 's.', NULL, NULL, 'Cl. 1', NULL, 'pi. anunciadores. traductores, intérpretes. Cl. i', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abélo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. calendarios, almanaques. tiem pos anunciados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abera', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. parteros, comadrones, comadronas, matronas. . abóra /59', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aberí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. madres. . Tb. aberíi, ayeerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aberí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. aparatos de radio. magnetófo nos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aberíbó''o', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. suegras. . Tb. ayeríbó''o, ameÍlbó''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aberíi', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. madres. ', NULL, 'aberí, ayeerí', 'Fuente: bubi-español', 'import-script'),
  ('abésse', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. soperas, fiambreras, vasijas. . abessi, pret. v. o abba ; mpári n- e bihMma ayer repartía las frutas, o - e bekutta repar tías las mantas, a - a boppé repartía el agua, to - e bilako re partíamos los trabajos, etc. abessi, pret. v. o abbáa ; n era culpable, o - eras culpa ble, a - era culpable, to - éra mos culpables, lo - erais culpables, ba - eran culpables', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abétáso', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. esperanzas. ; a - bá e eriia IÍJ las esperanzas de mi pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetebette', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. trampas, estratagemas. . Tb. bisillo, bihurí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abeteri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. esperas, añoranzas. . 70. abityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetté', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. bidones, barriles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. desembocaduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. salas de espera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. 1. pozas. 2. paradas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetye', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. escobas. fregonas. . Tb. baseseele, aburúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetyi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. esperas. . 7 0. abeteri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abetyí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. esperas, esperanzas. ; a -bá e eriia las esperanzas del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abéUa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. guías, anunciantes. . 2. anuncios. . Tb. abela', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 3 (entradas 51 a 75)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('abieri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. nacimientos, partos. . Tb. bayeerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abílla', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. palmeras. palmeras datileras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abilloo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. pantallas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abinno', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. batidoras, trituradoras. opre siones, dictaduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abissó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. ascensores, montacargas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abitábítta', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pI. guerreros, luchadores, ba talladores. militares. . abo, 1. prono pI. esos, esas -bá láho ellos están ahí. 2. adj. dem. esos, esas. Concuerda con las pala bras de las Cls. 2 y 6; -batyo esas personas, batté esos árboles', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aboa', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. lunares. ; o liipollá lo áí lo serí o okkáa - su pierna está llena de lunares', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abobbo', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. raíces, orígenes. ; abo ká - bá 010 opúlla estos son los orígenes de antaño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abobée', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pI. bubis, naturales de la isla de Bio ko. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abobo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. arácnidos, arañas. ; e esubba a - ba lá sellá o púlláa en la época lluviosa salen mucho las arañas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abobosso', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. muñecas de la mano. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abokká', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. objetos que encogen. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abokko', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. gemelos, mellizos. ', NULL, 'abo ''o', 'Fuente: bubi-español', 'import-script'),
  ('abollá', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. los hijos, los niños. ; n la tówálla a - reprendo a los niños', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abolló', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. odios, rencores. ; 010 botyo a le okeri - esta persona me tiene mucho odio; - oberíi, S. pI. hermanos de madre. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abómma', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. borracheras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aboo', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. brazos, antebrazos. ', NULL, 'abbo', 'Fuente: bubi-español', 'import-script'),
  ('abóperi', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. crianzas, cuidados. . Tb. abóppi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abóppi', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. crianzas, cuidados. . Tb. abóperi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abóra', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. arrendamientos, alquileres. . 60 / abOrí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aborí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. avisos, notificaciones. ; a -ba pooi botyíó los avisos llegaron por la noche', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abósekka', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. harmónicas, acordeones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abotóábotó', 'adj.', NULL, NULL, NULL, NULL, 'blandos, blandas, tiernos, tier nas. Concuerda con las palabras de las Clases 2 y 6; batyo - personas blandas, boppé aguas blandas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abotyíbótyi', 'adj.', NULL, NULL, 'Cl. 1', NULL, 'pI. embusteros, mentirosos. aduladores, farsantes, falsos. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abótyikka', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. herpes simple. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 4 (entradas 76 a 100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('abotyílla', 's.', NULL, NULL, NULL, NULL, 'pI. sobrenombres. apellidos. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abotyo', 's.', NULL, NULL, NULL, NULL, 'pI. a) vidas, vivencias, sociedades. b) destinos. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abuéi', 's.', NULL, NULL, NULL, NULL, 'pI. fallecimientos, defunciones, muertes, funerales. CI. 6. Tb. awéi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abueríi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. comunicaciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abukkí', 's.', NULL, NULL, NULL, NULL, 'pI. 1. abundancias, multitudes. 2. diver sidades. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abúkku', 's.', NULL, NULL, 'Cl. 5', NULL, 'pI. libros. CI. 6 ; n la hella o sáppo sa - voy a la tienda de los libros, voy a la librería', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abulabatyo', 's.', NULL, NULL, NULL, NULL, 'pI. salvadores, defensores. CI. 2 ; a -ba lá kibbia e bit tá los defensores paran las guerras', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abulaella', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. defensores, protectores. abogados. ; a - bá e kobinna ba lá tówella e riberí wela los abo gados del gobierno hablan en la radio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abulia', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. defensas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('abullo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. riadas. ; a - ba séri o bukkiá e esubba las riadas aumentan en la época lluviosa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aburí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. salvaciones, protecciones. . aburc), s. pI. defendidos, liberados. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aburúm', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. escobas. fregonas. . Tb. baseseele, abetye. Achí, antrop. adv. que significa "otra vez, de nuevo". Se localiza en Rebola y Ehoko. Debería escribirse atyí. Acola, antrop. Proviene del verbo o ákóra. Está localizado en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('áelé', 'adv.', NULL, NULL, NULL, NULL, 'sí, de acuerdo. áessi, pret. v. o áa ; e ebari -la lóllá la mañana amanecía con lluvia', NULL, 'ee, eée', 'Fuente: bubi-español', 'import-script'),
  ('ahailo', 'loc.', NULL, NULL, NULL, NULL, 'prep. en el suelo', NULL, 'ahoi lo, anno, onno', 'Fuente: bubi-español', 'import-script'),
  ('ahaotya', 'loc.', NULL, NULL, NULL, NULL, 'adv. al principio, al comienzo. Ej. e xp. - m pelesí ripotto al principio vivía en la ciudad', NULL, 'ahaossa', 'Fuente: bubi-español', 'import-script'),
  ('ahasubbá', 'loc.', NULL, NULL, NULL, NULL, 'adv. al final, en último término', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aho', 'adv.', NULL, NULL, NULL, NULL, 'ahí; -he eteppe ahí hay una pared, - bi''o ahí cerca', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ahoilo', 'loc.', NULL, NULL, NULL, NULL, 'pr ep. . en el suelo. ahuaam, pret. v. o ahualla ; n ka - e ribotyo lÍl me he acostumbrado a mi vida. ahualessi, pret. v. o ahualla ; be ammaa ba - e esubba todos se acostumbraban a la época lluviosa. ahualla, v. acostumbrarse, aclimatarse. Pret. ahuaam, ahualessi; n-o bokeú bo áí me acostumbro a su carácter. ahuara, v. acostumbrar, aclimatar. Pret. ahua riia, ahuaresiia; n la -a bOllá o sossa ello ebba acostumbro a los niños a leer cada día. ahuaresiia, pret. v. o ahuara ; to - a batyo e ribotyo ri áó acostumbrábamos nues tra vida a las personas. ahuariia, pret. v. o ahuara ; n-o pélla ne bullé bálla me acostumbré a vivir solo. ái, pret. v. o áa ; e ebarí e - el día ama neció. áí, mor f. pos. suyo, suya; o botyo - su persona, su familiar. 2. Concuerda con la clase a la que per tenece el nombre o bompo bu - su nariz. akaam, pret. v. o akalla ; n até con, o ataste con, a ató con, to - atamos con, lo atasteis con, ba ataron con. akólea / 61 akabia, v. adornar, relucir, destacar, ornar, e', NULL, 'ahailo, anno, onno', 'Fuente: bubi-español', 'import-script'),
  ('aIebbáa', 'adj.', NULL, NULL, NULL, NULL, 'cada uno, cada cual. aleIessi, pret. v. o alella ; a batyo n ba - basoppo a las personas les llevaba panes. alella, v. llevar por. cargar para; conj. preso n-yo cargo para, o 1-tú cargas para, a 1 éllella carga para. Pret. aleri, alelessi. alera V. enviar, remitir; o la alera o botyo l Í l isoppo yo envío un pan a mi pariente. hacer llevar o hacer cargar para. Pret. aleriia, aleresiia. aleresiia, pret. V. o alera ; o bobellelÍl a le - ribúkku mi hermano me enviaba un libro. aleri, pret. V. o alella ; o bOyol la a le - ba''u el abuelo me trajo vino de palma. aleriia, pret. V. o alera ; o botukuá ri a le - boattaboasso la jefa del pueblo me envió una carta. alessi, pret. V. o alláa ; o waísso - o bOllá e rokútta la mujer llevaba al niño al médico. alláa, V. llevar, transportar. cargar sobre la cabeza. acarrear; conj. preso n-yo llevo, o la - tú llevas, a la - él/ella lleva. Ej. e. xpr. 0-tyoom avergonzarse. Pret. ari, alessi', NULL, 'o kalla', 'Fuente: bubi-español', 'import-script'),
  ('akákka', 's.', NULL, NULL, NULL, NULL, 'sing. vaso de coco. cubilete. vaso, copa. el. 7', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('akakótte', 's.', NULL, NULL, NULL, NULL, 'sing. palmiste vacío, semilla vacía. el. 7. akalessi, pret. v. o akalla ; n - ataba con, o - atabas con, a - ataba con, to - atábamos con, lo - atabais con, ba ataban con. ákálessi, pret. v. o ákálla ; o bOyolla - o bOllá el anciano insuflaba/bendecía al niño. akalla, v. atar, ligar con, enfardar con. Pret. akaam, akalessi. ákálla, v. dar un masaje, insuflar, bendecir. Tb. o nkáála. Pret. ákári, ákálessi', NULL, 'ákám', 'Fuente: bubi-español', 'import-script'),
  ('akalOla', 's.', NULL, NULL, NULL, NULL, 'sing. escama de pez. el. 7. ákám, pret. v. o ákálla ; o boyolla - o bollá el anciano bendijo al niño. ákári, pret. v. o ákáIla ; to - mpári ayer bendecimos. 70. ákám. akátelessi, pret. v. o akátella ; e biulla be - a baísso las doncellas guiaban a las mujeres. akátella, v. guiar, orientar; o waíribbo aó a la e - ello ebba nuestro espíritu guardián nos guía cada día. Pret. akáteri, akátelessi. akáteri, pret. v. o akátella ; a bayol la ba áó ba e - nuestros ancestros nos guiaron. akátessi, pret. v. o akátta ; a apanná ba - e esubba los españoles iban delante en la época de lluvia. ir delante, destacar; o motóO bo la akátta, v. el coche va delante. Pret. aká tyi, akátessi. akátyi, pret. v. o akátta ; e eos si - el caballo fue delante. akea, v. atarse, endurecerse. Pret. akei, akeseei; n la sélla o - me endurezco mucho. akeem, pret. v. o akella ; n - até para alguien, o ataste para alguien, a - ató para alguien, to - atamos para alguien, \0 atasteis para alguien, ba - ataron para alguien. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('akio', 's.', NULL, NULL, NULL, NULL, 'sing. réprobo, crítica. condena. el. 7. akka, v. atar, ligar, liar, enfardar; 0-etebá endurecer el corazón, aguantar; - e ete báo endurece tu corazón. - e etebáo ¡aguanta!, o - e riakko endurecer el incienso natural. casti gar. Pret. akki, akessi. akki, pret. v. o akka ; ti etébbáIÍ1 mi ánimo está bajo, mi corazón está atado. akkia, v. atar para, ligar para. Pret. akiia, akie siia; n la - ato para, ligo para, o la - atas para, ligas para, a la - ata para, liga para, etc. akóIea, v. desligarse, desatarse. Pret. akólei, akóleseei; ti póríi e lá - la cabra se desata. 62 / akólei akólei, pret. v. o akólea ; e setyi si - el antílope se desató. akólesei, pret. v. o akólea ; e nabba e - el animal se desataba akiilla, v. desatar, desligar, desembalar. Pret. akoom, akuessi; n la - o bO''Ml desato mi fardo', NULL, 'o fóppa', 'Fuente: bubi-español', 'import-script'),
  ('ákóó', 'interj.', NULL, NULL, NULL, NULL, '¡oh!, ¡mil gracias!, ¡enhorabuena! akiiiim, pret. v. o akolla ; m bo - o bo''e desaté el fardo. ákóra, v. perjudicar. Pret. ákória, ákóresiia. T b. o hákóra. ákóresiia, pret. v. o ákóra ; o le - la e nokonokko o me perjudicabas con tu barullo. ákória, pret. v. o ákóra ; o wallá bo a bihó bo - e eriia el grupo de los niños traviesos perjudicó al pueblo. akuessi, pret. v. o akolla ; e epo roporo e - a batyelemán el guardia desataba a los presos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('akupí', 's.', NULL, NULL, NULL, NULL, 'pI. a) ofensas, afrentas. b) faltas de res peto, desobediencias. CI. 6. Tb. apukké', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 5 (entradas 101 a 125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('alá', 'prep.', NULL, NULL, NULL, NULL, 'por; -Ruppé! ¡por Dios!', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('alabba', 's.', NULL, NULL, NULL, NULL, 'pI. las cosas; -Iá batyo las cosas de las personas, - lá Ruppé las cosas de Dios; Tb. apa rece bajo las formas labba de la Clase 6b, elabba de la Clase 7, bilabba de la Clase 8; e bilabba biá batyo las cosas de la gente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('alaiitya', 'adv.', NULL, NULL, NULL, NULL, 'primero, antes; alaba - lo primero, las primeras cosas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('alasubá', 'adv.', NULL, NULL, NULL, NULL, 'último, por último ale, suf. adv. también; 010 botyo - esta persona también. Tb. ae', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('álle', 'adv.', NULL, NULL, NULL, NULL, 'también. Se utiliza sin morfema de CIa se: 010 botyo - ésta es una perso na también, etc. alo, 1. adv. así, de esa manera; - kálo to la na''allá de esa manera lo queremos. 2. adj. dem. ese, esa, eso. Concuerda con las palabras de la CI. 6b; -Iab ba esas cosas, - la tyi labé eso no está mal, -la tyi lelle eso no está bien, -la pá''o sá eso puede ser. álo, mor{. adv. delante, delante de; belló boie ponte delante del señor. alolammaa, loe. conj. todo eso, por eso mismo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('alole', 'adv.', NULL, NULL, NULL, NULL, 'amén, así sea', NULL, 'alosse', 'Fuente: bubi-español', 'import-script'),
  ('alosse', 'adv.', NULL, NULL, NULL, NULL, 'amén, así sea. Se utiliza en ambientes rituales. así es, está bien. ám, prono pos. mío; 010 botyo kó - IkóaalÍl] esta persona es mía', NULL, 'alole adv', 'Fuente: bubi-español', 'import-script'),
  ('ameme''e', 'S.', NULL, NULL, NULL, NULL, 'pi. machos cabríos. CI. 6. Tb. abebeppu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ametya', 'S.', NULL, NULL, NULL, NULL, 'pI. bufones, cómicos, humoristas, payasos. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ammaa', 'morf.', NULL, NULL, NULL, NULL, 'adj. todo/s; a batyo -bá búbiia todas las personas huyeron', NULL, 'baubbaa', 'Fuente: bubi-español', 'import-script'),
  ('ammása', 'S.', NULL, NULL, NULL, NULL, 'pI. jefes, patrones, amos. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('amuetye', 'S.', NULL, NULL, NULL, NULL, 'pI. 1. danzas bubis de los espíritus barekaita. 2. cohe siones. CI. 6. auaan, pret. V. o ananna ; to''a ba- o nos conocimos, \O''a ba - o o loa IuIlé os conocisteis el año pasado. ananessi, pret. V. o ananna ; to ba - o nos conocíamos, to ta ba - o no nos conocíamos. ananna, V. conocerse. Pret. anaan, ananessi; to ba - nos conocemos. apelam / 63 anelessi, pret. v. o anella ; n - yo sabía para, o - tú sabías para, a - él sabía para, to - noso tros sabíamos para, 10 - vosotros sa bíais para, ba - ellos sabían para. anella v. saber para; con}. preso n-yo sé para, o 1 - tú sabes para, a 1 - él/ella sabe para. Pret. aneri, anelessi. aneri, pret. v. o anella ; 010 botyo n ta bo - Iabba esta per sona no sé nada de ella. anessi, pret. v. o anna ; o opénera - e bilabba bimmaa el autor sabía todas las cosas. anessi, pret. v. o anná ; n prensaba, o - prensabas, a prensaba, to - prensábamos, lo - prensabais, ba - prensaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ankítya', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. pañuelo. . anna, v. saber. conocer; conj. preso n yo sé, o - tú sabes, a - él/ella sabe, etc. ; preso neg. no conozco a esta per sona, desconozco a esta persona n ta bii aam iilo biityii. Pret. aan, anessi. anná v. prensar. exprimir. apretar. Pret. anní, anessi. anní, pret. v. o anná ; n prensé, 0- prensaste, a - prensó, tii - prensamos, 10 - pren sasteis, ba - prensaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('anno', 's.', NULL, NULL, NULL, NULL, 'def. suelo, piso; itá - siéntate, siéntate. 2. adv. aba jo, en el suelo. anno, prono vuestro, vuestra; o botyii - vuestro pariente, e raatyé r - vuestra cama', NULL, 'ahailo, ahoilo', 'Fuente: bubi-español', 'import-script'),
  ('aó', 'adj.', NULL, NULL, 'Cl. 1', NULL, 'pos. nuestro, a; o biityo - nuestra persona, nuestro pariente. Concuerda con las palabras de la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aossa', 'adv.', NULL, NULL, NULL, NULL, 'antes, antaño, al principio, con anterio ridad, primeramente', NULL, 'aotya', 'Fuente: bubi-español', 'import-script'),
  ('aotya', 'adv.', NULL, NULL, NULL, NULL, 'antes, antaño, al principio, con anterio ridad, primeramente', NULL, 'aossa', 'Fuente: bubi-español', 'import-script'),
  ('apaanya', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pI. españoles. . Tb. apanná', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apaasí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. Españas. . apaelessi, pret. v. o apaella ; m bii - ii biityii kóri a tyí''a pa''o atya o bo''e bo áí yo ayudaba a la persona porque no podía levantar su carga. apaella, ayudar a levantar. Pret. apaeri, apaelessi. apaeri, pret. v. o apaella ; o boie a - ii waísso áí el hombre ayudó a levantar algo a su mujer. apála, v. abrazar. rodear, cercar; con}. preso n-yo abrazo, o 1 - tú abrazas, a 1 - él/ella abraza. Pret. apári, apálessi. Tb. - bi''o abra zar. apálessi, pret. v. o apála ; n - abrazaba, o - abrazabas, a - abrazaba, to - abrazábamos, lo - abrazabais, ba - abra zaban', NULL, 'o asaala', 'Fuente: bubi-español', 'import-script'),
  ('apanári', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pI. españolas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apanná', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pI. españoles. . Tb. apaanya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apappá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. alas. . -be sinorí las alas del pájaro; 010 boláe okí este chico es atrevido', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apapupappu', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. llamaradas. . apári, pret. v. o apála ; n - abra cé, ii - abrazaste, a - abrazó, tii - abrazamos, lo - abrazasteis, ba - abrazaron. apatessi, pret. v. o apatta ; n rascaba, o - rascabas, a rascaba, tii - rascábamos, lo - rascabais, ba - rascaban. apatta, v. rascar. raspar. arañar. firmar; n-e sebám firmo el papel. apattyi, apatessi. apattyi, pret. v. o apatta ; n rasqué, o - rascaste, a rascó, to - rascamos, 10 rascasteis, ba - rascaron', NULL, 'o sapat tao Pret', 'Fuente: bubi-español', 'import-script'),
  ('apatyáballá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. hablantes, comunicantes. . ', NULL, 'tóritór', 'Fuente: bubi-español', 'import-script'),
  ('ape''u', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. plantas nuevas, retoños. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 6 (entradas 126 a 150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('apeám', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. retribuciones, pagas, emolumentos, beneficios, ganancias, pensiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apelam', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. necesidades, carencias. . MI apclari', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apelari', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. rameras, prostitutas, mujeres lasci vas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apeleri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. 1. necesidades, deseos. 2. personas caprichosas. . Tb. biilerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apelle', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. rameros, prostitutos, mujeriegos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apello', 's.', NULL, NULL, NULL, NULL, 'pI. puerta, cierre. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apello', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. burlones, bufones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apelló', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. fiestas, festejos, festividades. ; a apelló bá e eriia las fiestas del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apénera', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. autores, fabricantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apénna', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. fabricantes, hacedores. . Tb. abáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apepáa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. documentos, escritos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apeppa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. pintores. blanqueadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apeppe', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. telarañas. mallas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apera', 's.', NULL, NULL, NULL, NULL, 'pI. tiempos para atar las guías de los ñames. CI. 6. apessi, pret. v. o appa ; n - rodeaba, o - rodeabas, a - rodeaba, to rodeábamos, 10 - rodeabais, ba - rodeaban. apessi, pret. v. o appa ; o bollá a - el niño mamaba, to - nosotros mamábamos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apetyapetyá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. entrepiernas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apétyoo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. puntales, apuntalamientos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('api''e', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. pájaros carpinteros. . ápíesiia, pret. v. o áppia ; bó botyíó m bo o bollá anoche amamantaba al niño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apippa', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. dictadores, tiranos. CI. 2. Apo, antrop. que se refiere a la pinza del cangrejo o al asa. Se localiza en Basakato de la Sagrada Familia', NULL, 'mmatta', 'Fuente: bubi-español', 'import-script'),
  ('apo', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. asa. ', NULL, 'eappo', 'Fuente: bubi-español', 'import-script'),
  ('apóbba', 's.', NULL, NULL, NULL, NULL, 'pI. burlas, desprecios. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apollá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. piernas. patas. ; -bato piernas largas, zancudo. Tb. aponná', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('aponná', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. piernas. patas. ; -bato piernas largas, zancu do. Tb. apollá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apoporera', 's.', NULL, NULL, NULL, NULL, 'pI. llanos, llanuras. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apoppo', 's.', NULL, NULL, NULL, NULL, 'pI. árboles de la papaya. CI. 6', NULL, 'ipoppo', 'Fuente: bubi-español', 'import-script'),
  ('apotobílla', 's.', NULL, NULL, NULL, NULL, 'pi. palmas reales. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 7 (entradas 151 a 175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('apotokkí', 's.', NULL, NULL, NULL, NULL, 'pI. portugueses. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apotoríbbo', 's.', NULL, NULL, NULL, NULL, 'pi. espíritus que se expresan en español o en pidgin english. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apottá', 's.', NULL, NULL, NULL, NULL, 'pI. las bases de las palmeras datileras o de cualesquiera palmeras. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apotto', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. blancos, personas blancas. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apotto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. herbáceas trepadoras de la pimienta negra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apowári', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. madres criadoras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('appa', 'adj.', NULL, NULL, NULL, NULL, 'numo dos. Concuerda con los nombres de las Clases 2 y 6; batyo be - dos personas, dos camas. baatyé be appa, v. rodear, cercar; conj. preso n la - yo rodeo, o I - tú rodeas, a I - éVella rodea. Pret. appi, apessi. áppa, v. mamar; o bOllá a la - el niño mama. Pret. áppi, ápéssi', NULL, 'o nappá', 'Fuente: bubi-español', 'import-script'),
  ('appé', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. bulto de las fibras de los dátiles de la palmera. hollejo seco, yesca. . appi, pret. v. o appa ; n - rodeé, o - rodeaste, a- rodeó, to rodeamos, lo - rodeasteis, ba - rodearon. áppi, pret. v. o áppa ; n - mamé, 0- mamaste, a mamó, to mamamos, lo mamasteis, ba mamaron. áppia, v. amamantar. alimentar a un niño con la leche materna; conj. preso n-o bollá doy de mamar al niño; na o bol lá a la bé''a - bO amamanté, o - amamantaste, a - amamantó, to - amamantamos, ) i j - amamantasteis, ba - amamantaron. apuaam, pret. v. o apualla ; 010 botyo a le - esta persona me echó en cara, me interpeló', NULL, 'o nappiá', 'Fuente: bubi-español', 'import-script'),
  ('apuaera', 's.', NULL, NULL, NULL, NULL, 'pI. atajos, desvíos. el. 6. apualessi, pret. v. o apualla ; 010 botyo a le - esta persona me echaba en cara, me interpelaba. apuaUa, v. echar en cara, interpelar a alguien; 010 botyo a la le - esta per sona me echa en cara algo. Pret. apuaarn, apualessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apueri', 's.', NULL, NULL, NULL, NULL, 'pI. salidas. el. 6. Tb. apúla, apurí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apúJa', 's.', NULL, NULL, NULL, NULL, 'pI. salidas, partidas. el. 6. lb. apueri, apuri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apuJábosso', 's.', NULL, NULL, NULL, NULL, 'pI. huéspedes, visitas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apuJákke', 'adj.', NULL, NULL, NULL, NULL, 'pI. extranjeros, oriundos de otros países, de allende los mares. el. 2. Tb. bapulákke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apukké', 's.', NULL, NULL, NULL, NULL, 'pI. a) ofensas, afrentas. b) faltas de respe to y/o consideración, desobediencias. c) desdenes. el. 6. Tb. akupí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('apuppu', 's.', NULL, NULL, NULL, NULL, 'pi. serbales. árboles de Navi dad. el. 6. Tb. baopo. apúríi, 1. inter}. érase una vez. Se trata de la fór mula que se emplea al principio de la narración de un cuento. Debe utilizarse con aheríi; - ahe ríi, waísso la boie. . . érase una vez, una mujer y un hombre. . . 2. salidas. 3. oriundos. els. 2 y 6. Tb. a purí. Aqueriako, antrop. formado por el verbo o akka y el sustantivo determinado e riakko. Significa "endureci miento del incienso natural". Debería escribirse Akeriako. Se localiza en Bososo. ará, v. enviar, mandar, transmitir; n la ará boat ta yo envío un mensaje. Pret. aria, aresiia. lb. o senáera. * o - tyoom avergonzar. lb. o oráa. area v. nivelar, allanar; o - e raatyé hacer la cama. desplegar; n la - o bokuUa yo despliego la manta. Pret. arei, aresei. arei, pret. v. o area ; elo ebari n ri - e raatyé esta mañana hice la cama', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('arélle', 's.', NULL, NULL, NULL, NULL, 'sing. estado de soltería tras haber mantenido una relación amorosa. mujer solte ra. el. 7 ; 010 boláwáari e esta chica está soltera. arera, v. mandar, enviar o remitir algo a alguien; n - botyo boataboatyo remito una carta a al guien. lb. o oreerá. Pret. areriia, areresiia. areresiia, pret. v. o arera ; e elottyí e - a batyo lokko el siervo remitía cosas a la gente. areriia, pret. v. o arera ; o bollánÍ a 1 - bOaUa mi hijo me envió una noticia. aresei, pret. v. o area ; o - e raatyé hacías la cama. aresiia, pret. v. o ará ; o bobel lero - e be''e la e euláúla mi hermano enviaba las cargas en coche', NULL, 'senáeresiia', 'Fuente: bubi-español', 'import-script'),
  ('arí', 'morf.', NULL, NULL, NULL, NULL, 'adj. izquierdo, izquierda. el. 7 ; ebo - lado izquierdo; ibo bi - lados izquierdos. 2 pret. v. o alláa ; a batyo ba - a lokko lábbo las personas llevaron sus cosas. aria, pret. v. o ará ; a le - tyoom me envió una vergüenza', NULL, 'senáeriia', 'Fuente: bubi-español', 'import-script'),
  ('arikueri', 's.', NULL, NULL, NULL, NULL, 'pi. oficinas de denuncia. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('arÍolla', 's.', NULL, NULL, NULL, NULL, 'sing. mujer de avanzada edad. anciana. el. 7', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('asáityi', 's.', NULL, NULL, NULL, NULL, 'sing. mes de enero. También aparece como sáityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('asámoóte', 's.', NULL, NULL, NULL, NULL, 'sing. mes de diciembre. También aparece como sámoóte', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('asubá', 'adv.', NULL, NULL, NULL, NULL, 'lo último, al fin, finalmente. atá, morf adv. debajo de; n ka lokká''é raatyé - mezclé, o - mezclaste, a mezcló, to - mezclamos, )ij mezclasteis, ba - mezclaron. atala, v. romper. desgarrar. Pr et. atari, atálessi. 66 / átála átála, v. romper con, quebrar con. Pret. átám, átálessi. atálessi, pret. v. o atala ; n rompía, o - rompías, a rompía, to - rompíamos, lo - rompíais, ba - rompían. átálessi, pret. v. o átála ; n - rompía con, o - rompías con, a - rompía con, to - rompíamos con, 10 - rompíais con, ba - rompían con. átám, pret. v. o átála ; n - rompí con, o - rompiste con, a - rompió con, to - rompimos con, lo - rompisteis con, ba - rompieron con. '' atanessi, pret. v. o atanna ; n - mezclaba, 0- mezcla bas, a - mezclaba, to - mezclábamos, lo - mezclabais, ba mezclaban. atanna, v. mezclar, amalgamar, juntar. Pret. ataam, atanessi. atari, pret. v. o atala ; n-o luua 10 bOyolla rompí la ropa del abuelo. atári, pret. v. o átála ; n - rompí con, 0- rompiste con, a - rompió con, to - rompi', NULL, 'atálessi', 'Fuente: bubi-español', 'import-script'),
  ('atée', 's.', NULL, NULL, NULL, NULL, 'sing. lado, parte, mitad, trozo, lugar. el. 7 ; e_ el vaso de coco se rompió, o bOtébbá l Í 1 bo - se rompió mi corazón. áteseei, pret. v. o átéa ; a batté ba - la e pullá los árboles se rompían con la tormenta. atessi, pret. v. o átta ; a batyelemán ba - a bate los presos rompían las piedras', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('atoo', 's.', NULL, NULL, NULL, NULL, 'sing. tarde. el. 7 ; e á pooi ha llegado la tarde. átta, v. romper, rajar, quebrar, partir, tajar; e emasÍÍn e lá átta a bate la máquina rompe las piedras. Tb. o - ballá decir palabrotas. Pret. atyíi, átessi. atya, v. levantar. alzar, elevar; conj. preso o la - yo levanto, o la - tú levantas, a la él/ella levanta. Pret. atyi, atyessi. atyáála, V. prni. asombrarse. sorpren derse. pasmar. Pret. atyáári, atyálessi; conj. preso oe - yo me sorprendo, we - tú te sorprendes, e - él/ella se sorprende. atyaam, pret. V. o atyalla ; o - ayudé a levantar algo, o - ayudaste a levantar algo, a - ayudó a levantar algo, to - ayudamos a levantar algo, 10 - ayudasteis a levantar algo, ba - ayudaron a levantar algo. atyáám, pret. V. o atyánna ; o ka - sóté me sorprendí mucho. atyáári, pret. V. o atyáála ; oe - sóté me sorprendí mucho. atyalessi, pret. V. o atyalla ; o - ayudaba a levantar algo, o - ayudabas a levantar algo, a - ayudaba a levantar algo, to - ayudábamos a levantar algo, 10 - ayu dabais a l', NULL, 'o assa', 'Fuente: bubi-español', 'import-script'),
  ('atyátya', 'S.', NULL, NULL, NULL, NULL, 'pI. llanura, planicie. el. 8. atyelesiia, pret. V. o atyella ; n botyo yo asistía a alguien, o - botyo asistías a alguien, etc. atyelesiia, pret. V. o atyera ; to hessi la obáám to - e biruppú cuando íbamos a la finca separábamos las hierbas. atyella, V. asistir. ayudar; conj. preso n - botyo yo asisto a alguien, yo ayudo. Pret. atyemma, atyelesiia. atyemma, pret. V. o atyella ; m ba - a bapulákke asis tí a los oriundos de allende los mares. atyemma, pret. V. o atyera ; n - separé, 0- separas te, a - separó, to - sepa ramos, lo - separasteis, ba separaron. atyera, v. separar. dividir. despejar un camino obstruido por objetos; con}. preso n la - yo separo, o la - tú separas, a la - él/ella sepa ra, etc. Pret. atyemma, atyelesiia. atyessi, pret. v. o atya ; n - levantaba, o - levantabas, a levantaba, to - levantába mos, lo - levantabais, ba - levantaban. atyi, pret. V. o atya ; n-o botté levanté el árbol. o - e bimpa levantaste los asientos, a - a bollá levantó a los niños, to - e bekutt', NULL, 'hepubiesiia', 'Fuente: bubi-español', 'import-script');

-- Lote 8 (entradas 176 a 200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('atyí', 'adv.', NULL, NULL, NULL, NULL, 'más, de nuevo, otra vez; o botyo a la poa - esta persona vuelve de nuevo. atyíi, pret. v. o átta ; o bOllá - o buátyiÓl el niño rompió mi reloj. aúba, V. refunfuñar; o boríbáa a la - sóté el extranjero no hace más que refunfuñar; sei we''a aúbe deja de refunfuñar. Pret. aúbi, aúbessi. aúbalessi, pret. v. o aúballa ; m bo - o bokoé regañaba al bracero. aúballa, v. regañar, refunfuñar; we le aúba lIe! no me regañes, no me fastidies. Pret. aúbam, aúbalessi. aúbam, pret. V. o aúbaIla ; o bue''iáa a - a bakuerakueráa el maestro regañó a los alumnos. aúbessi, pret. v. o aúba ; lello ornmaa a - o boobbe todo el día de hoy refunf uñaba el pescador. aúbi, pret. v. o aúba ; n - refunfuñé, o - refunfuñaste, a - refunfuñó, to - refunfuñamos, 10 refunfuñasteis, ba - refunfu ñaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('awéi', 'S.', NULL, NULL, NULL, NULL, 'pi. fallecimientos, muertes, defunciones, f unerales. el. 6. Tb. abuéi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bá', 'prep.', NULL, NULL, 'Cl. 1', NULL, 'sobre; o bomma - sobre la ceiba. ba''a, 1. S. pi. playas, costas del mar, arenales. Cl. JO. 2. -, V. desbas tar, tratar la palmera de aceite para que dé vino de palma. hacer vino de palma; conj. preso na o obílla trato la palmera, n la - o obílla Úl yo desbasto mi palmera, o la - o obílla tú tratas la palmera, a la - o obílla él/ella trata la palmera. Pret. ba''i, ba''essi', NULL, 'pua', 'Fuente: bubi-español', 'import-script'),
  ('ba''abba', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. repartidores. ; a - ba e eriia wela los repartidores del poblado', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''abbo', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. regalos, donaciones. . Tb. batyuho, betuho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''asa', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pi. puntal. nombre del pico de Malabo, el más alto de la isla de Bioko, en Gui nea Ecuatorial. . ba''essi, pret. V. o ba''a ; m - o obílla Úl ele atoo trataba mi pal mera de aceite esta tarde. ba''i, pret. V. o ba''a ; o obílla m bO - la palmera lo traté', NULL, 'se conoce por obáasa', 'Fuente: bubi-español', 'import-script'),
  ('ba''ó', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pi. cañaverales. cañas. lugar donde abundan las cañas de azúcar. ', NULL, 'maaó', 'Fuente: bubi-español', 'import-script'),
  ('ba''obba', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pi. personas que pagan, pagadoras. ; a - ká ba''otya las personas pagadoras son las primeras', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''olla', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pi. compradores, clientes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''ossi', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. personas que cuidan de los caballos, jinetes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''otya', 'adj.', NULL, NULL, NULL, NULL, 'pi. primeros, primeras. Concuerda con los nombres de las Cls. 2 y 6. Cfr. baotya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''u', 'S.', NULL, NULL, 'Cl. 6', NULL, 'def vino de palma, vino en general. . Tb. ma''u', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''ú', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pi. tartamudos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ba''uá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. suertes, dichas. . 70 / hÍlll hÍlll, 1 1''. celebrar; tii la - ripelló el carpintero fabrica asientos. hacer, efectuar. construir, edificar; tii la - e tyúbbo áú. obrar; ej. 0 atyí reconstruir, reedificar. Pret. bái, báéssi. 2. s. "l. años. el. 6 ; ej. loa \Ohe leliz año nuevo, - appa dos años, - batá tres años, -bale cuatro años, - bato cinco años, -be bú diez años, -be ó quince años, rátyilla veinte años', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baa''o', 's.', NULL, NULL, NULL, NULL, '1''1. excrementos, heces. el. 6. Tb. toom', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baabba', 's.', NULL, NULL, NULL, NULL, '1''1. repartidores, distribuidores. el. 2', NULL, 'bokaaba', 'Fuente: bubi-español', 'import-script'),
  ('baabbi', 's.', NULL, NULL, NULL, NULL, 'pI. repartos, distribuciones. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baabbí', 's.', NULL, NULL, NULL, NULL, 'pI. culpabilidades. culpables. CIs. 6 y 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baakio', 's.', NULL, NULL, 'Cl. 5', NULL, '1''1. dictaduras. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baakka', 's.', NULL, NULL, NULL, NULL, 'pI. 1. tumores. abscesos inter nos. el. 6. 2. menús, platos de comida. el. 6. Riakka se utiliza como nombre de pila', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baakkí', 's.', NULL, NULL, NULL, NULL, 'pI. condenas, castigos, sentencias. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baakko', 's.', NULL, NULL, NULL, NULL, 'pI. enlaces, puntales. inciensos naturales. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baakko', 's.', NULL, NULL, NULL, NULL, 'pI. multas, sanciones. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baalá', 's.', NULL, NULL, NULL, NULL, '1''1. manos. elase 6 ; -batá tres manos, trípode. Tb. baallá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baallá', 's.', NULL, NULL, NULL, NULL, '1''1. manos. el. 6. Tb. baalá', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 9 (entradas 201 a 225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('baam', 's.', NULL, NULL, NULL, NULL, 'pI. culturas, saberes. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('báám', 's.', NULL, NULL, NULL, NULL, 'sing. finca, huerto ; na hella o - voy a la fmca. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baambó', 's.', NULL, NULL, NULL, NULL, 'pI. naturales de Annobón, annoboneses, ámbos. el. 2. Tb. bahahá. baan, pret. v. o banna ; n - mentí, ii - mentiste, a - mintió, to- mentimos, \0- men tisteis, ba - mintieron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baappí', 's.', NULL, NULL, NULL, NULL, '1''1. lactancias, amamantamientos. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baari', 's.', NULL, NULL, NULL, NULL, 'pI. cosechas de dátiles. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baátta', 's.', NULL, NULL, NULL, NULL, 'pI. personas que rompen, rompedoras. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baatte', 's.', NULL, NULL, NULL, NULL, 'pI. pedrizas, terrenos pedregosos, pedre gales. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baatuppo', 's.', NULL, NULL, NULL, NULL, 'pI. clanes de los repartidores. personas quejosas y camorristas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baatyé', 's.', NULL, NULL, NULL, NULL, 'pI. lechos, camas, catres. el. 6. Tb. basse', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baatyi', 's.', NULL, NULL, NULL, NULL, 'pI. divisiones, separaciones, entradas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baatyó', 's.', NULL, NULL, NULL, NULL, 'pI. personas que recogen ostras. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('babari', 's.', NULL, NULL, NULL, NULL, 'pi. bebedores. el. 2. Tb. baebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Babasasa', 'antrop.', NULL, NULL, NULL, NULL, 'fonnado a partir de mbamba y a sásá. Se atribu ye a las personas que imponen respeto. Está loca lizado en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Babé', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir del tema adjetival -bé. 8abé significa "per sonas desalmadas o malas". Aparece también escrito Vabé y está localizado en Bocoricho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Babeko', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del ténnino ribeko. Se aplica a aquellas personas muy dadas a alabar a los demás. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Babo', 'antrop.', NULL, NULL, NULL, NULL, 'que proviene de ri ''abo y éste del verbo o abba. Significa "regalos, dona ciones". Debería escribirse 8a''abbo. Está locali zado en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('babora', 's.', NULL, NULL, NULL, NULL, 'pI. descendencias, herederos. el. 2. badyána, s. pi. mujeres, esposas. el. 2. Tb. baísso, barí, mára', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baebba', 's.', NULL, NULL, NULL, NULL, 'pi. 1. vinateros, bebedores de vino de palma. 2. lugares de festejos. bodegas, bares. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baebba', 's.', NULL, NULL, NULL, NULL, 'pI. descansos. paradas. el. 6. Tb. bakibba. báelessi, pret. v. o báélla ; n - hacía algo para alguien, o - hacías algo para alguien, a - hacía algo para alguien, to - hacía mos algo para alguien, lo - hacíais bahNneri /71 algo para alguien, ba - hacían algo para alguien; o boríbáa m bii - a abúkku ba áí al extranje ro le hacía sus papeles. báella, v. hacer algo para alguien; n la - o oberíi lÍJ. tyóbbo hago una casa para mi madre. Pret. báem, báelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baello', 's.', NULL, NULL, NULL, NULL, 'pi. personas que curan. médicos. CI. 2. Tb. bailloéllo, bokútta, bokítta. Baeló, an/rop. plural de bOello o bOilloé/lo "perso na que cura, médico". Se refiere a las personas que ponen paz entre personas o familias en con f licto. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baeloéllo', 's.', NULL, NULL, NULL, NULL, 'pi. personas que curan. médi cos. CI. 2. Tb. bokútta, baif/liJ, bokítta. báem, pret. v. o báella ; a batyo ba tá okkíi ba tyóbbo e kobinna a ba kúbba las personas que no tienen casa el gobierno les hizo algunas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baeppa', 's.', NULL, NULL, NULL, NULL, 'pi. siembras, sembrados. CI. 6 ; a - ba e esubba las siembras de la época lluviosa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baeppo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. banqueros. . báessi, prel. v. o báa ; o loa lullé m - e tyóbbo lÍJ. el año pasado construía mi casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baesso', 's.', NULL, NULL, NULL, NULL, 'pi. plataformas. aceras. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baete', 's.', NULL, NULL, 'Cl. 1', NULL, 'pi. personas que imponen normas y reglas. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 10 (entradas 226 a 250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('baetello', 's.', NULL, NULL, NULL, NULL, 'pi. transeúnte. peregrino. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baetta', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. caminantes, paseantes. . Tb. baetto ; a - ba eri e teIle wela los paseantes llenan el camino', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baetto', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. caminantes, paseantes. . lb. baetta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baetuetto', 's.', NULL, NULL, NULL, NULL, 'pI. pechugas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baetya', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. patizambo. personas que pro mueven el crecimiento CI. 2 y CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baetyá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. bizqueras, bizcos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baetyi', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. 1. amigos íntimos, compañeros. . 2. distancias, recorridos. 3. lugares donde se reúnen los ami gos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baetyo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. vías, raíles. ; a - bá e rikotye las vías del tren', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahabbáa', 's.', NULL, NULL, 'Cl. 6', NULL, 'del pi. grasa, manteca, tocíno. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahakko', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. conexión. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahattá', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. reinos, palacios. parlamen tos. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahe', 'adj.', NULL, NULL, NULL, NULL, 'nuevos, nuevas. Concuerda con las palabras de las Cls. 2 y 6; boIlá - niños nuevos, balaperi - cocinas nuevas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahebbo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. descansos, vacaciones. ocios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahekka', 's.', NULL, NULL, NULL, NULL, 'pi. modelos. cigarras. mariposa. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahekkáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. anfitriones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahelá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. moreras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baheleri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. recursos, súplicas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahella', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. 1. remendadores. sastres. . 2. lugares donde se arre gla ropa. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baheperi', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. visitas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baheppo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. salas de visita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baheppoo', 's.', NULL, NULL, 'Cl. 1', NULL, 'pi. visitas, huéspedes, invitados. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baheri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. rehabilitaciones, restauraciones, arreglos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahíhi', 's.', NULL, NULL, 'Cl. 5', NULL, 'pI. calambres. CI. 6. Tb. bakiikiittó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahítáari', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. monarcas. monarquías. . Bahitari, antrop. que se refiere a una familia de gobernantes. Es un antropóni mo que se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahNneri', 's.', NULL, NULL, 'Cl. 6', NULL, 'del orina. ; e xp. quiero orinar n lo''á -. 72 / haho''o haho''o, . I'' d, , /, , / algodón. el. 6. bahóhüó, . 1''. 1''/. arbustos de hojas verdes, grandes y amargas que son utilIzadas como ingredientes dc algunas recetas culinarias de la gastronomía bubi. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 11 (entradas 251 a 275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bahNtá', 's.', NULL, NULL, 'Cl. 6', NULL, 'del pi. aceite de palma, aceite de oli va. crema. . lb. biitá, butJí, mitJí, matyátya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahokko', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. babosos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahóle', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. 1. amores, amabilidades, simpatías. 2. personas queridas y amadas. Cls. 6. "', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahóra', 's.', NULL, NULL, 'Cl. 5', NULL, 'pI. regresos, vueltas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahori', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. libertades, desligamientos. ; a -ba e ribotyo las libertades populares. Bahosí, antrop. plural de bij''ossi. Significa ''''jinetes o cuidadores de caballos". Está localizado en Sampaka o Biloora', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahóteri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. reveses. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahótóttó', 'adj.', NULL, NULL, NULL, NULL, 'blancos, blancas. Concuerda con las palabras de las Cls. 2 y 6; batyo - personas blancas, baatyé - camas blancas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahótyi', 's.', NULL, NULL, NULL, NULL, 'pi. objetos o cosas transparentes y bri llantes. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahua', 's.', NULL, NULL, NULL, NULL, 'del pI. tiempo de arrancar las hierbas, los ñames, etc. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahúa', 's.', NULL, NULL, NULL, NULL, 'pi. ejércitos, batallones, huestes. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahuee', 's.', NULL, NULL, NULL, NULL, 'pi. familias, parentelas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahuella', 's.', NULL, NULL, NULL, NULL, 'pI. consejeros, orientadores. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahuera', 's.', NULL, NULL, NULL, NULL, 'pi. orientaciones, consejos. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahúla', 's.', NULL, NULL, NULL, NULL, 'pi. hileras de hormigas rojas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahüllá', 's.', NULL, NULL, 'Cl. 6', NULL, 'árboles de la resina. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bahúo', 's.', NULL, NULL, NULL, NULL, 'pi. envueltos, envoltorios, paquetes, bultos. nidos. cartuchos, balas. el. 6. Tb. benná. bái, pret. v. o báa ; n construí, o - construiste, a - construyó, to - construimos, lo - construisteis, ba - construyeron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bai''o', 's.', NULL, NULL, NULL, NULL, 'pi. personas que marcan o señalan. el. 2. Tb. mai''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baía', 's.', NULL, NULL, NULL, NULL, 'pI. viajeros, pasajeros. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baiálla', 's.', NULL, NULL, NULL, NULL, 'pi. ayudantes. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baie', 's.', NULL, NULL, NULL, NULL, 'pi. padres, hombres. señores, caba lleros. el. 2 ; a -ro mis padres', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baiebbe', 's.', NULL, NULL, NULL, NULL, 'pi. sopas hechas con trocitos de malanga, aceite de palma, pescado salado, etc. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baihóra', 's.', NULL, NULL, NULL, NULL, 'pi. invitados. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bailá', 's.', NULL, NULL, NULL, NULL, 'de! sangre. el. 6. Ej. expr. 010 botyo a tyi - wela esta persona no es valiente', NULL, 'banná', 'Fuente: bubi-español', 'import-script'),
  ('Bailán', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir de bailá. Está localizado en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bailla', 'adj.', NULL, NULL, NULL, NULL, 'pI. abstinentes. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 12 (entradas 276 a 300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('baillo', 'adj.', NULL, NULL, NULL, NULL, 'pi. personas que limpian. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bailolla', 'adj.', NULL, NULL, NULL, NULL, 'pi. limpiadores, pulidores. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bailori', 's.', NULL, NULL, NULL, NULL, 'pi. saneamientos. limpiezas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baioppé', 's.', NULL, NULL, NULL, NULL, 'pi. tíos, hermanos de la madre o del padre. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baíribbo', 's.', NULL, NULL, NULL, NULL, 'pi. espíritus guardianes. muje res que velan por alguien. protectoras. el. 2. Th. barírimo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baísso', 's.', NULL, NULL, NULL, NULL, 'pI. mujeres, esposas. el. 2. Th. badyána, barí, mára', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Baita', 'antrop.', NULL, NULL, NULL, NULL, 'plural de bOitta. Está localizado en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baitáeri', 's.', NULL, NULL, NULL, NULL, 'pi. contertulios. personas que se encuentran en algún lugar. el. 2', NULL, 'bitáeri', 'Fuente: bubi-español', 'import-script'),
  ('baitta', 's.', NULL, NULL, NULL, NULL, 'pi. 1. nobles, caballeros. 2. altos dignata rios, gobernadores, ministros. 3. barones; a bote los gobernadores, los ministros. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baJe', 'adj.', NULL, NULL, NULL, NULL, 'dem. aquellos, aquellas. Concuerda con los nombres de las Cls. 2 y 6; - batúkku aquellos jefes de poblado, - basakatilo aquellos basakateños', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baJebbí', 's.', NULL, NULL, 'Cl. 1', NULL, 'pi. personas muy inteligentes, sabios. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bakabo', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a la malanga bubi grande, generalmente utilizada en las fiestas tra dicionales. También significa "ofrecimiento, acción de repartir". Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakakatyó', 's.', NULL, NULL, NULL, NULL, 'pi. desórdenes, desconciertos, incertidumbres. el. 6. bakuamá / 73', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakakí', 's.', NULL, NULL, NULL, NULL, 'pi. ruinas, desperdicios. el. 6. Tb. bakappi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakákka', 's.', NULL, NULL, NULL, NULL, 'pI. cangrejos pequeños de mar. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakamosa', 's.', NULL, NULL, NULL, NULL, 'pI. jóvenes y bellas doncellas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakanápette', 's.', NULL, NULL, NULL, NULL, 'pI. 1. masas blandas y pegajosas 2. gran cantidad de heces blandas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakappi', 's.', NULL, NULL, NULL, NULL, 'pi. destrucciones, destrozos, ruinas, despilfarros, derroches. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakará', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. 1. lugares de blancos. CI. 6. 2. blancos, europeos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakarari', 's.', NULL, NULL, NULL, NULL, 'pI. mujeres blancas. CI. 2. Tb. apotoári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakasso', 'adv.', NULL, NULL, NULL, NULL, 'deprisa, con rapidez, con celeridad. Exp. ej. to''óllá - habla deprisa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakatte', 's.', NULL, NULL, NULL, NULL, 'pI. lugares donde duermen los murcié lagos. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakatto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. contadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakatto', 's.', NULL, NULL, NULL, NULL, 'pI. vasos, cubiletes. CI. 6. Tb. tOlnpulla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakatyulIé', 's.', NULL, NULL, NULL, NULL, 'pI. personas mayores y conocedo ras de la cultura de su comunidad. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 13 (entradas 301 a 325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bakaya', 's.', NULL, NULL, NULL, NULL, 'pI. personas que abren grandemente las piernas. CI. 2 sing. CI. 1 : "biikaya")', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bake''o', 's.', NULL, NULL, NULL, NULL, 'pi. pruebas, ensayos. CI. 6 ; ha séi - bikébíke hubo muchos ensayos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakekko', 's.', NULL, NULL, NULL, NULL, 'pI. mejillas, mofletes. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakélékélée', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. animaciones, diversiones, parrandas. jolgorios, juergas, bullicios. . bakessi, pret. v. o bakkáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baketyi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. crustáceos ermitaños. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakíbba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. paradas. . Tb. baebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakírió', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. criollos, descendientes del criollo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakka', 's.', NULL, NULL, 'Cl. 11', NULL, 'pI. baúles, ataúdes, maletas. CI. 1 0 ; ha tá séi - o tyilella a batyo ba wéi ba no había ataúdes para enterrar a los muertos. bakkáa, v. revolver, agitar. mirar a diestro y siniestro. Pret. bakkí, bakessi. bakkí, pret. v. o bakkáa ; e húbbé e - na e te olláa a lokko el ladrón miró a dies tro y siniestro antes de llevar las cosas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bákko', 's.', NULL, NULL, 'Cl. 11', NULL, 'pi. 1. cielos, firmamentos. CI. lO. 2. s. sing. bandido, vago, ban dolero. CI. 9', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bako''ó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. 1. cañas bravas. cañaverales. juncos. . 2. cañas de azúcar. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakobaera', 's.', NULL, NULL, NULL, NULL, 'pI. imitadores, copiadores. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakobbe', 's.', NULL, NULL, NULL, NULL, 'pI. árboles del plátano. CI. 6', NULL, 'makobbe', 'Fuente: bubi-español', 'import-script'),
  ('bakoé', 's.', NULL, NULL, NULL, NULL, 'pI. criados, braceros, extranjeros. CI. 2. Tb. bakollé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakokko', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. temblores, ataques de nervio. cohesiones, uniones. . Tb. batyíbierí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakokko', 's.', NULL, NULL, NULL, NULL, 'pI. alumbrados, iluminaciones. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakokoo', 's.', NULL, NULL, NULL, NULL, 'pI. cohesiones, solidaridades. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakokottó', 's.', NULL, NULL, NULL, NULL, 'pi. calambres. abscesos internos. CI. 6. Tb. bahíhi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakolIé', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. criados, braceros, extranjeros. CI. 2. Tb. bakoé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakookonno', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. efr. bakookoo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakookoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. Concuerda con las palabras de las Cls. 2 y 6; baribbO - pocos espí ritus, boppé - poca agua', NULL, 'bakookonno', 'Fuente: bubi-español', 'import-script'),
  ('bakotánta', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. contenedores de papeles. papeleras. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakótta', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. personas que agrupan o reúnen. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakottí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. pañales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakotto', 's.', NULL, NULL, NULL, NULL, 'pI. pies, patadas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakótto', 's.', NULL, NULL, NULL, NULL, 'pI. coleCCIón, conjunto. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 14 (entradas 326 a 350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bakottoáta', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. plantas del pie. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakuakuabia', 's.', NULL, NULL, NULL, NULL, 'pI. farfulleros. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakuamá', 's.', NULL, NULL, NULL, NULL, 'pI. árboles de la guayaba. CI. 6. 74 / halwhhí halHlbhí, s IJI. finales, términos, conclusiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakumbé', 's.', NULL, NULL, NULL, NULL, 'pI. combes, ndowes. el. 2 (sing. el. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bakupí', 's.', NULL, NULL, NULL, NULL, 'pI. ofensas, afrentas. desobe thcncias, faltas de respeto. desdenes. el. 6. balabba, v. tumbarse, estar tendido supino, estar tumbado. Pret. balabbi, balabessi. balabbi, pret. v. o balabba ; n - me tumbé, o - te tumbaste, a - se tumbó, to - nos tumbamos, 10 - os tumbasteis, ba se tumbaron; n ka - estuve tumbado, o''a - estuviste tumbado, a''a - estuvo tumbado, to''a - estuvimos tumbados, lo''a - estuvisteis tumbados, ba''a - estuvieron tumbados. balabessi, pret. v. o balabba ; n me tumbaba, o - te tumbabas, a - se tumbaba, to - nos tumbábamos, 10 - os tumbabais, ba - se tumbaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balakoláko', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. trabajadores, currantes. jornaleros. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Balapá', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "cocineros". Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balapá''o', 's.', NULL, NULL, NULL, NULL, 'pI. cocineros. CI. 2. Tb. balappí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balaperi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. cocinas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Balapo', 'antrop.', NULL, NULL, NULL, NULL, 'relacionado con Balapá. También puede traducirse por "personas que maman". Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balappí', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. cocineros. el. 2. Tb. balapá''iJ. balárea, v. desposarse, casarse. Pret. balárei, baláreseei; o boje la o waísso ba lá - el hombre y la mujer se desposan. balárei, pret. v. o balárea ; o boje la o waísso ba - el hombre y la mujer están casados. baláreseei, pret. v. o balárea ; a batyo ba mmalé ba - las personas de antaño se desposaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balatto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. verbos. ; a -bá etyo bjkébíke los verbos del bubi son muchos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bale''é', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. hernias. . T b. baliké', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bale''o', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. naturales de Basakato del Este. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bale''o', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. registros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balebbáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. tuertos, *invidentes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balebbó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. árboles con cuya madera se fabri can las campanas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balebboo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. discapacitados, disminuidos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balehí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. alborotadores. camorristas, molestones. . Tb. batuppiJ, banya''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baleké', 's.', NULL, NULL, NULL, NULL, 'pI. hernias. CI. 6. Tb. bali''é', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balekia', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. 1. organizadores, personas que diri gen u ordenan, dirigentes. 2. poblado situado a escasos kilómetros de Baney. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balekka', 's.', NULL, NULL, 'Cl. 1', NULL, 'pi. personas que se ponen en fila, per sonas dirigidas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balekku', 's.', NULL, NULL, NULL, NULL, 'pI. escondites, lugares donde se pue de ocultar algo. CI. 6. balelessi, pret. v. o balella ; o boje Ól a le - waísso mi padre casaba a una mujer para mí, m - o billlá bulla yo esposaba una doncella para el hijo. balella, v. casar para, esposar para alguien. Conj. pres. na - yo caso para, o la - tú casas para, a la - él/ella casa para. Pret. baleri, balelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baleperíbbo', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. según las creencias bubis, se trata de personas que causan graves daños a los vivos por mediación de espíritus malignos. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baleppé', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. tanatorios, morgues. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 15 (entradas 351 a 375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('baleppo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. refugios. . baleri, pret. v. o balella ; o billlá a seílá epanná n ka bo - bulla cuando el chico estuvo en España le casé con una doncella. banebba / 75 bálessi, pret. v. o bálla ; n - me casaba con, o - te casabas, a - se casaba, to - nos casábamos, lo - os casabais, ba - se casaban. bálla v. casarse con, esposar, contraer matri monio. Pret. bári, bálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balláa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. palabras. ; a -bá o IOtó''ólló luá etyo las palabras de la lengua bubi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bállo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. hígados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balo', 'adj.', NULL, NULL, NULL, NULL, 'dem. estos, estas. Concuerda con los nombres de las Cls. 2 y 6; - batyo estas personas, - baatyé estas camas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baloari', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. inválidos, enfermos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balokalla', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. acompañantes de cama. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balokia', 's.', NULL, NULL, NULL, NULL, 'pi. hoteleros, hospedadores, alojado res. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balokka', 's.', NULL, NULL, NULL, NULL, 'pi. dormilones. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balokko', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. dormitorios. residencias, pensiones. hoteles, hostales, alojamientos. CI. 6. balopá, 1. s. pI. personas encargadas de encender el fuego. . 2. antrop. localizado en los poblados de Rebola, Batoicopo y Baloeri', NULL, 'baloppa', 'Fuente: bubi-español', 'import-script'),
  ('baloppa', 's.', NULL, NULL, 'Cl. 1', NULL, 'pi. personas que se encargan de encender el fuego. pirómanos. CI. 2', NULL, 'balopá', 'Fuente: bubi-español', 'import-script'),
  ('balOppá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. fabricantes del aro con el que se sube a la palmera de aceite. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('balotta', 's.', NULL, NULL, NULL, NULL, 'pi. vigilantes, guardianes, celadores. CI. 2', NULL, 'balotyi', 'Fuente: bubi-español', 'import-script'),
  ('balotyi', 's.', NULL, NULL, NULL, NULL, 'pI. guardianes, centinelas. vigi lantes, celadores, espías. CI. 2. bamma, 1. adj. indo algunos, algunas. Concuerda con las palabras de las Cls. 2 y 4; he - batyo hay algunas personas, ha tyi - boppé no hay algunas aguas. 2. S. pi. rocíos. CI. 6. Tb. buMa, bUba', NULL, 'balotta', 'Fuente: bubi-español', 'import-script'),
  ('bammáloto', 'S.', NULL, NULL, NULL, NULL, 'pi. cacaoteros. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bammammabi''o', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pI. felicídades, alegrías. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bammella', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. representantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bammo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. 1. rocíos, humedades. 2. bellezas, hermosuras. . Tb. bib ba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bammotye', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. asamblearios, tertulianos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bana''í', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. prometidos, novios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banaba', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. 1. cazadores. 2. personas rudas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banabílla', 'S.', NULL, NULL, 'Cl. 1', NULL, 'pI. bailadoras. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banaburú', 'adj.', NULL, NULL, NULL, NULL, 'pi. sabedores o conocedores de noticias o chismes. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banáka', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. pescadores. . Tb. banákánáka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banákánáka', 'S.', NULL, NULL, 'Cl. 1', NULL, 'pi. pescadores. CI. 2. Tb. banáka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bananáa', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pI. bananas. árboles de la banana, bananos. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 16 (entradas 376 a 400)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('banánna', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pi. abuelas, ancianas. . Tb. banoolá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banapana', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. estudiantes, alumnos. personas con conocimientos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banappe', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. ninfas, mujeres jóvenes y hermo sas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banatú''o', 'S.', NULL, NULL, 'Cl. 1', NULL, 'pi. hermanos mayores. CI. 2. Tb. banetyi''o. Banch [bántSl, antrop. que viene probablemente del bubi bOntyí. Normalmente se conside ra un préstamo del pidgin-english. Está localiza do en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bandi', 'antrop.', NULL, NULL, NULL, NULL, 'considerado como un préstamo del pidgin-english, pero que probablemente sea Banti!', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bandyo', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pI. personas, mdividuos. . Tb. batyo, besso, betyo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bane''é', 'S.', NULL, NULL, NULL, NULL, 'de! mal de orina. CI. 6. Tb. batyere', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bane''í', 'S.', NULL, NULL, NULL, NULL, 'pI. tomateras. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banebba', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'baneínos, naturales de Baney, gen tilicio de los naturales de este pueblo. CI. 2. . 76 / halll''j hallN, IIdj. haneínos, naturales de Baney, gentili CIO dc los naturales de estc pucblo. . TIJ. banebba. bancssi, "re! v. o banna ; n - mentía, o - mentías, a 1 a banessi] mentía, to - mentíamos, 10 - mentíais, ba - mentían', NULL, 'banéí', 'Fuente: bubi-español', 'import-script'),
  ('banetta', 's.', NULL, NULL, 'Cl. 6', NULL, '1''1. filos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banetyi''o', 's.', NULL, NULL, 'Cl. 2', NULL, '1''1. hermanos mayores. . TIJ. banatú''iJ. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banooa', 's.', NULL, NULL, 'Cl. 5', NULL, '1''1. 1. consejos de ancianos. 2. senados. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('banoolá', 's.', NULL, NULL, NULL, NULL, 'pI. abuelas. CI. 2. Tb. banánna. banoom, pret. v. o banola ; n - desmentí, o - desmentiste, a - desmintió, to - desmentimos, 10 - des mentisteis, ba - desmintieron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bantúbántú', 'adj.', NULL, NULL, NULL, NULL, 'bajos, bajas, cortos, cortas, etc. Concuerda con las palabras de las Cls. 2 y 6; batúkku - gobernantes cortos/bajos, bauppoo montañas cortas. hanuessi, pret. v. o banola ; n - desmentía, o - desmentías, a - desmentía, to - desmentíamos, 10 - des mentíais, ba - desmentían', NULL, 'bañtú', 'Fuente: bubi-español', 'import-script'),
  ('banya''o', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. alborotadores. camorristas. combatientes. . Tb. batuppiJ, balehí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baoátyera', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. oyentes, escuchantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baobaó', 's.', NULL, NULL, 'Cl. 6', NULL, '1''1. escamas. . Tb. maó máo, bakalola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('báóbáó', 's.', NULL, NULL, NULL, NULL, 'pI. escamas. CI. 6; a - bá e tyué las escamas del pez', NULL, 'baobaó', 'Fuente: bubi-español', 'import-script'),
  ('baobbe', 's.', NULL, NULL, NULL, NULL, 'pI. marineros. pescadores. CI. 2', NULL, 'baoobe', 'Fuente: bubi-español', 'import-script'),
  ('baobbí', 's.', NULL, NULL, 'Cl. 5', NULL, 'pI. reuniones, asambleas. CI. 6', NULL, 'baoppí', 'Fuente: bubi-español', 'import-script'),
  ('baobbo', 's.', NULL, NULL, NULL, NULL, 'pI. premios, beneficios. impues tos, pagas. CI. 6. Tb. mao mo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baoberi', 's.', NULL, NULL, NULL, NULL, 'pI. pagadurías. pagadores. CI. 6 y CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baobóra', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. notarios, custodios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baokáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. aviadores, pilotos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baokollo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. plantas del picante. ', NULL, 'beokollO', 'Fuente: bubi-español', 'import-script');

-- Lote 17 (entradas 401 a 425)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('baokossa', 's.', NULL, NULL, NULL, NULL, 'pI. personas que se mueven. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baOlállo', 's.', NULL, NULL, NULL, NULL, 'pI. combatientes, peleones. CI. 2. baólea, v. deshacerse. Pret. baólei, baóleseei; e tyotyi e lá - la iglesia se deshace. baólei, pret. v. o baóJea ; e rohiáa ri e eriia ri - el oratorio del pueblo se deshizo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baoleOle', 's.', NULL, NULL, NULL, NULL, '1''1. grítones, personas que hablan en voz alta. CI. 6. baóleseei, pret. v. o baólea ; i tyóbbo i - la e pullá las casas se deshaCÍan con la tormenta. barello /77 baólessi, pret. v. o baólla ; to bo - o wettya nosotros desha cíamos la cabaña. baólla, v. deshacer. Pret. baóri, baólessi; to la - e tyóbbo nosotros desha cemos la casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baOló', 's.', NULL, NULL, NULL, NULL, 'pI. árboles pequeños de látex blanco amargo y corteza también amarga de fruto verde pero rojo cuando madura. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baoobe', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. pescadores. ', NULL, 'bOobbe', 'Fuente: bubi-español', 'import-script'),
  ('baoorn', 's.', NULL, NULL, NULL, NULL, 'pI. retretes, letrinas. pozos cie gos. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baopooppo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. personas que siembran dis cordia. *soplagaitas, chupatintas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baoppo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. 1. peleas, luchas, batallas, lides, combates. 2. tormentos. . Tb. bikétikéti', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baoppo', 's.', NULL, NULL, NULL, NULL, 'def. aluvión, riada. CI. 6. Ej. expr. - a tyi oppa ríe wela el aluvión no dura en el torren te', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baori', 's.', NULL, NULL, 'Cl. 5', NULL, 'pI. lugares de com pras. CI. 6. baóri, pret. v. o baólla ; n-e tyóbbolÍl yo deshice mi casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baorí', 's.', NULL, NULL, NULL, NULL, 'pi. ríe os, adinerados. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baornmua', 's.', NULL, NULL, NULL, NULL, 'pi. carnicerías. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baosso', 's.', NULL, NULL, NULL, NULL, 'pI. divisiones, separaciones. lugares para la libación. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baotaotá', 's.', NULL, NULL, NULL, NULL, 'pI. plantas olorosas con hojas anchas opuestas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baotótto', 's.', NULL, NULL, 'Cl. 5', NULL, 'pI. colmenas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baotta', 'adj.', NULL, NULL, NULL, NULL, 'pi. debilidades, flojedades. abatimientos. CI. 6. Tb. biot ta, ibottó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baótú', 'adj.', NULL, NULL, NULL, NULL, 'bajos, bajas, cortos, cortas, etc. Con cuerda con las palabras de las Cls. 2 y 6; batyo personas de poca estatura, bakobbe - plátanos de poca altura. Tb. banfúbántú. báó, morl pos. nuestro, nuestra, nuestros, nues tras. Concuerda con las palabras de las Cls. 2 y 6; a baie - nuestros padres, a bayolla - nuestros abuelos, a boppé - nuestra agua', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baotya', 'adj.', NULL, NULL, NULL, NULL, 'pI. primeros, primeras. Concuerda con los nombres de las Cls. 2 y 6: a bayolla - los primeros abuelos, a batté - los primeros árboles', NULL, 'ba''iitya', 'Fuente: bubi-español', 'import-script'),
  ('bapaosélla', 's.', NULL, NULL, NULL, NULL, 'pI. enamorados, enamoradas. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bapeleri', 's.', NULL, NULL, NULL, NULL, 'pI. 1. necesidades, deseos. CI. 6. 2. personas caprichosas. CI. 2. Tb. biilerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bapélla', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. habitantes, inquilinos. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bapori', 'antrop.', NULL, NULL, NULL, NULL, 'plural de bopóri. Significa "personas que cor tan o interrumpen". También se refiere a las perso nas que se encargan del cuidado de las cabras. Está localizado en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bappa', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. serpiente, culebra, víbora. Cls. 9 y 10. En este último caso formará parte del antropóni mo babbasássá "serpiente que asusta"', NULL, 'babba', 'Fuente: bubi-español', 'import-script'),
  ('bappáa', 's.', NULL, NULL, NULL, NULL, 'pI. sobacos. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bappí', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. restos, limosnas, dádivas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 18 (entradas 426 a 450)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bappú', 's.', NULL, NULL, NULL, NULL, 'pI. buches. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bapué', 'antrop.', NULL, NULL, NULL, NULL, 'que proviene de ripukké. Se refie re a las faltas de consideración y respeto hacia alguien. Está localizado en Lubá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bapueratá', 's.', NULL, NULL, NULL, NULL, 'pI. ayudantes, asistentes. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bapulákke', 'adj.', NULL, NULL, NULL, NULL, 'pI. extranjeros, oriundos de otros países, de allende los mares. CI. 2. Tb. apulákke. bara, v. techar, poner el techo de una casa. Pret. bariia, baresiia. baráa, v. casar, hacer casar, contraer matrimo nio, desposar. Pret. baría, barésiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('barannó', 's.', NULL, NULL, NULL, NULL, 'pi. fangs, pamues. CI. 2. Tb. batiinka. báréa, v. casarse con, esposar, contraer matri monio. Pret. báréi, báréseei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baréi', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. 1. personas que comen, comensales, convidados. . 2. restau rantes, fondas. CI. 6. También se utiliza como gentilicio de los naturales de Baney. báréi, pret. v. o báréa ; o waísso a - boríbáa la mujer se casó con un extranjero', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bareÍltya', 's.', NULL, NULL, NULL, NULL, 'pi. naranjos. el. 6. Tb. epippo. báreseei, pret. v. o báréa ; a baísso - buatóo las mujeres se casaban tarde. baresiia, pret. v. o bara ; a baje ba - los hombres ponían el techo de una casa. baresüa, pret. v. o baráa ;_n - casaba, o - casabas, a - casaba, to - casábamos, 10 - casabais, ba - casaban; e bjul la bjá e erija wela to be - a las doncellas del pueblo les casábamos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('barekáita', 's.', NULL, NULL, NULL, NULL, 'pi. espíritus jóvenes, almas de los jóvenes difuntos. CI. 2. expr. nye morekáita n te e nyá ka''e soy un joven espíritu y no he muerto', NULL, 'miirekáita Ej', 'Fuente: bubi-español', 'import-script'),
  ('barello', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. comedores. . 7H / barem', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('barem', 's.', NULL, NULL, NULL, NULL, 'pi. limoneros. el. 4. r/J. biirem', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('barí', 's.', NULL, NULL, NULL, NULL, 'pI. mujeres, esposas. el. 2. Tb. hadyána, haísso, mára. bári, pret. v. o bálla ; IÍIma lé n ka - waísso opanná antaño me casé con una mujer española. baría, pret. v. o baráa ; o wetta IÍI m bo - a mi hermana la casé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bariariia', 's.', NULL, NULL, NULL, NULL, 'pI. personas pertenecientes al grupo de quienes pueden gobernar un poblado, un país, etc. gobernantes, dignatarios. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baríbáa', 's.', NULL, NULL, NULL, NULL, 'pi. extranjeros, peregrinos, huéspedes. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baríballá', 's.', NULL, NULL, NULL, NULL, 'pi. 1. cónyuges. 2. rivales. el. 2. baríbba, v. prnl. despertarse. espantarse, asustarse. Pret. baríbbi, baríbessi. baríbbi, pret. v. o baríbba ; o botyíó botello o bóllá a - a media noche el niño se despertó. baríbbia, v. despertar, espantar. Tb. o hári mia. Pret. baríbiia, baríbiesiia', NULL, 'o hárima', 'Fuente: bubi-español', 'import-script'),
  ('baribbo', 's.', NULL, NULL, NULL, NULL, 'pi. espíritus. demonios. el. 2 ; sollám a - dejad de seguir a los demonios. baríbessi, pret. v. o baribba ; n - me despertaba, o te despertabas, a - se despertaba, to - nos despertába mos, lo - os despertabais, ba - se despertaban. baríbiesiia, pret. v. o baribbia ; o lOé 10 - o bóllá el lloro despertaba al niño. baríbiia, pret. v. o baríbbia ; n - desperté, o - desper taste, a - despertó, to - despertamos, lo - despertasteis, ba despertaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Baribo', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a la sociedad de los espíritus. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baribotyu', 's.', NULL, NULL, NULL, NULL, 'pi. religiones. el. 6. bariia, pret. v. o bara ; n-o wettya IÍI puse el techo de mi cabaña, a baie ba - e tyób bo á e eriia los hombres techaron la casa del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('BariJa', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir del verbo rílla. Significa "personas que extermi nan". Está localizado en Baney y Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bariki', 's.', NULL, NULL, NULL, NULL, 'pi. lugares de imágenes. cines. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('barikora', 's.', NULL, NULL, NULL, NULL, 'pi. !. acusadores, denunciantes, dela tadores. 2. fiscales. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('barírimo', 's.', NULL, NULL, NULL, NULL, 'pi. espíritus guardianes. mujeres que velan por alguien. protectoras. el. 2. Tb. haíribho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('barullo', 's.', NULL, NULL, NULL, NULL, 'pI. corchos. taco para taponar algo. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basá', 's.', NULL, NULL, NULL, NULL, 'pI. acompañantes, seguidores. con tadores. hacedores, ejecutores. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basa''a', 's.', NULL, NULL, NULL, NULL, 'pI. limas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basá''o', 's.', NULL, NULL, NULL, NULL, 'pi. halagos, alabanzas, glorias, honras. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 19 (entradas 451 a 475)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('basabbo', 's.', NULL, NULL, NULL, NULL, 'pI. lijas. cepillos metálicos. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basabóatta', 's.', NULL, NULL, NULL, NULL, 'pI. narradores, contadores, noveleros. predicadores. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basakatoo', 's.', NULL, NULL, NULL, NULL, 'pi. naturales de Basakato, basaka teños. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basaké', 's.', NULL, NULL, NULL, NULL, 'pi. machetes, espadas, hoces. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basákiera', 's.', NULL, NULL, NULL, NULL, 'pi. felicitaciones. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basalábbe', 's.', NULL, NULL, NULL, NULL, 'pI. malhechores, personas malas, maliciosos, malvados. el. 2. basóri / 79', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basalele', 's.', NULL, NULL, NULL, NULL, 'pI. bienhechores, personas altruistas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basalla', 's.', NULL, NULL, NULL, NULL, 'pI. palmas, hojas de la palmera. el. 6', NULL, 'masalla', 'Fuente: bubi-español', 'import-script'),
  ('basalóetyi', 's.', NULL, NULL, NULL, NULL, 'pI. viajeros, caminantes, peregri nos. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basappá', 's.', NULL, NULL, NULL, NULL, 'pI. chopos del país. el. 6. Tb. kalabóro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basáráa', 's.', NULL, NULL, NULL, NULL, 'pI. espantadores, asustadores. terroristas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basári', 's.', NULL, NULL, NULL, NULL, 'pI. personas que temen, temerosas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basawasawáa', 's.', NULL, NULL, NULL, NULL, 'pI. árboles del sawasawa, del guanábano o chirimoya. el. 6', NULL, 'besawasawáa', 'Fuente: bubi-español', 'import-script'),
  ('base''e', 's.', NULL, NULL, NULL, NULL, 'pI. pubis. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basella', 's.', NULL, NULL, NULL, NULL, 'pI. sanadores. curanderos. médicos. el. 2. Tb. bokút ta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basellé', 's.', NULL, NULL, NULL, NULL, 'del vino dulce de palma. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basepaseppa', 's.', NULL, NULL, NULL, NULL, 'pI. quejicas, quejones. provocadores, litigiosos. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baseppa', 's.', NULL, NULL, NULL, NULL, 'pi. engreídos, soberbios. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baserü', 's.', NULL, NULL, NULL, NULL, 'pI. enfermerías, clínicas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baseruseru', 's.', NULL, NULL, NULL, NULL, 'pI. barbudos, barbados. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baseseele', 's.', NULL, NULL, NULL, NULL, 'pI. escobas. fregonas. el. 6. Tb. abetye, aburúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basesepári', 's.', NULL, NULL, NULL, NULL, 'pi. jóvenes muchachas, mozas, doncellas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baseseppe', 's.', NULL, NULL, NULL, NULL, 'pI. jóvenes muchachos, mozos. el. 2. basessi, pret. v. o bassáa; mpári m -e isaké ayer limaba el machete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basibé', 's.', NULL, NULL, NULL, NULL, 'pI. personas naturales de Lubá. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basií', 's.', NULL, NULL, NULL, NULL, 'pi. astutos, tunantes, pícaros, granujas, pillos, taimados. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 20 (entradas 476 a 500)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('basilio', 's.', NULL, NULL, NULL, NULL, 'pi. recodos, rincones. neveras. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basissi', 's.', NULL, NULL, NULL, NULL, 'pi. calambres. piernas dormidas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basobbá', 's.', NULL, NULL, NULL, NULL, 'pI. soldados, guardias. el. 2. Tb. sótya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basobbá', 's.', NULL, NULL, NULL, NULL, 'pi. patatas aéreas venenosas, no comestibles. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basoí', 's.', NULL, NULL, NULL, NULL, 'pi. embusteros, mentirosos, bribones, far santes. el. 2. Tb. basoisói', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basoisói', 's.', NULL, NULL, NULL, NULL, 'pI. embusteros, mentirosos, bribones, farsantes. el. 2. Tb. basoí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basokka', 's.', NULL, NULL, NULL, NULL, 'pI. gorras. gorros, sombreros. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basokká', 's.', NULL, NULL, NULL, NULL, 'pi. sombreros. bolsos. som brererías. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basókkó', 's.', NULL, NULL, NULL, NULL, 'pI. altos dignatarios. reyes, supremos. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basókuari', 's.', NULL, NULL, NULL, NULL, 'pi. almas de las doncellas según la mitología bubi. el. 2. basóla, v. destruir, destrozar algo previa mente construido; o boie ID a la - e tyóbbo mi padre destruye la casa. violar; e kobinna a la - e biete el gobier no viola las leyes. Pret. basóri, basó lessi. basólessi, pret. v. o basóla ; i puá i - e rikkí los perros destrozaban la valla; a abitábítta ba i tyotyi kubba i é e etúllá emmaa los mili tares destruían todas las iglesias de la isla', NULL, 'basólla', 'Fuente: bubi-español', 'import-script'),
  ('basollá', 's.', NULL, NULL, NULL, NULL, 'pI. mandíbulas inferiores. el. 6. basólla, v. destruir, destrozar algo previa mente construido. violar. Pret. basórí, basó lessi', NULL, 'basóla', 'Fuente: bubi-español', 'import-script'),
  ('basoppo', 's.', NULL, NULL, NULL, NULL, 'pi. panes. el. 6. Tb. puleri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basoppó', 's.', NULL, NULL, NULL, NULL, 'pi. ñames dulces, batatas, boniatos. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basopuára', 's.', NULL, NULL, NULL, NULL, 'pI. toboganes. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basorá', 's.', NULL, NULL, NULL, NULL, 'pI. espermas, semen. flujos vagi nales. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basoram', 's.', NULL, NULL, NULL, NULL, 'pI. helecho de tallos trepadores más o menos enrollados con raíces adventicias. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basori', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. personas libres. emigrantes. el. 2. basóri, pret. v. o basóla ; o bOíe a -e ripello el hom bre rompió la puerta. NtI / hllsúsúllú hllsúsúllú., 1'' /JI. almas de las viejas difuntas, según la Illllologíll bubi. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basubári', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. benjaminas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basubbá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. los últimos, las últimas. ; a batyo - las últimas personas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basubbó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. baños. cuartos de baño. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basubóbbe', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. benjamines. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basúpia', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. elecciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basuppí', 's.', NULL, NULL, 'Cl. 1', NULL, 'pi. personas que escogen. elec ciones, opciones. Cls. 2 y 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('basutto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. relojes. . Batajolo, antrop. construido a partir de los términos há fa hóla que significa "ellos se qUieren, ellos se ponen de acuerdo". Está locali zado en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batákityé', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. gobernadores, emperadores, jefes de estado, presidentes. . Tb. bOtákityé', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 21 (entradas 501 a 525)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('batákka', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. mandamases, mandones. directores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batákkí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. 1. criados, vasallos, súbditos. 2. dominios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batákko', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. emisarios, embajadores, mensaje ros, delegados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Batapa', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir de itappá. Significa "clanes paterno filiares" y está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batáperi', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. aceptaciones. recibidores. Cls. 6 y 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batappá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. clanes. linajes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bate', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. piedras, pedruscos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bate''a', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. personas que consuelan y calman. . Tb. bate''í', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bate''í', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. pésames, condolencias, consuelos. . personas que con suelan y calman. . Tb. bate''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batébisapá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. pacificadores. modera dores. jueces. . Tb. matésabbá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bateke', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. cangrejos de río. centollos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bateríbbo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. almas de jefes y reyes dentro de la mitología bubi. espíritus poseedores de un siervo o elotyí. . batessi, pret. v. o batta ; n - vetaba, o - vetabas, a vetaba, to - vetábamos, 10 - vetabais, ba - vetaban', NULL, 'baté rimo', 'Fuente: bubi-español', 'import-script'),
  ('batette', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. palmeras jóvenes. . Tb. betette, mitete. bato, 1. adj. largos, altos, largas, altas. Concuerda con las palabras de las Cls. 2 y 6; batyo - personas altas, baatyé - largas camas. 2. adj. numo cinco', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bató''a', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pi. 1. ñames de las ramas. 2. antrop. ñames de las ramas. . Tb. mato''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batoatooa', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pi. risotadas, carcajadas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batoberi', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pI. anos. lugares donde se defeca, retretes. . batóbie''eriia, pret. V. o batóbiera ; n - escuchaba, o - escuchabas, a - escuchaba, tO - escuchába mos, 10 - escuchabais, ba - escuchaban. batóbiera, v. escuchar, prestar atención, aten der. Pret. batóbie riia, batóbie'' eriia. batóbieriia, pret. v. o batóbiera ; n-o bue''iáa escuché al maestro', NULL, 'o batóyeera, o bolóbiera', 'Fuente: bubi-español', 'import-script'),
  ('batohí', 's.', NULL, NULL, NULL, NULL, 'pI. soles. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batOhó', 's.', NULL, NULL, NULL, NULL, 'pI. justicias, tribunales de justicia, juz gados. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batoJari', 's.', NULL, NULL, NULL, NULL, 'pI. alianzas, uniones, solidaridades. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batOlállo', 's.', NULL, NULL, NULL, NULL, 'pI. retahílas. piropos, elogios. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batolla', 's.', NULL, NULL, NULL, NULL, 'pI. los árboles de tolla. CI. 6', NULL, 'betolla', 'Fuente: bubi-español', 'import-script'),
  ('batollo', 's.', NULL, NULL, NULL, NULL, 'pI. lugares donde se duerme, hoteles, hostales. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batolló', 's.', NULL, NULL, NULL, NULL, 'pI. vínculos, enlaces. eslabones. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batOnka', 's.', NULL, NULL, NULL, NULL, 'pi. fangs, pamues. CI. 2. Tb. barannó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batóo', 's.', NULL, NULL, NULL, NULL, 'pl. orejas, oídos. sordera. CI. 6. Ej. expr. we - ¿estás sordo? tópa i - ¡presta atención!', NULL, 'kotya', 'Fuente: bubi-español', 'import-script');

-- Lote 22 (entradas 526 a 550)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('batoom', 's.', NULL, NULL, NULL, NULL, 'pI. cagones. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batOperi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. municipios, condados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batótta', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas que acuden, acudientes. manifestantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batóweri', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. intérpretes. traductores. . Tb. abélló. batta, v. 1. vetar, impedir, prohibir. 2. bautizar. Pret. battyi, batessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('battáa', 's.', NULL, NULL, 'Cl. 6', NULL, 'del caderas, trasero, nalgas, posaderas. ; e biulla be lá ikíra a - ba bie las doncellas mueven sus caderas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batté', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. 1. árboles, palos. CI. 6. 2. brío, méritos; 010 botyo okkí - esta persona tiene méritos, tiene brío, abo ká - o esos son tus méntos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batto', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. vetos, impedimentos. . battyi, pret. v. o batta ; n - veté, o - vetaste, a - vetó, to - vetamos, 10 - vetasteis, ba - vetaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batúkku', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. jefes de poblado, alcaldes. gobernantes. ; - bote grandes jefes de poblado, grandes gobernantes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batúkuari', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. jefas de poblado, alcaldesas. gobernantas. ; - bote grandes jefas de poblado, grandes gobernantas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batutera', 's.', NULL, NULL, NULL, NULL, 'pI. recepciones, acogidas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batuttá', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. vertederos, estercoleros. CI. 6. batyáa, v. padecer. doler. afligir, apenar. escocer; o - bi''o sufrir mucho, estar harto de tanto dolor. Pret. batyía, batyésiia, batyí', NULL, 'o bmítya', 'Fuente: bubi-español', 'import-script'),
  ('batyabatya', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. costilla. Clases 9 y 10. Aquí la palabra carece de prefijo de clase, sólo los aumentos nos permiten determinar dicha CIa se: aumento e para la Clase 9, y aumento i para la Clase 10; ej. e batyabatya la costilla, i batyaba tya las costillas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyámaan', 's.', NULL, NULL, NULL, NULL, 'pI. países de Alemania. CI. 6. 2. alemanes. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyapotyapo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. falos grandes, penes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyaribba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. meses de abril. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyé''a', 's.', NULL, NULL, NULL, NULL, 'pi. arbustos de la berenjena. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyeJemán', 's.', NULL, NULL, NULL, NULL, 'pi. presos, prisioneros. CI. 2. Tb. tyelemán. bátyera, v. tender, extender. Pret. bátyeriia, bátyeresiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyere', 's.', NULL, NULL, NULL, NULL, 'det" pI. retención de orina, mal de ori na, blenorragia. CI. 6. . Tb. bane''é, matyere. bátyereea, v. prnl. pavonearse, vanagloriarse, presumir. Ej. conj. preso o botyo a la - la perso na se vanagloria. Pret. bátyereei, bátyereseei. bátyereei, pret. V. o bátyereea ; n -la e ri''uálÍl pre sumí por mi dicha. bátyereseei, pret. V. o bátyereea ; o bonánna lÍl a - a batyo weia mi abuela presumía entre las personas. H2 / bátyeresiia bátyeresiia, pret. v. o bátyera ; i Imua n i - la ropa yo la tendía. hatyeretyere, s pi. mezclas pastosas, menestras. el. 6. hátyeriia, pret v. o bátyera ; n bo - o bokutta yo lo extendí, la manta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyiáeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'pI. disculpas, perdones, benevolen cias. CL 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyíbierí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. temblores, tiriteras. . Tb. bakoklro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyílé', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. antepasados, ancestros. . Tb. matyílé. batyílla, 1. s. pI. tiempo para arrancar los ñames. 2. numo cientos ; ej. -appa doscientos euros, -bó mil euros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. personas, gente, individuos, tipos. ', NULL, 'besso, bandyo, betyo', 'Fuente: bubi-español', 'import-script'),
  ('batyoa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. liquen, musgo. ', NULL, 'bityoa', 'Fuente: bubi-español', 'import-script'),
  ('batyokó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. presunciones, jactancias. orgullos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyOletyólle', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. árboles de las suelas. . Tb. betyappa, betyoletyólle', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 23 (entradas 551 a 575)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('batyotyo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. puñados. . batyú ''u, s. pI. ricos, adinerados. ', NULL, 'korí', 'Fuente: bubi-español', 'import-script'),
  ('batyué', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. pescaderías. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyuheri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. regalos, obsequios, albricias. . Tb. batyuho, biituho, ba''abbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('batyuho', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. regalos, obsequios, albricias. . Tb. betuho, ba''abbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('baukí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. confusiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bauppoo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. montes, montañas, cuestas. . Tb. biulo, bió', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bausolo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "vino salado" o "vino degustado". Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bausóri', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. 1. delatores. . 2. nombramientos. referen cias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bausuerí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. nombradores. ; a -ba lá sosolla e bilabba los nombradores rela tan los hechos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bayolla', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. abuelos, ancianos, ancestros. ; a - báó nuestros abue los, ancestros; a - báó ba sessi i pohá nuestros ancestros realizaban proezas; - tyuíi batéribbo, espíritus a los que se acude para cuestiones dificiles. Videntes. be, mor! que se antepone al tema del adjetivo indefinido -Ié; ej. a batyo -lé las demás personas, a baatyé -lé las demás camas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcakákka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. árboles de ramitas delgadas. . 71). yakákká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcakká', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. 1. acequias, canalones. 2. almen dras, raíces. . bca kke, s. pi. l. tribus, familias. 2. atados, ataduras. partos. . bcakki, s pI. piojos, liendres, pulgas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcala', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. obstáculos, final; o kubbáa - no haber solución a una cosa. ', NULL, 'bealla', 'Fuente: bubi-español', 'import-script'),
  ('bcalla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. puntas de tierra, cabos. ; o kúbala - tropezar con la pun ta de la tierra, no tener salida', NULL, 'beala', 'Fuente: bubi-español', 'import-script'),
  ('bcallo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. rodillos. leñeras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcalOri', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. ceremonias ofrecidas a los difuntos al tercer día de ser enterrados. En ella se prepara un gran ágape en el que participan todos y es pre sidido por los familiares más directos. . Tb. /oátóra. beam, pret. v. o beanna ; o bobba bo - Ielle el sue lo está bien nivelado. beammaa, alij. pi. todos, en su totalidad. . beanessi, pret. v. o beanna ; m bo - o bobba yo nivelaba el suelo. beanna, v. igualar, nivelar, ajustar; n la - o bOleU! yo nivelo la línea. Pret. beam, bea nessi', NULL, 'bebaa, bebammaa', 'Fuente: bubi-español', 'import-script'),
  ('bcaó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. deudas. gastos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bCbaeba', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cucarachas. . Tb. beebaeba, bihMmo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bcpé', 'antrop.', NULL, NULL, NULL, NULL, 'perteneciente a la CI. 7 que ha per dido su prefijo inicial !l-. Significa "berenjena". Está localizaco en Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcpelle', 's.', NULL, NULL, NULL, NULL, 'pi. fornicaciones, puteríos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcpippí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. tiranías, dictaduras opresio nes, esclavitudes. . 7/) baakio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcpiró', 's.', NULL, NULL, NULL, NULL, 'pi. ballestas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcppí', 's.', NULL, NULL, NULL, NULL, 'pi. culpas, culpabilidades. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bcppo', 's.', NULL, NULL, NULL, NULL, 'pi. bancos, cajas de caudales. bases, esencias. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be', 'morf.', NULL, NULL, NULL, NULL, 'de Clase 3 para los adjetivos numerales Y demostrativos. Ej. e bempo -tá le bempo -to las narices tres y las narices cinco, -le bempo aquellas narices. be, 1. prono sujo ellos, as. 2. v. son, están. Ej. a batyo -tyibba las personas, ellas, se cansan; bá batyo -battá estas personas son tres', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 24 (entradas 576 a 600)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bé', 'adj.', NULL, NULL, NULL, NULL, 'malo, mala, feo, fea. Concuerda con las palabras de las Cls. 9 y 10; e nabba - la carne mala, i nabba - los animales malos, etc', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''a', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. ñames de las tres hojas. . be''a, v. nadar, flotar, bracear; n la - e ríe wela nado en el río. ser igual. Pret. be''i, be''essi. bé''a, v. llorar, lloriquear, sollozar; na o bOllá a la - appiá bO si el niño llora, dale de mamar. Pret. bé''i, bé''essi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''áa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. alumnos, discípulos, aprendices, estu diantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''aale', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cargas, fardos. . Tb. bi''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''áeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'pi. contagios. CL 6. bé''ála, v. llorar con, sollozar con; to la - a banapana lloramos con los estudiantes. Pret. bé''ári, bé''álessi. beabílla / 83 be''alessi, pret. v. o be''alla ; n - nadaba con, o - nadabas con, a - nadaba con, to - nadábamos con, 10 - nadabais con, ba - nadaban con. bé''álessi, pret. v. o bé''ála ; tue ammaa to - a abé''í bammaa todos llorába mos con los llorones. be''alla, v. nadar, flotar en compañía de otro. Pret. be''am, be''alessi. be''am, pret. v. o be''alla ; e puá e botyo [e puá é b; m bo - o bonánna lloré con la abuela', NULL, 'o béána', 'Fuente: bubi-español', 'import-script'),
  ('be''e', 'adv.', NULL, NULL, NULL, NULL, '¿cuánto/s, cuánta/s? Se utiliza con los nombres de las Clases 2, 4, 6, 8, 10, 13, etc. Ej. expr. o la na''a tyué - ¿cuánto pescado quieres?', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cargas, fardos. . Tb. be''aa/e. be''ela, llorar por alguien o por algo; n la - o botyo lÍl lloro por mi pariente, n ta pá''e o - e ribotyo o no puedo llorar por tu vida. Pret. be''em, be''elessi. bé''ela, v. desear, añorar, llorar por alguien o por algo. Pret. bé''eri, bé''elessi. bé''elessi, pret. v. o bé''ela 1. ; n - deseaba, o - desea bas, a - deseaba, to - deseábamos, 10 - deseabais, ba deseaban. 2. ; m - o oberii lÍl lloraba por mi madre. be''em, pret. v. o be''ela ; o bollá a - rombebí el niño lloró por una muñeca. be''eri, . 1". pi. centros de aprendizaje, academias. . bé''eri, pret. v. o bé''ela ; m - e bilabba biáó lloré por nuestras tradiciones', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''esobí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. palos rectos. . be''essi, pret. v. o be''a ; m - mpári yo nadaba ayer. bé''essi, pret. v. o bé''a ; e le atoo ro - lette esta tarde yo lloraba de verdad. be''i, pret. v. 1. o be''a ; n ka - he nadado. 2. o be''a ; tue appa ebbá to''a - los dos fuimos iguales', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''í', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. enseñanzas, educaciones. . bé''i, pret. v. o bé''a ; a bellá bí i nokko n ka ba - las lágrimas de los ojos, las he llorado', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bé''í', 's.', NULL, NULL, NULL, NULL, 'pi. lamentos, quejas. Cl. lO. be''ia, v. igualar, nivelar, normalizar, aj ustar. Ej. na - o bobba yo Igualo el suelo. Pret. be''iia, be''iesiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''iáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. enseñantes, maestros. . be''iaam, pret. v. o be''ianna ; m bi - e biriia yo igualé los pueblos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''iáari', 's.', NULL, NULL, NULL, NULL, 'pi. maestras, enseñantes. CI. 2. be''ianessi, pret. v. o be''ianna ; n - nivelaba, o - nive labas, a - nIvelaba, to - nivelábamos, 10 - nivela bais, ba - nivelaban. be''ianna, v. nivelar, igualar. Pret. be''iaam, be''ianessi. be''iesiia, pret. v. o be''ia ; m bi - e bilabba yo igualé los árboles', NULL, 'o be''ia', 'Fuente: bubi-español', 'import-script'),
  ('be''ó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. cañas negras de azúcar. . Tb. beko ''ó. be''Olo, . 1". pi. pesetas. . bé''oo, . 1". pI. puentes, pontones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('be''otya', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pI. primeros, primeras. Concuerda con las palabras de la. efr. beotya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beabílla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. palmeral. . H4 / Ikal, :''. Bl''aká, lIlIllIJ/'' que slglll flea "raíces" o "semi l las" Eslú local izado en Basakato de la Sagrada Fami l ia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beapí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. moscardones fabricantes del nido de barro, avispones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beapíappí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. peces sierra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beappo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. abrazos. . Tb. bihátyibianna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beappú', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cuevas, grutas, cavernas. . Tb. besilla, meambú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beasso', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. ramas, ramajes. extensiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beassó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. esteras. sábanas, cubrecamas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beateatte', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. pájaros que comen frutos ya maduros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beatta', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. historias. noticias. discur sos. leyendas, narraciones. . Tb. meanda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beatte', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cinturas. danzas de la cintura. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beatyatya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. brillos, centelleos, que tienen buen aspecto. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 25 (entradas 601 a 625)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('beatyó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. buitrones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beaúri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. claridades del día, a mediodía. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. eructos, regurgitaciones. . Tb. bebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebabebba', 'adj.', NULL, NULL, 'Cl. 9', NULL, 'azul. Clases 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebao', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. calvas, calvicies. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebba', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. l. eructos, regurgitaciones. 2. hipo pótamos. Cls. 4 y 6. Tb. bebá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebbá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. estómagos, vientres. embarazos. . Tb. bebbe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebbe', 's.', NULL, NULL, 'Cl. 6', NULL, 'pi. embarazos. . Tb. bebbá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebe', 's.', NULL, NULL, 'Cl. 2', NULL, 'pi. y adj. bellos, hermosos, guapos, bonitos, agradables. Concuerda con las palabras de las Cls. 2 y 6; a bayolla - los abuelos agradables, a boppé - el agua bonita o rica. . bebelessi, pret. v. o bebera ; e sille si - e benelÍl el frío agrietaba mis dedos. bebera, v. agrietar, rajar; n la e kobbí yo rajo la calabaza vinatera. Pret. beberi, bebelessi. beberl, pret. v. o bebera ; e - e kobbí la e húé se agrietó la calabaZa vinatera con el calor', NULL, 'o bembera', 'Fuente: bubi-español', 'import-script'),
  ('bebíla', 's.', NULL, NULL, NULL, NULL, 'culebra negra. Clases 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebo', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. lenguas. . beháo /85', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebori', 's.', NULL, NULL, NULL, NULL, 'pI. putrefacciones, podredumbres. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bebotó', 's.', NULL, NULL, NULL, NULL, 'pI. languideces. lelos. el. 4. Becha, antrop. que se refiere a la persona que invoca. Debería escribirse Bétya. Está locali zado en Baresó. bedda, v. Bechiro, antrop. que parece hacer refe rencia a las vísceras del cangrejo. Está localizado en eupapa y en Baney. romper, quebrar. Pret. bedyíi, bedéssi. bedessi, pret. v. o bédda ; n quebraba, o - quebra bas, a - quebraba, to - quebrábamos, 10 - quebrabais, ba quebraban. bedyíi, pret. v. o bédda ; n rompí, o - rompiste, a - rompió, to - rompimos, 10 rompisteis, ba - rompieron', NULL, 'o betUí, o bet táa, o betta', 'Fuente: bubi-español', 'import-script'),
  ('bee''o', 's.', NULL, NULL, NULL, NULL, 'pi. las tres piedras sobre las que se colo ca la olla. el. 4. Tb. rioo, bie''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beeá', 's.', NULL, NULL, NULL, NULL, 'pi. lunas. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beeba', 's.', NULL, NULL, NULL, NULL, 'pI. cucaracha. el. 4. Tb. bibaeba, imommó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beebaeba', 's.', NULL, NULL, NULL, NULL, 'pi. cucarachas. el. 4. Tb. bibaeba, bihMmo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beebba', 's.', NULL, NULL, NULL, NULL, 'pI. olas. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beebe', 's.', NULL, NULL, NULL, NULL, 'pi. congojas. tristezas. dolores. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beebo', 's.', NULL, NULL, NULL, NULL, 'pi. flor de la palmera. el. 4. Tb. yeebo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beehe', 's.', NULL, NULL, NULL, NULL, 'pI. envidias. odios. bejucos venenosos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beekke', 's.', NULL, NULL, NULL, NULL, 'pi. árboles del serbal. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beeko', 's.', NULL, NULL, NULL, NULL, 'pi. herbáceas pubescente de hojas opues tas crenadas y con nervios muy patentes. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beelálabbé', 's.', NULL, NULL, NULL, NULL, 'pI. desdichas, desgracias, infortu nios. el. 4. Tb. biho''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beepeppe', 's.', NULL, NULL, NULL, NULL, 'pi. plantas de la berenjena. el. 4', NULL, 'buepeppe', 'Fuente: bubi-español', 'import-script');

-- Lote 26 (entradas 626 a 650)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('beeppa', 's.', NULL, NULL, NULL, NULL, 'pi. árboles de las hojas de lija. hojas de lija. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beeppa', 's.', NULL, NULL, NULL, NULL, 'pi. sembrado, siembra. el. 4. plantas. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beeppe', 's.', NULL, NULL, NULL, NULL, 'pi. anguilas. el. 4. Tb. biseppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beesuesu', 's.', NULL, NULL, NULL, NULL, 'pi. setas, hongos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beettyi', 's.', NULL, NULL, NULL, NULL, 'pi. caminatas, trayectos, viajes. el. 4. beetya, v. divertirse; a batyo ba e eriia ro ba lá - la e ripelló. Pret. beetyi, beetyessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beetye', 's.', NULL, NULL, NULL, NULL, 'pI. diversiones, jolgorios. el. 6. beetyessi, pret. v. o beetya ; a bOllá ba -la o lóllá los niños se divertían con la lluvia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beetyetyú', 's.', NULL, NULL, NULL, NULL, 'pi. lagartos, lagartijas. el. 4. beetyi, pret. v. o beetya ; a batyo ba mmaa ba - la e ripelló ri e eriia todas las personas se divirtieron con la fiesta del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beetyo', 's.', NULL, NULL, NULL, NULL, 'pi. l. puntales, apoyos. 2. nombres. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behá', 's.', NULL, NULL, NULL, NULL, 'pi. 1. árboles que dan el fruto llamado rehá parecido al melocotón. el. 6. 2. frutos muy dulces del buehá. melocotones. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behahá', 's.', NULL, NULL, NULL, NULL, 'pI. l. uñeros, inflamaciones en las raí ces de las uñas. el. 4. 2. mimbres. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behahí', 's.', NULL, NULL, NULL, NULL, 'pi. 1. cuervos, aves que se alimentan de carroña. 2. mujeres que actúan de forma lisonjera. 3. fulanas, prostitutas. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behaí', 's.', NULL, NULL, NULL, NULL, 'pi. itinerarios, trayectos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behakká', 's.', NULL, NULL, NULL, NULL, 'pi. cuerdas para hacer nudos corredi zos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behakoo', 's.', NULL, NULL, NULL, NULL, 'pi. fragancias. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behalle', 's.', NULL, NULL, NULL, NULL, 'pI. ardillas medianas. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behám', 's.', NULL, NULL, NULL, NULL, 'pi. semejanzas, parecidos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beháo', 's.', NULL, NULL, NULL, NULL, 'pI. humores, pus. el. 4. 86 / behappá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behappá', 's.', NULL, NULL, NULL, NULL, 'pI. árboles de madera blanda pero dura y de fruto color verde oscuro y en drupa. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behassa', 's.', NULL, NULL, NULL, NULL, 'pI. oréganos del país. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behátatta', 's.', NULL, NULL, NULL, NULL, 'pI. langostas terrestres, saltamontes. CI. 4. be he, adj. nuevos, nuevas. Concuerda con las pala bras de la CI. 4; bekutta - mantas nuevas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behehe', 's.', NULL, NULL, NULL, NULL, 'pI. gargantas, tráqueas, laringes. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behéle', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. hierros, barras, barrotes. . Tb. biikussú. Behelo, antrop. que significa "alguien por quien se llora, alguien añorado". Debería escri birse Be''elo. Está localizado en Bantabarí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behélo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. súplicas. oraciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beheppe', 's.', NULL, NULL, NULL, NULL, 'pI. anguilas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beheppoo', 's.', NULL, NULL, NULL, NULL, 'pI. visitas, huéspedes, visitantes. CI. 4. Tb. baheppoo', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 27 (entradas 651 a 675)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('beheru', 's.', NULL, NULL, NULL, NULL, 'pI. añoranzas, nostalgias, soledades. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behétyo', 's.', NULL, NULL, NULL, NULL, 'pI. vestimentas, atuendos, trajes, etc. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beheú', 's.', NULL, NULL, NULL, NULL, 'pI. 1. huevos 2. testículos, cojones. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behihí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. árboles de ramas espinosas y hojas agrupadas al final de las ramas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behíkko', 's.', NULL, NULL, NULL, NULL, 'pi. flemas, babas. CI. 4. Tb. bilhokokko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behíri', 's.', NULL, NULL, NULL, NULL, 'pI. plantas de la berenjena. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behMma', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. silencios. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behMmeri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. fomicaciones, cópulas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behNno', 's.', NULL, NULL, NULL, NULL, 'pi. 1. usos, rutinas. 2. modas, costum bre�, hábitos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behNtó', 's.', NULL, NULL, NULL, NULL, 'pi. las flores de la hoja de la malanga. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beho''o', 's.', NULL, NULL, NULL, NULL, 'pi. desgracias, desventuras, desdichas. CI. 4. Tb. beelálabbé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behóhoó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. hojas verdes, grandes y amargas que son utilizadas como ingredientes de algunas recetas culinarias de la gastronomía bubi. 2. cer veza. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. 1. púas largas, badajos. jun coso 2. babosos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behokokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. babas, flemas. . Tb. bilhíkko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behokoro', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. árboles del ocro o Hibiscus scu lentus. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behollá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. resina. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behóra', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. regresos, vueltas. CI. 4. BehorÍ, antrop. que significa conducto o canal. Debería escribirse BeorÍ. Está localizado en Rebola. Tb. Beorí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behótóttó', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'blancos, blancas. Concuerda con las palabras de la ; bekobbe - plátanos machos blancos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behótya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. chapeos, tiempos de siega. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behuelo', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. consejos. orientaciones. noticiarios. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('behullá', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. insuflaciones. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beIeké', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. mareos. transtornos mentales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beikíra', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. 1. columpios. 2. movimientos. . Tb. bisikiri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beikka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. soportes, horca, sostén, etc. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beiko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. maldiciones, reprobaciones, exe craciones, insultos. árboles del salchichón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 28 (entradas 676 a 700)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('beile', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. sartas de tyíbü que suelen llevarse en las piemas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beillo', 's.', NULL, NULL, NULL, NULL, 'pI. negruras. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beilori', 's.', NULL, NULL, NULL, NULL, 'pI. limpiezas. saneamientos, aseos. CI. 4. Tb. bailori', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beiri', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. tristezas, melancolías, congojas. CI. 4. Tb. bilebe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beíríi', 's.', NULL, NULL, NULL, NULL, 'pI. salidas. evasiones, huídas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beissó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. fuegos, lumbres. CI. 4. Tb. meosó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beitáeri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. encuentros, concentraciones. ', NULL, 'bOitáeri', 'Fuente: bubi-español', 'import-script'),
  ('beJe''o', 's.', NULL, NULL, NULL, NULL, 'pI. depósitos, almacenes. campo santos, cementerios. CI. 4. Tb. benno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beJe''ú', 's.', NULL, NULL, NULL, NULL, 'pi. almacenes, depósitos. CI. 4. Tb. sittó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beka''ó', 's.', NULL, NULL, NULL, NULL, 'pI. verduras, menestras de verdura. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekáa', 's.', NULL, NULL, NULL, NULL, 'pI. 1. vencejos. 2. aviones. CI. 4. Bekuku /87', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekaaí', 's.', NULL, NULL, NULL, NULL, 'pI. epidemias, plagas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekákálló', 's.', NULL, NULL, NULL, NULL, 'pI. cráneos, calaveras. CI. 4. Tb. metyuekokora. bekalessi, pret. v. o bekalla ; n - acudía, o - acu días, a - acudía, tO - acudíamos, 10 - acudíais, ba - acudían. bekalla, v. acudir, ir, venir, dirigirse, etc. Pret. bekari, bekalessi', NULL, 'o beka', 'Fuente: bubi-español', 'import-script'),
  ('Bekari', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "generaciones" o "personas muy próximas, familiares". Está loca lizado en Baney. bekari, 1. s. pI. generaciones. CI. 4. 2. pret. v. o bekalla; a lo bo óppi la o botuttú a batyo ba - al sonar la cometa la gente acudió', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekattí', 's.', NULL, NULL, NULL, NULL, 'pI. 1. personas astutas. 2. ligones. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekekerú', 's.', NULL, NULL, NULL, NULL, 'pI. médulas de plátanos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekera', 's.', NULL, NULL, NULL, NULL, 'pI. investigaciones, indagaciones. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekeri', 's.', NULL, NULL, NULL, NULL, 'pI. administraciones, regímenes. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekeú', 's.', NULL, NULL, NULL, NULL, 'pI. caracteres, temperamentos, idiosin crasias. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekibakibba', 's.', NULL, NULL, NULL, NULL, 'pI. paros laborales, huelgas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekityi', 's.', NULL, NULL, NULL, NULL, 'pI. pisadas, ruidos que producen. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekká', 's.', NULL, NULL, NULL, NULL, 'pI. bragas, calzoncillos. CI. 6. Tb. abatyu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekki', 's.', NULL, NULL, NULL, NULL, 'pI. miradores, balcones. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beko''ó', 's.', NULL, NULL, NULL, NULL, 'pI. cañas negras de azúcar. CI. 4. Tb. he''ó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekoa', 's.', NULL, NULL, NULL, NULL, 'pI. odios, envidias. CI. 4 ; e - be tá pa''e o sétta e eriia wela las envidias no pueden acabar en el pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 29 (entradas 701 a 725)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Bekoba', 'antrop.', NULL, NULL, NULL, NULL, 'que presenta dos significados. "alguien que aviva, enardece" y "alguien que come deprisa". Está localizado en Baney yen Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekobbe', 's.', NULL, NULL, NULL, NULL, 'pl. plátanos machos. CI. 4. Tb. bikobbe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekobbo', 's.', NULL, NULL, NULL, NULL, 'pI. llamadas de las pieles. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekokko', 's.', NULL, NULL, NULL, NULL, 'pi. antorchas, faros. CI. 4 ; to''a loppa''á e - obaam encenderemos las antor chas mañana', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekokkó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. malangas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekokori', 's.', NULL, NULL, NULL, NULL, 'pI. alcantarillas. CI. 4 ; e - be a ripotto las alcantarillas de la ciudad', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekOlekko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. arbustos trepadores de frutos ovoides y sépalos de color rojo vivo. CI. 4 sing. : "biikiilekkó"). bekolla, v. ensalsar, aclamar; a batyo ba lá - e elotyí las per sonas ensalsan al sacerdote. Pret. bekiim, bekuessi. bekom, pret. v. o bekiilla ; m bo - sóté o wanapana ensalsé mucho al estudiante', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekonno', 's.', NULL, NULL, NULL, NULL, 'pI. maíces. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekookoo', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pocos, pocas, pequeños, peque ñas. Concuerda con las palabras de la ; bekutta - mantas pequeñas, pocas mantas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekorí', 's.', NULL, NULL, NULL, NULL, 'pI. enredadoras de las que se obtienen cuerdas resistentes y con espinas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekóso', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. reuma. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekoteri', 's.', NULL, NULL, NULL, NULL, 'pi. botellas. CI. 4. Tb. ep ilo, ep oteri, mekoteri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekotto', 's.', NULL, NULL, NULL, NULL, 'pI. manifestaciones, reuniones. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekuakua', 's.', NULL, NULL, NULL, NULL, 'pI. balbuceos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekuamá', 's.', NULL, NULL, NULL, NULL, 'pI. árboles de la guayaba. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekuassa', 's.', NULL, NULL, NULL, NULL, 'pI. viruelas. CI. 4. bekuessi, pret. v. o bekiilla ; m - a baebba yo ensalsaba a los vinateros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekukke', 's.', NULL, NULL, NULL, NULL, 'pI. desmayos, síncopes. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bekuku', 'antrop.', NULL, NULL, NULL, NULL, 'que se aplica a aquellas personas que hablan en voz alta. Debería escribirse Biku ku. Está localizado en Baresó. bckulakulla, s pI. recolectas. votaciones. escrulll1los. CI. 4. Th. beukka, beulla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekuppá', 's.', NULL, NULL, NULL, NULL, 'pi. sabidurías, entendimientos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekúppa', 's.', NULL, NULL, NULL, NULL, 'pi. destrezas. aptitudes. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekussú', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. hierros, barras, barrotes. . Tb. behéle', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bekutta', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. mantas, edredones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bela', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "alguien que llora por algo o por alguien". Debería escribirse Bé''ela. Está localizado en Batete y Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beláa', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. asuntos, disputas, querellas, proble mas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belakka', 's.', NULL, NULL, NULL, NULL, 'pI. 1. arcos colocados a la entrada de los poblados, umbrales. escalones. tra Vlcsas, peldaños. 2. amistades. CI. 4. Tb. melakka. Ej. expr. tue - somos amigos', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 30 (entradas 726 a 750)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('belakko', 's.', NULL, NULL, NULL, NULL, 'pi. limpieza, higiene. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belálabbé', 'adj.', NULL, NULL, NULL, NULL, 'pi. desdichados, desafortunados, desgraciados. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belálelle', 'adj.', NULL, NULL, NULL, NULL, 'dichosos, afortunados, etc. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belallo', 's.', NULL, NULL, NULL, NULL, 'pI. medicamentos, remedios, drogas. talismanes. CI. 4. Tb. melallo, meressi. belán, pret. v. o belánna ; o waísso a - IOsisi la mujer dio a luz con tnsteza, a bayolla to ba - i bobbé a los abuelos les dimos nietos. be!ánessi, pret. v. o belánna ; o bulla a - riokó la novia daba a luz con alegría. belánna, v. parir con, dar a luz con; ej. expr. o oberíi la - to''ú la madre pare con fuerza. Th. o yeláálá. Pret. belán, belánessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bele', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'dem. aquellos, aquellas. Concucrda con los nombres de la ; - bempo aquellas nari ces, - benokolla aquellas lombrices', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belebbó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. bailes con campanas de madera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belebelee', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. savia del árbol. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belebóri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. 1. memorias, talentos, concien cias, ingenios, recuerdos. 2. conocimientos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belekke', 's.', NULL, NULL, NULL, NULL, 'pi. canales. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belekko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. hileras, filas, alineación. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belekko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. hojas con las que se cura el mal de oído. mucha tranquilidad, mucha paz. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belele', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. líneas, rayas. CI. 4. belelessi, pret. v. o be leila ; a bayolla be - i bobolla los ancianos nos daban tataranietos. belelessi, pret. v. o belella ; e neppí e - a batyo ba lá púlláa ba obáám el músico cantaba para las personas que regresan de la finca. belelessi, pret. v. o belella ; n - anunciaba, o - anun ciabas, a - anunciaba, to - anunciábamos, 10 - anuncia bais, ba - anunciaban. belella, v. parir, dar a luz para alguien. Ej. o - bollá parir un hijo para alguien. Pret. beleri, belelessi. belella, v. cantar para alguien, cantar en; conj. preso na - e ríberi wela canto en la radio; na - e etúlá canto para la isla. Tb. o émbele la. Pret. beleri, belelessi. belella, v. anunciar, prometer; o - e bittá anunciar la guerra. Pret. beleri, be lelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belello', 'S.', NULL, NULL, NULL, NULL, 'pi. deseados, amados. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beleppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. espejos, gafas, lentes, cristal. . belera, V. prometer. consentir. Pret. beleri, beleressi. beleressi, pret. v: o belera ; n - prometía, o - prome tías, a - prometía, to - prometíamos, lo - prometíais, ba prometían. belólla / 89 beleri, pret. v. o belella ; a bOllá be - bobbé los hijos nos han dado nietos. beleri, pret. v. o belella ; n ka - i húúa he cantado para el público, n ka - i nabba he cantado para los animales. beleri, 1. pret. v. o belella ; o botuttú bo - e bittá la cometa anunció la guerra. 2. llamadas. lugares desde donde se puede llamar. CI. 6. Tb. ibétyi. beleri, pret. v. o belera ; n prometí, o - prometiste, a prometió, to - prometimos, 10 - prometisteis, ba - pro metieron. belessi, pret. v. o bella ; e biulla be - o tonorí to batóyeriia las doncellas cantaban, los pájaros escuchaban. belessi, pret. v. o bélla ; n - presentaba, o - presentabas, a - presentaba, to - presentába mos, 10 - presentabais, ba - presentaban. belessi, pret. v. o bella ; e aríolla, e séi la b', NULL, 'o benera', 'Fuente: bubi-español', 'import-script'),
  ('bella', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pi. timones, guías. . bella, v. cantar, tararear, *delatar; con}. preso na - yo canto, o la tú cantas, a la - él/el1a can ta. Pret. beri, belessi. bella, v. parir, dar a luz, nacer; con}. preso na - bOllá yo doy a luz un niño. Pret. beri, belessi. bélla, v. referir, presentar, anunciar; o botyo a la - e bilabba ya ribotyo la persona presenta las cosas de la vida, o los asuntos tradicionales. Pret. berí, belessi', NULL, 'o éthbela', 'Fuente: bubi-español', 'import-script'),
  ('belláa', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pI. 1. follones, jaleos. CI. 4. Tb. belá. 2. barrigones, barrigudos. CI. 6. belláa, V. prnl. cocerse; e nabba e té - la car ne no está cocida. Pret. béríi, bélessi. bellé, prono pi. otros, otras. Concuerda con las palabras de las Clases 2 y 6; balo batyo, a - estas personas, las otras, balo baatyé, a - estas camas, las otras. bellé, prono pi. otros, otras. Concuerda con las palabras de la ; belo bekobbe, e - los otros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bello', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pi. dientes, mordiscos. dentaduras. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belo', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'dem. estos, estas. Concuerda con los nombres de la ; - behahí estos cuervos, behakoo estas fragancias', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belo''o', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pI. murallas muros de contención, barreras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belo''u', 'S.', NULL, NULL, NULL, NULL, 'pi. hemorragias nasales. CI. 4. Tb. bile''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belóa', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pi. morteros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belobbo', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pI. caretas, máscaras, *feos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Belobe', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a las actividades pesqueras. Está localizado en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beloe', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pI. testamentos, últimas voluntades. . Tb. meloe, yo ''e ''', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belokke', 'S.', NULL, NULL, NULL, NULL, 'pi. bazos. parálisis, impedimen tos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 31 (entradas 751 a 775)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('belokkí', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pi. plantas enredaderas de hojas verdes y comestibles. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beloko', 'S.', NULL, NULL, NULL, NULL, 'pi. lunaciones. CI. 4. Tb. melOko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('belOkolOkó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. doradillos, limonci 110s. CI. 4. belólea, V. desdecirse. Pret. belólei, beJó leseei; n la - me desdigo. belólei, pret. v. o belólea ; o te des dijiste. belóleseei, pret. v. o belólea ; n - yo me desdecía. belólessi, pret. V. o belólla ; n-o WéSO''OÓl yo con tradecía a mi amigo. belólla, V. desdecir, contradecir; n la - o boit ta yo contradigo al mandatario. Pret. belóri, beló lessi. 90 / h. h. Tb. kusiánno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Belope', 'antrop.', NULL, NULL, 'Cl. 4', NULL, 'que se refiere a las cañas de bam bú. Está localizado en Baney, Rebola y Basuala. belóri, pret. v. o belólla ; n bii - ii biiitta yo contradije al mandatario. bemma, 1. adj. indo algunos, algunas. Concuer da con las palabras de la CI. 3; ha tyi - betooJÍl no hay algunas cenizas. 2. s. pi. ceibas. ', NULL, 'buhbá', 'Fuente: bubi-español', 'import-script'),
  ('bemmaityi', 's.', NULL, NULL, 'Cl. 4', NULL, 'plural del mes de agosto. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bemmameóte', 's.', NULL, NULL, NULL, NULL, 'plural del mes de julio. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bemmátta', 's.', NULL, NULL, NULL, NULL, 'pi. morteros. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bemmatyíssi', 's.', NULL, NULL, NULL, NULL, 'pi. cajas de cerilla. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bempá', 's.', NULL, NULL, NULL, NULL, 'pi. ruidos, barullos, estruendos. CI. 4. Tb. hetyípótyípóo, biuppá, kipáám', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bempilla', 's.', NULL, NULL, NULL, NULL, 'pi. mocos. CI. 4. Tb. bempiri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bempiri', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. mocos. CI. 4. Tb. bempilla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bempo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. narices, hocicos, olfatos, napias. . Tb. melumbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bena''í', 's.', NULL, NULL, NULL, NULL, 'pi. tomateras. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benánna', 's.', NULL, NULL, NULL, NULL, 'pI. pecas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benappí', 's.', NULL, NULL, NULL, NULL, 'pi. clitoris, *chuminos. CI. 4. Tb. herappí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bene', 's.', NULL, NULL, NULL, NULL, 'pi. dedos de la mano. CI. 4. iilo biityii e - béto esta persona tiene los dedos largos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bene''u', 's.', NULL, NULL, NULL, NULL, 'pi. profundidades, precipicios, barran cos, hondos, etc. CI. 4. Tb. heno''u. benessi, pret. v. o benná ; n - humillaba, ii - humillabas, a - humillaba, tii - humillábamos, lii - humilla bais, ba - humillaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benessú', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. dedos del pie. CI. 4. Tb. messú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benkaóka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. moratones producidos por un golpe. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benkínkí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. abejorros, moscardones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. borracheras. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benkútú', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. malicias, maldades, malevolen cias, etc. CI. 4. benná, v. humillar, despreciar, desdeñar, mirar con desdén, etc. Pret. benní, benessi', NULL, 'o belá', 'Fuente: bubi-español', 'import-script'),
  ('benná', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. balas, municiones, perdigones, cartu chos. CI. 4. Tb. bahúo. benní, pret. v. o benná ; n - humillé, ii - humillaste, a - humilló, tii - humillamos, lii - humillasteis, ba - humillaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benno', 's.', NULL, NULL, NULL, NULL, 'pi. camposantos, cementerios. CI. 4. Tb. hele''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beno''u', 's.', NULL, NULL, NULL, NULL, 'pi. fondos, profundidades, hondos. CI. 4. Tb. hene''u', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 32 (entradas 776 a 800)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('benoa', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. quemas, asados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benoá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. ceremonias que consisten en acudir a la playa para purificarse. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benobbe', 's.', NULL, NULL, NULL, NULL, 'pi. enfados, enojos, cabreos, berrin ches. CI. 4', NULL, 'nobbe', 'Fuente: bubi-español', 'import-script'),
  ('benokka', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. viruelas, pústulas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. tesones, tenacidades. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. médulas. energías. c) serie dad, prudencia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benokoa', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. antipatías, rebeldías. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benokolla', 's.', NULL, NULL, NULL, NULL, 'pi. lombrices, tenias. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benokosso', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. barbaries. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benono', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. juicios. . Tb. bitoho. benóppi, s pI. chimeneas. emisores de gases. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benotyo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. sabores, gustos. . beotya /91', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bentánna', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. ventanas, aberturas. CI. 4. bentúbéntú, a4i. bajos, bajas, cortos, cortas, poca altura, etc. Concuerda con las palabras de la ; betabué - barbascos guineanos de poca altura', NULL, 'biítlú', 'Fuente: bubi-español', 'import-script'),
  ('bentyí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. venas, nervios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bentyo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. hechizos, venenos, maleficios, embrujos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('benya''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. camorras, peleas. . béúdóla, v. l. hacer las paces, reconciliar. 2. quitar un maleficio. 3. confesar. 4. divulgar, pregonar. Pret. béÍ1dó ri, béÍ1dólanessi. béódólanessi, pret. v. o béÍ1dóla ; n-a bandyii reconciliaba a las personas. béódóri, pret. v. o béÍ1dóla ; a bandyii n ba - a las personas les reconcilié', NULL, 'o bitólla, o béñdoala', 'Fuente: bubi-español', 'import-script'),
  ('Beña', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "tejas, techos, cubier tas". Se obtiene a partir del verbo o bimya. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beo''í', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. putrefacciones, podredumbres. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beobbé', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. árboles de la atanga. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beobbo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. l. reverencias. 2. pagadurias. 3. sueldos, pagas, retribuciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beobbó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. olores, hedores, fragancias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoé', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. almas, espíritus, fantasmas. . Tb. mioé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beokka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. colecta. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beokkí', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. restos de animales en estado de putrefacción. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. amistades, compañías. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beokollo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. plantas del picante. ', NULL, 'baokollo', 'Fuente: bubi-español', 'import-script');

-- Lote 33 (entradas 801 a 825)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('beokoo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. calles, avenidas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beokoru', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cordones umbilicales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Beole', 'antrop.', NULL, NULL, 'Cl. 4', NULL, 'que significa "alegría". Debería escri birse Beiile. Está localizado en Ehoko y Moka. beollo, s pi. desgracias. juramentos, pro mesas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beolló', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. agujeros, hoyos, huecos. . Tb. pi''í, biukká, yu''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beOlólló', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. vejeces. decrepitudes. CI. 4. Tb. birulla. beolÍlmua, 1. s. pI. carnes, carnes guisadas. 2. carnicerías. Cls. 4 y 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. vidas, alientos, energías. ; e - beto las vidas largas. Tb. mioo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. Concuerda con las pala bras de las Cls. 2 y 6; batyii pocas personas, basalla - pocas palmas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoorí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. autoconducciones. dejadeces. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beopáko''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. tulipaneros de Gabón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoppa', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. esterilidades, infecundidades. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoppá', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. penes, falos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoppe', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. tuberculosis pulmonares, tisis. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beoppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. retrasos, tardanzas, demoras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Beorí', 'antrop.', NULL, NULL, NULL, NULL, 'relacionado con el aparato genital femenino Morí. Puede traducirse por conducto o canal. Está localizado en Rebola', NULL, 'Behorí', 'Fuente: bubi-español', 'import-script'),
  ('beotiin', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. botones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beótó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. hojas tiernas de la planta de la malan ga. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beotótto', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. avispas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beotta', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pi. debilidades, flojedades. abatimientos. . Tb. baotta, ibolló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beotte', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. cazas generales, cazas clamorosas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beótú', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'bajos, bajas, cortos, cortas, poca altu ra. etc. Concuerda con las palabras de la ; historias cortas. bl!atta', NULL, 'binlúbéntú', 'Fuente: bubi-español', 'import-script'),
  ('beotya', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pi. primeros, primeras. Concuerda con las palabras de la : e bekobbe los primeros plátanos. Tb. bil''¡ilya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bepósápósáa', 's.', NULL, NULL, NULL, NULL, 'pi. petulancias, arrogancias. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berá', 's.', NULL, NULL, NULL, NULL, 'pi. alimentos, comidas. CI. 4. Tb. bera ''o. bera, v. hacer dar a luz, asistir un parto. Tb. o yeerá. Pret. beriia, beresiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bera''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. comidas, alimentos. ; e - bi é esubba las comidas del invierno. Tb. berá. beráereea, v, prnl. despedirse, decir adiós. Pret. beráerei, beráeresei. beráereí, pret. v. o beráereea ; o botúkku a - a batyo el jefe del pueblo se despidió de la gente. beráereseí, pret. v. o beráereea ; o boebba a - a bollá ba áí el vinatero se despidía de sus hijos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Berapa', 'antrop.', NULL, NULL, NULL, NULL, 'que parece haberse formado a par tir de la palabra elappa y cuyo plural es bilappa o berappa. Está localizado en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 34 (entradas 826 a 850)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('berappí', 's.', NULL, NULL, NULL, NULL, 'pI. crítoris, *chuminos. CI. 4. Tb. benappí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beréi', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. convites, banquetes. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berem', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. limoneros. CI. 4. Tb. baremo beresüa, pret. v. o bera ; e rokútta ri - o bOllá wari el médico asistía el parto de la joven', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Beri', 'antrop.', NULL, NULL, NULL, NULL, 'localizado en Bocoricho. Cfr. berl', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berí', 'S.', NULL, NULL, NULL, NULL, 'sing. y pI. l. arbusto cuyas hojas, ralces y corteza se cuecen para aliviar el reuma. 2. hormi gas grandes, rojas y bravas. Clases 9 y 10. berí, pret. V. o bella ; i Deppí i - lelle los músicos cantaron bien. berí, 1. pret. V. o bélla ; e to''óleri e - e bilabba bimmaa el portavoz presentó todos los hechos. 2. S. pI. canciones, cantos. CI. 10. berí, pret. V. o bella ; o waísso a botyíó la mUjer dio a luz anoche', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berí''o', 'S.', NULL, NULL, NULL, NULL, 'pI. hundimientos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beribáa', 'S.', NULL, NULL, NULL, NULL, 'pI. pelos. CI. 4', NULL, 'berubbá', 'Fuente: bubi-español', 'import-script'),
  ('beribbí', 'S.', NULL, NULL, NULL, NULL, 'pI. perdiciones. errores, equivo caciones. CI. 4. béríi, pret. V. o belláa ; a bato''a ba - los ñames aéreos están cocidos. beriia, pret. V. o bera ; o boie a - o waísso bOllá bobbe el hombre hizo dar a luz un niño a la mujer', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berikueri', 'S.', NULL, NULL, NULL, NULL, 'pI. acusaciones, denuncias. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berilio', 'S.', NULL, NULL, NULL, NULL, 'pi. movimientos. ademanes, ges tos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beroo', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pi. a) dulzores, dulzuras, dulces. b) gus tos, placeres, deleites. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berubbá', 'S.', NULL, NULL, NULL, NULL, 'pI. pelos de cualquier tipo. CI. 3. Tb. beribáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berubbia', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pi. prohibiciones. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berulla', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pi. vejeces, decrepitudes, envejeci mientos. . Tb. beolól ló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beruppa', 'S.', NULL, NULL, NULL, NULL, 'pI. hogueras. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beruppe', 's.', NULL, NULL, NULL, NULL, 'pI. árboles divinos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('berurí', 'S.', NULL, NULL, NULL, NULL, 'pi. decrepitudes, envejecimientos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besa''o', 's.', NULL, NULL, NULL, NULL, 'pi. elogios, agradecimientos. CI. 4. Tb. besákko, besakoo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besaásá''a', 'S.', NULL, NULL, NULL, NULL, 'pi. árboles de corteza gris verdo so. el. 4. besobo /93', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besabo', 's.', NULL, NULL, NULL, NULL, 'pI. autorizaciones, permisos. el. 4. Tb. mesabo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besákko', 's.', NULL, NULL, NULL, NULL, 'pi. agradecimientos, elogios, recono cimientos. el. 4. Tb. besakoo, besa''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besakoo', 's.', NULL, NULL, NULL, NULL, 'pi. agradecimientos, elogios, recono cimientos. el. 4. Tb. besákko. besálessi, pret. v. o besálla ; n - besaba, o - besabas, a - besaba, to - besábamos, 10 - besabais, ba - besaban. besálla, v. besar; n la - o wettam beso a mi hermana. Pret. besám, besá lessi. Besam, antrop. cuya forma más análoga en bubi es besári. Debería escribirse Besam. Se localiza en Rebola. besám, pret. v. o besálla ; m bo - o bOsu bári yo besé a la ben jamina, to bo - o boyoUa bo áó nosotros besamos a nuestro abuelo', NULL, 'kisálessi', 'Fuente: bubi-español', 'import-script'),
  ('besappá', 's.', NULL, NULL, NULL, NULL, 'pi. chopos del país. el. 3', NULL, 'kalabóro', 'Fuente: bubi-español', 'import-script'),
  ('besappí', 's.', NULL, NULL, NULL, NULL, 'pi. culebras verdes. el. 4. Tb. mosabbí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besappo', 's.', NULL, NULL, NULL, NULL, 'pI. cables, cuerdas resistentes. cinturones. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 35 (entradas 851 a 875)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('besáráa', 's.', NULL, NULL, NULL, NULL, 'pI. espantadores, asustadores. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besarl', 's.', NULL, NULL, NULL, NULL, 'pI. bailes de hombres y mujeres. estrofas, canciones. el. 4. Tb. mesari', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Besarl', 'antrop.', NULL, NULL, NULL, NULL, 'relacionado con los verbos o salla u o salláa. Puede entonces traducirse por "persona que desgarra, rompe" o por "persona que teme". Debería escri birse Besari o Besári. Está localizado en Baney y en Sampaka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besawasawáa', 's.', NULL, NULL, NULL, NULL, 'pi. árboles del sawasawa, del guanábano o de la chirimoya. el. 4', NULL, 'basawasawáa', 'Fuente: bubi-español', 'import-script'),
  ('bese''e', 's.', NULL, NULL, NULL, NULL, 'pi. gusanos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besekka', 's.', NULL, NULL, NULL, NULL, 'pI. senderos, caminos. pistas el. 4. Tb. beso ''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besekke', 's.', NULL, NULL, NULL, NULL, 'pI. tablas de madera o de metal, plan chas. el. 4. Tb. betye''e, mityekke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beséllo', 's.', NULL, NULL, NULL, NULL, 'pI. desfallecimientos. falleci mientos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beseppe', 's.', NULL, NULL, NULL, NULL, 'pI. anguilas. el. 4. Tb. beeppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beseppe', 's.', NULL, NULL, NULL, NULL, 'pI. silbidos fuertes. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besessa', 's.', NULL, NULL, NULL, NULL, 'pi. torrentera. río seco. barranco. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besi''e', 's.', NULL, NULL, NULL, NULL, 'pI. rabos, colas. el. 4. Tb. bisikké', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besi''o', 's.', NULL, NULL, NULL, NULL, 'pI. comidas ofrecidas a los espíritus guardianes. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besikké', 's.', NULL, NULL, NULL, NULL, 'pI. rabos, colas. el. 4. Tb. besi''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besikkí', 's.', NULL, NULL, NULL, NULL, 'pI. delgadeces, enflaquecimientos. el. 4. Tb. besikko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besikko', 's.', NULL, NULL, NULL, NULL, 'pi. delgadeces, anorexias. el. 4. Tb. besikki', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besilla', 's.', NULL, NULL, NULL, NULL, 'pI. cuevas, grutas, madrigueras, caver nas. el. 4. Tb. beappú, miambú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besillo', 's.', NULL, NULL, NULL, NULL, 'pi. vaginas, chuminos. el. 4. Tb. bisinno. bes in no, s. pI. vaginas, chuminos. el. 4. Tb. besillo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besíporíi', 's.', NULL, NULL, NULL, NULL, 'pi. látigos, fustas. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besippa', 's.', NULL, NULL, NULL, NULL, 'pi. trenzas. el. 4. Tb. bisuppa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besíríi', 's.', NULL, NULL, NULL, NULL, 'pi. captadores, *antenas, *antenas para bólicas. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besisi', 's.', NULL, NULL, NULL, NULL, 'pi. compasiones, miserícordias. nostalgias. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beso''a', 's.', NULL, NULL, NULL, NULL, 'pi. hundimientos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beso''e', 's.', NULL, NULL, NULL, NULL, 'pI. caminos, trayectos. el. 4. Tb. besekka. Exp. to purán e - bio lobákko puá tracemos los caminos del cielo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beso''o', 's.', NULL, NULL, NULL, NULL, 'pI. acompañantes, compañías. el. 4. Tb. biso''o', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 36 (entradas 876 a 900)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('béso''o', 's.', NULL, NULL, NULL, NULL, 'pi. compañeros, amigos, colegas, cama radas. el. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besobo', 's.', NULL, NULL, NULL, NULL, 'pi. diversión, juego, entretenimiento. el. 4. 1 )4 I hi''siillú hi''siill. C I. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besoppé', 's.', NULL, NULL, NULL, NULL, 'pI. ardillas grandes. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besoppo', 's.', NULL, NULL, NULL, NULL, 'pI. 1. árboles del pan. 2. árboles saquientes. 3. mástiles. 4. torres, cimas, cúspides. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besorá', 's.', NULL, NULL, NULL, NULL, 'pI. pasos largos, tramos, saltos, brincos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besorí', 's.', NULL, NULL, NULL, NULL, 'pI. hilos, cordones. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besossó', 's.', NULL, NULL, NULL, NULL, 'pi. textos. mensajes, noticias. actas, relatos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besossó', 's.', NULL, NULL, NULL, NULL, 'pI. conductos, tubos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besotte', 's.', NULL, NULL, NULL, NULL, 'pi. plomos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besotyi', 's.', NULL, NULL, NULL, NULL, 'pI. rayos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besso', 's.', NULL, NULL, NULL, NULL, 'pI. caras, rostros, facetas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besuállo', 's.', NULL, NULL, NULL, NULL, 'pI. frentes, frontales, delanteras. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besuisuií', 's.', NULL, NULL, NULL, NULL, 'pi. látigos, fustas, correas con las que se azota a alguien. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besuppa', 's.', NULL, NULL, NULL, NULL, 'pI. trenzas. CI. 4. Tb. besippa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besurí', 's.', NULL, NULL, NULL, NULL, 'pI. enemistades. antipatías. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besussú', 's.', NULL, NULL, NULL, NULL, 'pI. hormigas rojas. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('besutta', 's.', NULL, NULL, NULL, NULL, 'pI. resbalones. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beta''o', 'S.', NULL, NULL, NULL, NULL, 'pI. pilones, palos con los que se muele algo en un mortero. CI. 4. T b. beto ''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betabué', 'S.', NULL, NULL, NULL, NULL, 'pI. arbustos de hojas tintóreas y de líquido venenoso. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betákíó', 's.', NULL, NULL, NULL, NULL, 'pI. rectores. destacados, manda mases. CI. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betákko', 'S.', NULL, NULL, NULL, NULL, 'pI. 1. mensajes, recados. 2. comunica dos. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betapáero', 'S.', NULL, NULL, NULL, NULL, 'pI. ideas. propósitos. pen samientos CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betapetappe', 's.', NULL, NULL, NULL, NULL, 'pI. arcos que se colocaban a la entrada de los poblados. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betáppo', 's.', NULL, NULL, NULL, NULL, 'pI. muestras, escaparates. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betará', 's.', NULL, NULL, NULL, NULL, 'pI. expertos, astutos, avispados. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 37 (entradas 901 a 925)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('betátoo', 'S.', NULL, NULL, NULL, NULL, 'pI. listones, palos de la cumbre o del tejado de una casa. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betattá', 's.', NULL, NULL, NULL, NULL, 'pI. pieles, pellejos. CI. 4. betéa, V. romperse, quebrarse, partirse. Pret. betéi, betései', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betébbá', 'S.', NULL, NULL, NULL, NULL, 'pI. corazones. CI. 4. Tb. metémá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betebú', 'S.', NULL, NULL, NULL, NULL, 'pI. castaños. CI. 4. betéi, pref. V. o betéa ; bo o boneÓl se rompió mi dedo. betelessi, pret. V. o betélla ; to - a batyo esperábamos a la gente. betella, V. esperar, aguardar, tener paciencia. Ej. imp. betellá! espera, aguarda. Pret. betéri, betélessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betello', 's.', NULL, NULL, NULL, NULL, 'pI. cinturas, caderas. CI. 4. betélOlessi, pret. V. o betéliilla ; o mmása a - a balakoláko ba áí el jefe desconfiaba de sus trabajadores. betélolla, V. desconfiar; n la yo desconfio, n la - a batyo yo desconfio de la gente. Pret. betéliiri, betéliilessi. bétto / 95 betélOri, pret. v. o betélolla ; tyom maa n ta - a batyo ba e eriia IÍI jamás desconfié de la gente de mi pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beteo''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. gallos. . Tb. tomíoko. beteri, pret. v. o betel1a ; m bo - bó bii tyíó wáae a tá ha séí ayer le esperé pero no estuvo. betesei, pret. v. o betéa ; bo - o bosuisuií la e bitúríi se rompía la fusta con las palizas. betessi, pret. v. o bettáa ; o waísso a - e ribetye la mujer rompía la escoba. betessi, pret. v. o bettáa ; o wetta IÍI a - e bihelÍl. bi áí mi hermana ponía tierra en la base de la planta de sus malangas bubis', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betete', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. columnas vertebrales, espinazos. . Tb. metédé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betette', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. palmeras jóvenes. CI. 4. Tb. metete. Betey, antrop. plural dc bOte ''í. Debería escribirse Bete''í. Está localizado en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betíríi', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. *serenidades, corduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beto', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'largos, altos. Concuerda con las palabras de la ; bempo - largas narices', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betó''i', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. victorias, éxitos. ; e - be e eriia los éxi tos del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betó''ia', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. respetos, consideraciones, decoros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beto''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. hojas tiernas de la palmera datilera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beto''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. pilones, palos con los que se muele algo en un mortero. . Tb. beta''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betolla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. los árboles de tolla. . Tb. batolla. pI. los capullos del racimo de dátiles o raquis. . betólla, v. 1. hacer las paces, reconciliar. 2. quitar un maleficio. 3. confesar. 4. divulgar, pregonar; Ej. expr. e ibettá to i betólle ¡deshagámonos de las prohibiciones!. Pret. betóri, betuessi', NULL, 'o bélÍdóla, o bélÍdoa la', 'Fuente: bubi-español', 'import-script'),
  ('betólló', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. asuntos, conversaciones, coloquios, mensajes, diálogos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betoom', 's.', NULL, NULL, NULL, NULL, 'de! pI. cenizas. CI. 4. betóra, v. promover una reconciliación. Pret. betóriia, betóresiia. betóresiia, pret. v. o betóra ; n - yo promovía una reconciliación, o - tú promo vías una reconciliación, a - él pro movía una reconciliación, to - nosotros promovíamos una reconciliación, lo vosotros promovíais una reconci liación, ba - el10s promovían una reconciliación. betóri, pret. v. o betólla ; n bi - e ibéttá quité los maleficios, n ba - balo batyo appa e bá hice las paces a estas dos personas. betóriia, pret. v. o betóra ; o botúkku bote a - e biriia el gran jefe promovió la reconciliación de los pueblos', NULL, 'biftoí', 'Fuente: bubi-español', 'import-script'),
  ('betotto', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. collares, abalorios. cuentas, bolas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betta', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. hermanas, primas. el. 2', NULL, 'wetta', 'Fuente: bubi-español', 'import-script'),
  ('bettá', 's.', NULL, NULL, 'Cl. 10', NULL, 'pi. enmiendas, correcciones públicas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bettáa', 's.', NULL, NULL, NULL, NULL, 'pi. alas, plumas. CI. 6. bettáa, v. romper, quebrar, partir; sé - liipoo la el10 va a romper una pierna. Pret. bettyí, betessi. bettáa, v. poner tierra en la base de la planta de la malanga bubi; conj. preso na - bihelÍl. pongo tierra en la base de la planta de la malanga bubi, o la - bihelÍl, pones tierra en la base de la planta de la malanga bubi, a la bihelÍl pone tierra en la base de la planta de la malanga bubi, etc. Pret. betyí, betessi', NULL, 'o bettá, o bedda, o betta', 'Fuente: bubi-español', 'import-script'),
  ('betté', 'S.', NULL, NULL, 'Cl. 11', NULL, 'pi. paraguas, parasoles. CI. 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bétto', 'S.', NULL, NULL, 'Cl. 11', NULL, 'pI. acciones de paz. confesiones. CI. 10. 9 ; o wana pana a o bo''ó el alumno hispanófilo rompió la caña de azúcar', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betubáero', 's.', NULL, NULL, NULL, NULL, 'pI. respuestas, contestaciones. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betúballa', 's.', NULL, NULL, NULL, NULL, 'pI. venganzas. inquinas. rencores. el. 4. Tb. betúmanna', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 38 (entradas 926 a 950)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('betubbá', 's.', NULL, NULL, NULL, NULL, 'pI. chopos. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betue', 's.', NULL, NULL, NULL, NULL, 'pI. 1. cabezales 2. tubérculos de la malan ga bubi. el. 4. betuessi, pret. v. o betólla ; n - reconcilia ba, o - reconciliabas, a - reconciliaba, to - reconciliábamos, reconciliabais, ba - rcconciliaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betuho', 's.', NULL, NULL, NULL, NULL, 'pI. regalos, ofrendas. el. 4. Th. batyuho, ba''abbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betúmanna', 's.', NULL, NULL, NULL, NULL, 'pI. venganzas. inquinas. rencores. el. 4. Tb. betúballa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betupori', 's.', NULL, NULL, NULL, NULL, 'pI. alivios, relajaciones. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betuppi', 's.', NULL, NULL, NULL, NULL, 'pI. cansancios, fatigas, agotamientos. el. 4. Tb. betyuppo, betyibíi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betuttá', 's.', NULL, NULL, NULL, NULL, 'pI. basuras, porquerias. el. 4. Tb. biía. Tb. betyut tá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betuttú', 's.', NULL, NULL, NULL, NULL, 'pI. cometas, bocinas, pitos. el. 4. Tb. betyutyú. betya, v. hacer romper, hacer quebrar. Pret. betyía, betyesiia. bétya, v. invocar al espíritu de alguien falleci do o vivo. Pret. bétyiia, bétyesiia', NULL, 'o bentya, o benda', 'Fuente: bubi-español', 'import-script'),
  ('betya''á', 's.', NULL, NULL, NULL, NULL, 'pI. testículos, cojones. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyappa', 's.', NULL, NULL, NULL, NULL, 'pI. árboles de las suelas. el. 4. Tb. bet yoletyól le', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyappe', 's.', NULL, NULL, NULL, NULL, 'pI. excrementes alargados y de gran tamaño. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betye''e', 's.', NULL, NULL, NULL, NULL, 'pi. tablas de madera o de metal, plan chas. el. 4. Tb. besekke. betyesiia, pret. v. o betya ; n - hacía romper, o - hacías romper, a - hacía romper, to - hacíamos romper, 10 hacíais romper, ba - hacían romper. Ej. o boie a - e betye''e el hombre hacía romper las tablas de madera. bétyesiia, pret. v. o bétya ; n - o boé bo áí invocaba su espíritu, o - e erikirikki áí invocabas su silueta, a - i húbbé invocaba a los ladrones, to - a bayolla ba áó invocábamos a nuestros a ncestros, 10 - a batyiáÍltyo invocabais a los hechiceros, ba le - me invocaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyetyee', 's.', NULL, NULL, NULL, NULL, 'pI. rayos. el. 4. betyí, 1. s. pI. generaciones, eras. personas que nacen y viven en la misma época. el. 4. Tb. met yí. 2. pret. v. o bettáa; a batté m ba a los árboles los puse tierra en su base. betyía, pr et. v. o betya ; a baie ba -o boseke los hombres hicieron romper la tabla de madera', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyibíi', 's.', NULL, NULL, NULL, NULL, 'pI. cansancios, fatigas, agotamientos. el. 4. Tb. bi t yuppo, betuppi. Ej. expr. e be le rura ná ká e ebéló e té pella los cansancios nos envejecen antes de tiempo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyíi', 's.', NULL, NULL, NULL, NULL, 'pI. peticiones, súplicas. el. 6. bétyiia, pret. v. o bétya ; n ri - e isakké invoqué al espíritu del machete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyikabatta', 's.', NULL, NULL, NULL, NULL, 'pI. peces raya. el. 4. Tb. mityikamatta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyikka', 's.', NULL, NULL, NULL, NULL, 'pI. lanzas, flechas, dardos, picas. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyíó', 's.', NULL, NULL, NULL, NULL, 'pI. noches, tinieblas. el. 4. Tb. bihMma', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyiOri', 's.', NULL, NULL, NULL, NULL, 'pI. peinados, cortes de pelo. el. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyípótyípóo', 's.', NULL, NULL, NULL, NULL, 'pI. embrollos. tonterías. molestias. barullos. el. 4. Tb. bempá, biuppá. biálessi / 97', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyoletyólle', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. árboles de las suelas. . Tb. betyappa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyopíi', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. objeto punzante. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyoppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. demencias, locuras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyubbe', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. ciruelos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyúlo', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. vísceras del cangrejo. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 39 (entradas 951 a 975)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('betyuppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cansancios, fatigas, agotamien tos. . Tb. betuppi, betyibíi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyúppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. apoyos, bastones, muletas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyuttá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. basuras, porquerías. . Tb. biía, betuttá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('betyutyú', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. cornetas, bocinas, pitos. CI. 4. Tb. betuttú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beú', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. confusiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beukka', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. recolectas, colectas. vota ciones. escrutinios. CI. 4. Tb. bekulakulla, beul la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beulla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. recolectas. votaciones. escrutinios. . Tb. bekulakulla, beukka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beullá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cinturas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beutaeri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. bandas, fajines. . Tb. beutta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beutta', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. circundantes, fajines, bandas, bal teos, faj as. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('beuttyi', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. montículos. montones. . Tb. bautyi. bi, 1. morf concord. Debe traducirse teniendo en cuenta su determinado: ellos, ellas; e biriia - lá ho los pueblos ellos están ahí. 2. conec. prep. del, de la, de los, de las; a bakotto - nabba las patas de los animales. Concuerda con las palabras de la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bi''a', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. pez colorado, breca. Cls. 9 y 10. Tb. pi''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bi''é', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. nueces de cola. . Tb. banké', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bi''ee', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. afirmaciones. . bi''í, pret. redondo, redondeado; e ite ri - la piedra es redonda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bi''o', 'adv.', NULL, NULL, NULL, NULL, 'junto, cerca de, etc. ; o botyo - cerca de la persona, e tyóbbo - al lado de la casa, lokka ne - duerme junto a mí, o wettam lá le pélla mi hermana vive junto a mí. 2. s. sing. y pI. riñón. Cls. 9 y 10. Tb. pi''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bi''ó', 's.', NULL, NULL, 'Cl. 6', NULL, 'de! 1. fiebre, calentura. 2. paludismo. ; o boyolla e - el abuelo tiene fiebre', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bia', 'conec.', NULL, NULL, NULL, NULL, 'prep. de; e biriia - batyo los pueblos de las personas. Este conectivo prepositivo se forma por la fusión del prefijo de con cordancia bi más el aumento de la palabra determi nada. Concuerda con las palabras de las Cls. 2 y 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biaakká', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. chichones, abscesos. almen dras, semillas CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biáám', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. fincas, huertos, campos. . Tb. báám. Biachó, antrop. plural de eatyó. Se refiere a algo dificil de arrancar. Debe ría escribirse Biatyó. Está localizado en Ruiché y en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biaéa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. alambres, hilos metálicos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biaká', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. abscesos, chichones. . Tb. binná, biaakká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biáka', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. paseos, vagabundeos. . Tb. yáka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biakakótte', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. 1. huesos vacios del palmiste. 2. envases. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biakala', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. calmante. malva cuyas hojas y flores se usan como laxantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biakalekko', 's.', NULL, NULL, NULL, NULL, 'pI. cocoteros, cocos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 40 (entradas 976 a 1000)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('biakalelé', 's.', NULL, NULL, 'Cl. 3', NULL, 'pI. transeúntes, caminantes. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biakalOla', 's.', NULL, NULL, NULL, NULL, 'pI. escamas de pez. CI. 8. Tb. eakalola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biakko', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. asas, asideros. CI. 8. Tb. biappo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biakóo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. coscorrones, capones. CI. 8. Tb. tosula', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bialállo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. intemperies, exteriores. . biálessi, pret. v. o biálla ; n - aguantaba, o - aguantabas, a - aguantaba, to - [to 9H / hialla blúlcSSl 1 aguantúballlos, lii - 1 10 hlilk''Sl I agllan tabals, ba - [ba blúlcsslj aguantaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bialla', 's.', NULL, NULL, NULL, NULL, 'pI. generacioncs, qUlIltas edades el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biallá', 's.', NULL, NULL, NULL, NULL, 'pI. grupos, legiones, pandi l las, asocia ciones, cuadrillas, clubes. conjuntos, coleccIO nes. el. 8. biálla, v. aguantar, soportar, resistir; n la - e roppá aguanto el dolor. Pret. biám, biálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bialle', 's.', NULL, NULL, NULL, NULL, 'pI. 1. falsas colas. 2. árbo les de la falsa cola. el. 8', NULL, 'yalle', 'Fuente: bubi-español', 'import-script'),
  ('biallée', 's.', NULL, NULL, NULL, NULL, 'pI. enfados, enojos. el. 8. biallo, s pI. canciones, cánticos, himnos. estanterías, mostradores. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biálló', 's.', NULL, NULL, NULL, NULL, 'pI. arena. el. 8. Tb. biáló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bialó', 'antrop.', NULL, NULL, NULL, NULL, 'plural de eal/o. Debería escribirse Biallo. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biáló', 's.', NULL, NULL, NULL, NULL, 'pi. arena. el. 8. Tb. biál ló. biám, pret. v. o biálla ; n - aguanté, o - aguantaste, a - aguantó, to - aguantamos, 10 - aguantasteis, ba - aguanta ron. Tb. biári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biankítya', 's.', NULL, NULL, NULL, NULL, 'pI. pañuelos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biantí', 's.', NULL, NULL, NULL, NULL, 'pI. tías, hermanas del padre. el. 8. Tb. binepó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biaó', 's.', NULL, NULL, NULL, NULL, 'pI. hachas. cortes, rajas, navajazos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biaótalla', 's.', NULL, NULL, NULL, NULL, 'pi. unos duros. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biapá', 's.', NULL, NULL, NULL, NULL, 'pI. mandíbulas superiores. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biapaolla', 's.', NULL, NULL, NULL, NULL, 'pI. paladares. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biápollo', 's.', NULL, NULL, NULL, NULL, 'pi. manzanas, peras. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biappé', 's.', NULL, NULL, NULL, NULL, 'pi. hollejos secos. el. 8. Tb. yaape', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biappo', 's.', NULL, NULL, NULL, NULL, 'pI. 1. asas, asideros. 2. pinzas del can grejo. el. 8. Tb. biakko. hia. . . t, , . 1''/ l lanuras, valles. el. 8 tI> bit''�vlÍ�Vtl. hiarNI¡;. s 1''/'' estados de soltería tras haber IlwnlCllldo lIna relación amorosa. mujeres sol Ieras. . biári, ll/"; a batyi¡ ba - e ribiityii ri ábO e tyaróm la gente soportó su vida en la cárcel. TIJ. biám', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biatoo', 's.', NULL, NULL, NULL, NULL, 'pI. tardes. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biatotyiO', 's.', NULL, NULL, NULL, NULL, 'pi. anocheceres, atardeceres. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biatte', 's.', NULL, NULL, NULL, NULL, 'pI. pedrizas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biátto', 's.', NULL, NULL, NULL, NULL, 'pI. canoas, cayucos, góndolas. bar cas, barcos. naves, navíos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 41 (entradas 1001 a 1025)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('biatya', 's.', NULL, NULL, NULL, NULL, 'pi. picores, quemazones. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biatyá', 's.', NULL, NULL, NULL, NULL, 'pi. pechos, petos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biatyátya', 's.', NULL, NULL, NULL, NULL, 'pi. llanuras. el. 8', NULL, 'atyátya, biara', 'Fuente: bubi-español', 'import-script'),
  ('biátyi', 's.', NULL, NULL, NULL, NULL, 'pI. relojes, despertadores. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biatyó', 's.', NULL, NULL, NULL, NULL, 'pi. almejas, mariscos, ostras, moluscos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bibba', 's.', NULL, NULL, NULL, NULL, 'pi. rocíos, chirimiris. el. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bibbo', 's.', NULL, NULL, NULL, NULL, 'pi. demonios, espíritus, fantasmas. difuntos. el. 2', NULL, 'ibbo', 'Fuente: bubi-español', 'import-script'),
  ('bibolló', 's.', NULL, NULL, NULL, NULL, 'pi. pobreza/s. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biborábello', 's.', NULL, NULL, NULL, NULL, 'pi. desdentados, desdentaciones. el. 8. Tb. mbOrabello', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biboránokko', 's.', NULL, NULL, NULL, NULL, 'pI. ciegos, invidentes. el. 8', NULL, 'mbOránokkO', 'Fuente: bubi-español', 'import-script'),
  ('bibotúbotu', 's.', NULL, NULL, NULL, NULL, 'pI. ambigüedades, dudas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bibotyera', 's.', NULL, NULL, NULL, NULL, 'pI. cariños, gestos afectuosos. el. 8. Bichakete, antrop. formado por los términos o bUya y kette. Debería escribirse Bityakette. Está localizado en Belebú. Bichi, antrop. plural de bi5tyí. Se trata de uria trancripción errónea del plural betyí. Está localizaco en Baney. Bichúa, antrop. plural de etyu ''a. Debería escribirse Bityu''a. Está localiza do en Baney. bietáa / 99', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bidoroma', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. bombos. ', NULL, 'kunké', 'Fuente: bubi-español', 'import-script'),
  ('bíe', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. ríos, afluentes, arroyos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bie''e', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. uñas, pezuñas. . Tb. yekke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bie''e', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. 1. bocas. 2. labios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bie''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. las tres piedras sobre las que se coloca la olla. . Tb. bíiJo, Me''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bie''oo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. pasos, pasos de cebra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bieá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. gambas, camarones. langostas acuáticas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biéá', 's.', NULL, NULL, NULL, NULL, 'pI. meses, periodos de treinta días. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bieba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. olas, olas grandes del mar. ondas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biebbe', 's.', NULL, NULL, NULL, NULL, 'pi. congojas, mucha tristeza. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Biebeda', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir de ebétá. Debería escribirse Bieeibédá. Está localizado en Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biebí', 's.', NULL, NULL, NULL, NULL, 'pi. maestros de ceremonias. ayu dantes y portavoces del sacerdote bubi. CI. 8. Tb. bimpo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biebie', 'adj.', NULL, NULL, NULL, NULL, 'bellos, hermosos, guapos, bonitos, agradables. Concuerda con las palabras de las Cls. 4 y 8; e bempo - las hermosas narices, e biriia - los pueblos bonitos', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 42 (entradas 1026 a 1050)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bieka', 's.', NULL, NULL, NULL, NULL, 'pI. controversias. disputas. cuestaciones. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biekéke', 's.', NULL, NULL, NULL, NULL, 'pI. caracoles pequeños. CI. 8', NULL, 'wekéke', 'Fuente: bubi-español', 'import-script'),
  ('biekké', 's.', NULL, NULL, NULL, NULL, 'pI. idiotas, tontos, imbéciles, bobalico nes. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biekko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. sartenes, cazuelas con mango. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bielelo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "persona por la que se llora". En bubi debería escribirse Beelelo. Está localizado en Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bielerí', 's.', NULL, NULL, NULL, NULL, 'pi. necesidades, deseos, caprichos, anhelos. CI. 8. Tb. bipeleri, ep eleri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biellá', 'adj.', NULL, NULL, NULL, NULL, 'indo otros, otras. Concucrda con las palabras de las Cls. 4 y 8; beatta - otras noticias, bilabba - otros asuntos. biellá, S. pI. vientres, barrigas, panzas, estóma gos. CI. 8 ")', NULL, 'welláa', 'Fuente: bubi-español', 'import-script'),
  ('biello', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pI. 1. Ií mites, fronteras. 2. horizontes. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biello', 'S.', NULL, NULL, NULL, NULL, 'pI. regocijos. alegrías. CI. 8. 77). baokó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biéllo', 'S.', NULL, NULL, NULL, NULL, 'pI. peleas, disputas, contiendas, comba tes, camorras. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bielo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "alguien por quien se llora, persona deseada". Debería escribirse Be''elo. También lo encontramos escrito como Bebelo en castellano. Está localizado en Riaba, Moka, Bahó, etc', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bielo''o', 'S.', NULL, NULL, NULL, NULL, 'pI. escorpiones, langostas terrestres. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biem', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pI. vinos. CI. 8. Tb. bilóbíl/o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biemí', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pI. malangas bubis. . Tb. bihelÍl, biheei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bienna', 'S.', NULL, NULL, NULL, NULL, 'pI. granos en la cara. espinillas. orzuelos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bieoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. Concuerda con las pala bras de las Cls. 4 y 8; beatta - pocas historias, biriia - pocos poblados', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biepeppe', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pi. berenjenas. . Tb. ibepe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bieppé', 'S.', NULL, NULL, 'Cl. 7', NULL, 'pi. perezosos, vagos, holgazanes, hara ganes. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bieppí', 'S.', NULL, NULL, 'Cl. 7', NULL, 'pI. cantos, cánticos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bieppo', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pI. himnos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biera', 'S.', NULL, NULL, 'Cl. 4', NULL, 'numo cientos, centenares. ; - bió cinco mil euros. Th. bierá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bierá', 'S.', NULL, NULL, NULL, NULL, 'numo pI. quinientos, miles. CI. 8. Tb. biera', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bierí', 'S.', NULL, NULL, NULL, NULL, 'pi. hormigas grandes y rojas. carac teres, temperamentos, formas de ser. CI. 8. Tb. werí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biesee', 'S.', NULL, NULL, NULL, NULL, 'pi. moscas jenjén. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biesso', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pi. costas, *playas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 43 (entradas 1051 a 1075)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('biesuessu', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pI. setas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bietáa', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pI. inteligencias, conocimientos, men tes. . 1041 / hil-l:í. ', NULL, 'biétáa', 'Fuente: bubi-español', 'import-script'),
  ('biette', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. verdades, verídicos. CI. 8. Tb. yette', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biette', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. bandos. normas, órdenes, decretos, leyes. justicias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biettya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pi. cabañas, chozas. . Tb. wetya, [opando, bietya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bietya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. cabañas, chozas, *casas, barracas. . Tb. wetya, [opando, biettya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bietyaétya', 's.', NULL, NULL, NULL, NULL, 'pI. placentas, matrices. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bietyetyú', 's.', NULL, NULL, NULL, NULL, 'pI. lagartos, lagartijas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bietyíi', 's.', NULL, NULL, NULL, NULL, 'pI. silbidos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. cubos, barreños. platos, bande jas. . Tb. bikítol/o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihabba', 's.', NULL, NULL, NULL, NULL, 'pI. lugares, sitios. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihaé', 's.', NULL, NULL, NULL, NULL, 'pI. corajes, valentías, ánimos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihaíeen', 's.', NULL, NULL, NULL, NULL, 'pI. planchas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihakká', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. nudos corredizos. trampas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihalle', 's.', NULL, NULL, NULL, NULL, 'pI. sardinetas, arenques. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihám', 's.', NULL, NULL, NULL, NULL, 'pI. semejanzas, parecidos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihámma', 's.', NULL, NULL, NULL, NULL, 'pi. martillos, mazos, mazas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihánaeri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. competencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihánna', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. retratos, imágenes, fotos. el. 8. Bihao, antrop. plural de eaó. Debe ría escribirse Biaó. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihao', 's.', NULL, NULL, NULL, NULL, 'pI. cubos, barreños. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihaóla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. hojas santas; plantas de la resurrec ción. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihattá', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. pactos, tratos. secretos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihatto', 's.', NULL, NULL, NULL, NULL, 'pI. desayunos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihátyibianna', 's.', NULL, NULL, NULL, NULL, 'pI. abrazos. el. 8. Tb. biiappo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihe', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'nuevos, nuevas. Concuerda con las pala bras de la ; biriia pueblos nuevos, bimpa asientos nuevos', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 44 (entradas 1076 a 1100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bihe''ahe''a', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. pésames, condolencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biheá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. incordios. abusos. líos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biheberi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. reposos, descansos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biheberí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. gemidos. suspiros. . biheei, s. pI. rnalangas bubis. el. 8. Tb. bihem, biimí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihehe', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. mollejas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biheká', 's.', NULL, NULL, NULL, NULL, 'pi. trozos, mitades, cachos. por ciones, pedazos. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihelábossoo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. partidas, comienzos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihélellé', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. cuidados, atenciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biheleri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. súplicas, peticiones, ruegos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihem', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. malangas bubis. el. 8. Tb. biimí, biheei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biheperi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. visitas, visitantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihéri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. manojos de hojas de tabaco. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihero', 's.', NULL, NULL, 'Cl. 2', NULL, 'pI. preguntones. demandantes de información. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihette', 's.', NULL, NULL, NULL, NULL, 'pi. desvelos, insomnios. veladas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihetúhéttu', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. buches de las aves. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihetyoro', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. desnudos, desnudeces. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihiió', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. asmas. bronquitis. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihítaeri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. testigos. espectadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihMma', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. frutas, frutos. . Tb. bimmáttii. bihl\Íma, s. pI. oscuridades, tinieblas. ', NULL, 'biItMmari', 'Fuente: bubi-español', 'import-script'),
  ('bihMmabi''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. regocijos, satisfacciones. . bihl\Ímari, s. pI. oscuridades, tinieblas. . Tb. birimarima, bihilÍma. biilla / 101', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihMmero', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. contestaciones, respuestas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihMmo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. cucarachas. . Tb. beebaeba, bebaeba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihNná', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. abscesos. ampollas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihNtyátya', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. flores. . Tb. taate. bihó, 1. s. pI. rebeldías, travesuras, testarudeces. 2. adj. cabezudos, cabezotas, desobedientes. . Tb. wihó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biho''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. columnas, postes, pilares. . Tb. bio''o', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 45 (entradas 1101 a 1125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bihoahooa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. hojas de la paz. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihobbá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. bosques, selvas. . Tb. bUa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihoehoe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ecos, repeticiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihoi', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. paces, armonías, tranquilidades. . Tb. ehiJíhiJí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihokko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. arpones, aguijones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihókko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. lazos corredizos del etélle. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihokoro', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. frutos del oero, son comestibles. Se utilizan como condi mentos en la gastronomía bubi. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihólle', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. querencias, apetencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihólolló', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. prostitutos, prostitutas, rameros, rameras, putos, putas, etc. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihomoí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. paces, armonías, tranquilidades. . Tb. bihoi (sing. eho, j', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihorá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. vómitos. ', NULL, 'bihoro', 'Fuente: bubi-español', 'import-script'),
  ('bihoro', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. vómitos. ', NULL, 'bihorá', 'Fuente: bubi-español', 'import-script'),
  ('bihótóttó', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'blancos, blancas. Concuerda con las palabras de la ; bilebbó campanas blancas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihótto', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. horas. . Tb. bisú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihuáeri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. tratos, acuerdos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihuenóko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. tibios, tibias. templanza. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihuhu', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. tórtolas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihulá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. alientos, soplos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihulábette', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. hormigueros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihulahúla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. pulmones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihulo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. hinchazones, brotes, ampollas. montes, montañas. . Tb. bió, baupo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihuri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. hinchazones, inflamaciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihurí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. cebos. . Tb. abetebette, bisello', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihurú', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. vientos, aires, brisas. . Tb. bihurúru', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihurúru', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. vientos, aires, brisas. . Tb. bihurú', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 46 (entradas 1126 a 1150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bihuteri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. embozos, dobleces. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihúto', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. lazos, nudos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bihútu', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. humos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''aale', 's.', NULL, NULL, NULL, NULL, 'sing. carga, fardo. CI. 3. Tb. hiFe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''áeri', 's.', NULL, NULL, NULL, NULL, 'pi. entendimiento, comprensión. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''e', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. carga, fardo. . Tb. hij''aa/e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''esobí', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. palo recto. . bó''essi, pret. v. o bó''a ; n-a lokkom o tyóbbo cogía mis cosas de casa. bó''i, pret. v. o bó''a ; n-a bop pé e ebarityio cogí el agua muy temprano, o le - o kottó o mmo obé me liberaste del domi nio del demonio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''iilla', 's.', NULL, NULL, 'Cl. 2', NULL, 'sing. comprador, cliente. Cl. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''iilo', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. peseta. . Ej. expr. ne - la emmerí cuesto una peseta y un céntimo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''o', 's.', NULL, NULL, 'Cl. 2', NULL, 'sing. cuñado, cuñada. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''ó', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. caña negra de azúcar. . Tb. bOkij''ó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''obba', 's.', NULL, NULL, 'Cl. 2', NULL, 'sing. persona que paga, pagador. Cl. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''ossi', 's.', NULL, NULL, 'Cl. 2', NULL, 'sing. persona que cuida de caballos, jinete. Cl. I. bii''iitya, adj sing. primero, primera. Concuerda con las palabras de las Cls. I y 3. Cjr. hijijtya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bii''ú', 's.', NULL, NULL, NULL, NULL, 'sing. tartamudo. Cl. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiá', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. estercolero, basurero, basura, vertedero de basura. tiempo de pesca. . Tb. huía. Tb. hijáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biía', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. 1. fincas de ñames. 2. muladares. 3. fin cas, bosques, campos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bíía', 's.', NULL, NULL, NULL, NULL, 'pI. cervezas. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiáa', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. 1. basurero, estercolero. marea baja, bajamar. tiempo de pesca. . Tb. bOá. 2. hachas, mangos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiábanna', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. restos, sobras. . Tb. biiara, biiabara', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiabara', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. restos, sobras. . Tb. biiara, biiábanna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiabba', 's.', NULL, NULL, 'Cl. 2', NULL, 'sing. repartidor, distribuidor, persona que regala. Cl. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiabbí', 's.', NULL, NULL, NULL, NULL, 'sing. héroe, campeón, valiente. culpable. Cl. l', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiakio', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. atadura. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiakká', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. 1. acequia, canalón. 2. almendra. 3. raíz. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiakke', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. tribu, familia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 47 (entradas 1151 a 1175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('biiakki', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. piojo, liendre, pulga. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiakko', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. pena, penitencia, multa, senten cia. . bóálessi, pret. v. o bóálla ; n - despojaba, o - despojabas, a - despojaba, to - despojábamos, lo - despo jabais, ba - despojaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biialla', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. punta de tierra, cabo. . bóálla, v. quitar de la mano, despojar; n la o e ribúkku o yo te quito tu libro. Pret. bóám, bóálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiallo', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. rodillo. leñera. . 1 1, \J. despejar el camino, saludar; n la yo saludo, n la o - yo despejo tu camino, yo te saludo, ko bóyállo yo despejo tu ca mino, yo te saludo, buenos días. Pret. bóíállo, boessállo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiállo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ayudas, auxilios, socorros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiara', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. restos, sobras. . Tb. biiabara, biiábanna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. rocíos. . Tb. bamma, bubba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiera', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. marcas, señales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiheri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. 1. preguntas, cuestiones. 2. servicios de información. . Tb. meíhero', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biiko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. 1. árboles de los salchichones. 2. árbo les de cementerio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biilla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. prohibiciones, abstinencias. . Tb. binna, bii ra. 102 / biilloo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biilloo', 's.', NULL, NULL, NULL, NULL, 'pi. madejas, hilos. nudos, lazos. CI. 8', NULL, 'yillii', 'Fuente: bubi-español', 'import-script'),
  ('biiloom', 's.', NULL, NULL, NULL, NULL, 'pI. lavaderos. limpiezas. CI. 8. Tb. batowerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bíín', 's.', NULL, NULL, NULL, NULL, 'pI. anillos, sortijas, alianzas. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biira', 's.', NULL, NULL, NULL, NULL, 'pi. destetes. prohibiciones. CI. 8. Tb. binna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biitá', 's.', NULL, NULL, NULL, NULL, 'pi. aceite; - bá ii ribiityii aceite de palma. crema, pomada. CI. 6. Tb. butá, bahNta, mitá, matyátya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biitalla', 's.', NULL, NULL, NULL, NULL, 'pI. equivocaciones, errores, desacier tos. CI. 8. Tb. biityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biitánna', 's.', NULL, NULL, NULL, NULL, 'pI. encuentros. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biityám', 's.', NULL, NULL, NULL, NULL, 'pI. lugares donde se corteja a alguien. flirteos, ligues. CI. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biityi', 's.', NULL, NULL, NULL, NULL, 'pI. equivocaciones, errores, desaciertos, faltas. CI. 8. Th. biitalla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biityíi', 's.', NULL, NULL, NULL, NULL, 'pi. 1. hermanos menores. CI. 2 2. antrop. Bityi localizado en Baney. Bijem, antrop. referido al tubérculo deno minado "malanga bubi" o Dioscorea dumetorum. Debería escribirse BiheÓl. Se localiza en Basaka to de la Sagrada Familia. Bijeri, antrop. plural de ehéri. También puede significar "alguien que remedia" si tenemos en cuenta el verbo o MUa. Debería escribirse Biheri. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikaí', 's.', NULL, NULL, NULL, NULL, 'pi. hospitales. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikakká', 's.', NULL, NULL, NULL, NULL, 'pI. apocados, tontos, necios, bobos, botarates, etc. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikákka', 's.', NULL, NULL, NULL, NULL, 'pi. cangrejos negros y amargos. CI. 8. Tb. ikákka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikáókáó', 's.', NULL, NULL, NULL, NULL, 'pI. esputos, gargajos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 48 (entradas 1176 a 1200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bikapátya', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. chillidos, berridos, bramidos. CI. 8. Th. bitábatábba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikará', 's.', NULL, NULL, NULL, NULL, 'pi. lenguas inglesas, idiomas ingleses. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikasokasso', 's.', NULL, NULL, NULL, NULL, 'pi. relámpagos. resplan dores. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikasso', 's.', NULL, NULL, NULL, NULL, 'pI. diligentes, rápidos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bíke', 'adj.', NULL, NULL, NULL, NULL, 'pI. mucho, abundante. Concuerda con las palabras de las Cls. 2, 4, 6 Y 8; a batyii - las perso nas muchas, e beleppo - los espejos muchos, a boppé - el agua mucha, e bilabba - las cosas tradicionales muchas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bike''o', 's.', NULL, NULL, NULL, NULL, 'pI. ensayos, exámenes, pruebas. CI. 8. Tb. bisori', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikerétta', 's.', NULL, NULL, NULL, NULL, 'pI. ralladores. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikerikeri', 's.', NULL, NULL, NULL, NULL, 'pi. albinos, personas muy blancas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikétekéte', 's.', NULL, NULL, NULL, NULL, 'pl. luchas, batallas. CI. 8. Th. baoppo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bíki', 's.', NULL, NULL, NULL, NULL, 'pi. semanas, periodos de siete días. mechas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikítollo', 's.', NULL, NULL, NULL, NULL, 'pI. cubos. CI. 8. Th. bihá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikkí', 's.', NULL, NULL, NULL, NULL, 'pi. cercos, vallas. parques, cerca dos. CI. 6 ; - bá a Mllá parques infantiles', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biknkuna', 's.', NULL, NULL, NULL, NULL, 'pI. mancos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikobaera', 's.', NULL, NULL, NULL, NULL, 'pI. copiador, copiadoras. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikobbe', 's.', NULL, NULL, NULL, NULL, 'pi. 1. plátanos. 2. racimos de plátanos. CI. 8. Th. bekobbe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikobbo', 's.', NULL, NULL, NULL, NULL, 'pI. monedas, centavos. el. 8. Tb. bikoppii', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikobekobbe', 's.', NULL, NULL, NULL, NULL, 'pi. las hojas de la planta del pláta no o de la banana. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikoé', 's.', NULL, NULL, NULL, NULL, 'pI. objetos, cosas. personas. CI. 8. Tb. bikiillé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikokka', 's.', NULL, NULL, NULL, NULL, 'pI. águilas imperiales, águilas en general. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikokkí', 's.', NULL, NULL, NULL, NULL, 'pi. gaviotas grandes, cigüeñas gran des. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikokko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. cabezas, cráncos. . Th. bitue, bityue, bipóñrbó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikokonno', 's.', NULL, NULL, NULL, NULL, 'pi. 1. núcleos, uniones de dos o tres ramas en su base troncal. 2. amigas con derecho a roce, amantes. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikokoo', 's.', NULL, NULL, NULL, NULL, 'pi. disparos. CI. 8 ; e - bi e bitataa los disparos de las escopetas. bilappá / 103', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikokóo', 's.', NULL, NULL, NULL, NULL, 'pI. plantas de la malanga. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikokopíppo', 's.', NULL, NULL, NULL, NULL, 'pI. pelmazos, pesados. "plastas", "pesados". CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 49 (entradas 1201 a 1225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bikokotya', 's.', NULL, NULL, NULL, NULL, 'pI. ebulliciones. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikollé', 's.', NULL, NULL, NULL, NULL, 'pI. objetos, cosas. personas. CI. 8. Tb. bikoé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikomposi', 's.', NULL, NULL, NULL, NULL, 'pI. mejunjes, potingues. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikonkoo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ruedas, neumáticos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikonna', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. l. jorobas. 2. troncos. . Tb. bitikObbo, bimmommo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikookoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas, pequeños, peque ñas. Concuerda con las palabras de la CI. 8; bilappa - pinzas pequeñas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikoppo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. monedas, centavos. CI. 8. Tb. bikobbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikóri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. desbroces, roturaciones, desmontes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikorókoró', 's.', NULL, NULL, NULL, NULL, 'pI. desórdenes. CI. 8. Tb. bOkuékui', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikosiballa', 's.', NULL, NULL, NULL, NULL, 'pI. insultos. CI. 8. Tb. bikosso', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikosso', 's.', NULL, NULL, NULL, NULL, 'pI. gruñidos. insultos. CI. 8. Tb. bikOsiballa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikotekotte', 's.', NULL, NULL, NULL, NULL, 'pI. búhos, lechuzas. CI. 8. Tb. biokkó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikúbari', 's.', NULL, NULL, NULL, NULL, 'pI. tropiezos, tropezones. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikuéi', 's.', NULL, NULL, NULL, NULL, 'pI. caídas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikuekka', 's.', NULL, NULL, NULL, NULL, 'pI. frutas silvestres muy dulces. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikuemáa', 's.', NULL, NULL, NULL, NULL, 'pI. guayabas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikukuu', 's.', NULL, NULL, NULL, NULL, 'pI. truenos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikulekulé', 's.', NULL, NULL, NULL, NULL, 'pI. antros, clubes nocturnos. CI. 8. Tb. bilikúléku', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikunna', 's.', NULL, NULL, NULL, NULL, 'pI. tragos, bebidas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikutakutta', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. mantas grandes, lonas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bikutyú', 's.', NULL, NULL, NULL, NULL, 'pI. bases, fundamentos. relevan cias, importancias. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bila', 'antrop.', NULL, NULL, NULL, NULL, 'que se forma a partir de biilla o bílla. Debería escri birse BüIla o Bílla. Está localizado en Bocoricho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilabaliba', 's.', NULL, NULL, NULL, NULL, 'pi. herbáceas de hojas opuestas y trifoliadas de flores blancas y amarillas o Bidens pilosa. pega-pega. CI. 8', NULL, 'gubaguba', 'Fuente: bubi-español', 'import-script'),
  ('bilabba', 's.', NULL, NULL, NULL, NULL, 'pI. asuntos, cuestiones, temas, eventos, operaciones, etc. CI. 8 ; e - bié tyo los asuntos tradicio nales; e - bieó tyue abObée nuestros asuntos más celosamente guar dados nosotros los bubis', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilakka', 's.', NULL, NULL, NULL, NULL, 'pi. 1. collares, gargantillas. 2. panales, colmenas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 50 (entradas 1226 a 1250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bilako', 's.', NULL, NULL, NULL, NULL, 'pi. faenas, trabajos, tareas, oficios. CI. 8. Ej. expr. e - bi''a le oríi los trabajos han acabado con migo. bilálessi, pret. v. o bilálla ; o boie n bo - el hombre, yo bailaba con él. bilálla, v. bailar con; o botyo bai lar con alguien. Pret. bilári, bilálessi. bilám, pret. v. o bilánna ; m bo - o waísso con ella bailé, la mujer, to - i pókk. ó bailamos con los bueyes. Tb. bilári. bilámpuá, pret. v. o bilelapuá ; n ri - e raatyé bailé sobre la cama. bilánessi, pret. v. o bilánna ; o bulla bo - o bOie bo ábO la doncella bailaba con su padre. bilanessípuá, pret. v. o bilelapuá ; e raatyé n ri -la cama, bailaba sobre ella. bilánna, v. danzar con alguien o con algo; n la - riOkkó bailo con alegría. Pret. bilám, bilánessi', NULL, 'o bilánna', 'Fuente: bubi-español', 'import-script'),
  ('bilappa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. dedos gordos del cangrejo. tenazas, alicates. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilappá', 's.', NULL, NULL, NULL, NULL, 'pi. pareos. pati. os de grandes dimensiones. telas, retales. CI. 8. 1 04 / hilil ri bilári, ¡JI"''. 1''. o bl lúl la, ji waíssii 111 bii -la mUJcr bai lé con clla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilasálássá', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. atrevinuentos, osadías. Cl. g', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bile', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'dem. aquellos, aquellas. Concuerda con los nombres de la ; - bihoro aquellos vómi tos, - bihólolló aquellas prostitutas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bile''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pI. hemorragias nasales. . Tb. hilo''u, bilekka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bile''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. tumbas, sepulcros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bile''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. círculos, circunferencias. . lb. hilikko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileaero', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. almohadas, reposacabezas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biléálo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. respaldos, apoyos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilebári', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. olvidos, omisiones. . Tb. biótári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilebbáa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. defectos fisicos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilebbó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. campanas, cencerros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilebí', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. olvidos, omisiones, dejaciones. CI. 8. Tb. hilibári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilebóri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. recuerdos, reminiscencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileheri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. molestias. provocaciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileka', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. argollas, corajes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bileká', 'antrop.', NULL, NULL, NULL, NULL, 'plural de eleka. Bileka se referirá, pues, a alguien con mucho coraje y valentía. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. arrugas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. canalones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bilekera', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir de la expresión bubi bí la ekera, y en la que el morfema concordante con función de sujeto no se refiere a personas. Se localiza en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilekka', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. hemorragias nasales. . Tb. bile''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilekko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. círculos, circunferencias. . Tb. biutyeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilekúléku', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. 1. barrancos. 2. antros, clubes nocturnos. . Tb. bikulikulé. hilclapuá, 11. bailar sobre algo o, i lglllcn; n la e - e empa yo bai lo sobre el asiento. Pret. bilámpuá, bilanes sípuá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilele', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. legañas. . bilelessi, pret. v. o bilella ; a batyo ba - abébá las per sonas bailaban para los cazadores. bilella, v. bailar por/para; o - tyóbbo alo bai lar delante de una casa. Pret. bileri, bilelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 51 (entradas 1251 a 1275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Bilelo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "alguien por quien se baila", formado a partir del verbo o bílla. Debería escribirse Bilelo. Se localiza en Belebú y Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilepaIeppa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. plantas de hojas grandes y comestibles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileperíbbo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. almas malignas que causan el mal. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilepori', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. descubrimientos, hallazgos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileppé', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. cadáveres. restos mortales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bileppo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. escondites. despensas, arma rios. c) ocultaciones, precauciones. . bileri, 1. pret. v. o bilella ; a bOllá ba - i húúa los niños bailaron para el público. 2. s. pi. bailes. Cl. \O', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biléssi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. puntillas, encajes, cenefas. . bílessi, pret. v. o bílla; mpári m - o bOlebbó ayer bailaba el baile de las campanas de madera', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biletera', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. letras, caligrafias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bilibi', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado es obtenido por analogía a otros términos bubis como bilehí. Se localiza en Lubá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bílla', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. nombres, honores. ; a - ba batyo los nom bres de las personas. bílla, v. bailar, danzar; na - o bOatte bailo la danza de la paz. Pret. bíríi, bílessi. billé, prono pI. otros, otras. Concuerda con las pala bras de la ; bilo biriia, e - estos poblados, los otros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('billo', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pi. días, jornadas, fechas. . bimmátte / 105', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('billo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ñames. . Tb. biemí (sing. eem, j', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('billó', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'pI. negros, oscuros. . Concuerda con las palabras de las Cls. 2, 4, 6 Y 8; baísso - mujeres negras, benkinki abejorros negros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilo', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'dem. estos, estas. Concuerda con los nombres de la ; - biaó estas hachas, - bia pa estas mandíbulas superiores', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilo''a', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. círculos, circunferencias. . Tb. biloka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilo''á', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. mares. océanos. . Tb. binoá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilo''o', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. vagos, holgazanes, perezosos, ñoños. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biloállo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. playas, orillas del mar. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biloátyi', 's.', NULL, NULL, NULL, NULL, 'pi. mordiscos mordeduras. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilobalObba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. grietas, hendeduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilObalóbba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. champiñones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilobbe', 's.', NULL, NULL, NULL, NULL, 'pI. semilleros. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilobbo', 's.', NULL, NULL, NULL, NULL, 'pI. platos de un ágape. menús. CI. 8 ; o''a reri - u e bilobbo por ti han comido suculentos platos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bilobé', 'antrop.', NULL, NULL, NULL, NULL, 'plural de elohhe. Se localiza en Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilobí', 's.', NULL, NULL, NULL, NULL, 'pi. pescas. actividades pesqueras. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 52 (entradas 1276 a 1300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bilóbíllo', 's.', NULL, NULL, 'Cl. 3', NULL, 'pi. vinos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilobo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. faenas, trabajos, tareas. CI. 8. Tb. bilakiJ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biloka', 's.', NULL, NULL, NULL, NULL, 'pi. circunferencias, círculos. CI. 8. Tb. bilo''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Biloko', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Beluku y que significa lunaciones. Se aplica a aquellas personas que experimentan cambios constantes en su forma de ser. Se localiza en Moka. bilOlessi, pret. v. o bilolla ; m bo - o bOllá yo destapaba al niño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilollá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. caracoles grandes del mar. . bilolla, v. descubrirse, destaparse; na ni la o''áa huehue a en tyí''a ba - aunque tenga calor no me destapo. Pret. bilori, bilOlessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilOllo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. lugares donde pastan las cabras. las hojas que come la cabra. pastos. ', NULL, 'iliilliJ', 'Fuente: bubi-español', 'import-script'),
  ('bilolló', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. cortezas. pieles de la fruta o de los tubérculos. CI. 8. Tb. binonó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilopa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. demonios. endiablados. cenizos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilopeloppe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. cañas de bambú. . Tb. eloppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biloppe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. cañas de bambú. . 10. bilopeloppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bilora', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Bilo''oora. Está localiza do en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilorí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. aves, pájaros grandes. . bilori, pret. v. o bilolla ; to bo - o boyulla destapamos al abuelo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilosso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. ofrendas, presentes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilotolotto', 's.', NULL, NULL, NULL, NULL, 'pI. cuerpos inertes, cadáveres. CI. 8. Tb. bilotto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilotolOttó', 's.', NULL, NULL, NULL, NULL, 'pi. flores. toda las variedades de f lores. orejas grandes, auriculares. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilotto', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. cuerpos inertes, cadáveres, carcasas humanas. CI. 8. Tb. biloto lotto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bilottyí', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. veladores, espiritistas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimasosso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. carbones, ascuas, brasas. . Tb. bimatyotyo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimatyotyo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. carbones, ascuas, brasas. . Tb. bimasosso. bimma, prono indo algunos, algunas. Concuerda con los nombres de la CI. 8 ; he - biriia hay algunos poblados', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimmaa', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'indo todos, todas. Concuerda con los nombres de la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimmaeri', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. asistentes. paladines. testigos. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimmáloto', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pi. piñas de cacao, cacaos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimmátte', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. frutas, frutos. . Tb. bihMma. J O / hilllllll''rí birnrnerí, s, , 1 cénlllllOS, cCllla, "s. birnrnornrno, spl. troncos. Cl. X. Tb. bikonna, bitekiJbbo. bimpa, s, pi. asientos. el. 8. Tb. biupa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimpampa', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. asientos grandes, butacas. el. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bimpo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ayudantes y portavoces del sacerdo te bubi. . Tb. biebí', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 53 (entradas 1301 a 1325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('bimpompo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. narigones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binaéle', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. dedos pulgares. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binámmobiétuepuá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. jilgueros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binanáa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. racimos de bananas. . Tb. binanákobbe. binanákobbe, spl. racimos de bananas. . Tb. binanáa. bineem, pret. v. o binenna ; o le -mpari me pisaste ayer', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bineke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ranas, sapos. arrugas. . Tb. binyeke, binyekábityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binénée', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. fiambreras, bandejas. . binenessi, pret. v. o binenna ; i pókkó i - e elOllo los bueyes pisaban el pasto. binenna, v. pisar; o la le binimna me estás pisando. Pret. bineem, binenessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binepó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. tías, las hermanas del padre. . Tb. bÜlntí. bines si, pret. v. o binna ; n - aplastaba, o - aplasta bas, a - aplastaba, to - aplastábamos, lo - aplastabais, ba aplastaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binkeléssi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. idiomas ingleses. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binkinki', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. moscardones, moscas grandes. CI. 8. binna, v. triturar, aplastar, moler, atropellar; n tyí''a na''a o - a bi''é no quie ro triturar las nueces de cola. Pret. binni, binessi. hinná, s pI. abscesos. tumores. . Tb. biaká. hinna, s pI. prohibiciones. CI. 8. TI>. minna. hinni, II/''; n - aplasté, ii aplastaste, a - aplastó, to - aplastamos, 10 - aplastasteis, ba - aplastaron; 010 bOtyo a - o rikotye a esta persona le aplastó un camión', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binno', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. tumbas, sepulcros. . Tb. bile''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binno', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. nudos, . Tb. bUIliJo. bino á, s. pI. mares. . Tb. bilo ''á', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binobanobba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. bostezos. . Binohari, antrop. relacionado con enoá. Se refiere a aquella parte del mar donde generalmente van las mujeres. Se localiza en Belebú y Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binokonokko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. monstruos, cíclopes, ogros, etc. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binokosso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. murmullos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binonó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. cortezas. las pieles de las fru tas o de los tubérculos. . Tb. bilolló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binonori', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. notificaciones. declaracio nes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bintanta', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. hojas. papeles grandes. follaje. . Tb. biutaut ta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bintúbíntú', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'bajos, bajas, cortos, cortas. Con cuerda con las palabras de la ; billii - ñames cortos', NULL, 'bilÍtú', 'Fuente: bubi-español', 'import-script'),
  ('binyankue', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cabezudos, mamarrachos. . binyekábityi, spl. ranas, sapos. . Tb. binyeke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binyeke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ranas, sapos. . Tb. binyekábityi, bineke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('binyo''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. personas ignorantes, tontas. . biOppe / 107', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bio', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. alcobas, aposentos, habitaciones. . Tb. bóóm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bió', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. colinas, montes, montañas. cuestas, subidas. . Tb. biiiló, biulo, bauppoo. 2. adj. numo diez; bebaeba bié - diez cucarachas. Concuerda con las palabras de las Cls. 4 y 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bio''o', 's.', NULL, NULL, 'Cl. 7', NULL, 'pi. columnas, postes, pilares. CI. 8. Tb. biho''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biobaobo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. laderas. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 54 (entradas 1326 a 1350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('biobba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. suelos. tierras, países. ; e bie Áfrikka los países de África', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biObbe', 'adj.', NULL, NULL, NULL, NULL, 'pI. machos, varones. Concuerda con las palabras de las Cls. 4 y 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biobbé', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. los frutos de la atanga. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biObélle', 's.', NULL, NULL, NULL, NULL, 'pl. solteros. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biObéolla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ancianos, viejos. . Tb. biObetyityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biobftyityi', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. ancianos muy mayores. CI. 8. Tb. biiibéolla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biobó', 'adj.', NULL, NULL, NULL, NULL, 'pI. duros, fuertes. Concuerda con las palabras de las Cls. 4 y 8; e bekutta - las mantas f uertes, e biriia - los pueblos fuertes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bióbOla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. 1. entre las montañas. 2. valles, cañadas, collados. . Tb. biówela', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bioboobo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. hojas grandes que se utilizan para cubrir las ollas recién salidas del fuego. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biokíssi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. baúles, cajas, cajones. ataú des. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biokki', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. unos tipos de ñame. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biokko', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. avenidas, bulevares. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOkkó', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. búhos, lechuzas. CI. 8. Tb. bikiitekiitte', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ecos, repeticiones. . Tb. bihiiehiie', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Bioko', 'antrop.', NULL, NULL, NULL, NULL, 'que parece una castellanización de behokko, o de bi6k6. Se localiza en Rebola, Moe r i y Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOkó', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. día, de día. ', NULL, 'eiikó', 'Fuente: bubi-español', 'import-script'),
  ('biOkollo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. 1. conchas, caparazones de cangre jos. 2. pimientos. . Th. iikiillii', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biókoóko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. 1. mariposas. 2. mujeres licencio sas; e - bi a ripotto las mujeres licenciosas de la ciudad. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOkoputtú', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. enjambres. CI. 8. Tb. ep uputtu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biókóra', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. camaleones. CI. 8. Tb. wátéte', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOkoríbba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. lagos, pantanos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOkuaso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. personas que obran por inte rés. gorrones, gorreros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biole', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. discapacidades, defectos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bioleri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. transportadores, transportes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biollé', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. 1. objetos, cosas, materias. 2. tipos de ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 55 (entradas 1351 a 1375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('biólló', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ofensas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOló', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. colinas, montes, montañas. cuestas, subidas. . Tb. bió, biulo, bihulo. 2. s. pI. dátiles verdes y no maduros. racimos verdes de dátiles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOlóba', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. setas, champiñones. CI. 8. Tb. beesuesu, bitatya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOlólló', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'pI. viejos, veteranos. Concuerda con las palabras de la ; bimpa - asientos viejos, biriia - viejos pueblos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bíoo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pI. fogones. fuegos de tres piedras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biopaoppa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. mantos, capas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biope', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. vagabundeos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bioperí', 's.', NULL, NULL, 'Cl. 7', NULL, 'pI. asambleas, reuniones, encuentros. CI. 8', NULL, 'iiperi', 'Fuente: bubi-español', 'import-script'),
  ('biopó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. almacenes de ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bioposa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. jactancias, presunciones. ', NULL, 'eiipiisa', 'Fuente: bubi-español', 'import-script'),
  ('bioppa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. esterilidades, infecundos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bioppe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. catarros. . 10H / hiiil1lli biOppi, s IJI. dUnlwlI1cs, tardanzas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biosó', 's.', NULL, NULL, NULL, NULL, 'pi. 1. anos. 2. coños. el. X', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biossi', 's.', NULL, NULL, NULL, NULL, 'pi. caballos, potros. CI. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOssí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. t. inflamaciones duras. 2. elefantiasis. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('bióta', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. ventanas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biótári', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. olvidos. . Tb. bilebári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOtee', 'adj.', NULL, NULL, NULL, NULL, 'pi. grandes, voluminosos, importan tes, destacados. Concuerda con las palabras de las Cls. 4 y 8; e bempo - las narices grandes, e bisapúsappú - las tortugas grandes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOto', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. hímenes. virginidades. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOtta', 's.', NULL, NULL, 'Cl. 8', NULL, 'pI. trenzados. . T b. biotyi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biottá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. 1. butacas. 2. tronos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOttó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. niguas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biótú', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'bajos, bajas, cortos, cortas. Concuerda con las paJabras de la ; bio''o - postes cortos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOtya', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'pI. primeros, primeras. Concuerda con las palabras de la : bió - los pri meros montes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('biOtyi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pi. trenzados. . Tb. biotta', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 56 (entradas 1376 a 1400)

-- ============================================
-- RESUMEN DE PARTE 1
-- ============================================

DO $$
DECLARE
  total_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO total_count FROM dictionary_entries;
  
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'PARTE 1 DE 4 COMPLETADA';
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'Total acumulado: % entradas', total_count;
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'Continúa con: import-diccionario-entries-parte-2.sql';
  RAISE NOTICE '===========================================';
END $$;
