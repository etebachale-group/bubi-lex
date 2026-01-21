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
 ('''e', 's.', NULL, NULL, NULL, NULL, 'sing. uña, pezuña. Cl. 7. Tb. ekke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('''ee', 's.', NULL, NULL, NULL, NULL, 'sing. afirmación. Cl. 7. e''enna, pret. v. o e''era ; n entregué, o - entregaste, e entregó, to - entregamos, 10 entregasteis, ba entregaron. e''era, v. entregar, ofrecer; e rokútta a la - a bOllá torneressi el médico entrega algunos medicamentos a los niños. Pret. e''enna, e''eresiia. e''eresiia, pret. v. o e''era ; n yo entregaba, 0- tú entre gabas, e - él entregaba, to - nosotros entregábamos, 10 - vosotros entregabais, ba - ellos entregaban. e''essi, pret. v. o e''áa ; n yo aprendía, o - tú aprendías, e - él aprendía, to - nosotros aprendíamos, 10 - vosotros aprendíais, ellos aprendían. ba e''Í, pret. v. o e''áa ; n - aprendí, n-e bilabba bimrnaa bi etyo aprendí todas las cosas tradicionales, n ta - no aprendí, n ta - e bilabba birnrnaa bi etyo no aprendí todas las cosas tradicionales. e''Ía, pret. v. o é''ia ; n enseñé, o enseñaste, e - enseñó, to enseñamos, 10 - enseñasteis, ba - enseñaron. é''ia, v. enseñar, educar, transmitir sabiduría; e elako lÍl ké o - baseseppe mi trabajo es el de enseña', NULL, 'o e''iáa', 'Fuente: bubi-español', 'import-script'),
 ('aba''o', 's.', NULL, NULL, NULL, NULL, 'pl. caseríos, aldeas. barrios, dis tritos en una ciudad, barriadas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abáa', 's.', NULL, NULL, NULL, NULL, 'pl. fabricantes, hacedores. Cl. 2. Tb. apénna. abaam, pret. v. o aballa ; n distribuí entre personas, o distribuiste entre personas, a - distribuyó entre personas, to - distri buimos entre personas, lii - distribuis teis entre personas, ba - distribuyeron entre personas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abáka', 's.', NULL, NULL, NULL, NULL, 'pl. tabacos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abákeri', 's.', NULL, NULL, NULL, NULL, 'pl. revuelta. disturbios. Cl. 6. abalessi, pret. v. o aballa ; n compartía las cosas, 0- compartías las cosas, a - compartía las cosas, to - compartíamos las cosas, lo - compartíais las cosas, ba - compartían las cosas. aballa, v. distribuir entre personas; n la -a batyo basoppo yo distribuyo panes entre personas. com partir cosas. Pret. abari, abalessi', NULL, 'o ka baala', 'Fuente: bubi-español', 'import-script'),
 ('aballá', 's.', NULL, NULL, NULL, NULL, 'pl. canelones. rollitos de malan ga rallada. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abállá', 's.', NULL, NULL, NULL, NULL, 'pl. matrimonios, esposos, desposo rios. parejas no casadas, que conviven. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abapatyilla', 's.', NULL, NULL, NULL, NULL, 'pl. arañas peludas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abasaissii', 's.', NULL, NULL, NULL, NULL, 'pl. incendios, fuegos grandes. fallas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abasso', 's.', NULL, NULL, NULL, NULL, 'pl. pizarras, mármoles. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abatta', 's.', NULL, NULL, NULL, NULL, 'pl. leprosos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abátta', 's.', NULL, NULL, NULL, NULL, 'pl. naturales de Bata, naturales de Río Muni. Cl. 2. Tb. barannó, baton ka. 58 / abatto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abatto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. vasos de libación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abátto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. esponjas. estropajos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abatya', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. palos bifurcados en tres. tri dentes, tenedores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abatyu', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. taparrabos, bragas, calzoncillos. . Tb. beklui', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Abba', 's.', NULL, NULL, NULL, NULL, 'sing. Sumo sacerdote. Este nombre ha perdido su prefijo de Clase 1 : bo-, así como el de la Clase 2: ba-. Encontramos hoy los términos bOabba y baabba que significan "repartidor" y "repartidores" respectivamente. abba, v. repartir algo. distribuir. dar; conj. preso n-yo reparto, o 1 - tú repartes, a 1 él/ella reparte. Tb. o kaaba; ej. conj. preso ne - yo reparto, we - tú repartes, e - él/ella reparte. Pret. abbi, abessi. abbáa, v. ser culpable. no tener razón; conj. preso n - "soy culpable", o l "tú eres cul pable", a 1 - "él/ella es culpable". Ej. conj. preso ne- yo no tengo razón, we tú no tie nes razón, e - él/ella no tiene razón. Pret. abbíi, abessi. abbi, pret. v. o abba ; n distribuí, o - distribuiste, a distribuyó, to - distribuimos, lO distribuisteis, ba - distribuyeron. abbíi, pret. v. o abbáa ; n - f ui culpable, o - fuiste culpable, a fue culpable, to - fuimos culpa bles, lO fuisteis culpables, ba - fueron culpables', NULL, 'o aabá', 'Fuente: bubi-español', 'import-script'),
 ('abbo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. brazos, antebrazos. . 10. lobiJo. abé, mori adj. malo, mala, feo, fea. Concuerda con los nombres de las Cls. 2 y 6; batyo - personas malas; baatyé camas malas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abe''a', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pl. nadadores, navegadores. . abe''e, interrogo ¿cuánto/s, cuánta/s? Se utiliza con los nombres de las Clases 2, 4 Y 6 como baie, batté, boppé, etc. Ej. e xpr. he batyo - hállo? cuántas personas hay aquí?, he boppé - e eribba wela ¿cuánta agua hay en la piscina?', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abé''í', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pl. llorones, quejumbrosos. . 2 s. pl. llanto, lloro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abébá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. cazadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abebba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. tiempos de arrancar los ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abebeppu', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. machos cabríos. . Tb. rimeme''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abébo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. carnicerías. . abeem, pret. v. o abella ; n - repartí para alguien, o - repartiste algo para alguien, a - repar tió algo para alguien, to - repartimos algo para alguien, lo - repartisteis algo para alguien, ba - repartieron algo para alguien. Ej. expr. a batyo m ba - i kuua a las personas les repartí la ropa', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 2 (entradas 26 a 50)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('abeki', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. sacos, macutos, talegos. ; n ka óttá''á - ba billo voy a vender sacos de ñames', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abekko', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. elogios, alabanzas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abekkú', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. emboscadas, encerronas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abekúbeku', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. papadas, barbillas grandes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abela', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. guías, anunciantes. . Tb. abélla. abelessi, pret. v. o abella ; n - distribuía algo para al guien, o - distribuías algo para alguien, a - distribuía algo para al guien, to - distribuíamos algo para alguien, lo - distribuíais algo para al guien, ba - distribuían algo para alguien. abella, v. distribuir algo para alguien. repartir para alguien; conj. preso n-yo distribuyo para, o 1-tú distribuyes para, a 1 - él/ella distribu ye para, etc. Pret. abeem, abelessi. 10. o kabeela', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abelle', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. leche materna. mamas, senos, tetas, pechos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abélló', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. anunciadores. traductores, intérpretes. Cl. i', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abélo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. calendarios, almanaques. tiem pos anunciados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abera', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. parteros, comadrones, comadronas, matronas. . abóra /59', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aberí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. madres. . Tb. aberíi, ayeerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aberí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. aparatos de radio. magnetófo nos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aberíbó''o', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. suegras. . Tb. ayeríbó''o, ameÍlbó''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aberíi', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. madres. ', NULL, 'aberí, ayeerí', 'Fuente: bubi-español', 'import-script'),
 ('abésse', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. soperas, fiambreras, vasijas. . abessi, pret. v. o abba ; mpári n- e bihMma ayer repartía las frutas, o - e bekutta repar tías las mantas, a - a boppé repartía el agua, to - e bilako re partíamos los trabajos, etc. abessi, pret. v. o abbáa ; n era culpable, o - eras culpa ble, a - era culpable, to - éra mos culpables, lo - erais culpables, ba - eran culpables', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abétáso', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. esperanzas. ; a - bá e eriia IÍJ las esperanzas de mi pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetebette', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. trampas, estratagemas. . Tb. bisillo, bihurí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abeteri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. esperas, añoranzas. . 70. abityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetté', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. bidones, barriles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. desembocaduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. salas de espera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. 1. pozas. 2. paradas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetye', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. escobas. fregonas. . Tb. baseseele, aburúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetyi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. esperas. . 7 0. abeteri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abetyí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. esperas, esperanzas. ; a -bá e eriia las esperanzas del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abéUa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. guías, anunciantes. . 2. anuncios. . Tb. abela', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 3 (entradas 51 a 75)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('abieri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. nacimientos, partos. . Tb. bayeerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abílla', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. palmeras. palmeras datileras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abilloo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. pantallas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abinno', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. batidoras, trituradoras. opre siones, dictaduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abissó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. ascensores, montacargas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abitábítta', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pl. guerreros, luchadores, ba talladores. militares. . abo, 1. prono pl. esos, esas -bá láho ellos están ahí. 2. adj. dem. esos, esas. Concuerda con las pala bras de las Cls. 2 y 6; -batyo esas personas, batté esos árboles', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aboa', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. lunares. ; o liipollá lo áí lo serí o okkáa - su pierna está llena de lunares', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abobbo', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. raíces, orígenes. ; abo ká - bá 010 opúlla estos son los orígenes de antaño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abobée', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pl. bubis, naturales de la isla de Bio ko. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abobo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. arácnidos, arañas. ; e esubba a - ba lá sellá o púlláa en la época lluviosa salen mucho las arañas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abobosso', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. muñecas de la mano. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abokká', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. objetos que encogen. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abokko', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. gemelos, mellizos. ', NULL, 'abo ''o', 'Fuente: bubi-español', 'import-script'),
 ('abollá', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. los hijos, los niños. ; n la tówálla a - reprendo a los niños', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abolló', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. odios, rencores. ; 010 botyo a le okeri - esta persona me tiene mucho odio; - oberíi, S. pl. hermanos de madre. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abómma', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. borracheras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aboo', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. brazos, antebrazos. ', NULL, 'abbo', 'Fuente: bubi-español', 'import-script'),
 ('abóperi', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. crianzas, cuidados. . Tb. abóppi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abóppi', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. crianzas, cuidados. . Tb. abóperi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abóra', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. arrendamientos, alquileres. . 60 / abOrí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aborí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. avisos, notificaciones. ; a -ba pooi botyíó los avisos llegaron por la noche', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abósekka', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. harmónicas, acordeones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abotóábotó', 'adj.', NULL, NULL, NULL, NULL, 'blandos, blandas, tiernos, tier nas. Concuerda con las palabras de las Clases 2 y 6; batyo - personas blandas, boppé aguas blandas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abotyíbótyi', 'adj.', NULL, NULL, 'Cl. 1', NULL, 'pl. embusteros, mentirosos. aduladores, farsantes, falsos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abótyikka', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. herpes simple. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 4 (entradas 76 a 100)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('abotyílla', 's.', NULL, NULL, NULL, NULL, 'pl. sobrenombres. apellidos. Cl. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abotyo', 's.', NULL, NULL, NULL, NULL, 'pl. a) vidas, vivencias, sociedades. b) destinos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abuéi', 's.', NULL, NULL, NULL, NULL, 'pl. fallecimientos, defunciones, muertes, funerales. Cl. 6. Tb. awéi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abueríi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. comunicaciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abukkí', 's.', NULL, NULL, NULL, NULL, 'pl. 1. abundancias, multitudes. 2. diver sidades. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abúkku', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. libros. Cl. 6 ; n la hella o sáppo sa - voy a la tienda de los libros, voy a la librería', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abulabatyo', 's.', NULL, NULL, NULL, NULL, 'pl. salvadores, defensores. Cl. 2 ; a -ba lá kibbia e bit tá los defensores paran las guerras', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abulaella', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. defensores, protectores. abogados. ; a - bá e kobinna ba lá tówella e riberí wela los abo gados del gobierno hablan en la radio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abulia', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. defensas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('abullo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. riadas. ; a - ba séri o bukkiá e esubba las riadas aumentan en la época lluviosa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aburí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. salvaciones, protecciones. . aburc), s. pl. defendidos, liberados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aburúm', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. escobas. fregonas. . Tb. baseseele, abetye. Achí, antrop. adv. que significa "otra vez, de nuevo". Se localiza en Rebola y Ehoko. Debería escribirse atyí. Acola, antrop. Proviene del verbo o ákóra. Está localizado en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('áelé', 'adv.', NULL, NULL, NULL, NULL, 'sí, de acuerdo. áessi, pret. v. o áa ; e ebari -la lóllá la mañana amanecía con lluvia', NULL, 'ee, eée', 'Fuente: bubi-español', 'import-script'),
 ('ahailo', 'loc.', NULL, NULL, NULL, NULL, 'prep. en el suelo', NULL, 'ahoi lo, anno, onno', 'Fuente: bubi-español', 'import-script'),
 ('ahaotya', 'loc.', NULL, NULL, NULL, NULL, 'adv. al principio, al comienzo. Ej. e xp. - m pelesí ripotto al principio vivía en la ciudad', NULL, 'ahaossa', 'Fuente: bubi-español', 'import-script'),
 ('ahasubbá', 'loc.', NULL, NULL, NULL, NULL, 'adv. al final, en último término', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aho', 'adv.', NULL, NULL, NULL, NULL, 'ahí; -he eteppe ahí hay una pared, - bi''o ahí cerca', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ahoilo', 'loc.', NULL, NULL, NULL, NULL, 'pr ep. . en el suelo. ahuaam, pret. v. o ahualla ; n ka - e ribotyo lÍl me he acostumbrado a mi vida. ahualessi, pret. v. o ahualla ; be ammaa ba - e esubba todos se acostumbraban a la época lluviosa. ahualla, v. acostumbrarse, aclimatarse. Pret. ahuaam, ahualessi; n-o bokeú bo áí me acostumbro a su carácter. ahuara, v. acostumbrar, aclimatar. Pret. ahua riia, ahuaresiia; n la -a bOllá o sossa ello ebba acostumbro a los niños a leer cada día. ahuaresiia, pret. v. o ahuara ; to - a batyo e ribotyo ri áó acostumbrábamos nues tra vida a las personas. ahuariia, pret. v. o ahuara ; n-o pélla ne bullé bálla me acostumbré a vivir solo. ái, pret. v. o áa ; e ebarí e - el día ama neció. áí, mor f. pos. suyo, suya; o botyo - su persona, su familiar. 2. Concuerda con la clase a la que per tenece el nombre o bompo bu - su nariz. akaam, pret. v. o akalla ; n até con, o ataste con, a ató con, to - atamos con, lo atasteis con, ba ataron con. akólea / 61 akabia, v. adornar, relucir, destacar, ornar, e', NULL, 'ahailo, anno, onno', 'Fuente: bubi-español', 'import-script'),
 ('aIebbáa', 'adj.', NULL, NULL, NULL, NULL, 'cada uno, cada cual. aleIessi, pret. v. o alella ; a batyo n ba - basoppo a las personas les llevaba panes. alella, v. llevar por. cargar para; conj. preso n-yo cargo para, o 1-tú cargas para, a 1 éllella carga para. Pret. aleri, alelessi. alera V. enviar, remitir; o la alera o botyo l Í l isoppo yo envío un pan a mi pariente. hacer llevar o hacer cargar para. Pret. aleriia, aleresiia. aleresiia, pret. V. o alera ; o bobellelÍl a le - ribúkku mi hermano me enviaba un libro. aleri, pret. V. o alella ; o bOyol la a le - ba''u el abuelo me trajo vino de palma. aleriia, pret. V. o alera ; o botukuá ri a le - boattaboasso la jefa del pueblo me envió una carta. alessi, pret. V. o alláa ; o waísso - o bOllá e rokútta la mujer llevaba al niño al médico. alláa, V. llevar, transportar. cargar sobre la cabeza. acarrear; conj. preso n-yo llevo, o la - tú llevas, a la - él/ella lleva. Ej. e. xpr. 0-tyoom avergonzarse. Pret. ari, alessi', NULL, 'o kalla', 'Fuente: bubi-español', 'import-script'),
 ('akákka', 's.', NULL, NULL, NULL, NULL, 'sing. vaso de coco. cubilete. vaso, copa. Cl. 7', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('akakótte', 's.', NULL, NULL, NULL, NULL, 'sing. palmiste vacío, semilla vacía. Cl. 7. akalessi, pret. v. o akalla ; n - ataba con, o - atabas con, a - ataba con, to - atábamos con, lo - atabais con, ba ataban con. ákálessi, pret. v. o ákálla ; o bOyolla - o bOllá el anciano insuflaba/bendecía al niño. akalla, v. atar, ligar con, enfardar con. Pret. akaam, akalessi. ákálla, v. dar un masaje, insuflar, bendecir. Tb. o nkáála. Pret. ákári, ákálessi', NULL, 'ákám', 'Fuente: bubi-español', 'import-script'),
 ('akalOla', 's.', NULL, NULL, NULL, NULL, 'sing. escama de pez. Cl. 7. ákám, pret. v. o ákálla ; o boyolla - o bollá el anciano bendijo al niño. ákári, pret. v. o ákáIla ; to - mpári ayer bendecimos. 70. ákám. akátelessi, pret. v. o akátella ; e biulla be - a baísso las doncellas guiaban a las mujeres. akátella, v. guiar, orientar; o waíribbo aó a la e - ello ebba nuestro espíritu guardián nos guía cada día. Pret. akáteri, akátelessi. akáteri, pret. v. o akátella ; a bayol la ba áó ba e - nuestros ancestros nos guiaron. akátessi, pret. v. o akátta ; a apanná ba - e esubba los españoles iban delante en la época de lluvia. ir delante, destacar; o motóO bo la akátta, v. el coche va delante. Pret. aká tyi, akátessi. akátyi, pret. v. o akátta ; e eos si - el caballo fue delante. akea, v. atarse, endurecerse. Pret. akei, akeseei; n la sélla o - me endurezco mucho. akeem, pret. v. o akella ; n - até para alguien, o ataste para alguien, a - ató para alguien, to - atamos para alguien, \0 atasteis para alguien, ba - ataron para alguien. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('akio', 's.', NULL, NULL, NULL, NULL, 'sing. réprobo, crítica. condena. Cl. 7. akka, v. atar, ligar, liar, enfardar; 0-etebá endurecer el corazón, aguantar; - e ete báo endurece tu corazón. - e etebáo ¡aguanta!, o - e riakko endurecer el incienso natural. casti gar. Pret. akki, akessi. akki, pret. v. o akka ; ti etébbáIÍ1 mi ánimo está bajo, mi corazón está atado. akkia, v. atar para, ligar para. Pret. akiia, akie siia; n la - ato para, ligo para, o la - atas para, ligas para, a la - ata para, liga para, etc. akóIea, v. desligarse, desatarse. Pret. akólei, akóleseei; ti póríi e lá - la cabra se desata. 62 / akólei akólei, pret. v. o akólea ; e setyi si - el antílope se desató. akólesei, pret. v. o akólea ; e nabba e - el animal se desataba akiilla, v. desatar, desligar, desembalar. Pret. akoom, akuessi; n la - o bO''Ml desato mi fardo', NULL, 'o fóppa', 'Fuente: bubi-español', 'import-script'),
 ('ákóó', 'interj.', NULL, NULL, NULL, NULL, '¡oh!, ¡mil gracias!, ¡enhorabuena! akiiiim, pret. v. o akolla ; m bo - o bo''e desaté el fardo. ákóra, v. perjudicar. Pret. ákória, ákóresiia. T b. o hákóra. ákóresiia, pret. v. o ákóra ; o le - la e nokonokko o me perjudicabas con tu barullo. ákória, pret. v. o ákóra ; o wallá bo a bihó bo - e eriia el grupo de los niños traviesos perjudicó al pueblo. akuessi, pret. v. o akolla ; e epo roporo e - a batyelemán el guardia desataba a los presos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('akupí', 's.', NULL, NULL, NULL, NULL, 'pl. a) ofensas, afrentas. b) faltas de res peto, desobediencias. Cl. 6. Tb. apukké', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 5 (entradas 101 a 125)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('alá', 'prep.', NULL, NULL, NULL, NULL, 'por; -Ruppé! ¡por Dios!', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('alabba', 's.', NULL, NULL, NULL, NULL, 'pl. las cosas; -Iá batyo las cosas de las personas, - lá Ruppé las cosas de Dios; Tb. apa rece bajo las formas labba de la Clase 6b, elabba de la Clase 7, bilabba de la Clase 8; e bilabba biá batyo las cosas de la gente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('alaiitya', 'adv.', NULL, NULL, NULL, NULL, 'primero, antes; alaba - lo primero, las primeras cosas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('alasubá', 'adv.', NULL, NULL, NULL, NULL, 'último, por último ale, suf. adv. también; 010 botyo - esta persona también. Tb. ae', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('álle', 'adv.', NULL, NULL, NULL, NULL, 'también. Se utiliza sin morfema de CIa se: 010 botyo - ésta es una perso na también, etc. alo, 1. adv. así, de esa manera; - kálo to la na''allá de esa manera lo queremos. 2. adj. dem. ese, esa, eso. Concuerda con las palabras de la Cl. 6b; -Iab ba esas cosas, - la tyi labé eso no está mal, -la tyi lelle eso no está bien, -la pá''o sá eso puede ser. álo, mor{. adv. delante, delante de; belló boie ponte delante del señor. alolammaa, loe. conj. todo eso, por eso mismo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('alole', 'adv.', NULL, NULL, NULL, NULL, 'amén, así sea', NULL, 'alosse', 'Fuente: bubi-español', 'import-script'),
 ('alosse', 'adv.', NULL, NULL, NULL, NULL, 'amén, así sea. Se utiliza en ambientes rituales. así es, está bien. ám, prono pos. mío; 010 botyo kó - IkóaalÍl] esta persona es mía', NULL, 'alole adv', 'Fuente: bubi-español', 'import-script'),
 ('ameme''e', 'S.', NULL, NULL, NULL, NULL, 'pl. machos cabríos. Cl. 6. Tb. abebeppu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ametya', 'S.', NULL, NULL, NULL, NULL, 'pl. bufones, cómicos, humoristas, payasos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ammaa', 'morf.', NULL, NULL, NULL, NULL, 'adj. todo/s; a batyo -bá búbiia todas las personas huyeron', NULL, 'baubbaa', 'Fuente: bubi-español', 'import-script'),
 ('ammása', 'S.', NULL, NULL, NULL, NULL, 'pl. jefes, patrones, amos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('amuetye', 'S.', NULL, NULL, NULL, NULL, 'pl. 1. danzas bubis de los espíritus barekaita. 2. cohe siones. Cl. 6. auaan, pret. V. o ananna ; to''a ba- o nos conocimos, \O''a ba - o o loa IuIlé os conocisteis el año pasado. ananessi, pret. V. o ananna ; to ba - o nos conocíamos, to ta ba - o no nos conocíamos. ananna, V. conocerse. Pret. anaan, ananessi; to ba - nos conocemos. apelam / 63 anelessi, pret. v. o anella ; n - yo sabía para, o - tú sabías para, a - él sabía para, to - noso tros sabíamos para, 10 - vosotros sa bíais para, ba - ellos sabían para. anella v. saber para; con}. preso n-yo sé para, o 1 - tú sabes para, a 1 - él/ella sabe para. Pret. aneri, anelessi. aneri, pret. v. o anella ; 010 botyo n ta bo - Iabba esta per sona no sé nada de ella. anessi, pret. v. o anna ; o opénera - e bilabba bimmaa el autor sabía todas las cosas. anessi, pret. v. o anná ; n prensaba, o - prensabas, a prensaba, to - prensábamos, lo - prensabais, ba - prensaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ankítya', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. pañuelo. . anna, v. saber. conocer; conj. preso n yo sé, o - tú sabes, a - él/ella sabe, etc. ; preso neg. no conozco a esta per sona, desconozco a esta persona n ta bii aam iilo biityii. Pret. aan, anessi. anná v. prensar. exprimir. apretar. Pret. anní, anessi. anní, pret. v. o anná ; n prensé, 0- prensaste, a - prensó, tii - prensamos, 10 - pren sasteis, ba - prensaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('anno', 's.', NULL, NULL, NULL, NULL, 'def. suelo, piso; itá - siéntate, siéntate. 2. adv. aba jo, en el suelo. anno, prono vuestro, vuestra; o botyii - vuestro pariente, e raatyé r - vuestra cama', NULL, 'ahailo, ahoilo', 'Fuente: bubi-español', 'import-script'),
 ('aó', 'adj.', NULL, NULL, 'Cl. 1', NULL, 'pos. nuestro, a; o biityo - nuestra persona, nuestro pariente. Concuerda con las palabras de la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aossa', 'adv.', NULL, NULL, NULL, NULL, 'antes, antaño, al principio, con anterio ridad, primeramente', NULL, 'aotya', 'Fuente: bubi-español', 'import-script'),
 ('aotya', 'adv.', NULL, NULL, NULL, NULL, 'antes, antaño, al principio, con anterio ridad, primeramente', NULL, 'aossa', 'Fuente: bubi-español', 'import-script'),
 ('apaanya', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pl. españoles. . Tb. apanná', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apaasí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. Españas. . apaelessi, pret. v. o apaella ; m bii - ii biityii kóri a tyí''a pa''o atya o bo''e bo áí yo ayudaba a la persona porque no podía levantar su carga. apaella, ayudar a levantar. Pret. apaeri, apaelessi. apaeri, pret. v. o apaella ; o boie a - ii waísso áí el hombre ayudó a levantar algo a su mujer. apála, v. abrazar. rodear, cercar; con}. preso n-yo abrazo, o 1 - tú abrazas, a 1 - él/ella abraza. Pret. apári, apálessi. Tb. - bi''o abra zar. apálessi, pret. v. o apála ; n - abrazaba, o - abrazabas, a - abrazaba, to - abrazábamos, lo - abrazabais, ba - abra zaban', NULL, 'o asaala', 'Fuente: bubi-español', 'import-script'),
 ('apanári', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pl. españolas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apanná', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'pl. españoles. . Tb. apaanya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apappá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. alas. . -be sinorí las alas del pájaro; 010 boláe okí este chico es atrevido', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apapupappu', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. llamaradas. . apári, pret. v. o apála ; n - abra cé, ii - abrazaste, a - abrazó, tii - abrazamos, lo - abrazasteis, ba - abrazaron. apatessi, pret. v. o apatta ; n rascaba, o - rascabas, a rascaba, tii - rascábamos, lo - rascabais, ba - rascaban. apatta, v. rascar. raspar. arañar. firmar; n-e sebám firmo el papel. apattyi, apatessi. apattyi, pret. v. o apatta ; n rasqué, o - rascaste, a rascó, to - rascamos, 10 rascasteis, ba - rascaron', NULL, 'o sapat tao Pret', 'Fuente: bubi-español', 'import-script'),
 ('apatyáballá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. hablantes, comunicantes. . ', NULL, 'tóritór', 'Fuente: bubi-español', 'import-script'),
 ('ape''u', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. plantas nuevas, retoños. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 6 (entradas 126 a 150)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('apeám', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. retribuciones, pagas, emolumentos, beneficios, ganancias, pensiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apelam', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. necesidades, carencias. . MI apclari', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apelari', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. rameras, prostitutas, mujeres lasci vas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apeleri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. 1. necesidades, deseos. 2. personas caprichosas. . Tb. biilerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apelle', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. rameros, prostitutos, mujeriegos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apello', 's.', NULL, NULL, NULL, NULL, 'pl. puerta, cierre. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apello', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. burlones, bufones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apelló', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. fiestas, festejos, festividades. ; a apelló bá e eriia las fiestas del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apénera', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. autores, fabricantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apénna', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. fabricantes, hacedores. . Tb. abáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apepáa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. documentos, escritos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apeppa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. pintores. blanqueadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apeppe', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. telarañas. mallas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apera', 's.', NULL, NULL, NULL, NULL, 'pl. tiempos para atar las guías de los ñames. Cl. 6. apessi, pret. v. o appa ; n - rodeaba, o - rodeabas, a - rodeaba, to rodeábamos, 10 - rodeabais, ba - rodeaban. apessi, pret. v. o appa ; o bollá a - el niño mamaba, to - nosotros mamábamos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apetyapetyá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. entrepiernas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apétyoo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. puntales, apuntalamientos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('api''e', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. pájaros carpinteros. . ápíesiia, pret. v. o áppia ; bó botyíó m bo o bollá anoche amamantaba al niño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apippa', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. dictadores, tiranos. Cl. 2. Apo, antrop. que se refiere a la pinza del cangrejo o al asa. Se localiza en Basakato de la Sagrada Familia', NULL, 'mmatta', 'Fuente: bubi-español', 'import-script'),
 ('apo', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. asa. ', NULL, 'eappo', 'Fuente: bubi-español', 'import-script'),
 ('apóbba', 's.', NULL, NULL, NULL, NULL, 'pl. burlas, desprecios. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apollá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. piernas. patas. ; -bato piernas largas, zancudo. Tb. aponná', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('aponná', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. piernas. patas. ; -bato piernas largas, zancu do. Tb. apollá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apoporera', 's.', NULL, NULL, NULL, NULL, 'pl. llanos, llanuras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apoppo', 's.', NULL, NULL, NULL, NULL, 'pl. árboles de la papaya. Cl. 6', NULL, 'ipoppo', 'Fuente: bubi-español', 'import-script'),
 ('apotobílla', 's.', NULL, NULL, NULL, NULL, 'pl. palmas reales. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 7 (entradas 151 a 175)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('apotokkí', 's.', NULL, NULL, NULL, NULL, 'pl. portugueses. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apotoríbbo', 's.', NULL, NULL, NULL, NULL, 'pl. espíritus que se expresan en español o en pidgin english. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apottá', 's.', NULL, NULL, NULL, NULL, 'pl. las bases de las palmeras datileras o de cualesquiera palmeras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apotto', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. blancos, personas blancas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apotto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. herbáceas trepadoras de la pimienta negra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apowári', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. madres criadoras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('appa', 'adj.', NULL, NULL, NULL, NULL, 'numo dos. Concuerda con los nombres de las Clases 2 y 6; batyo be - dos personas, dos camas. baatyé be appa, v. rodear, cercar; conj. preso n la - yo rodeo, o I - tú rodeas, a I - éVella rodea. Pret. appi, apessi. áppa, v. mamar; o bOllá a la - el niño mama. Pret. áppi, ápéssi', NULL, 'o nappá', 'Fuente: bubi-español', 'import-script'),
 ('appé', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. bulto de las fibras de los dátiles de la palmera. hollejo seco, yesca. . appi, pret. v. o appa ; n - rodeé, o - rodeaste, a- rodeó, to rodeamos, lo - rodeasteis, ba - rodearon. áppi, pret. v. o áppa ; n - mamé, 0- mamaste, a mamó, to mamamos, lo mamasteis, ba mamaron. áppia, v. amamantar. alimentar a un niño con la leche materna; conj. preso n-o bollá doy de mamar al niño; na o bol lá a la bé''a - bO amamanté, o - amamantaste, a - amamantó, to - amamantamos, ) i j - amamantasteis, ba - amamantaron. apuaam, pret. v. o apualla ; 010 botyo a le - esta persona me echó en cara, me interpeló', NULL, 'o nappiá', 'Fuente: bubi-español', 'import-script'),
 ('apuaera', 's.', NULL, NULL, NULL, NULL, 'pl. atajos, desvíos. Cl. 6. apualessi, pret. v. o apualla ; 010 botyo a le - esta persona me echaba en cara, me interpelaba. apuaUa, v. echar en cara, interpelar a alguien; 010 botyo a la le - esta per sona me echa en cara algo. Pret. apuaarn, apualessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apueri', 's.', NULL, NULL, NULL, NULL, 'pl. salidas. Cl. 6. Tb. apúla, apurí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apúJa', 's.', NULL, NULL, NULL, NULL, 'pl. salidas, partidas. Cl. 6. lb. apueri, apuri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apuJábosso', 's.', NULL, NULL, NULL, NULL, 'pl. huéspedes, visitas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apuJákke', 'adj.', NULL, NULL, NULL, NULL, 'pl. extranjeros, oriundos de otros países, de allende los mares. Cl. 2. Tb. bapulákke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apukké', 's.', NULL, NULL, NULL, NULL, 'pl. a) ofensas, afrentas. b) faltas de respe to y/o consideración, desobediencias. c) desdenes. Cl. 6. Tb. akupí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('apuppu', 's.', NULL, NULL, NULL, NULL, 'pl. serbales. árboles de Navi dad. Cl. 6. Tb. baopo. apúríi, 1. inter}. érase una vez. Se trata de la fór mula que se emplea al principio de la narración de un cuento. Debe utilizarse con aheríi; - ahe ríi, waísso la boie. . . érase una vez, una mujer y un hombre. . . 2. salidas. 3. oriundos. els. 2 y 6. Tb. a purí. Aqueriako, antrop. formado por el verbo o akka y el sustantivo determinado e riakko. Significa "endureci miento del incienso natural". Debería escribirse Akeriako. Se localiza en Bososo. ará, v. enviar, mandar, transmitir; n la ará boat ta yo envío un mensaje. Pret. aria, aresiia. lb. o senáera. * o - tyoom avergonzar. lb. o oráa. area v. nivelar, allanar; o - e raatyé hacer la cama. desplegar; n la - o bokuUa yo despliego la manta. Pret. arei, aresei. arei, pret. v. o area ; elo ebari n ri - e raatyé esta mañana hice la cama', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('arélle', 's.', NULL, NULL, NULL, NULL, 'sing. estado de soltería tras haber mantenido una relación amorosa. mujer solte ra. Cl. 7 ; 010 boláwáari e esta chica está soltera. arera, v. mandar, enviar o remitir algo a alguien; n - botyo boataboatyo remito una carta a al guien. lb. o oreerá. Pret. areriia, areresiia. areresiia, pret. v. o arera ; e elottyí e - a batyo lokko el siervo remitía cosas a la gente. areriia, pret. v. o arera ; o bollánÍ a 1 - bOaUa mi hijo me envió una noticia. aresei, pret. v. o area ; o - e raatyé hacías la cama. aresiia, pret. v. o ará ; o bobel lero - e be''e la e euláúla mi hermano enviaba las cargas en coche', NULL, 'senáeresiia', 'Fuente: bubi-español', 'import-script'),
 ('arí', 'morf.', NULL, NULL, NULL, NULL, 'adj. izquierdo, izquierda. Cl. 7 ; ebo - lado izquierdo; ibo bi - lados izquierdos. 2 pret. v. o alláa ; a batyo ba - a lokko lábbo las personas llevaron sus cosas. aria, pret. v. o ará ; a le - tyoom me envió una vergüenza', NULL, 'senáeriia', 'Fuente: bubi-español', 'import-script'),
 ('arikueri', 's.', NULL, NULL, NULL, NULL, 'pl. oficinas de denuncia. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('arÍolla', 's.', NULL, NULL, NULL, NULL, 'sing. mujer de avanzada edad. anciana. Cl. 7', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('asáityi', 's.', NULL, NULL, NULL, NULL, 'sing. mes de enero. También aparece como sáityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('asámoóte', 's.', NULL, NULL, NULL, NULL, 'sing. mes de diciembre. También aparece como sámoóte', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('asubá', 'adv.', NULL, NULL, NULL, NULL, 'lo último, al fin, finalmente. atá, morf adv. debajo de; n ka lokká''é raatyé - mezclé, o - mezclaste, a mezcló, to - mezclamos, )ij mezclasteis, ba - mezclaron. atala, v. romper. desgarrar. Pr et. atari, atálessi. 66 / átála átála, v. romper con, quebrar con. Pret. átám, átálessi. atálessi, pret. v. o atala ; n rompía, o - rompías, a rompía, to - rompíamos, lo - rompíais, ba - rompían. átálessi, pret. v. o átála ; n - rompía con, o - rompías con, a - rompía con, to - rompíamos con, 10 - rompíais con, ba - rompían con. átám, pret. v. o átála ; n - rompí con, o - rompiste con, a - rompió con, to - rompimos con, lo - rompisteis con, ba - rompieron con. '' atanessi, pret. v. o atanna ; n - mezclaba, 0- mezcla bas, a - mezclaba, to - mezclábamos, lo - mezclabais, ba mezclaban. atanna, v. mezclar, amalgamar, juntar. Pret. ataam, atanessi. atari, pret. v. o atala ; n-o luua 10 bOyolla rompí la ropa del abuelo. atári, pret. v. o átála ; n - rompí con, 0- rompiste con, a - rompió con, to - rompi', NULL, 'atálessi', 'Fuente: bubi-español', 'import-script'),
 ('atée', 's.', NULL, NULL, NULL, NULL, 'sing. lado, parte, mitad, trozo, lugar. Cl. 7 ; e_ el vaso de coco se rompió, o bOtébbá l Í 1 bo - se rompió mi corazón. áteseei, pret. v. o átéa ; a batté ba - la e pullá los árboles se rompían con la tormenta. atessi, pret. v. o átta ; a batyelemán ba - a bate los presos rompían las piedras', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('atoo', 's.', NULL, NULL, NULL, NULL, 'sing. tarde. Cl. 7 ; e á pooi ha llegado la tarde. átta, v. romper, rajar, quebrar, partir, tajar; e emasÍÍn e lá átta a bate la máquina rompe las piedras. Tb. o - ballá decir palabrotas. Pret. atyíi, átessi. atya, v. levantar. alzar, elevar; conj. preso o la - yo levanto, o la - tú levantas, a la él/ella levanta. Pret. atyi, atyessi. atyáála, V. prni. asombrarse. sorpren derse. pasmar. Pret. atyáári, atyálessi; conj. preso oe - yo me sorprendo, we - tú te sorprendes, e - él/ella se sorprende. atyaam, pret. V. o atyalla ; o - ayudé a levantar algo, o - ayudaste a levantar algo, a - ayudó a levantar algo, to - ayudamos a levantar algo, 10 - ayudasteis a levantar algo, ba - ayudaron a levantar algo. atyáám, pret. V. o atyánna ; o ka - sóté me sorprendí mucho. atyáári, pret. V. o atyáála ; oe - sóté me sorprendí mucho. atyalessi, pret. V. o atyalla ; o - ayudaba a levantar algo, o - ayudabas a levantar algo, a - ayudaba a levantar algo, to - ayudábamos a levantar algo, 10 - ayu dabais a l', NULL, 'o assa', 'Fuente: bubi-español', 'import-script'),
 ('atyátya', 'S.', NULL, NULL, NULL, NULL, 'pl. llanura, planicie. Cl. 8. atyelesiia, pret. V. o atyella ; n botyo yo asistía a alguien, o - botyo asistías a alguien, etc. atyelesiia, pret. V. o atyera ; to hessi la obáám to - e biruppú cuando íbamos a la finca separábamos las hierbas. atyella, V. asistir. ayudar; conj. preso n - botyo yo asisto a alguien, yo ayudo. Pret. atyemma, atyelesiia. atyemma, pret. V. o atyella ; m ba - a bapulákke asis tí a los oriundos de allende los mares. atyemma, pret. V. o atyera ; n - separé, 0- separas te, a - separó, to - sepa ramos, lo - separasteis, ba separaron. atyera, v. separar. dividir. despejar un camino obstruido por objetos; con}. preso n la - yo separo, o la - tú separas, a la - él/ella sepa ra, etc. Pret. atyemma, atyelesiia. atyessi, pret. v. o atya ; n - levantaba, o - levantabas, a levantaba, to - levantába mos, lo - levantabais, ba - levantaban. atyi, pret. V. o atya ; n-o botté levanté el árbol. o - e bimpa levantaste los asientos, a - a bollá levantó a los niños, to - e bekutt', NULL, 'hepubiesiia', 'Fuente: bubi-español', 'import-script');

-- Lote 8 (entradas 176 a 200)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('atyí', 'adv.', NULL, NULL, NULL, NULL, 'más, de nuevo, otra vez; o botyo a la poa - esta persona vuelve de nuevo. atyíi, pret. v. o átta ; o bOllá - o buátyiÓl el niño rompió mi reloj. aúba, V. refunfuñar; o boríbáa a la - sóté el extranjero no hace más que refunfuñar; sei we''a aúbe deja de refunfuñar. Pret. aúbi, aúbessi. aúbalessi, pret. v. o aúballa ; m bo - o bokoé regañaba al bracero. aúballa, v. regañar, refunfuñar; we le aúba lIe! no me regañes, no me fastidies. Pret. aúbam, aúbalessi. aúbam, pret. V. o aúbaIla ; o bue''iáa a - a bakuerakueráa el maestro regañó a los alumnos. aúbessi, pret. v. o aúba ; lello ornmaa a - o boobbe todo el día de hoy refunf uñaba el pescador. aúbi, pret. v. o aúba ; n - refunfuñé, o - refunfuñaste, a - refunfuñó, to - refunfuñamos, 10 refunfuñasteis, ba - refunfu ñaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('awéi', 'S.', NULL, NULL, NULL, NULL, 'pl. fallecimientos, muertes, defunciones, f unerales. Cl. 6. Tb. abuéi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bá', 'prep.', NULL, NULL, 'Cl. 1', NULL, 'sobre; o bomma - sobre la ceiba. ba''a, 1. S. pl. playas, costas del mar, arenales. Cl. JO. 2. -, V. desbas tar, tratar la palmera de aceite para que dé vino de palma. hacer vino de palma; conj. preso na o obílla trato la palmera, n la - o obílla Úl yo desbasto mi palmera, o la - o obílla tú tratas la palmera, a la - o obílla él/ella trata la palmera. Pret. ba''i, ba''essi', NULL, 'pua', 'Fuente: bubi-español', 'import-script'),
 ('ba''abba', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. repartidores. ; a - ba e eriia wela los repartidores del poblado', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''abbo', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. regalos, donaciones. . Tb. batyuho, betuho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''asa', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. puntal. nombre del pico de Malabo, el más alto de la isla de Bioko, en Gui nea Ecuatorial. . ba''essi, pret. V. o ba''a ; m - o obílla Úl ele atoo trataba mi pal mera de aceite esta tarde. ba''i, pret. V. o ba''a ; o obílla m bO - la palmera lo traté', NULL, 'se conoce por obáasa', 'Fuente: bubi-español', 'import-script'),
 ('ba''ó', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. cañaverales. cañas. lugar donde abundan las cañas de azúcar. ', NULL, 'maaó', 'Fuente: bubi-español', 'import-script'),
 ('ba''obba', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas que pagan, pagadoras. ; a - ká ba''otya las personas pagadoras son las primeras', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''olla', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. compradores, clientes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''ossi', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas que cuidan de los caballos, jinetes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''otya', 'adj.', NULL, NULL, NULL, NULL, 'pl. primeros, primeras. Concuerda con los nombres de las Cls. 2 y 6. Cfr. baotya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''u', 'S.', NULL, NULL, 'Cl. 6', NULL, 'def vino de palma, vino en general. . Tb. ma''u', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''ú', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. tartamudos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('ba''uá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. suertes, dichas. . 70 / hÍlll hÍlll, 1 1''. celebrar; tii la - ripelló el carpintero fabrica asientos. hacer, efectuar. construir, edificar; tii la - e tyúbbo áú. obrar; ej. 0 atyí reconstruir, reedificar. Pret. bái, báéssi. 2. s. "l. años. Cl. 6 ; ej. loa \Ohe leliz año nuevo, - appa dos años, - batá tres años, -bale cuatro años, - bato cinco años, -be bú diez años, -be ó quince años, rátyilla veinte años', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baa''o', 's.', NULL, NULL, NULL, NULL, '1''1. excrementos, heces. Cl. 6. Tb. toom', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baabba', 's.', NULL, NULL, NULL, NULL, '1''1. repartidores, distribuidores. Cl. 2', NULL, 'bokaaba', 'Fuente: bubi-español', 'import-script'),
 ('baabbi', 's.', NULL, NULL, NULL, NULL, 'pl. repartos, distribuciones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baabbí', 's.', NULL, NULL, NULL, NULL, 'pl. culpabilidades. culpables. CIs. 6 y 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baakio', 's.', NULL, NULL, 'Cl. 5', NULL, '1''1. dictaduras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baakka', 's.', NULL, NULL, NULL, NULL, 'pl. 1. tumores. abscesos inter nos. Cl. 6. 2. menús, platos de comida. Cl. 6. Riakka se utiliza como nombre de pila', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baakkí', 's.', NULL, NULL, NULL, NULL, 'pl. condenas, castigos, sentencias. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baakko', 's.', NULL, NULL, NULL, NULL, 'pl. enlaces, puntales. inciensos naturales. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baakko', 's.', NULL, NULL, NULL, NULL, 'pl. multas, sanciones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baalá', 's.', NULL, NULL, NULL, NULL, '1''1. manos. elase 6 ; -batá tres manos, trípode. Tb. baallá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baallá', 's.', NULL, NULL, NULL, NULL, '1''1. manos. Cl. 6. Tb. baalá', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 9 (entradas 201 a 225)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('baam', 's.', NULL, NULL, NULL, NULL, 'pl. culturas, saberes. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('báám', 's.', NULL, NULL, NULL, NULL, 'sing. finca, huerto ; na hella o - voy a la fmca. Cl. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baambó', 's.', NULL, NULL, NULL, NULL, 'pl. naturales de Annobón, annoboneses, ámbos. Cl. 2. Tb. bahahá. baan, pret. v. o banna ; n - mentí, ii - mentiste, a - mintió, to- mentimos, \0- men tisteis, ba - mintieron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baappí', 's.', NULL, NULL, NULL, NULL, '1''1. lactancias, amamantamientos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baari', 's.', NULL, NULL, NULL, NULL, 'pl. cosechas de dátiles. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baátta', 's.', NULL, NULL, NULL, NULL, 'pl. personas que rompen, rompedoras. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baatte', 's.', NULL, NULL, NULL, NULL, 'pl. pedrizas, terrenos pedregosos, pedre gales. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baatuppo', 's.', NULL, NULL, NULL, NULL, 'pl. clanes de los repartidores. personas quejosas y camorristas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baatyé', 's.', NULL, NULL, NULL, NULL, 'pl. lechos, camas, catres. Cl. 6. Tb. basse', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baatyi', 's.', NULL, NULL, NULL, NULL, 'pl. divisiones, separaciones, entradas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baatyó', 's.', NULL, NULL, NULL, NULL, 'pl. personas que recogen ostras. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('babari', 's.', NULL, NULL, NULL, NULL, 'pl. bebedores. Cl. 2. Tb. baebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Babasasa', 'antrop.', NULL, NULL, NULL, NULL, 'fonnado a partir de mbamba y a sásá. Se atribu ye a las personas que imponen respeto. Está loca lizado en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Babé', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir del tema adjetival -bé. 8abé significa "per sonas desalmadas o malas". Aparece también escrito Vabé y está localizado en Bocoricho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Babeko', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del ténnino ribeko. Se aplica a aquellas personas muy dadas a alabar a los demás. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Babo', 'antrop.', NULL, NULL, NULL, NULL, 'que proviene de ri ''abo y éste del verbo o abba. Significa "regalos, dona ciones". Debería escribirse 8a''abbo. Está locali zado en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('babora', 's.', NULL, NULL, NULL, NULL, 'pl. descendencias, herederos. Cl. 2. badyána, s. pl. mujeres, esposas. Cl. 2. Tb. baísso, barí, mára', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baebba', 's.', NULL, NULL, NULL, NULL, 'pl. 1. vinateros, bebedores de vino de palma. 2. lugares de festejos. bodegas, bares. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baebba', 's.', NULL, NULL, NULL, NULL, 'pl. descansos. paradas. Cl. 6. Tb. bakibba. báelessi, pret. v. o báélla ; n - hacía algo para alguien, o - hacías algo para alguien, a - hacía algo para alguien, to - hacía mos algo para alguien, lo - hacíais bahNneri /71 algo para alguien, ba - hacían algo para alguien; o boríbáa m bii - a abúkku ba áí al extranje ro le hacía sus papeles. báella, v. hacer algo para alguien; n la - o oberíi lÍJ. tyóbbo hago una casa para mi madre. Pret. báem, báelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baello', 's.', NULL, NULL, NULL, NULL, 'pl. personas que curan. médicos. Cl. 2. Tb. bailloéllo, bokútta, bokítta. Baeló, an/rop. plural de bOello o bOilloé/lo "perso na que cura, médico". Se refiere a las personas que ponen paz entre personas o familias en con f licto. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baeloéllo', 's.', NULL, NULL, NULL, NULL, 'pl. personas que curan. médi cos. Cl. 2. Tb. bokútta, baif/liJ, bokítta. báem, pret. v. o báella ; a batyo ba tá okkíi ba tyóbbo e kobinna a ba kúbba las personas que no tienen casa el gobierno les hizo algunas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baeppa', 's.', NULL, NULL, NULL, NULL, 'pl. siembras, sembrados. Cl. 6 ; a - ba e esubba las siembras de la época lluviosa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baeppo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. banqueros. . báessi, prel. v. o báa ; o loa lullé m - e tyóbbo lÍJ. el año pasado construía mi casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baesso', 's.', NULL, NULL, NULL, NULL, 'pl. plataformas. aceras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baete', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. personas que imponen normas y reglas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 10 (entradas 226 a 250)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('baetello', 's.', NULL, NULL, NULL, NULL, 'pl. transeúnte. peregrino. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baetta', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. caminantes, paseantes. . Tb. baetto ; a - ba eri e teIle wela los paseantes llenan el camino', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baetto', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. caminantes, paseantes. . lb. baetta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baetuetto', 's.', NULL, NULL, NULL, NULL, 'pl. pechugas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baetya', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. patizambo. personas que pro mueven el crecimiento Cl. 2 y Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baetyá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. bizqueras, bizcos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baetyi', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. amigos íntimos, compañeros. . 2. distancias, recorridos. 3. lugares donde se reúnen los ami gos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baetyo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. vías, raíles. ; a - bá e rikotye las vías del tren', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahabbáa', 's.', NULL, NULL, 'Cl. 6', NULL, 'del pl. grasa, manteca, tocíno. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahakko', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. conexión. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahattá', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. reinos, palacios. parlamen tos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahe', 'adj.', NULL, NULL, NULL, NULL, 'nuevos, nuevas. Concuerda con las palabras de las Cls. 2 y 6; boIlá - niños nuevos, balaperi - cocinas nuevas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahebbo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. descansos, vacaciones. ocios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahekka', 's.', NULL, NULL, NULL, NULL, 'pl. modelos. cigarras. mariposa. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahekkáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. anfitriones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahelá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. moreras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baheleri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. recursos, súplicas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahella', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. remendadores. sastres. . 2. lugares donde se arre gla ropa. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baheperi', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. visitas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baheppo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. salas de visita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baheppoo', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. visitas, huéspedes, invitados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baheri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. rehabilitaciones, restauraciones, arreglos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahíhi', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. calambres. Cl. 6. Tb. bakiikiittó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahítáari', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. monarcas. monarquías. . Bahitari, antrop. que se refiere a una familia de gobernantes. Es un antropóni mo que se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahNneri', 's.', NULL, NULL, 'Cl. 6', NULL, 'del orina. ; e xp. quiero orinar n lo''á -. 72 / haho''o haho''o, . I'' d, , /, , / algodón. Cl. 6. bahóhüó, . 1''. 1''/. arbustos de hojas verdes, grandes y amargas que son utilIzadas como ingredientes dc algunas recetas culinarias de la gastronomía bubi. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 11 (entradas 251 a 275)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bahNtá', 's.', NULL, NULL, 'Cl. 6', NULL, 'del pl. aceite de palma, aceite de oli va. crema. . lb. biitá, butJí, mitJí, matyátya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahokko', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. babosos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahóle', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. 1. amores, amabilidades, simpatías. 2. personas queridas y amadas. Cls. 6. "', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahóra', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. regresos, vueltas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahori', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. libertades, desligamientos. ; a -ba e ribotyo las libertades populares. Bahosí, antrop. plural de bij''ossi. Significa ''''jinetes o cuidadores de caballos". Está localizado en Sampaka o Biloora', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahóteri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. reveses. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahótóttó', 'adj.', NULL, NULL, NULL, NULL, 'blancos, blancas. Concuerda con las palabras de las Cls. 2 y 6; batyo - personas blancas, baatyé - camas blancas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahótyi', 's.', NULL, NULL, NULL, NULL, 'pl. objetos o cosas transparentes y bri llantes. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahua', 's.', NULL, NULL, NULL, NULL, 'del pl. tiempo de arrancar las hierbas, los ñames, etc. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahúa', 's.', NULL, NULL, NULL, NULL, 'pl. ejércitos, batallones, huestes. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahuee', 's.', NULL, NULL, NULL, NULL, 'pl. familias, parentelas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahuella', 's.', NULL, NULL, NULL, NULL, 'pl. consejeros, orientadores. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahuera', 's.', NULL, NULL, NULL, NULL, 'pl. orientaciones, consejos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahúla', 's.', NULL, NULL, NULL, NULL, 'pl. hileras de hormigas rojas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahüllá', 's.', NULL, NULL, 'Cl. 6', NULL, 'árboles de la resina. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bahúo', 's.', NULL, NULL, NULL, NULL, 'pl. envueltos, envoltorios, paquetes, bultos. nidos. cartuchos, balas. Cl. 6. Tb. benná. bái, pret. v. o báa ; n construí, o - construiste, a - construyó, to - construimos, lo - construisteis, ba - construyeron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bai''o', 's.', NULL, NULL, NULL, NULL, 'pl. personas que marcan o señalan. Cl. 2. Tb. mai''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baía', 's.', NULL, NULL, NULL, NULL, 'pl. viajeros, pasajeros. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baiálla', 's.', NULL, NULL, NULL, NULL, 'pl. ayudantes. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baie', 's.', NULL, NULL, NULL, NULL, 'pl. padres, hombres. señores, caba lleros. Cl. 2 ; a -ro mis padres', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baiebbe', 's.', NULL, NULL, NULL, NULL, 'pl. sopas hechas con trocitos de malanga, aceite de palma, pescado salado, etc. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baihóra', 's.', NULL, NULL, NULL, NULL, 'pl. invitados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bailá', 's.', NULL, NULL, NULL, NULL, 'de! sangre. Cl. 6. Ej. expr. 010 botyo a tyi - wela esta persona no es valiente', NULL, 'banná', 'Fuente: bubi-español', 'import-script'),
 ('Bailán', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir de bailá. Está localizado en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bailla', 'adj.', NULL, NULL, NULL, NULL, 'pl. abstinentes. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 12 (entradas 276 a 300)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('baillo', 'adj.', NULL, NULL, NULL, NULL, 'pl. personas que limpian. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bailolla', 'adj.', NULL, NULL, NULL, NULL, 'pl. limpiadores, pulidores. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bailori', 's.', NULL, NULL, NULL, NULL, 'pl. saneamientos. limpiezas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baioppé', 's.', NULL, NULL, NULL, NULL, 'pl. tíos, hermanos de la madre o del padre. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baíribbo', 's.', NULL, NULL, NULL, NULL, 'pl. espíritus guardianes. muje res que velan por alguien. protectoras. Cl. 2. Th. barírimo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baísso', 's.', NULL, NULL, NULL, NULL, 'pl. mujeres, esposas. Cl. 2. Th. badyána, barí, mára', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Baita', 'antrop.', NULL, NULL, NULL, NULL, 'plural de bOitta. Está localizado en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baitáeri', 's.', NULL, NULL, NULL, NULL, 'pl. contertulios. personas que se encuentran en algún lugar. Cl. 2', NULL, 'bitáeri', 'Fuente: bubi-español', 'import-script'),
 ('baitta', 's.', NULL, NULL, NULL, NULL, 'pl. 1. nobles, caballeros. 2. altos dignata rios, gobernadores, ministros. 3. barones; a bote los gobernadores, los ministros. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baJe', 'adj.', NULL, NULL, NULL, NULL, 'dem. aquellos, aquellas. Concuerda con los nombres de las Cls. 2 y 6; - batúkku aquellos jefes de poblado, - basakatilo aquellos basakateños', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baJebbí', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. personas muy inteligentes, sabios. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bakabo', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a la malanga bubi grande, generalmente utilizada en las fiestas tra dicionales. También significa "ofrecimiento, acción de repartir". Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakakatyó', 's.', NULL, NULL, NULL, NULL, 'pl. desórdenes, desconciertos, incertidumbres. Cl. 6. bakuamá / 73', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakakí', 's.', NULL, NULL, NULL, NULL, 'pl. ruinas, desperdicios. Cl. 6. Tb. bakappi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakákka', 's.', NULL, NULL, NULL, NULL, 'pl. cangrejos pequeños de mar. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakamosa', 's.', NULL, NULL, NULL, NULL, 'pl. jóvenes y bellas doncellas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakanápette', 's.', NULL, NULL, NULL, NULL, 'pl. 1. masas blandas y pegajosas 2. gran cantidad de heces blandas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakappi', 's.', NULL, NULL, NULL, NULL, 'pl. destrucciones, destrozos, ruinas, despilfarros, derroches. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakará', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. lugares de blancos. Cl. 6. 2. blancos, europeos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakarari', 's.', NULL, NULL, NULL, NULL, 'pl. mujeres blancas. Cl. 2. Tb. apotoári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakasso', 'adv.', NULL, NULL, NULL, NULL, 'deprisa, con rapidez, con celeridad. Exp. ej. to''óllá - habla deprisa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakatte', 's.', NULL, NULL, NULL, NULL, 'pl. lugares donde duermen los murcié lagos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakatto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. contadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakatto', 's.', NULL, NULL, NULL, NULL, 'pl. vasos, cubiletes. Cl. 6. Tb. tOlnpulla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakatyulIé', 's.', NULL, NULL, NULL, NULL, 'pl. personas mayores y conocedo ras de la cultura de su comunidad. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 13 (entradas 301 a 325)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bakaya', 's.', NULL, NULL, NULL, NULL, 'pl. personas que abren grandemente las piernas. Cl. 2 sing. Cl. 1 : "biikaya")', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bake''o', 's.', NULL, NULL, NULL, NULL, 'pl. pruebas, ensayos. Cl. 6 ; ha séi - bikébíke hubo muchos ensayos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakekko', 's.', NULL, NULL, NULL, NULL, 'pl. mejillas, mofletes. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakélékélée', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. animaciones, diversiones, parrandas. jolgorios, juergas, bullicios. . bakessi, pret. v. o bakkáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baketyi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. crustáceos ermitaños. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakíbba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. paradas. . Tb. baebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakírió', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. criollos, descendientes del criollo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakka', 's.', NULL, NULL, 'Cl. 11', NULL, 'pl. baúles, ataúdes, maletas. Cl. 1 0 ; ha tá séi - o tyilella a batyo ba wéi ba no había ataúdes para enterrar a los muertos. bakkáa, v. revolver, agitar. mirar a diestro y siniestro. Pret. bakkí, bakessi. bakkí, pret. v. o bakkáa ; e húbbé e - na e te olláa a lokko el ladrón miró a dies tro y siniestro antes de llevar las cosas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bákko', 's.', NULL, NULL, 'Cl. 11', NULL, 'pl. 1. cielos, firmamentos. Cl. lO. 2. s. sing. bandido, vago, ban dolero. Cl. 9', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bako''ó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. 1. cañas bravas. cañaverales. juncos. . 2. cañas de azúcar. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakobaera', 's.', NULL, NULL, NULL, NULL, 'pl. imitadores, copiadores. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakobbe', 's.', NULL, NULL, NULL, NULL, 'pl. árboles del plátano. Cl. 6', NULL, 'makobbe', 'Fuente: bubi-español', 'import-script'),
 ('bakoé', 's.', NULL, NULL, NULL, NULL, 'pl. criados, braceros, extranjeros. Cl. 2. Tb. bakollé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakokko', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. temblores, ataques de nervio. cohesiones, uniones. . Tb. batyíbierí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakokko', 's.', NULL, NULL, NULL, NULL, 'pl. alumbrados, iluminaciones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakokoo', 's.', NULL, NULL, NULL, NULL, 'pl. cohesiones, solidaridades. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakokottó', 's.', NULL, NULL, NULL, NULL, 'pl. calambres. abscesos internos. Cl. 6. Tb. bahíhi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakolIé', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. criados, braceros, extranjeros. Cl. 2. Tb. bakoé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakookonno', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. efr. bakookoo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakookoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. Concuerda con las palabras de las Cls. 2 y 6; baribbO - pocos espí ritus, boppé - poca agua', NULL, 'bakookonno', 'Fuente: bubi-español', 'import-script'),
 ('bakotánta', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. contenedores de papeles. papeleras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakótta', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas que agrupan o reúnen. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakottí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. pañales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakotto', 's.', NULL, NULL, NULL, NULL, 'pl. pies, patadas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakótto', 's.', NULL, NULL, NULL, NULL, 'pl. coleCCIón, conjunto. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 14 (entradas 326 a 350)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bakottoáta', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. plantas del pie. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakuakuabia', 's.', NULL, NULL, NULL, NULL, 'pl. farfulleros. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakuamá', 's.', NULL, NULL, NULL, NULL, 'pl. árboles de la guayaba. Cl. 6. 74 / halwhhí halHlbhí, s IJI. finales, términos, conclusiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakumbé', 's.', NULL, NULL, NULL, NULL, 'pl. combes, ndowes. Cl. 2 (sing. el. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bakupí', 's.', NULL, NULL, NULL, NULL, 'pl. ofensas, afrentas. desobe thcncias, faltas de respeto. desdenes. Cl. 6. balabba, v. tumbarse, estar tendido supino, estar tumbado. Pret. balabbi, balabessi. balabbi, pret. v. o balabba ; n - me tumbé, o - te tumbaste, a - se tumbó, to - nos tumbamos, 10 - os tumbasteis, ba se tumbaron; n ka - estuve tumbado, o''a - estuviste tumbado, a''a - estuvo tumbado, to''a - estuvimos tumbados, lo''a - estuvisteis tumbados, ba''a - estuvieron tumbados. balabessi, pret. v. o balabba ; n me tumbaba, o - te tumbabas, a - se tumbaba, to - nos tumbábamos, 10 - os tumbabais, ba - se tumbaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balakoláko', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. trabajadores, currantes. jornaleros. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Balapá', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "cocineros". Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balapá''o', 's.', NULL, NULL, NULL, NULL, 'pl. cocineros. Cl. 2. Tb. balappí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balaperi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. cocinas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Balapo', 'antrop.', NULL, NULL, NULL, NULL, 'relacionado con Balapá. También puede traducirse por "personas que maman". Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balappí', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. cocineros. Cl. 2. Tb. balapá''iJ. balárea, v. desposarse, casarse. Pret. balárei, baláreseei; o boje la o waísso ba lá - el hombre y la mujer se desposan. balárei, pret. v. o balárea ; o boje la o waísso ba - el hombre y la mujer están casados. baláreseei, pret. v. o balárea ; a batyo ba mmalé ba - las personas de antaño se desposaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balatto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. verbos. ; a -bá etyo bjkébíke los verbos del bubi son muchos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bale''é', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. hernias. . T b. baliké', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bale''o', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. naturales de Basakato del Este. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bale''o', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. registros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balebbáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. tuertos, *invidentes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balebbó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. árboles con cuya madera se fabri can las campanas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balebboo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. discapacitados, disminuidos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balehí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. alborotadores. camorristas, molestones. . Tb. batuppiJ, banya''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baleké', 's.', NULL, NULL, NULL, NULL, 'pl. hernias. Cl. 6. Tb. bali''é', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balekia', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. organizadores, personas que diri gen u ordenan, dirigentes. 2. poblado situado a escasos kilómetros de Baney. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balekka', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. personas que se ponen en fila, per sonas dirigidas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balekku', 's.', NULL, NULL, NULL, NULL, 'pl. escondites, lugares donde se pue de ocultar algo. Cl. 6. balelessi, pret. v. o balella ; o boje Ól a le - waísso mi padre casaba a una mujer para mí, m - o billlá bulla yo esposaba una doncella para el hijo. balella, v. casar para, esposar para alguien. Conj. pres. na - yo caso para, o la - tú casas para, a la - él/ella casa para. Pret. baleri, balelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baleperíbbo', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. según las creencias bubis, se trata de personas que causan graves daños a los vivos por mediación de espíritus malignos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baleppé', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. tanatorios, morgues. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 15 (entradas 351 a 375)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('baleppo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. refugios. . baleri, pret. v. o balella ; o billlá a seílá epanná n ka bo - bulla cuando el chico estuvo en España le casé con una doncella. banebba / 75 bálessi, pret. v. o bálla ; n - me casaba con, o - te casabas, a - se casaba, to - nos casábamos, lo - os casabais, ba - se casaban. bálla v. casarse con, esposar, contraer matri monio. Pret. bári, bálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balláa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. palabras. ; a -bá o IOtó''ólló luá etyo las palabras de la lengua bubi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bállo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. hígados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balo', 'adj.', NULL, NULL, NULL, NULL, 'dem. estos, estas. Concuerda con los nombres de las Cls. 2 y 6; - batyo estas personas, - baatyé estas camas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baloari', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. inválidos, enfermos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balokalla', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. acompañantes de cama. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balokia', 's.', NULL, NULL, NULL, NULL, 'pl. hoteleros, hospedadores, alojado res. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balokka', 's.', NULL, NULL, NULL, NULL, 'pl. dormilones. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balokko', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. dormitorios. residencias, pensiones. hoteles, hostales, alojamientos. Cl. 6. balopá, 1. s. pl. personas encargadas de encender el fuego. . 2. antrop. localizado en los poblados de Rebola, Batoicopo y Baloeri', NULL, 'baloppa', 'Fuente: bubi-español', 'import-script'),
 ('baloppa', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. personas que se encargan de encender el fuego. pirómanos. Cl. 2', NULL, 'balopá', 'Fuente: bubi-español', 'import-script'),
 ('balOppá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. fabricantes del aro con el que se sube a la palmera de aceite. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('balotta', 's.', NULL, NULL, NULL, NULL, 'pl. vigilantes, guardianes, celadores. Cl. 2', NULL, 'balotyi', 'Fuente: bubi-español', 'import-script'),
 ('balotyi', 's.', NULL, NULL, NULL, NULL, 'pl. guardianes, centinelas. vigi lantes, celadores, espías. Cl. 2. bamma, 1. adj. indo algunos, algunas. Concuerda con las palabras de las Cls. 2 y 4; he - batyo hay algunas personas, ha tyi - boppé no hay algunas aguas. 2. S. pl. rocíos. Cl. 6. Tb. buMa, bUba', NULL, 'balotta', 'Fuente: bubi-español', 'import-script'),
 ('bammáloto', 'S.', NULL, NULL, NULL, NULL, 'pl. cacaoteros. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bammammabi''o', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pl. felicídades, alegrías. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bammella', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. representantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bammo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. 1. rocíos, humedades. 2. bellezas, hermosuras. . Tb. bib ba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bammotye', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. asamblearios, tertulianos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bana''í', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. prometidos, novios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banaba', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. cazadores. 2. personas rudas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banabílla', 'S.', NULL, NULL, 'Cl. 1', NULL, 'pl. bailadoras. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banaburú', 'adj.', NULL, NULL, NULL, NULL, 'pl. sabedores o conocedores de noticias o chismes. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banáka', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. pescadores. . Tb. banákánáka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banákánáka', 'S.', NULL, NULL, 'Cl. 1', NULL, 'pl. pescadores. Cl. 2. Tb. banáka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bananáa', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pl. bananas. árboles de la banana, bananos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 16 (entradas 376 a 400)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('banánna', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. abuelas, ancianas. . Tb. banoolá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banapana', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. estudiantes, alumnos. personas con conocimientos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banappe', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. ninfas, mujeres jóvenes y hermo sas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banatú''o', 'S.', NULL, NULL, 'Cl. 1', NULL, 'pl. hermanos mayores. Cl. 2. Tb. banetyi''o. Banch [bántSl, antrop. que viene probablemente del bubi bOntyí. Normalmente se conside ra un préstamo del pidgin-english. Está localiza do en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bandi', 'antrop.', NULL, NULL, NULL, NULL, 'considerado como un préstamo del pidgin-english, pero que probablemente sea Banti!', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bandyo', 'S.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas, mdividuos. . Tb. batyo, besso, betyo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bane''é', 'S.', NULL, NULL, NULL, NULL, 'de! mal de orina. Cl. 6. Tb. batyere', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bane''í', 'S.', NULL, NULL, NULL, NULL, 'pl. tomateras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banebba', 'adj.', NULL, NULL, 'Cl. 2', NULL, 'baneínos, naturales de Baney, gen tilicio de los naturales de este pueblo. Cl. 2. . 76 / halll''j hallN, IIdj. haneínos, naturales de Baney, gentili CIO dc los naturales de estc pucblo. . TIJ. banebba. bancssi, "re! v. o banna ; n - mentía, o - mentías, a 1 a banessi] mentía, to - mentíamos, 10 - mentíais, ba - mentían', NULL, 'banéí', 'Fuente: bubi-español', 'import-script'),
 ('banetta', 's.', NULL, NULL, 'Cl. 6', NULL, '1''1. filos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banetyi''o', 's.', NULL, NULL, 'Cl. 2', NULL, '1''1. hermanos mayores. . TIJ. banatú''iJ. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banooa', 's.', NULL, NULL, 'Cl. 5', NULL, '1''1. 1. consejos de ancianos. 2. senados. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('banoolá', 's.', NULL, NULL, NULL, NULL, 'pl. abuelas. Cl. 2. Tb. banánna. banoom, pret. v. o banola ; n - desmentí, o - desmentiste, a - desmintió, to - desmentimos, 10 - des mentisteis, ba - desmintieron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bantúbántú', 'adj.', NULL, NULL, NULL, NULL, 'bajos, bajas, cortos, cortas, etc. Concuerda con las palabras de las Cls. 2 y 6; batúkku - gobernantes cortos/bajos, bauppoo montañas cortas. hanuessi, pret. v. o banola ; n - desmentía, o - desmentías, a - desmentía, to - desmentíamos, 10 - des mentíais, ba - desmentían', NULL, 'bañtú', 'Fuente: bubi-español', 'import-script'),
 ('banya''o', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. alborotadores. camorristas. combatientes. . Tb. batuppiJ, balehí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baoátyera', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. oyentes, escuchantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baobaó', 's.', NULL, NULL, 'Cl. 6', NULL, '1''1. escamas. . Tb. maó máo, bakalola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('báóbáó', 's.', NULL, NULL, NULL, NULL, 'pl. escamas. Cl. 6; a - bá e tyué las escamas del pez', NULL, 'baobaó', 'Fuente: bubi-español', 'import-script'),
 ('baobbe', 's.', NULL, NULL, NULL, NULL, 'pl. marineros. pescadores. Cl. 2', NULL, 'baoobe', 'Fuente: bubi-español', 'import-script'),
 ('baobbí', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. reuniones, asambleas. Cl. 6', NULL, 'baoppí', 'Fuente: bubi-español', 'import-script'),
 ('baobbo', 's.', NULL, NULL, NULL, NULL, 'pl. premios, beneficios. impues tos, pagas. Cl. 6. Tb. mao mo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baoberi', 's.', NULL, NULL, NULL, NULL, 'pl. pagadurías. pagadores. Cl. 6 y Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baobóra', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. notarios, custodios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baokáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. aviadores, pilotos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baokollo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. plantas del picante. ', NULL, 'beokollO', 'Fuente: bubi-español', 'import-script');

-- Lote 17 (entradas 401 a 425)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('baokossa', 's.', NULL, NULL, NULL, NULL, 'pl. personas que se mueven. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baOlállo', 's.', NULL, NULL, NULL, NULL, 'pl. combatientes, peleones. Cl. 2. baólea, v. deshacerse. Pret. baólei, baóleseei; e tyotyi e lá - la iglesia se deshace. baólei, pret. v. o baóJea ; e rohiáa ri e eriia ri - el oratorio del pueblo se deshizo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baoleOle', 's.', NULL, NULL, NULL, NULL, '1''1. grítones, personas que hablan en voz alta. Cl. 6. baóleseei, pret. v. o baólea ; i tyóbbo i - la e pullá las casas se deshaCÍan con la tormenta. barello /77 baólessi, pret. v. o baólla ; to bo - o wettya nosotros desha cíamos la cabaña. baólla, v. deshacer. Pret. baóri, baólessi; to la - e tyóbbo nosotros desha cemos la casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baOló', 's.', NULL, NULL, NULL, NULL, 'pl. árboles pequeños de látex blanco amargo y corteza también amarga de fruto verde pero rojo cuando madura. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baoobe', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. pescadores. ', NULL, 'bOobbe', 'Fuente: bubi-español', 'import-script'),
 ('baoorn', 's.', NULL, NULL, NULL, NULL, 'pl. retretes, letrinas. pozos cie gos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baopooppo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas que siembran dis cordia. *soplagaitas, chupatintas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baoppo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. 1. peleas, luchas, batallas, lides, combates. 2. tormentos. . Tb. bikétikéti', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baoppo', 's.', NULL, NULL, NULL, NULL, 'def. aluvión, riada. Cl. 6. Ej. expr. - a tyi oppa ríe wela el aluvión no dura en el torren te', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baori', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. lugares de com pras. Cl. 6. baóri, pret. v. o baólla ; n-e tyóbbolÍl yo deshice mi casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baorí', 's.', NULL, NULL, NULL, NULL, 'pl. ríe os, adinerados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baornmua', 's.', NULL, NULL, NULL, NULL, 'pl. carnicerías. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baosso', 's.', NULL, NULL, NULL, NULL, 'pl. divisiones, separaciones. lugares para la libación. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baotaotá', 's.', NULL, NULL, NULL, NULL, 'pl. plantas olorosas con hojas anchas opuestas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baotótto', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. colmenas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baotta', 'adj.', NULL, NULL, NULL, NULL, 'pl. debilidades, flojedades. abatimientos. Cl. 6. Tb. biot ta, ibottó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baótú', 'adj.', NULL, NULL, NULL, NULL, 'bajos, bajas, cortos, cortas, etc. Con cuerda con las palabras de las Cls. 2 y 6; batyo personas de poca estatura, bakobbe - plátanos de poca altura. Tb. banfúbántú. báó, morl pos. nuestro, nuestra, nuestros, nues tras. Concuerda con las palabras de las Cls. 2 y 6; a baie - nuestros padres, a bayolla - nuestros abuelos, a boppé - nuestra agua', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baotya', 'adj.', NULL, NULL, NULL, NULL, 'pl. primeros, primeras. Concuerda con los nombres de las Cls. 2 y 6: a bayolla - los primeros abuelos, a batté - los primeros árboles', NULL, 'ba''iitya', 'Fuente: bubi-español', 'import-script'),
 ('bapaosélla', 's.', NULL, NULL, NULL, NULL, 'pl. enamorados, enamoradas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bapeleri', 's.', NULL, NULL, NULL, NULL, 'pl. 1. necesidades, deseos. Cl. 6. 2. personas caprichosas. Cl. 2. Tb. biilerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bapélla', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. habitantes, inquilinos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bapori', 'antrop.', NULL, NULL, NULL, NULL, 'plural de bopóri. Significa "personas que cor tan o interrumpen". También se refiere a las perso nas que se encargan del cuidado de las cabras. Está localizado en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bappa', 's.', NULL, NULL, NULL, NULL, 'sing. y pl. serpiente, culebra, víbora. Cls. 9 y 10. En este último caso formará parte del antropóni mo babbasássá "serpiente que asusta"', NULL, 'babba', 'Fuente: bubi-español', 'import-script'),
 ('bappáa', 's.', NULL, NULL, NULL, NULL, 'pl. sobacos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bappí', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. restos, limosnas, dádivas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 18 (entradas 426 a 450)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bappú', 's.', NULL, NULL, NULL, NULL, 'pl. buches. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bapué', 'antrop.', NULL, NULL, NULL, NULL, 'que proviene de ripukké. Se refie re a las faltas de consideración y respeto hacia alguien. Está localizado en Lubá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bapueratá', 's.', NULL, NULL, NULL, NULL, 'pl. ayudantes, asistentes. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bapulákke', 'adj.', NULL, NULL, NULL, NULL, 'pl. extranjeros, oriundos de otros países, de allende los mares. Cl. 2. Tb. apulákke. bara, v. techar, poner el techo de una casa. Pret. bariia, baresiia. baráa, v. casar, hacer casar, contraer matrimo nio, desposar. Pret. baría, barésiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('barannó', 's.', NULL, NULL, NULL, NULL, 'pl. fangs, pamues. Cl. 2. Tb. batiinka. báréa, v. casarse con, esposar, contraer matri monio. Pret. báréi, báréseei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baréi', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. personas que comen, comensales, convidados. . 2. restau rantes, fondas. Cl. 6. También se utiliza como gentilicio de los naturales de Baney. báréi, pret. v. o báréa ; o waísso a - boríbáa la mujer se casó con un extranjero', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bareÍltya', 's.', NULL, NULL, NULL, NULL, 'pl. naranjos. Cl. 6. Tb. epippo. báreseei, pret. v. o báréa ; a baísso - buatóo las mujeres se casaban tarde. baresiia, pret. v. o bara ; a baje ba - los hombres ponían el techo de una casa. baresüa, pret. v. o baráa ;_n - casaba, o - casabas, a - casaba, to - casábamos, 10 - casabais, ba - casaban; e bjul la bjá e erija wela to be - a las doncellas del pueblo les casábamos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('barekáita', 's.', NULL, NULL, NULL, NULL, 'pl. espíritus jóvenes, almas de los jóvenes difuntos. Cl. 2. expr. nye morekáita n te e nyá ka''e soy un joven espíritu y no he muerto', NULL, 'miirekáita Ej', 'Fuente: bubi-español', 'import-script'),
 ('barello', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. comedores. . 7H / barem', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('barem', 's.', NULL, NULL, NULL, NULL, 'pl. limoneros. Cl. 4. r/J. biirem', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('barí', 's.', NULL, NULL, NULL, NULL, 'pl. mujeres, esposas. Cl. 2. Tb. hadyána, haísso, mára. bári, pret. v. o bálla ; IÍIma lé n ka - waísso opanná antaño me casé con una mujer española. baría, pret. v. o baráa ; o wetta IÍI m bo - a mi hermana la casé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bariariia', 's.', NULL, NULL, NULL, NULL, 'pl. personas pertenecientes al grupo de quienes pueden gobernar un poblado, un país, etc. gobernantes, dignatarios. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baríbáa', 's.', NULL, NULL, NULL, NULL, 'pl. extranjeros, peregrinos, huéspedes. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baríballá', 's.', NULL, NULL, NULL, NULL, 'pl. 1. cónyuges. 2. rivales. Cl. 2. baríbba, v. prnl. despertarse. espantarse, asustarse. Pret. baríbbi, baríbessi. baríbbi, pret. v. o baríbba ; o botyíó botello o bóllá a - a media noche el niño se despertó. baríbbia, v. despertar, espantar. Tb. o hári mia. Pret. baríbiia, baríbiesiia', NULL, 'o hárima', 'Fuente: bubi-español', 'import-script'),
 ('baribbo', 's.', NULL, NULL, NULL, NULL, 'pl. espíritus. demonios. Cl. 2 ; sollám a - dejad de seguir a los demonios. baríbessi, pret. v. o baribba ; n - me despertaba, o te despertabas, a - se despertaba, to - nos despertába mos, lo - os despertabais, ba - se despertaban. baríbiesiia, pret. v. o baribbia ; o lOé 10 - o bóllá el lloro despertaba al niño. baríbiia, pret. v. o baríbbia ; n - desperté, o - desper taste, a - despertó, to - despertamos, lo - despertasteis, ba despertaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Baribo', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a la sociedad de los espíritus. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baribotyu', 's.', NULL, NULL, NULL, NULL, 'pl. religiones. Cl. 6. bariia, pret. v. o bara ; n-o wettya IÍI puse el techo de mi cabaña, a baie ba - e tyób bo á e eriia los hombres techaron la casa del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('BariJa', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir del verbo rílla. Significa "personas que extermi nan". Está localizado en Baney y Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bariki', 's.', NULL, NULL, NULL, NULL, 'pl. lugares de imágenes. cines. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('barikora', 's.', NULL, NULL, NULL, NULL, 'pl. !. acusadores, denunciantes, dela tadores. 2. fiscales. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('barírimo', 's.', NULL, NULL, NULL, NULL, 'pl. espíritus guardianes. mujeres que velan por alguien. protectoras. Cl. 2. Tb. haíribho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('barullo', 's.', NULL, NULL, NULL, NULL, 'pl. corchos. taco para taponar algo. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basá', 's.', NULL, NULL, NULL, NULL, 'pl. acompañantes, seguidores. con tadores. hacedores, ejecutores. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basa''a', 's.', NULL, NULL, NULL, NULL, 'pl. limas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basá''o', 's.', NULL, NULL, NULL, NULL, 'pl. halagos, alabanzas, glorias, honras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 19 (entradas 451 a 475)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('basabbo', 's.', NULL, NULL, NULL, NULL, 'pl. lijas. cepillos metálicos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basabóatta', 's.', NULL, NULL, NULL, NULL, 'pl. narradores, contadores, noveleros. predicadores. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basakatoo', 's.', NULL, NULL, NULL, NULL, 'pl. naturales de Basakato, basaka teños. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basaké', 's.', NULL, NULL, NULL, NULL, 'pl. machetes, espadas, hoces. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basákiera', 's.', NULL, NULL, NULL, NULL, 'pl. felicitaciones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basalábbe', 's.', NULL, NULL, NULL, NULL, 'pl. malhechores, personas malas, maliciosos, malvados. Cl. 2. basóri / 79', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basalele', 's.', NULL, NULL, NULL, NULL, 'pl. bienhechores, personas altruistas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basalla', 's.', NULL, NULL, NULL, NULL, 'pl. palmas, hojas de la palmera. Cl. 6', NULL, 'masalla', 'Fuente: bubi-español', 'import-script'),
 ('basalóetyi', 's.', NULL, NULL, NULL, NULL, 'pl. viajeros, caminantes, peregri nos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basappá', 's.', NULL, NULL, NULL, NULL, 'pl. chopos del país. Cl. 6. Tb. kalabóro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basáráa', 's.', NULL, NULL, NULL, NULL, 'pl. espantadores, asustadores. terroristas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basári', 's.', NULL, NULL, NULL, NULL, 'pl. personas que temen, temerosas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basawasawáa', 's.', NULL, NULL, NULL, NULL, 'pl. árboles del sawasawa, del guanábano o chirimoya. Cl. 6', NULL, 'besawasawáa', 'Fuente: bubi-español', 'import-script'),
 ('base''e', 's.', NULL, NULL, NULL, NULL, 'pl. pubis. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basella', 's.', NULL, NULL, NULL, NULL, 'pl. sanadores. curanderos. médicos. Cl. 2. Tb. bokút ta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basellé', 's.', NULL, NULL, NULL, NULL, 'del vino dulce de palma. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basepaseppa', 's.', NULL, NULL, NULL, NULL, 'pl. quejicas, quejones. provocadores, litigiosos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baseppa', 's.', NULL, NULL, NULL, NULL, 'pl. engreídos, soberbios. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baserü', 's.', NULL, NULL, NULL, NULL, 'pl. enfermerías, clínicas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baseruseru', 's.', NULL, NULL, NULL, NULL, 'pl. barbudos, barbados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baseseele', 's.', NULL, NULL, NULL, NULL, 'pl. escobas. fregonas. Cl. 6. Tb. abetye, aburúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basesepári', 's.', NULL, NULL, NULL, NULL, 'pl. jóvenes muchachas, mozas, doncellas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baseseppe', 's.', NULL, NULL, NULL, NULL, 'pl. jóvenes muchachos, mozos. Cl. 2. basessi, pret. v. o bassáa; mpári m -e isaké ayer limaba el machete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basibé', 's.', NULL, NULL, NULL, NULL, 'pl. personas naturales de Lubá. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basií', 's.', NULL, NULL, NULL, NULL, 'pl. astutos, tunantes, pícaros, granujas, pillos, taimados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 20 (entradas 476 a 500)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('basilio', 's.', NULL, NULL, NULL, NULL, 'pl. recodos, rincones. neveras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basissi', 's.', NULL, NULL, NULL, NULL, 'pl. calambres. piernas dormidas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basobbá', 's.', NULL, NULL, NULL, NULL, 'pl. soldados, guardias. Cl. 2. Tb. sótya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basobbá', 's.', NULL, NULL, NULL, NULL, 'pl. patatas aéreas venenosas, no comestibles. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basoí', 's.', NULL, NULL, NULL, NULL, 'pl. embusteros, mentirosos, bribones, far santes. Cl. 2. Tb. basoisói', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basoisói', 's.', NULL, NULL, NULL, NULL, 'pl. embusteros, mentirosos, bribones, farsantes. Cl. 2. Tb. basoí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basokka', 's.', NULL, NULL, NULL, NULL, 'pl. gorras. gorros, sombreros. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basokká', 's.', NULL, NULL, NULL, NULL, 'pl. sombreros. bolsos. som brererías. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basókkó', 's.', NULL, NULL, NULL, NULL, 'pl. altos dignatarios. reyes, supremos. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basókuari', 's.', NULL, NULL, NULL, NULL, 'pl. almas de las doncellas según la mitología bubi. Cl. 2. basóla, v. destruir, destrozar algo previa mente construido; o boie ID a la - e tyóbbo mi padre destruye la casa. violar; e kobinna a la - e biete el gobier no viola las leyes. Pret. basóri, basó lessi. basólessi, pret. v. o basóla ; i puá i - e rikkí los perros destrozaban la valla; a abitábítta ba i tyotyi kubba i é e etúllá emmaa los mili tares destruían todas las iglesias de la isla', NULL, 'basólla', 'Fuente: bubi-español', 'import-script'),
 ('basollá', 's.', NULL, NULL, NULL, NULL, 'pl. mandíbulas inferiores. Cl. 6. basólla, v. destruir, destrozar algo previa mente construido. violar. Pret. basórí, basó lessi', NULL, 'basóla', 'Fuente: bubi-español', 'import-script'),
 ('basoppo', 's.', NULL, NULL, NULL, NULL, 'pl. panes. Cl. 6. Tb. puleri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basoppó', 's.', NULL, NULL, NULL, NULL, 'pl. ñames dulces, batatas, boniatos. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basopuára', 's.', NULL, NULL, NULL, NULL, 'pl. toboganes. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basorá', 's.', NULL, NULL, NULL, NULL, 'pl. espermas, semen. flujos vagi nales. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basoram', 's.', NULL, NULL, NULL, NULL, 'pl. helecho de tallos trepadores más o menos enrollados con raíces adventicias. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basori', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas libres. emigrantes. Cl. 2. basóri, pret. v. o basóla ; o bOíe a -e ripello el hom bre rompió la puerta. NtI / hllsúsúllú hllsúsúllú., 1'' /JI. almas de las viejas difuntas, según la Illllologíll bubi. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basubári', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. benjaminas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basubbá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. los últimos, las últimas. ; a batyo - las últimas personas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basubbó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. baños. cuartos de baño. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basubóbbe', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. benjamines. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basúpia', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. elecciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basuppí', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. personas que escogen. elec ciones, opciones. Cls. 2 y 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('basutto', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. relojes. . Batajolo, antrop. construido a partir de los términos há fa hóla que significa "ellos se qUieren, ellos se ponen de acuerdo". Está locali zado en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batákityé', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. gobernadores, emperadores, jefes de estado, presidentes. . Tb. bOtákityé', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 21 (entradas 501 a 525)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('batákka', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. mandamases, mandones. directores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batákkí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. criados, vasallos, súbditos. 2. dominios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batákko', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. emisarios, embajadores, mensaje ros, delegados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Batapa', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir de itappá. Significa "clanes paterno filiares" y está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batáperi', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. aceptaciones. recibidores. Cls. 6 y 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batappá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. clanes. linajes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bate', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. piedras, pedruscos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bate''a', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas que consuelan y calman. . Tb. bate''í', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bate''í', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. pésames, condolencias, consuelos. . personas que con suelan y calman. . Tb. bate''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batébisapá', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. pacificadores. modera dores. jueces. . Tb. matésabbá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bateke', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. cangrejos de río. centollos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bateríbbo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. almas de jefes y reyes dentro de la mitología bubi. espíritus poseedores de un siervo o elotyí. . batessi, pret. v. o batta ; n - vetaba, o - vetabas, a vetaba, to - vetábamos, 10 - vetabais, ba - vetaban', NULL, 'baté rimo', 'Fuente: bubi-español', 'import-script'),
 ('batette', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. palmeras jóvenes. . Tb. betette, mitete. bato, 1. adj. largos, altos, largas, altas. Concuerda con las palabras de las Cls. 2 y 6; batyo - personas altas, baatyé - largas camas. 2. adj. numo cinco', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bató''a', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. 1. ñames de las ramas. 2. antrop. ñames de las ramas. . Tb. mato''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batoatooa', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. risotadas, carcajadas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batoberi', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. anos. lugares donde se defeca, retretes. . batóbie''eriia, pret. V. o batóbiera ; n - escuchaba, o - escuchabas, a - escuchaba, tO - escuchába mos, 10 - escuchabais, ba - escuchaban. batóbiera, v. escuchar, prestar atención, aten der. Pret. batóbie riia, batóbie'' eriia. batóbieriia, pret. v. o batóbiera ; n-o bue''iáa escuché al maestro', NULL, 'o batóyeera, o bolóbiera', 'Fuente: bubi-español', 'import-script'),
 ('batohí', 's.', NULL, NULL, NULL, NULL, 'pl. soles. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batOhó', 's.', NULL, NULL, NULL, NULL, 'pl. justicias, tribunales de justicia, juz gados. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batoJari', 's.', NULL, NULL, NULL, NULL, 'pl. alianzas, uniones, solidaridades. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batOlállo', 's.', NULL, NULL, NULL, NULL, 'pl. retahílas. piropos, elogios. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batolla', 's.', NULL, NULL, NULL, NULL, 'pl. los árboles de tolla. Cl. 6', NULL, 'betolla', 'Fuente: bubi-español', 'import-script'),
 ('batollo', 's.', NULL, NULL, NULL, NULL, 'pl. lugares donde se duerme, hoteles, hostales. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batolló', 's.', NULL, NULL, NULL, NULL, 'pl. vínculos, enlaces. eslabones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batOnka', 's.', NULL, NULL, NULL, NULL, 'pl. fangs, pamues. Cl. 2. Tb. barannó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batóo', 's.', NULL, NULL, NULL, NULL, 'pl. orejas, oídos. sordera. Cl. 6. Ej. expr. we - ¿estás sordo? tópa i - ¡presta atención!', NULL, 'kotya', 'Fuente: bubi-español', 'import-script');

-- Lote 22 (entradas 526 a 550)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('batoom', 's.', NULL, NULL, NULL, NULL, 'pl. cagones. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batOperi', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. municipios, condados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batótta', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas que acuden, acudientes. manifestantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batóweri', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. intérpretes. traductores. . Tb. abélló. batta, v. 1. vetar, impedir, prohibir. 2. bautizar. Pret. battyi, batessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('battáa', 's.', NULL, NULL, 'Cl. 6', NULL, 'del caderas, trasero, nalgas, posaderas. ; e biulla be lá ikíra a - ba bie las doncellas mueven sus caderas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batté', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. 1. árboles, palos. Cl. 6. 2. brío, méritos; 010 botyo okkí - esta persona tiene méritos, tiene brío, abo ká - o esos son tus méntos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batto', 's.', NULL, NULL, 'Cl. 10', NULL, 'pl. vetos, impedimentos. . battyi, pret. v. o batta ; n - veté, o - vetaste, a - vetó, to - vetamos, 10 - vetasteis, ba - vetaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batúkku', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. jefes de poblado, alcaldes. gobernantes. ; - bote grandes jefes de poblado, grandes gobernantes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batúkuari', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. jefas de poblado, alcaldesas. gobernantas. ; - bote grandes jefas de poblado, grandes gobernantas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batutera', 's.', NULL, NULL, NULL, NULL, 'pl. recepciones, acogidas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batuttá', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. vertederos, estercoleros. Cl. 6. batyáa, v. padecer. doler. afligir, apenar. escocer; o - bi''o sufrir mucho, estar harto de tanto dolor. Pret. batyía, batyésiia, batyí', NULL, 'o bmítya', 'Fuente: bubi-español', 'import-script'),
 ('batyabatya', 's.', NULL, NULL, NULL, NULL, 'sing. y pl. costilla. Clases 9 y 10. Aquí la palabra carece de prefijo de clase, sólo los aumentos nos permiten determinar dicha CIa se: aumento e para la Clase 9, y aumento i para la Clase 10; ej. e batyabatya la costilla, i batyaba tya las costillas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyámaan', 's.', NULL, NULL, NULL, NULL, 'pl. países de Alemania. Cl. 6. 2. alemanes. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyapotyapo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. falos grandes, penes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyaribba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. meses de abril. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyé''a', 's.', NULL, NULL, NULL, NULL, 'pl. arbustos de la berenjena. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyeJemán', 's.', NULL, NULL, NULL, NULL, 'pl. presos, prisioneros. Cl. 2. Tb. tyelemán. bátyera, v. tender, extender. Pret. bátyeriia, bátyeresiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyere', 's.', NULL, NULL, NULL, NULL, 'det" pl. retención de orina, mal de ori na, blenorragia. Cl. 6. . Tb. bane''é, matyere. bátyereea, v. prnl. pavonearse, vanagloriarse, presumir. Ej. conj. preso o botyo a la - la perso na se vanagloria. Pret. bátyereei, bátyereseei. bátyereei, pret. V. o bátyereea ; n -la e ri''uálÍl pre sumí por mi dicha. bátyereseei, pret. V. o bátyereea ; o bonánna lÍl a - a batyo weia mi abuela presumía entre las personas. H2 / bátyeresiia bátyeresiia, pret. v. o bátyera ; i Imua n i - la ropa yo la tendía. hatyeretyere, s pl. mezclas pastosas, menestras. Cl. 6. hátyeriia, pret v. o bátyera ; n bo - o bokutta yo lo extendí, la manta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyiáeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. disculpas, perdones, benevolen cias. CL 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyíbierí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. temblores, tiriteras. . Tb. bakoklro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyílé', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. antepasados, ancestros. . Tb. matyílé. batyílla, 1. s. pl. tiempo para arrancar los ñames. 2. numo cientos ; ej. -appa doscientos euros, -bó mil euros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyo', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. personas, gente, individuos, tipos. ', NULL, 'besso, bandyo, betyo', 'Fuente: bubi-español', 'import-script'),
 ('batyoa', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. liquen, musgo. ', NULL, 'bityoa', 'Fuente: bubi-español', 'import-script'),
 ('batyokó', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. presunciones, jactancias. orgullos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyOletyólle', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. árboles de las suelas. . Tb. betyappa, betyoletyólle', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 23 (entradas 551 a 575)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('batyotyo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. puñados. . batyú ''u, s. pl. ricos, adinerados. ', NULL, 'korí', 'Fuente: bubi-español', 'import-script'),
 ('batyué', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. pescaderías. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyuheri', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. regalos, obsequios, albricias. . Tb. batyuho, biituho, ba''abbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('batyuho', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. regalos, obsequios, albricias. . Tb. betuho, ba''abbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('baukí', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. confusiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bauppoo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. montes, montañas, cuestas. . Tb. biulo, bió', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bausolo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "vino salado" o "vino degustado". Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bausóri', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. 1. delatores. . 2. nombramientos. referen cias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bausuerí', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. nombradores. ; a -ba lá sosolla e bilabba los nombradores rela tan los hechos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bayolla', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. abuelos, ancianos, ancestros. ; a - báó nuestros abue los, ancestros; a - báó ba sessi i pohá nuestros ancestros realizaban proezas; - tyuíi batéribbo, espíritus a los que se acude para cuestiones dificiles. Videntes. be, mor! que se antepone al tema del adjetivo indefinido -Ié; ej. a batyo -lé las demás personas, a baatyé -lé las demás camas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcakákka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. árboles de ramitas delgadas. . 71). yakákká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcakká', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. 1. acequias, canalones. 2. almen dras, raíces. . bca kke, s. pl. l. tribus, familias. 2. atados, ataduras. partos. . bcakki, s pl. piojos, liendres, pulgas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcala', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. obstáculos, final; o kubbáa - no haber solución a una cosa. ', NULL, 'bealla', 'Fuente: bubi-español', 'import-script'),
 ('bcalla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. puntas de tierra, cabos. ; o kúbala - tropezar con la pun ta de la tierra, no tener salida', NULL, 'beala', 'Fuente: bubi-español', 'import-script'),
 ('bcallo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. rodillos. leñeras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcalOri', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. ceremonias ofrecidas a los difuntos al tercer día de ser enterrados. En ella se prepara un gran ágape en el que participan todos y es pre sidido por los familiares más directos. . Tb. /oátóra. beam, pret. v. o beanna ; o bobba bo - Ielle el sue lo está bien nivelado. beammaa, alij. pl. todos, en su totalidad. . beanessi, pret. v. o beanna ; m bo - o bobba yo nivelaba el suelo. beanna, v. igualar, nivelar, ajustar; n la - o bOleU! yo nivelo la línea. Pret. beam, bea nessi', NULL, 'bebaa, bebammaa', 'Fuente: bubi-español', 'import-script'),
 ('bcaó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. deudas. gastos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bCbaeba', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cucarachas. . Tb. beebaeba, bihMmo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bcpé', 'antrop.', NULL, NULL, NULL, NULL, 'perteneciente a la Cl. 7 que ha per dido su prefijo inicial !l-. Significa "berenjena". Está localizaco en Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcpelle', 's.', NULL, NULL, NULL, NULL, 'pl. fornicaciones, puteríos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcpippí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. tiranías, dictaduras opresio nes, esclavitudes. . 7/) baakio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcpiró', 's.', NULL, NULL, NULL, NULL, 'pl. ballestas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcppí', 's.', NULL, NULL, NULL, NULL, 'pl. culpas, culpabilidades. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bcppo', 's.', NULL, NULL, NULL, NULL, 'pl. bancos, cajas de caudales. bases, esencias. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be', 'morf.', NULL, NULL, NULL, NULL, 'de Clase 3 para los adjetivos numerales Y demostrativos. Ej. e bempo -tá le bempo -to las narices tres y las narices cinco, -le bempo aquellas narices. be, 1. prono sujo ellos, as. 2. v. son, están. Ej. a batyo -tyibba las personas, ellas, se cansan; bá batyo -battá estas personas son tres', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 24 (entradas 576 a 600)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bé', 'adj.', NULL, NULL, NULL, NULL, 'malo, mala, feo, fea. Concuerda con las palabras de las Cls. 9 y 10; e nabba - la carne mala, i nabba - los animales malos, etc', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''a', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. ñames de las tres hojas. . be''a, v. nadar, flotar, bracear; n la - e ríe wela nado en el río. ser igual. Pret. be''i, be''essi. bé''a, v. llorar, lloriquear, sollozar; na o bOllá a la - appiá bO si el niño llora, dale de mamar. Pret. bé''i, bé''essi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''áa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. alumnos, discípulos, aprendices, estu diantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''aale', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cargas, fardos. . Tb. bi''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''áeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'pl. contagios. CL 6. bé''ála, v. llorar con, sollozar con; to la - a banapana lloramos con los estudiantes. Pret. bé''ári, bé''álessi. beabílla / 83 be''alessi, pret. v. o be''alla ; n - nadaba con, o - nadabas con, a - nadaba con, to - nadábamos con, 10 - nadabais con, ba - nadaban con. bé''álessi, pret. v. o bé''ála ; tue ammaa to - a abé''í bammaa todos llorába mos con los llorones. be''alla, v. nadar, flotar en compañía de otro. Pret. be''am, be''alessi. be''am, pret. v. o be''alla ; e puá e botyo [e puá é b; m bo - o bonánna lloré con la abuela', NULL, 'o béána', 'Fuente: bubi-español', 'import-script'),
 ('be''e', 'adv.', NULL, NULL, NULL, NULL, '¿cuánto/s, cuánta/s? Se utiliza con los nombres de las Clases 2, 4, 6, 8, 10, 13, etc. Ej. expr. o la na''a tyué - ¿cuánto pescado quieres?', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cargas, fardos. . Tb. be''aa/e. be''ela, llorar por alguien o por algo; n la - o botyo lÍl lloro por mi pariente, n ta pá''e o - e ribotyo o no puedo llorar por tu vida. Pret. be''em, be''elessi. bé''ela, v. desear, añorar, llorar por alguien o por algo. Pret. bé''eri, bé''elessi. bé''elessi, pret. v. o bé''ela 1. ; n - deseaba, o - desea bas, a - deseaba, to - deseábamos, 10 - deseabais, ba deseaban. 2. ; m - o oberii lÍl lloraba por mi madre. be''em, pret. v. o be''ela ; o bollá a - rombebí el niño lloró por una muñeca. be''eri, . 1". pl. centros de aprendizaje, academias. . bé''eri, pret. v. o bé''ela ; m - e bilabba biáó lloré por nuestras tradiciones', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''esobí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. palos rectos. . be''essi, pret. v. o be''a ; m - mpári yo nadaba ayer. bé''essi, pret. v. o bé''a ; e le atoo ro - lette esta tarde yo lloraba de verdad. be''i, pret. v. 1. o be''a ; n ka - he nadado. 2. o be''a ; tue appa ebbá to''a - los dos fuimos iguales', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''í', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. enseñanzas, educaciones. . bé''i, pret. v. o bé''a ; a bellá bí i nokko n ka ba - las lágrimas de los ojos, las he llorado', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bé''í', 's.', NULL, NULL, NULL, NULL, 'pl. lamentos, quejas. Cl. lO. be''ia, v. igualar, nivelar, normalizar, aj ustar. Ej. na - o bobba yo Igualo el suelo. Pret. be''iia, be''iesiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''iáa', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. enseñantes, maestros. . be''iaam, pret. v. o be''ianna ; m bi - e biriia yo igualé los pueblos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''iáari', 's.', NULL, NULL, NULL, NULL, 'pl. maestras, enseñantes. Cl. 2. be''ianessi, pret. v. o be''ianna ; n - nivelaba, o - nive labas, a - nIvelaba, to - nivelábamos, 10 - nivela bais, ba - nivelaban. be''ianna, v. nivelar, igualar. Pret. be''iaam, be''ianessi. be''iesiia, pret. v. o be''ia ; m bi - e bilabba yo igualé los árboles', NULL, 'o be''ia', 'Fuente: bubi-español', 'import-script'),
 ('be''ó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cañas negras de azúcar. . Tb. beko ''ó. be''Olo, . 1". pl. pesetas. . bé''oo, . 1". pl. puentes, pontones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('be''otya', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pl. primeros, primeras. Concuerda con las palabras de la. efr. beotya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beabílla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. palmeral. . H4 / Ikal, :''. Bl''aká, lIlIllIJ/'' que slglll flea "raíces" o "semi l las" Eslú local izado en Basakato de la Sagrada Fami l ia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beapí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. moscardones fabricantes del nido de barro, avispones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beapíappí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. peces sierra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beappo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. abrazos. . Tb. bihátyibianna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beappú', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cuevas, grutas, cavernas. . Tb. besilla, meambú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beasso', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. ramas, ramajes. extensiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beassó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. esteras. sábanas, cubrecamas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beateatte', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. pájaros que comen frutos ya maduros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beatta', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. historias. noticias. discur sos. leyendas, narraciones. . Tb. meanda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beatte', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cinturas. danzas de la cintura. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beatyatya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. brillos, centelleos, que tienen buen aspecto. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 25 (entradas 601 a 625)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('beatyó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. buitrones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beaúri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. claridades del día, a mediodía. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. eructos, regurgitaciones. . Tb. bebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebabebba', 'adj.', NULL, NULL, 'Cl. 9', NULL, 'azul. Clases 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebao', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. calvas, calvicies. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebba', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. l. eructos, regurgitaciones. 2. hipo pótamos. Cls. 4 y 6. Tb. bebá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebbá', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. estómagos, vientres. embarazos. . Tb. bebbe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebbe', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. embarazos. . Tb. bebbá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebe', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. y adj. bellos, hermosos, guapos, bonitos, agradables. Concuerda con las palabras de las Cls. 2 y 6; a bayolla - los abuelos agradables, a boppé - el agua bonita o rica. . bebelessi, pret. v. o bebera ; e sille si - e benelÍl el frío agrietaba mis dedos. bebera, v. agrietar, rajar; n la e kobbí yo rajo la calabaza vinatera. Pret. beberi, bebelessi. beberl, pret. v. o bebera ; e - e kobbí la e húé se agrietó la calabaZa vinatera con el calor', NULL, 'o bembera', 'Fuente: bubi-español', 'import-script'),
 ('bebíla', 's.', NULL, NULL, NULL, NULL, 'culebra negra. Clases 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebo', 's.', NULL, NULL, 'Cl. 10', NULL, 'pl. lenguas. . beháo /85', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebori', 's.', NULL, NULL, NULL, NULL, 'pl. putrefacciones, podredumbres. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bebotó', 's.', NULL, NULL, NULL, NULL, 'pl. languideces. lelos. Cl. 4. Becha, antrop. que se refiere a la persona que invoca. Debería escribirse Bétya. Está locali zado en Baresó. bedda, v. Bechiro, antrop. que parece hacer refe rencia a las vísceras del cangrejo. Está localizado en eupapa y en Baney. romper, quebrar. Pret. bedyíi, bedéssi. bedessi, pret. v. o bédda ; n quebraba, o - quebra bas, a - quebraba, to - quebrábamos, 10 - quebrabais, ba quebraban. bedyíi, pret. v. o bédda ; n rompí, o - rompiste, a - rompió, to - rompimos, 10 rompisteis, ba - rompieron', NULL, 'o betUí, o bet táa, o betta', 'Fuente: bubi-español', 'import-script'),
 ('bee''o', 's.', NULL, NULL, NULL, NULL, 'pl. las tres piedras sobre las que se colo ca la olla. Cl. 4. Tb. rioo, bie''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beeá', 's.', NULL, NULL, NULL, NULL, 'pl. lunas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beeba', 's.', NULL, NULL, NULL, NULL, 'pl. cucaracha. Cl. 4. Tb. bibaeba, imommó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beebaeba', 's.', NULL, NULL, NULL, NULL, 'pl. cucarachas. Cl. 4. Tb. bibaeba, bihMmo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beebba', 's.', NULL, NULL, NULL, NULL, 'pl. olas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beebe', 's.', NULL, NULL, NULL, NULL, 'pl. congojas. tristezas. dolores. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beebo', 's.', NULL, NULL, NULL, NULL, 'pl. flor de la palmera. Cl. 4. Tb. yeebo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beehe', 's.', NULL, NULL, NULL, NULL, 'pl. envidias. odios. bejucos venenosos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beekke', 's.', NULL, NULL, NULL, NULL, 'pl. árboles del serbal. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beeko', 's.', NULL, NULL, NULL, NULL, 'pl. herbáceas pubescente de hojas opues tas crenadas y con nervios muy patentes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beelálabbé', 's.', NULL, NULL, NULL, NULL, 'pl. desdichas, desgracias, infortu nios. Cl. 4. Tb. biho''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beepeppe', 's.', NULL, NULL, NULL, NULL, 'pl. plantas de la berenjena. Cl. 4', NULL, 'buepeppe', 'Fuente: bubi-español', 'import-script');

-- Lote 26 (entradas 626 a 650)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('beeppa', 's.', NULL, NULL, NULL, NULL, 'pl. árboles de las hojas de lija. hojas de lija. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beeppa', 's.', NULL, NULL, NULL, NULL, 'pl. sembrado, siembra. Cl. 4. plantas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beeppe', 's.', NULL, NULL, NULL, NULL, 'pl. anguilas. Cl. 4. Tb. biseppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beesuesu', 's.', NULL, NULL, NULL, NULL, 'pl. setas, hongos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beettyi', 's.', NULL, NULL, NULL, NULL, 'pl. caminatas, trayectos, viajes. Cl. 4. beetya, v. divertirse; a batyo ba e eriia ro ba lá - la e ripelló. Pret. beetyi, beetyessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beetye', 's.', NULL, NULL, NULL, NULL, 'pl. diversiones, jolgorios. Cl. 6. beetyessi, pret. v. o beetya ; a bOllá ba -la o lóllá los niños se divertían con la lluvia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beetyetyú', 's.', NULL, NULL, NULL, NULL, 'pl. lagartos, lagartijas. Cl. 4. beetyi, pret. v. o beetya ; a batyo ba mmaa ba - la e ripelló ri e eriia todas las personas se divirtieron con la fiesta del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beetyo', 's.', NULL, NULL, NULL, NULL, 'pl. l. puntales, apoyos. 2. nombres. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behá', 's.', NULL, NULL, NULL, NULL, 'pl. 1. árboles que dan el fruto llamado rehá parecido al melocotón. Cl. 6. 2. frutos muy dulces del buehá. melocotones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behahá', 's.', NULL, NULL, NULL, NULL, 'pl. l. uñeros, inflamaciones en las raí ces de las uñas. Cl. 4. 2. mimbres. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behahí', 's.', NULL, NULL, NULL, NULL, 'pl. 1. cuervos, aves que se alimentan de carroña. 2. mujeres que actúan de forma lisonjera. 3. fulanas, prostitutas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behaí', 's.', NULL, NULL, NULL, NULL, 'pl. itinerarios, trayectos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behakká', 's.', NULL, NULL, NULL, NULL, 'pl. cuerdas para hacer nudos corredi zos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behakoo', 's.', NULL, NULL, NULL, NULL, 'pl. fragancias. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behalle', 's.', NULL, NULL, NULL, NULL, 'pl. ardillas medianas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behám', 's.', NULL, NULL, NULL, NULL, 'pl. semejanzas, parecidos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beháo', 's.', NULL, NULL, NULL, NULL, 'pl. humores, pus. Cl. 4. 86 / behappá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behappá', 's.', NULL, NULL, NULL, NULL, 'pl. árboles de madera blanda pero dura y de fruto color verde oscuro y en drupa. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behassa', 's.', NULL, NULL, NULL, NULL, 'pl. oréganos del país. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behátatta', 's.', NULL, NULL, NULL, NULL, 'pl. langostas terrestres, saltamontes. Cl. 4. be he, adj. nuevos, nuevas. Concuerda con las pala bras de la Cl. 4; bekutta - mantas nuevas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behehe', 's.', NULL, NULL, NULL, NULL, 'pl. gargantas, tráqueas, laringes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behéle', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. hierros, barras, barrotes. . Tb. biikussú. Behelo, antrop. que significa "alguien por quien se llora, alguien añorado". Debería escri birse Be''elo. Está localizado en Bantabarí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behélo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. súplicas. oraciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beheppe', 's.', NULL, NULL, NULL, NULL, 'pl. anguilas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beheppoo', 's.', NULL, NULL, NULL, NULL, 'pl. visitas, huéspedes, visitantes. Cl. 4. Tb. baheppoo', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 27 (entradas 651 a 675)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('beheru', 's.', NULL, NULL, NULL, NULL, 'pl. añoranzas, nostalgias, soledades. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behétyo', 's.', NULL, NULL, NULL, NULL, 'pl. vestimentas, atuendos, trajes, etc. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beheú', 's.', NULL, NULL, NULL, NULL, 'pl. 1. huevos 2. testículos, cojones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behihí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. árboles de ramas espinosas y hojas agrupadas al final de las ramas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behíkko', 's.', NULL, NULL, NULL, NULL, 'pl. flemas, babas. Cl. 4. Tb. bilhokokko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behíri', 's.', NULL, NULL, NULL, NULL, 'pl. plantas de la berenjena. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behMma', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. silencios. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behMmeri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. fomicaciones, cópulas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behNno', 's.', NULL, NULL, NULL, NULL, 'pl. 1. usos, rutinas. 2. modas, costum bre�, hábitos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behNtó', 's.', NULL, NULL, NULL, NULL, 'pl. las flores de la hoja de la malanga. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beho''o', 's.', NULL, NULL, NULL, NULL, 'pl. desgracias, desventuras, desdichas. Cl. 4. Tb. beelálabbé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behóhoó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. hojas verdes, grandes y amargas que son utilizadas como ingredientes de algunas recetas culinarias de la gastronomía bubi. 2. cer veza. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. 1. púas largas, badajos. jun coso 2. babosos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behokokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. babas, flemas. . Tb. bilhíkko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behokoro', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. árboles del ocro o Hibiscus scu lentus. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behollá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. resina. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behóra', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. regresos, vueltas. Cl. 4. BehorÍ, antrop. que significa conducto o canal. Debería escribirse BeorÍ. Está localizado en Rebola. Tb. Beorí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behótóttó', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'blancos, blancas. Concuerda con las palabras de la ; bekobbe - plátanos machos blancos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behótya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. chapeos, tiempos de siega. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behuelo', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. consejos. orientaciones. noticiarios. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('behullá', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. insuflaciones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beIeké', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. mareos. transtornos mentales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beikíra', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. 1. columpios. 2. movimientos. . Tb. bisikiri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beikka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. soportes, horca, sostén, etc. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beiko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. maldiciones, reprobaciones, exe craciones, insultos. árboles del salchichón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 28 (entradas 676 a 700)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('beile', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. sartas de tyíbü que suelen llevarse en las piemas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beillo', 's.', NULL, NULL, NULL, NULL, 'pl. negruras. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beilori', 's.', NULL, NULL, NULL, NULL, 'pl. limpiezas. saneamientos, aseos. Cl. 4. Tb. bailori', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beiri', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. tristezas, melancolías, congojas. Cl. 4. Tb. bilebe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beíríi', 's.', NULL, NULL, NULL, NULL, 'pl. salidas. evasiones, huídas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beissó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. fuegos, lumbres. Cl. 4. Tb. meosó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beitáeri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. encuentros, concentraciones. ', NULL, 'bOitáeri', 'Fuente: bubi-español', 'import-script'),
 ('beJe''o', 's.', NULL, NULL, NULL, NULL, 'pl. depósitos, almacenes. campo santos, cementerios. Cl. 4. Tb. benno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beJe''ú', 's.', NULL, NULL, NULL, NULL, 'pl. almacenes, depósitos. Cl. 4. Tb. sittó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beka''ó', 's.', NULL, NULL, NULL, NULL, 'pl. verduras, menestras de verdura. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekáa', 's.', NULL, NULL, NULL, NULL, 'pl. 1. vencejos. 2. aviones. Cl. 4. Bekuku /87', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekaaí', 's.', NULL, NULL, NULL, NULL, 'pl. epidemias, plagas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekákálló', 's.', NULL, NULL, NULL, NULL, 'pl. cráneos, calaveras. Cl. 4. Tb. metyuekokora. bekalessi, pret. v. o bekalla ; n - acudía, o - acu días, a - acudía, tO - acudíamos, 10 - acudíais, ba - acudían. bekalla, v. acudir, ir, venir, dirigirse, etc. Pret. bekari, bekalessi', NULL, 'o beka', 'Fuente: bubi-español', 'import-script'),
 ('Bekari', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "generaciones" o "personas muy próximas, familiares". Está loca lizado en Baney. bekari, 1. s. pl. generaciones. Cl. 4. 2. pret. v. o bekalla; a lo bo óppi la o botuttú a batyo ba - al sonar la cometa la gente acudió', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekattí', 's.', NULL, NULL, NULL, NULL, 'pl. 1. personas astutas. 2. ligones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekekerú', 's.', NULL, NULL, NULL, NULL, 'pl. médulas de plátanos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekera', 's.', NULL, NULL, NULL, NULL, 'pl. investigaciones, indagaciones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekeri', 's.', NULL, NULL, NULL, NULL, 'pl. administraciones, regímenes. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekeú', 's.', NULL, NULL, NULL, NULL, 'pl. caracteres, temperamentos, idiosin crasias. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekibakibba', 's.', NULL, NULL, NULL, NULL, 'pl. paros laborales, huelgas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekityi', 's.', NULL, NULL, NULL, NULL, 'pl. pisadas, ruidos que producen. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekká', 's.', NULL, NULL, NULL, NULL, 'pl. bragas, calzoncillos. Cl. 6. Tb. abatyu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekki', 's.', NULL, NULL, NULL, NULL, 'pl. miradores, balcones. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beko''ó', 's.', NULL, NULL, NULL, NULL, 'pl. cañas negras de azúcar. Cl. 4. Tb. he''ó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekoa', 's.', NULL, NULL, NULL, NULL, 'pl. odios, envidias. Cl. 4 ; e - be tá pa''e o sétta e eriia wela las envidias no pueden acabar en el pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 29 (entradas 701 a 725)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('Bekoba', 'antrop.', NULL, NULL, NULL, NULL, 'que presenta dos significados. "alguien que aviva, enardece" y "alguien que come deprisa". Está localizado en Baney yen Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekobbe', 's.', NULL, NULL, NULL, NULL, 'pl. plátanos machos. Cl. 4. Tb. bikobbe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekobbo', 's.', NULL, NULL, NULL, NULL, 'pl. llamadas de las pieles. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekokko', 's.', NULL, NULL, NULL, NULL, 'pl. antorchas, faros. Cl. 4 ; to''a loppa''á e - obaam encenderemos las antor chas mañana', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekokkó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. malangas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekokori', 's.', NULL, NULL, NULL, NULL, 'pl. alcantarillas. Cl. 4 ; e - be a ripotto las alcantarillas de la ciudad', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekOlekko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. arbustos trepadores de frutos ovoides y sépalos de color rojo vivo. Cl. 4 sing. : "biikiilekkó"). bekolla, v. ensalsar, aclamar; a batyo ba lá - e elotyí las per sonas ensalsan al sacerdote. Pret. bekiim, bekuessi. bekom, pret. v. o bekiilla ; m bo - sóté o wanapana ensalsé mucho al estudiante', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekonno', 's.', NULL, NULL, NULL, NULL, 'pl. maíces. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekookoo', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pocos, pocas, pequeños, peque ñas. Concuerda con las palabras de la ; bekutta - mantas pequeñas, pocas mantas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekorí', 's.', NULL, NULL, NULL, NULL, 'pl. enredadoras de las que se obtienen cuerdas resistentes y con espinas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekóso', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. reuma. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekoteri', 's.', NULL, NULL, NULL, NULL, 'pl. botellas. Cl. 4. Tb. ep ilo, ep oteri, mekoteri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekotto', 's.', NULL, NULL, NULL, NULL, 'pl. manifestaciones, reuniones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekuakua', 's.', NULL, NULL, NULL, NULL, 'pl. balbuceos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekuamá', 's.', NULL, NULL, NULL, NULL, 'pl. árboles de la guayaba. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekuassa', 's.', NULL, NULL, NULL, NULL, 'pl. viruelas. Cl. 4. bekuessi, pret. v. o bekiilla ; m - a baebba yo ensalsaba a los vinateros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekukke', 's.', NULL, NULL, NULL, NULL, 'pl. desmayos, síncopes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bekuku', 'antrop.', NULL, NULL, NULL, NULL, 'que se aplica a aquellas personas que hablan en voz alta. Debería escribirse Biku ku. Está localizado en Baresó. bckulakulla, s pl. recolectas. votaciones. escrulll1los. Cl. 4. Th. beukka, beulla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekuppá', 's.', NULL, NULL, NULL, NULL, 'pl. sabidurías, entendimientos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekúppa', 's.', NULL, NULL, NULL, NULL, 'pl. destrezas. aptitudes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekussú', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. hierros, barras, barrotes. . Tb. behéle', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bekutta', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. mantas, edredones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bela', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "alguien que llora por algo o por alguien". Debería escribirse Bé''ela. Está localizado en Batete y Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beláa', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. asuntos, disputas, querellas, proble mas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belakka', 's.', NULL, NULL, NULL, NULL, 'pl. 1. arcos colocados a la entrada de los poblados, umbrales. escalones. tra Vlcsas, peldaños. 2. amistades. Cl. 4. Tb. melakka. Ej. expr. tue - somos amigos', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 30 (entradas 726 a 750)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('belakko', 's.', NULL, NULL, NULL, NULL, 'pl. limpieza, higiene. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belálabbé', 'adj.', NULL, NULL, NULL, NULL, 'pl. desdichados, desafortunados, desgraciados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belálelle', 'adj.', NULL, NULL, NULL, NULL, 'dichosos, afortunados, etc. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belallo', 's.', NULL, NULL, NULL, NULL, 'pl. medicamentos, remedios, drogas. talismanes. Cl. 4. Tb. melallo, meressi. belán, pret. v. o belánna ; o waísso a - IOsisi la mujer dio a luz con tnsteza, a bayolla to ba - i bobbé a los abuelos les dimos nietos. be!ánessi, pret. v. o belánna ; o bulla a - riokó la novia daba a luz con alegría. belánna, v. parir con, dar a luz con; ej. expr. o oberíi la - to''ú la madre pare con fuerza. Th. o yeláálá. Pret. belán, belánessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bele', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'dem. aquellos, aquellas. Concucrda con los nombres de la ; - bempo aquellas nari ces, - benokolla aquellas lombrices', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belebbó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. bailes con campanas de madera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belebelee', 's.', NULL, NULL, NULL, NULL, 'sing. y pl. savia del árbol. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belebóri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. 1. memorias, talentos, concien cias, ingenios, recuerdos. 2. conocimientos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belekke', 's.', NULL, NULL, NULL, NULL, 'pl. canales. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belekko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. hileras, filas, alineación. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belekko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. hojas con las que se cura el mal de oído. mucha tranquilidad, mucha paz. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belele', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. líneas, rayas. Cl. 4. belelessi, pret. v. o be leila ; a bayolla be - i bobolla los ancianos nos daban tataranietos. belelessi, pret. v. o belella ; e neppí e - a batyo ba lá púlláa ba obáám el músico cantaba para las personas que regresan de la finca. belelessi, pret. v. o belella ; n - anunciaba, o - anun ciabas, a - anunciaba, to - anunciábamos, 10 - anuncia bais, ba - anunciaban. belella, v. parir, dar a luz para alguien. Ej. o - bollá parir un hijo para alguien. Pret. beleri, belelessi. belella, v. cantar para alguien, cantar en; conj. preso na - e ríberi wela canto en la radio; na - e etúlá canto para la isla. Tb. o émbele la. Pret. beleri, belelessi. belella, v. anunciar, prometer; o - e bittá anunciar la guerra. Pret. beleri, be lelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belello', 'S.', NULL, NULL, NULL, NULL, 'pl. deseados, amados. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beleppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. espejos, gafas, lentes, cristal. . belera, V. prometer. consentir. Pret. beleri, beleressi. beleressi, pret. v: o belera ; n - prometía, o - prome tías, a - prometía, to - prometíamos, lo - prometíais, ba prometían. belólla / 89 beleri, pret. v. o belella ; a bOllá be - bobbé los hijos nos han dado nietos. beleri, pret. v. o belella ; n ka - i húúa he cantado para el público, n ka - i nabba he cantado para los animales. beleri, 1. pret. v. o belella ; o botuttú bo - e bittá la cometa anunció la guerra. 2. llamadas. lugares desde donde se puede llamar. Cl. 6. Tb. ibétyi. beleri, pret. v. o belera ; n prometí, o - prometiste, a prometió, to - prometimos, 10 - prometisteis, ba - pro metieron. belessi, pret. v. o bella ; e biulla be - o tonorí to batóyeriia las doncellas cantaban, los pájaros escuchaban. belessi, pret. v. o bélla ; n - presentaba, o - presentabas, a - presentaba, to - presentába mos, 10 - presentabais, ba - presentaban. belessi, pret. v. o bella ; e aríolla, e séi la b', NULL, 'o benera', 'Fuente: bubi-español', 'import-script'),
 ('bella', 'S.', NULL, NULL, 'Cl. 6', NULL, 'pl. timones, guías. . bella, v. cantar, tararear, *delatar; con}. preso na - yo canto, o la tú cantas, a la - él/el1a can ta. Pret. beri, belessi. bella, v. parir, dar a luz, nacer; con}. preso na - bOllá yo doy a luz un niño. Pret. beri, belessi. bélla, v. referir, presentar, anunciar; o botyo a la - e bilabba ya ribotyo la persona presenta las cosas de la vida, o los asuntos tradicionales. Pret. berí, belessi', NULL, 'o éthbela', 'Fuente: bubi-español', 'import-script'),
 ('belláa', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pl. 1. follones, jaleos. Cl. 4. Tb. belá. 2. barrigones, barrigudos. Cl. 6. belláa, V. prnl. cocerse; e nabba e té - la car ne no está cocida. Pret. béríi, bélessi. bellé, prono pl. otros, otras. Concuerda con las palabras de las Clases 2 y 6; balo batyo, a - estas personas, las otras, balo baatyé, a - estas camas, las otras. bellé, prono pl. otros, otras. Concuerda con las palabras de la ; belo bekobbe, e - los otros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bello', 'S.', NULL, NULL, 'Cl. 5', NULL, 'pl. dientes, mordiscos. dentaduras. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belo', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'dem. estos, estas. Concuerda con los nombres de la ; - behahí estos cuervos, behakoo estas fragancias', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belo''o', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pl. murallas muros de contención, barreras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belo''u', 'S.', NULL, NULL, NULL, NULL, 'pl. hemorragias nasales. Cl. 4. Tb. bile''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belóa', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pl. morteros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belobbo', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pl. caretas, máscaras, *feos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Belobe', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a las actividades pesqueras. Está localizado en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beloe', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pl. testamentos, últimas voluntades. . Tb. meloe, yo ''e ''', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belokke', 'S.', NULL, NULL, NULL, NULL, 'pl. bazos. parálisis, impedimen tos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 31 (entradas 751 a 775)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('belokkí', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pl. plantas enredaderas de hojas verdes y comestibles. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beloko', 'S.', NULL, NULL, NULL, NULL, 'pl. lunaciones. Cl. 4. Tb. melOko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('belOkolOkó', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. doradillos, limonci 110s. Cl. 4. belólea, V. desdecirse. Pret. belólei, beJó leseei; n la - me desdigo. belólei, pret. v. o belólea ; o te des dijiste. belóleseei, pret. v. o belólea ; n - yo me desdecía. belólessi, pret. V. o belólla ; n-o WéSO''OÓl yo con tradecía a mi amigo. belólla, V. desdecir, contradecir; n la - o boit ta yo contradigo al mandatario. Pret. belóri, beló lessi. 90 / h. h. Tb. kusiánno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Belope', 'antrop.', NULL, NULL, 'Cl. 4', NULL, 'que se refiere a las cañas de bam bú. Está localizado en Baney, Rebola y Basuala. belóri, pret. v. o belólla ; n bii - ii biiitta yo contradije al mandatario. bemma, 1. adj. indo algunos, algunas. Concuer da con las palabras de la Cl. 3; ha tyi - betooJÍl no hay algunas cenizas. 2. s. pl. ceibas. ', NULL, 'buhbá', 'Fuente: bubi-español', 'import-script'),
 ('bemmaityi', 's.', NULL, NULL, 'Cl. 4', NULL, 'plural del mes de agosto. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bemmameóte', 's.', NULL, NULL, NULL, NULL, 'plural del mes de julio. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bemmátta', 's.', NULL, NULL, NULL, NULL, 'pl. morteros. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bemmatyíssi', 's.', NULL, NULL, NULL, NULL, 'pl. cajas de cerilla. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bempá', 's.', NULL, NULL, NULL, NULL, 'pl. ruidos, barullos, estruendos. Cl. 4. Tb. hetyípótyípóo, biuppá, kipáám', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bempilla', 's.', NULL, NULL, NULL, NULL, 'pl. mocos. Cl. 4. Tb. bempiri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bempiri', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. mocos. Cl. 4. Tb. bempilla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bempo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. narices, hocicos, olfatos, napias. . Tb. melumbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bena''í', 's.', NULL, NULL, NULL, NULL, 'pl. tomateras. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benánna', 's.', NULL, NULL, NULL, NULL, 'pl. pecas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benappí', 's.', NULL, NULL, NULL, NULL, 'pl. clitoris, *chuminos. Cl. 4. Tb. herappí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bene', 's.', NULL, NULL, NULL, NULL, 'pl. dedos de la mano. Cl. 4. iilo biityii e - béto esta persona tiene los dedos largos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bene''u', 's.', NULL, NULL, NULL, NULL, 'pl. profundidades, precipicios, barran cos, hondos, etc. Cl. 4. Tb. heno''u. benessi, pret. v. o benná ; n - humillaba, ii - humillabas, a - humillaba, tii - humillábamos, lii - humilla bais, ba - humillaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benessú', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. dedos del pie. Cl. 4. Tb. messú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benkaóka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. moratones producidos por un golpe. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benkínkí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. abejorros, moscardones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benko', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. borracheras. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benkútú', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. malicias, maldades, malevolen cias, etc. Cl. 4. benná, v. humillar, despreciar, desdeñar, mirar con desdén, etc. Pret. benní, benessi', NULL, 'o belá', 'Fuente: bubi-español', 'import-script'),
 ('benná', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. balas, municiones, perdigones, cartu chos. Cl. 4. Tb. bahúo. benní, pret. v. o benná ; n - humillé, ii - humillaste, a - humilló, tii - humillamos, lii - humillasteis, ba - humillaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benno', 's.', NULL, NULL, NULL, NULL, 'pl. camposantos, cementerios. Cl. 4. Tb. hele''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beno''u', 's.', NULL, NULL, NULL, NULL, 'pl. fondos, profundidades, hondos. Cl. 4. Tb. hene''u', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 32 (entradas 776 a 800)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('benoa', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. quemas, asados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benoá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. ceremonias que consisten en acudir a la playa para purificarse. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benobbe', 's.', NULL, NULL, NULL, NULL, 'pl. enfados, enojos, cabreos, berrin ches. Cl. 4', NULL, 'nobbe', 'Fuente: bubi-español', 'import-script'),
 ('benokka', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. viruelas, pústulas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. tesones, tenacidades. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benokko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. médulas. energías. c) serie dad, prudencia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benokoa', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. antipatías, rebeldías. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benokolla', 's.', NULL, NULL, NULL, NULL, 'pl. lombrices, tenias. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benokosso', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. barbaries. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benono', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. juicios. . Tb. bitoho. benóppi, s pl. chimeneas. emisores de gases. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benotyo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. sabores, gustos. . beotya /91', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bentánna', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. ventanas, aberturas. Cl. 4. bentúbéntú, a4i. bajos, bajas, cortos, cortas, poca altura, etc. Concuerda con las palabras de la ; betabué - barbascos guineanos de poca altura', NULL, 'biítlú', 'Fuente: bubi-español', 'import-script'),
 ('bentyí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. venas, nervios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bentyo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. hechizos, venenos, maleficios, embrujos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('benya''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. camorras, peleas. . béúdóla, v. l. hacer las paces, reconciliar. 2. quitar un maleficio. 3. confesar. 4. divulgar, pregonar. Pret. béÍ1dó ri, béÍ1dólanessi. béódólanessi, pret. v. o béÍ1dóla ; n-a bandyii reconciliaba a las personas. béódóri, pret. v. o béÍ1dóla ; a bandyii n ba - a las personas les reconcilié', NULL, 'o bitólla, o béñdoala', 'Fuente: bubi-español', 'import-script'),
 ('Beña', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "tejas, techos, cubier tas". Se obtiene a partir del verbo o bimya. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beo''í', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. putrefacciones, podredumbres. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beobbé', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. árboles de la atanga. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beobbo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. l. reverencias. 2. pagadurias. 3. sueldos, pagas, retribuciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beobbó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. olores, hedores, fragancias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoé', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. almas, espíritus, fantasmas. . Tb. mioé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beokka', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. colecta. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beokkí', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. restos de animales en estado de putrefacción. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoko', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. amistades, compañías. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beokollo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. plantas del picante. ', NULL, 'baokollo', 'Fuente: bubi-español', 'import-script');

-- Lote 33 (entradas 801 a 825)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('beokoo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. calles, avenidas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beokoru', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cordones umbilicales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Beole', 'antrop.', NULL, NULL, 'Cl. 4', NULL, 'que significa "alegría". Debería escri birse Beiile. Está localizado en Ehoko y Moka. beollo, s pl. desgracias. juramentos, pro mesas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beolló', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. agujeros, hoyos, huecos. . Tb. pi''í, biukká, yu''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beOlólló', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. vejeces. decrepitudes. Cl. 4. Tb. birulla. beolÍlmua, 1. s. pl. carnes, carnes guisadas. 2. carnicerías. Cls. 4 y 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. vidas, alientos, energías. ; e - beto las vidas largas. Tb. mioo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. Concuerda con las pala bras de las Cls. 2 y 6; batyii pocas personas, basalla - pocas palmas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoorí', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. autoconducciones. dejadeces. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beopáko''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. tulipaneros de Gabón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoppa', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. esterilidades, infecundidades. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoppá', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. penes, falos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoppe', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. tuberculosis pulmonares, tisis. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beoppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. retrasos, tardanzas, demoras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Beorí', 'antrop.', NULL, NULL, NULL, NULL, 'relacionado con el aparato genital femenino Morí. Puede traducirse por conducto o canal. Está localizado en Rebola', NULL, 'Behorí', 'Fuente: bubi-español', 'import-script'),
 ('beotiin', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. botones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beótó', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. hojas tiernas de la planta de la malan ga. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beotótto', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. avispas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beotta', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pl. debilidades, flojedades. abatimientos. . Tb. baotta, ibolló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beotte', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cazas generales, cazas clamorosas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beótú', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'bajos, bajas, cortos, cortas, poca altu ra. etc. Concuerda con las palabras de la ; historias cortas. bl!atta', NULL, 'binlúbéntú', 'Fuente: bubi-español', 'import-script'),
 ('beotya', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'pl. primeros, primeras. Concuerda con las palabras de la : e bekobbe los primeros plátanos. Tb. bil''¡ilya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bepósápósáa', 's.', NULL, NULL, NULL, NULL, 'pl. petulancias, arrogancias. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berá', 's.', NULL, NULL, NULL, NULL, 'pl. alimentos, comidas. Cl. 4. Tb. bera ''o. bera, v. hacer dar a luz, asistir un parto. Tb. o yeerá. Pret. beriia, beresiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bera''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. comidas, alimentos. ; e - bi é esubba las comidas del invierno. Tb. berá. beráereea, v, prnl. despedirse, decir adiós. Pret. beráerei, beráeresei. beráereí, pret. v. o beráereea ; o botúkku a - a batyo el jefe del pueblo se despidió de la gente. beráereseí, pret. v. o beráereea ; o boebba a - a bollá ba áí el vinatero se despidía de sus hijos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Berapa', 'antrop.', NULL, NULL, NULL, NULL, 'que parece haberse formado a par tir de la palabra elappa y cuyo plural es bilappa o berappa. Está localizado en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 34 (entradas 826 a 850)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('berappí', 's.', NULL, NULL, NULL, NULL, 'pl. crítoris, *chuminos. Cl. 4. Tb. benappí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beréi', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. convites, banquetes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berem', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. limoneros. Cl. 4. Tb. baremo beresüa, pret. v. o bera ; e rokútta ri - o bOllá wari el médico asistía el parto de la joven', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Beri', 'antrop.', NULL, NULL, NULL, NULL, 'localizado en Bocoricho. Cfr. berl', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berí', 'S.', NULL, NULL, NULL, NULL, 'sing. y pl. l. arbusto cuyas hojas, ralces y corteza se cuecen para aliviar el reuma. 2. hormi gas grandes, rojas y bravas. Clases 9 y 10. berí, pret. V. o bella ; i Deppí i - lelle los músicos cantaron bien. berí, 1. pret. V. o bélla ; e to''óleri e - e bilabba bimmaa el portavoz presentó todos los hechos. 2. S. pl. canciones, cantos. Cl. 10. berí, pret. V. o bella ; o waísso a botyíó la mUjer dio a luz anoche', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berí''o', 'S.', NULL, NULL, NULL, NULL, 'pl. hundimientos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beribáa', 'S.', NULL, NULL, NULL, NULL, 'pl. pelos. Cl. 4', NULL, 'berubbá', 'Fuente: bubi-español', 'import-script'),
 ('beribbí', 'S.', NULL, NULL, NULL, NULL, 'pl. perdiciones. errores, equivo caciones. Cl. 4. béríi, pret. V. o belláa ; a bato''a ba - los ñames aéreos están cocidos. beriia, pret. V. o bera ; o boie a - o waísso bOllá bobbe el hombre hizo dar a luz un niño a la mujer', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berikueri', 'S.', NULL, NULL, NULL, NULL, 'pl. acusaciones, denuncias. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berilio', 'S.', NULL, NULL, NULL, NULL, 'pl. movimientos. ademanes, ges tos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beroo', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pl. a) dulzores, dulzuras, dulces. b) gus tos, placeres, deleites. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berubbá', 'S.', NULL, NULL, NULL, NULL, 'pl. pelos de cualquier tipo. Cl. 3. Tb. beribáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berubbia', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pl. prohibiciones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berulla', 'S.', NULL, NULL, 'Cl. 4', NULL, 'pl. vejeces, decrepitudes, envejeci mientos. . Tb. beolól ló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beruppa', 'S.', NULL, NULL, NULL, NULL, 'pl. hogueras. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beruppe', 's.', NULL, NULL, NULL, NULL, 'pl. árboles divinos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('berurí', 'S.', NULL, NULL, NULL, NULL, 'pl. decrepitudes, envejecimientos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besa''o', 's.', NULL, NULL, NULL, NULL, 'pl. elogios, agradecimientos. Cl. 4. Tb. besákko, besakoo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besaásá''a', 'S.', NULL, NULL, NULL, NULL, 'pl. árboles de corteza gris verdo so. Cl. 4. besobo /93', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besabo', 's.', NULL, NULL, NULL, NULL, 'pl. autorizaciones, permisos. Cl. 4. Tb. mesabo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besákko', 's.', NULL, NULL, NULL, NULL, 'pl. agradecimientos, elogios, recono cimientos. Cl. 4. Tb. besakoo, besa''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besakoo', 's.', NULL, NULL, NULL, NULL, 'pl. agradecimientos, elogios, recono cimientos. Cl. 4. Tb. besákko. besálessi, pret. v. o besálla ; n - besaba, o - besabas, a - besaba, to - besábamos, 10 - besabais, ba - besaban. besálla, v. besar; n la - o wettam beso a mi hermana. Pret. besám, besá lessi. Besam, antrop. cuya forma más análoga en bubi es besári. Debería escribirse Besam. Se localiza en Rebola. besám, pret. v. o besálla ; m bo - o bOsu bári yo besé a la ben jamina, to bo - o boyoUa bo áó nosotros besamos a nuestro abuelo', NULL, 'kisálessi', 'Fuente: bubi-español', 'import-script'),
 ('besappá', 's.', NULL, NULL, NULL, NULL, 'pl. chopos del país. Cl. 3', NULL, 'kalabóro', 'Fuente: bubi-español', 'import-script'),
 ('besappí', 's.', NULL, NULL, NULL, NULL, 'pl. culebras verdes. Cl. 4. Tb. mosabbí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besappo', 's.', NULL, NULL, NULL, NULL, 'pl. cables, cuerdas resistentes. cinturones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 35 (entradas 851 a 875)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('besáráa', 's.', NULL, NULL, NULL, NULL, 'pl. espantadores, asustadores. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besarl', 's.', NULL, NULL, NULL, NULL, 'pl. bailes de hombres y mujeres. estrofas, canciones. Cl. 4. Tb. mesari', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Besarl', 'antrop.', NULL, NULL, NULL, NULL, 'relacionado con los verbos o salla u o salláa. Puede entonces traducirse por "persona que desgarra, rompe" o por "persona que teme". Debería escri birse Besari o Besári. Está localizado en Baney y en Sampaka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besawasawáa', 's.', NULL, NULL, NULL, NULL, 'pl. árboles del sawasawa, del guanábano o de la chirimoya. Cl. 4', NULL, 'basawasawáa', 'Fuente: bubi-español', 'import-script'),
 ('bese''e', 's.', NULL, NULL, NULL, NULL, 'pl. gusanos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besekka', 's.', NULL, NULL, NULL, NULL, 'pl. senderos, caminos. pistas Cl. 4. Tb. beso ''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besekke', 's.', NULL, NULL, NULL, NULL, 'pl. tablas de madera o de metal, plan chas. Cl. 4. Tb. betye''e, mityekke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beséllo', 's.', NULL, NULL, NULL, NULL, 'pl. desfallecimientos. falleci mientos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beseppe', 's.', NULL, NULL, NULL, NULL, 'pl. anguilas. Cl. 4. Tb. beeppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beseppe', 's.', NULL, NULL, NULL, NULL, 'pl. silbidos fuertes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besessa', 's.', NULL, NULL, NULL, NULL, 'pl. torrentera. río seco. barranco. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besi''e', 's.', NULL, NULL, NULL, NULL, 'pl. rabos, colas. Cl. 4. Tb. bisikké', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besi''o', 's.', NULL, NULL, NULL, NULL, 'pl. comidas ofrecidas a los espíritus guardianes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besikké', 's.', NULL, NULL, NULL, NULL, 'pl. rabos, colas. Cl. 4. Tb. besi''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besikkí', 's.', NULL, NULL, NULL, NULL, 'pl. delgadeces, enflaquecimientos. Cl. 4. Tb. besikko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besikko', 's.', NULL, NULL, NULL, NULL, 'pl. delgadeces, anorexias. Cl. 4. Tb. besikki', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besilla', 's.', NULL, NULL, NULL, NULL, 'pl. cuevas, grutas, madrigueras, caver nas. Cl. 4. Tb. beappú, miambú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besillo', 's.', NULL, NULL, NULL, NULL, 'pl. vaginas, chuminos. Cl. 4. Tb. bisinno. bes in no, s. pl. vaginas, chuminos. Cl. 4. Tb. besillo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besíporíi', 's.', NULL, NULL, NULL, NULL, 'pl. látigos, fustas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besippa', 's.', NULL, NULL, NULL, NULL, 'pl. trenzas. Cl. 4. Tb. bisuppa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besíríi', 's.', NULL, NULL, NULL, NULL, 'pl. captadores, *antenas, *antenas para bólicas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besisi', 's.', NULL, NULL, NULL, NULL, 'pl. compasiones, miserícordias. nostalgias. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beso''a', 's.', NULL, NULL, NULL, NULL, 'pl. hundimientos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beso''e', 's.', NULL, NULL, NULL, NULL, 'pl. caminos, trayectos. Cl. 4. Tb. besekka. Exp. to purán e - bio lobákko puá tracemos los caminos del cielo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beso''o', 's.', NULL, NULL, NULL, NULL, 'pl. acompañantes, compañías. Cl. 4. Tb. biso''o', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 36 (entradas 876 a 900)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('béso''o', 's.', NULL, NULL, NULL, NULL, 'pl. compañeros, amigos, colegas, cama radas. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besobo', 's.', NULL, NULL, NULL, NULL, 'pl. diversión, juego, entretenimiento. Cl. 4. 1 )4 I hi''siillú hi''siill. C I. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besoppé', 's.', NULL, NULL, NULL, NULL, 'pl. ardillas grandes. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besoppo', 's.', NULL, NULL, NULL, NULL, 'pl. 1. árboles del pan. 2. árboles saquientes. 3. mástiles. 4. torres, cimas, cúspides. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besorá', 's.', NULL, NULL, NULL, NULL, 'pl. pasos largos, tramos, saltos, brincos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besorí', 's.', NULL, NULL, NULL, NULL, 'pl. hilos, cordones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besossó', 's.', NULL, NULL, NULL, NULL, 'pl. textos. mensajes, noticias. actas, relatos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besossó', 's.', NULL, NULL, NULL, NULL, 'pl. conductos, tubos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besotte', 's.', NULL, NULL, NULL, NULL, 'pl. plomos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besotyi', 's.', NULL, NULL, NULL, NULL, 'pl. rayos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besso', 's.', NULL, NULL, NULL, NULL, 'pl. caras, rostros, facetas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besuállo', 's.', NULL, NULL, NULL, NULL, 'pl. frentes, frontales, delanteras. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besuisuií', 's.', NULL, NULL, NULL, NULL, 'pl. látigos, fustas, correas con las que se azota a alguien. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besuppa', 's.', NULL, NULL, NULL, NULL, 'pl. trenzas. Cl. 4. Tb. besippa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besurí', 's.', NULL, NULL, NULL, NULL, 'pl. enemistades. antipatías. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besussú', 's.', NULL, NULL, NULL, NULL, 'pl. hormigas rojas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('besutta', 's.', NULL, NULL, NULL, NULL, 'pl. resbalones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beta''o', 'S.', NULL, NULL, NULL, NULL, 'pl. pilones, palos con los que se muele algo en un mortero. Cl. 4. T b. beto ''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betabué', 'S.', NULL, NULL, NULL, NULL, 'pl. arbustos de hojas tintóreas y de líquido venenoso. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betákíó', 's.', NULL, NULL, NULL, NULL, 'pl. rectores. destacados, manda mases. Cl. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betákko', 'S.', NULL, NULL, NULL, NULL, 'pl. 1. mensajes, recados. 2. comunica dos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betapáero', 'S.', NULL, NULL, NULL, NULL, 'pl. ideas. propósitos. pen samientos Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betapetappe', 's.', NULL, NULL, NULL, NULL, 'pl. arcos que se colocaban a la entrada de los poblados. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betáppo', 's.', NULL, NULL, NULL, NULL, 'pl. muestras, escaparates. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betará', 's.', NULL, NULL, NULL, NULL, 'pl. expertos, astutos, avispados. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 37 (entradas 901 a 925)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('betátoo', 'S.', NULL, NULL, NULL, NULL, 'pl. listones, palos de la cumbre o del tejado de una casa. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betattá', 's.', NULL, NULL, NULL, NULL, 'pl. pieles, pellejos. Cl. 4. betéa, V. romperse, quebrarse, partirse. Pret. betéi, betései', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betébbá', 'S.', NULL, NULL, NULL, NULL, 'pl. corazones. Cl. 4. Tb. metémá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betebú', 'S.', NULL, NULL, NULL, NULL, 'pl. castaños. Cl. 4. betéi, pref. V. o betéa ; bo o boneÓl se rompió mi dedo. betelessi, pret. V. o betélla ; to - a batyo esperábamos a la gente. betella, V. esperar, aguardar, tener paciencia. Ej. imp. betellá! espera, aguarda. Pret. betéri, betélessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betello', 's.', NULL, NULL, NULL, NULL, 'pl. cinturas, caderas. Cl. 4. betélOlessi, pret. V. o betéliilla ; o mmása a - a balakoláko ba áí el jefe desconfiaba de sus trabajadores. betélolla, V. desconfiar; n la yo desconfio, n la - a batyo yo desconfio de la gente. Pret. betéliiri, betéliilessi. bétto / 95 betélOri, pret. v. o betélolla ; tyom maa n ta - a batyo ba e eriia IÍI jamás desconfié de la gente de mi pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beteo''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. gallos. . Tb. tomíoko. beteri, pret. v. o betel1a ; m bo - bó bii tyíó wáae a tá ha séí ayer le esperé pero no estuvo. betesei, pret. v. o betéa ; bo - o bosuisuií la e bitúríi se rompía la fusta con las palizas. betessi, pret. v. o bettáa ; o waísso a - e ribetye la mujer rompía la escoba. betessi, pret. v. o bettáa ; o wetta IÍI a - e bihelÍl. bi áí mi hermana ponía tierra en la base de la planta de sus malangas bubis', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betete', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. columnas vertebrales, espinazos. . Tb. metédé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betette', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. palmeras jóvenes. Cl. 4. Tb. metete. Betey, antrop. plural dc bOte ''í. Debería escribirse Bete''í. Está localizado en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betíríi', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. *serenidades, corduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beto', 'adj.', NULL, NULL, 'Cl. 4', NULL, 'largos, altos. Concuerda con las palabras de la ; bempo - largas narices', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betó''i', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. victorias, éxitos. ; e - be e eriia los éxi tos del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betó''ia', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. respetos, consideraciones, decoros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beto''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. hojas tiernas de la palmera datilera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beto''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. pilones, palos con los que se muele algo en un mortero. . Tb. beta''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betolla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. los árboles de tolla. . Tb. batolla. pl. los capullos del racimo de dátiles o raquis. . betólla, v. 1. hacer las paces, reconciliar. 2. quitar un maleficio. 3. confesar. 4. divulgar, pregonar; Ej. expr. e ibettá to i betólle ¡deshagámonos de las prohibiciones!. Pret. betóri, betuessi', NULL, 'o bélÍdóla, o bélÍdoa la', 'Fuente: bubi-español', 'import-script'),
 ('betólló', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. asuntos, conversaciones, coloquios, mensajes, diálogos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betoom', 's.', NULL, NULL, NULL, NULL, 'de! pl. cenizas. Cl. 4. betóra, v. promover una reconciliación. Pret. betóriia, betóresiia. betóresiia, pret. v. o betóra ; n - yo promovía una reconciliación, o - tú promo vías una reconciliación, a - él pro movía una reconciliación, to - nosotros promovíamos una reconciliación, lo vosotros promovíais una reconci liación, ba - el10s promovían una reconciliación. betóri, pret. v. o betólla ; n bi - e ibéttá quité los maleficios, n ba - balo batyo appa e bá hice las paces a estas dos personas. betóriia, pret. v. o betóra ; o botúkku bote a - e biriia el gran jefe promovió la reconciliación de los pueblos', NULL, 'biftoí', 'Fuente: bubi-español', 'import-script'),
 ('betotto', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. collares, abalorios. cuentas, bolas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betta', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. hermanas, primas. Cl. 2', NULL, 'wetta', 'Fuente: bubi-español', 'import-script'),
 ('bettá', 's.', NULL, NULL, 'Cl. 10', NULL, 'pl. enmiendas, correcciones públicas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bettáa', 's.', NULL, NULL, NULL, NULL, 'pl. alas, plumas. Cl. 6. bettáa, v. romper, quebrar, partir; sé - liipoo la el10 va a romper una pierna. Pret. bettyí, betessi. bettáa, v. poner tierra en la base de la planta de la malanga bubi; conj. preso na - bihelÍl. pongo tierra en la base de la planta de la malanga bubi, o la - bihelÍl, pones tierra en la base de la planta de la malanga bubi, a la bihelÍl pone tierra en la base de la planta de la malanga bubi, etc. Pret. betyí, betessi', NULL, 'o bettá, o bedda, o betta', 'Fuente: bubi-español', 'import-script'),
 ('betté', 'S.', NULL, NULL, 'Cl. 11', NULL, 'pl. paraguas, parasoles. Cl. 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bétto', 'S.', NULL, NULL, 'Cl. 11', NULL, 'pl. acciones de paz. confesiones. Cl. 10. 9 ; o wana pana a o bo''ó el alumno hispanófilo rompió la caña de azúcar', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betubáero', 's.', NULL, NULL, NULL, NULL, 'pl. respuestas, contestaciones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betúballa', 's.', NULL, NULL, NULL, NULL, 'pl. venganzas. inquinas. rencores. Cl. 4. Tb. betúmanna', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 38 (entradas 926 a 950)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('betubbá', 's.', NULL, NULL, NULL, NULL, 'pl. chopos. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betue', 's.', NULL, NULL, NULL, NULL, 'pl. 1. cabezales 2. tubérculos de la malan ga bubi. Cl. 4. betuessi, pret. v. o betólla ; n - reconcilia ba, o - reconciliabas, a - reconciliaba, to - reconciliábamos, reconciliabais, ba - rcconciliaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betuho', 's.', NULL, NULL, NULL, NULL, 'pl. regalos, ofrendas. Cl. 4. Th. batyuho, ba''abbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betúmanna', 's.', NULL, NULL, NULL, NULL, 'pl. venganzas. inquinas. rencores. Cl. 4. Tb. betúballa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betupori', 's.', NULL, NULL, NULL, NULL, 'pl. alivios, relajaciones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betuppi', 's.', NULL, NULL, NULL, NULL, 'pl. cansancios, fatigas, agotamientos. Cl. 4. Tb. betyuppo, betyibíi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betuttá', 's.', NULL, NULL, NULL, NULL, 'pl. basuras, porquerias. Cl. 4. Tb. biía. Tb. betyut tá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betuttú', 's.', NULL, NULL, NULL, NULL, 'pl. cometas, bocinas, pitos. Cl. 4. Tb. betyutyú. betya, v. hacer romper, hacer quebrar. Pret. betyía, betyesiia. bétya, v. invocar al espíritu de alguien falleci do o vivo. Pret. bétyiia, bétyesiia', NULL, 'o bentya, o benda', 'Fuente: bubi-español', 'import-script'),
 ('betya''á', 's.', NULL, NULL, NULL, NULL, 'pl. testículos, cojones. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyappa', 's.', NULL, NULL, NULL, NULL, 'pl. árboles de las suelas. Cl. 4. Tb. bet yoletyól le', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyappe', 's.', NULL, NULL, NULL, NULL, 'pl. excrementes alargados y de gran tamaño. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betye''e', 's.', NULL, NULL, NULL, NULL, 'pl. tablas de madera o de metal, plan chas. Cl. 4. Tb. besekke. betyesiia, pret. v. o betya ; n - hacía romper, o - hacías romper, a - hacía romper, to - hacíamos romper, 10 hacíais romper, ba - hacían romper. Ej. o boie a - e betye''e el hombre hacía romper las tablas de madera. bétyesiia, pret. v. o bétya ; n - o boé bo áí invocaba su espíritu, o - e erikirikki áí invocabas su silueta, a - i húbbé invocaba a los ladrones, to - a bayolla ba áó invocábamos a nuestros a ncestros, 10 - a batyiáÍltyo invocabais a los hechiceros, ba le - me invocaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyetyee', 's.', NULL, NULL, NULL, NULL, 'pl. rayos. Cl. 4. betyí, 1. s. pl. generaciones, eras. personas que nacen y viven en la misma época. Cl. 4. Tb. met yí. 2. pret. v. o bettáa; a batté m ba a los árboles los puse tierra en su base. betyía, pr et. v. o betya ; a baie ba -o boseke los hombres hicieron romper la tabla de madera', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyibíi', 's.', NULL, NULL, NULL, NULL, 'pl. cansancios, fatigas, agotamientos. Cl. 4. Tb. bi t yuppo, betuppi. Ej. expr. e be le rura ná ká e ebéló e té pella los cansancios nos envejecen antes de tiempo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyíi', 's.', NULL, NULL, NULL, NULL, 'pl. peticiones, súplicas. Cl. 6. bétyiia, pret. v. o bétya ; n ri - e isakké invoqué al espíritu del machete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyikabatta', 's.', NULL, NULL, NULL, NULL, 'pl. peces raya. Cl. 4. Tb. mityikamatta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyikka', 's.', NULL, NULL, NULL, NULL, 'pl. lanzas, flechas, dardos, picas. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyíó', 's.', NULL, NULL, NULL, NULL, 'pl. noches, tinieblas. Cl. 4. Tb. bihMma', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyiOri', 's.', NULL, NULL, NULL, NULL, 'pl. peinados, cortes de pelo. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyípótyípóo', 's.', NULL, NULL, NULL, NULL, 'pl. embrollos. tonterías. molestias. barullos. Cl. 4. Tb. bempá, biuppá. biálessi / 97', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyoletyólle', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. árboles de las suelas. . Tb. betyappa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyopíi', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. objeto punzante. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyoppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. demencias, locuras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyubbe', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. ciruelos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyúlo', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. vísceras del cangrejo. Cl. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 39 (entradas 951 a 975)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('betyuppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cansancios, fatigas, agotamien tos. . Tb. betuppi, betyibíi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyúppo', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. apoyos, bastones, muletas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyuttá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. basuras, porquerías. . Tb. biía, betuttá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('betyutyú', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. cornetas, bocinas, pitos. Cl. 4. Tb. betuttú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beú', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. confusiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beukka', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. recolectas, colectas. vota ciones. escrutinios. Cl. 4. Tb. bekulakulla, beul la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beulla', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. recolectas. votaciones. escrutinios. . Tb. bekulakulla, beukka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beullá', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cinturas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beutaeri', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. bandas, fajines. . Tb. beutta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beutta', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. circundantes, fajines, bandas, bal teos, faj as. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('beuttyi', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. montículos. montones. . Tb. bautyi. bi, 1. morf concord. Debe traducirse teniendo en cuenta su determinado: ellos, ellas; e biriia - lá ho los pueblos ellos están ahí. 2. conec. prep. del, de la, de los, de las; a bakotto - nabba las patas de los animales. Concuerda con las palabras de la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bi''a', 's.', NULL, NULL, NULL, NULL, 'sing. y pl. pez colorado, breca. Cls. 9 y 10. Tb. pi''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bi''é', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. nueces de cola. . Tb. banké', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bi''ee', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. afirmaciones. . bi''í, pret. redondo, redondeado; e ite ri - la piedra es redonda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bi''o', 'adv.', NULL, NULL, NULL, NULL, 'junto, cerca de, etc. ; o botyo - cerca de la persona, e tyóbbo - al lado de la casa, lokka ne - duerme junto a mí, o wettam lá le pélla mi hermana vive junto a mí. 2. s. sing. y pl. riñón. Cls. 9 y 10. Tb. pi''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bi''ó', 's.', NULL, NULL, 'Cl. 6', NULL, 'de! 1. fiebre, calentura. 2. paludismo. ; o boyolla e - el abuelo tiene fiebre', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bia', 'conec.', NULL, NULL, NULL, NULL, 'prep. de; e biriia - batyo los pueblos de las personas. Este conectivo prepositivo se forma por la fusión del prefijo de con cordancia bi más el aumento de la palabra determi nada. Concuerda con las palabras de las Cls. 2 y 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biaakká', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. chichones, abscesos. almen dras, semillas Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biáám', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. fincas, huertos, campos. . Tb. báám. Biachó, antrop. plural de eatyó. Se refiere a algo dificil de arrancar. Debe ría escribirse Biatyó. Está localizado en Ruiché y en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biaéa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. alambres, hilos metálicos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biaká', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. abscesos, chichones. . Tb. binná, biaakká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biáka', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. paseos, vagabundeos. . Tb. yáka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biakakótte', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. huesos vacios del palmiste. 2. envases. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biakala', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. calmante. malva cuyas hojas y flores se usan como laxantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biakalekko', 's.', NULL, NULL, NULL, NULL, 'pl. cocoteros, cocos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 40 (entradas 976 a 1000)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('biakalelé', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. transeúntes, caminantes. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biakalOla', 's.', NULL, NULL, NULL, NULL, 'pl. escamas de pez. Cl. 8. Tb. eakalola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biakko', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. asas, asideros. Cl. 8. Tb. biappo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biakóo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. coscorrones, capones. Cl. 8. Tb. tosula', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bialállo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. intemperies, exteriores. . biálessi, pret. v. o biálla ; n - aguantaba, o - aguantabas, a - aguantaba, to - [to 9H / hialla blúlcSSl 1 aguantúballlos, lii - 1 10 hlilk''Sl I agllan tabals, ba - [ba blúlcsslj aguantaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bialla', 's.', NULL, NULL, NULL, NULL, 'pl. generacioncs, qUlIltas edades Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biallá', 's.', NULL, NULL, NULL, NULL, 'pl. grupos, legiones, pandi l las, asocia ciones, cuadrillas, clubes. conjuntos, coleccIO nes. Cl. 8. biálla, v. aguantar, soportar, resistir; n la - e roppá aguanto el dolor. Pret. biám, biálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bialle', 's.', NULL, NULL, NULL, NULL, 'pl. 1. falsas colas. 2. árbo les de la falsa cola. Cl. 8', NULL, 'yalle', 'Fuente: bubi-español', 'import-script'),
 ('biallée', 's.', NULL, NULL, NULL, NULL, 'pl. enfados, enojos. Cl. 8. biallo, s pl. canciones, cánticos, himnos. estanterías, mostradores. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biálló', 's.', NULL, NULL, NULL, NULL, 'pl. arena. Cl. 8. Tb. biáló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bialó', 'antrop.', NULL, NULL, NULL, NULL, 'plural de eal/o. Debería escribirse Biallo. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biáló', 's.', NULL, NULL, NULL, NULL, 'pl. arena. Cl. 8. Tb. biál ló. biám, pret. v. o biálla ; n - aguanté, o - aguantaste, a - aguantó, to - aguantamos, 10 - aguantasteis, ba - aguanta ron. Tb. biári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biankítya', 's.', NULL, NULL, NULL, NULL, 'pl. pañuelos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biantí', 's.', NULL, NULL, NULL, NULL, 'pl. tías, hermanas del padre. Cl. 8. Tb. binepó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biaó', 's.', NULL, NULL, NULL, NULL, 'pl. hachas. cortes, rajas, navajazos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biaótalla', 's.', NULL, NULL, NULL, NULL, 'pl. unos duros. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biapá', 's.', NULL, NULL, NULL, NULL, 'pl. mandíbulas superiores. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biapaolla', 's.', NULL, NULL, NULL, NULL, 'pl. paladares. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biápollo', 's.', NULL, NULL, NULL, NULL, 'pl. manzanas, peras. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biappé', 's.', NULL, NULL, NULL, NULL, 'pl. hollejos secos. Cl. 8. Tb. yaape', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biappo', 's.', NULL, NULL, NULL, NULL, 'pl. 1. asas, asideros. 2. pinzas del can grejo. Cl. 8. Tb. biakko. hia. . . t, , . 1''/ l lanuras, valles. Cl. 8 tI> bit''�vlÍ�Vtl. hiarNI¡;. s 1''/'' estados de soltería tras haber IlwnlCllldo lIna relación amorosa. mujeres sol Ieras. . biári, ll/"; a batyi¡ ba - e ribiityii ri ábO e tyaróm la gente soportó su vida en la cárcel. TIJ. biám', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biatoo', 's.', NULL, NULL, NULL, NULL, 'pl. tardes. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biatotyiO', 's.', NULL, NULL, NULL, NULL, 'pl. anocheceres, atardeceres. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biatte', 's.', NULL, NULL, NULL, NULL, 'pl. pedrizas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biátto', 's.', NULL, NULL, NULL, NULL, 'pl. canoas, cayucos, góndolas. bar cas, barcos. naves, navíos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 41 (entradas 1001 a 1025)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('biatya', 's.', NULL, NULL, NULL, NULL, 'pl. picores, quemazones. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biatyá', 's.', NULL, NULL, NULL, NULL, 'pl. pechos, petos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biatyátya', 's.', NULL, NULL, NULL, NULL, 'pl. llanuras. Cl. 8', NULL, 'atyátya, biara', 'Fuente: bubi-español', 'import-script'),
 ('biátyi', 's.', NULL, NULL, NULL, NULL, 'pl. relojes, despertadores. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biatyó', 's.', NULL, NULL, NULL, NULL, 'pl. almejas, mariscos, ostras, moluscos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bibba', 's.', NULL, NULL, NULL, NULL, 'pl. rocíos, chirimiris. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bibbo', 's.', NULL, NULL, NULL, NULL, 'pl. demonios, espíritus, fantasmas. difuntos. Cl. 2', NULL, 'ibbo', 'Fuente: bubi-español', 'import-script'),
 ('bibolló', 's.', NULL, NULL, NULL, NULL, 'pl. pobreza/s. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biborábello', 's.', NULL, NULL, NULL, NULL, 'pl. desdentados, desdentaciones. Cl. 8. Tb. mbOrabello', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biboránokko', 's.', NULL, NULL, NULL, NULL, 'pl. ciegos, invidentes. Cl. 8', NULL, 'mbOránokkO', 'Fuente: bubi-español', 'import-script'),
 ('bibotúbotu', 's.', NULL, NULL, NULL, NULL, 'pl. ambigüedades, dudas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bibotyera', 's.', NULL, NULL, NULL, NULL, 'pl. cariños, gestos afectuosos. Cl. 8. Bichakete, antrop. formado por los términos o bUya y kette. Debería escribirse Bityakette. Está localizado en Belebú. Bichi, antrop. plural de bi5tyí. Se trata de uria trancripción errónea del plural betyí. Está localizaco en Baney. Bichúa, antrop. plural de etyu ''a. Debería escribirse Bityu''a. Está localiza do en Baney. bietáa / 99', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bidoroma', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. bombos. ', NULL, 'kunké', 'Fuente: bubi-español', 'import-script'),
 ('bíe', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. ríos, afluentes, arroyos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bie''e', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. uñas, pezuñas. . Tb. yekke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bie''e', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. bocas. 2. labios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bie''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. las tres piedras sobre las que se coloca la olla. . Tb. bíiJo, Me''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bie''oo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. pasos, pasos de cebra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bieá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. gambas, camarones. langostas acuáticas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biéá', 's.', NULL, NULL, NULL, NULL, 'pl. meses, periodos de treinta días. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bieba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. olas, olas grandes del mar. ondas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biebbe', 's.', NULL, NULL, NULL, NULL, 'pl. congojas, mucha tristeza. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Biebeda', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir de ebétá. Debería escribirse Bieeibédá. Está localizado en Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biebí', 's.', NULL, NULL, NULL, NULL, 'pl. maestros de ceremonias. ayu dantes y portavoces del sacerdote bubi. Cl. 8. Tb. bimpo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biebie', 'adj.', NULL, NULL, NULL, NULL, 'bellos, hermosos, guapos, bonitos, agradables. Concuerda con las palabras de las Cls. 4 y 8; e bempo - las hermosas narices, e biriia - los pueblos bonitos', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 42 (entradas 1026 a 1050)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bieka', 's.', NULL, NULL, NULL, NULL, 'pl. controversias. disputas. cuestaciones. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biekéke', 's.', NULL, NULL, NULL, NULL, 'pl. caracoles pequeños. Cl. 8', NULL, 'wekéke', 'Fuente: bubi-español', 'import-script'),
 ('biekké', 's.', NULL, NULL, NULL, NULL, 'pl. idiotas, tontos, imbéciles, bobalico nes. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biekko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. sartenes, cazuelas con mango. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bielelo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "persona por la que se llora". En bubi debería escribirse Beelelo. Está localizado en Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bielerí', 's.', NULL, NULL, NULL, NULL, 'pl. necesidades, deseos, caprichos, anhelos. Cl. 8. Tb. bipeleri, ep eleri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biellá', 'adj.', NULL, NULL, NULL, NULL, 'indo otros, otras. Concucrda con las palabras de las Cls. 4 y 8; beatta - otras noticias, bilabba - otros asuntos. biellá, S. pl. vientres, barrigas, panzas, estóma gos. Cl. 8 ")', NULL, 'welláa', 'Fuente: bubi-español', 'import-script'),
 ('biello', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pl. 1. Ií mites, fronteras. 2. horizontes. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biello', 'S.', NULL, NULL, NULL, NULL, 'pl. regocijos. alegrías. Cl. 8. 77). baokó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biéllo', 'S.', NULL, NULL, NULL, NULL, 'pl. peleas, disputas, contiendas, comba tes, camorras. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bielo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "alguien por quien se llora, persona deseada". Debería escribirse Be''elo. También lo encontramos escrito como Bebelo en castellano. Está localizado en Riaba, Moka, Bahó, etc', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bielo''o', 'S.', NULL, NULL, NULL, NULL, 'pl. escorpiones, langostas terrestres. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biem', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pl. vinos. Cl. 8. Tb. bilóbíl/o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biemí', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pl. malangas bubis. . Tb. bihelÍl, biheei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bienna', 'S.', NULL, NULL, NULL, NULL, 'pl. granos en la cara. espinillas. orzuelos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bieoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas. Concuerda con las pala bras de las Cls. 4 y 8; beatta - pocas historias, biriia - pocos poblados', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biepeppe', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pl. berenjenas. . Tb. ibepe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bieppé', 'S.', NULL, NULL, 'Cl. 7', NULL, 'pl. perezosos, vagos, holgazanes, hara ganes. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bieppí', 'S.', NULL, NULL, 'Cl. 7', NULL, 'pl. cantos, cánticos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bieppo', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pl. himnos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biera', 'S.', NULL, NULL, 'Cl. 4', NULL, 'numo cientos, centenares. ; - bió cinco mil euros. Th. bierá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bierá', 'S.', NULL, NULL, NULL, NULL, 'numo pl. quinientos, miles. Cl. 8. Tb. biera', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bierí', 'S.', NULL, NULL, NULL, NULL, 'pl. hormigas grandes y rojas. carac teres, temperamentos, formas de ser. Cl. 8. Tb. werí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biesee', 'S.', NULL, NULL, NULL, NULL, 'pl. moscas jenjén. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biesso', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pl. costas, *playas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 43 (entradas 1051 a 1075)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('biesuessu', 'S.', NULL, NULL, 'Cl. 3', NULL, 'pl. setas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bietáa', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pl. inteligencias, conocimientos, men tes. . 1041 / hil-l:í. ', NULL, 'biétáa', 'Fuente: bubi-español', 'import-script'),
 ('biette', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. verdades, verídicos. Cl. 8. Tb. yette', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biette', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. bandos. normas, órdenes, decretos, leyes. justicias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biettya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cabañas, chozas. . Tb. wetya, [opando, bietya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bietya', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. cabañas, chozas, *casas, barracas. . Tb. wetya, [opando, biettya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bietyaétya', 's.', NULL, NULL, NULL, NULL, 'pl. placentas, matrices. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bietyetyú', 's.', NULL, NULL, NULL, NULL, 'pl. lagartos, lagartijas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bietyíi', 's.', NULL, NULL, NULL, NULL, 'pl. silbidos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cubos, barreños. platos, bande jas. . Tb. bikítol/o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihabba', 's.', NULL, NULL, NULL, NULL, 'pl. lugares, sitios. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihaé', 's.', NULL, NULL, NULL, NULL, 'pl. corajes, valentías, ánimos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihaíeen', 's.', NULL, NULL, NULL, NULL, 'pl. planchas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihakká', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. nudos corredizos. trampas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihalle', 's.', NULL, NULL, NULL, NULL, 'pl. sardinetas, arenques. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihám', 's.', NULL, NULL, NULL, NULL, 'pl. semejanzas, parecidos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihámma', 's.', NULL, NULL, NULL, NULL, 'pl. martillos, mazos, mazas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihánaeri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. competencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihánna', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. retratos, imágenes, fotos. Cl. 8. Bihao, antrop. plural de eaó. Debe ría escribirse Biaó. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihao', 's.', NULL, NULL, NULL, NULL, 'pl. cubos, barreños. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihaóla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hojas santas; plantas de la resurrec ción. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihattá', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. pactos, tratos. secretos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihatto', 's.', NULL, NULL, NULL, NULL, 'pl. desayunos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihátyibianna', 's.', NULL, NULL, NULL, NULL, 'pl. abrazos. Cl. 8. Tb. biiappo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihe', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'nuevos, nuevas. Concuerda con las pala bras de la ; biriia pueblos nuevos, bimpa asientos nuevos', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 44 (entradas 1076 a 1100)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bihe''ahe''a', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. pésames, condolencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biheá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. incordios. abusos. líos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biheberi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. reposos, descansos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biheberí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. gemidos. suspiros. . biheei, s. pl. rnalangas bubis. Cl. 8. Tb. bihem, biimí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihehe', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. mollejas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biheká', 's.', NULL, NULL, NULL, NULL, 'pl. trozos, mitades, cachos. por ciones, pedazos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihelábossoo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. partidas, comienzos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihélellé', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cuidados, atenciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biheleri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. súplicas, peticiones, ruegos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihem', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. malangas bubis. Cl. 8. Tb. biimí, biheei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biheperi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. visitas, visitantes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihéri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. manojos de hojas de tabaco. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihero', 's.', NULL, NULL, 'Cl. 2', NULL, 'pl. preguntones. demandantes de información. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihette', 's.', NULL, NULL, NULL, NULL, 'pl. desvelos, insomnios. veladas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihetúhéttu', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. buches de las aves. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihetyoro', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. desnudos, desnudeces. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihiió', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. asmas. bronquitis. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihítaeri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. testigos. espectadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihMma', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. frutas, frutos. . Tb. bimmáttii. bihl\Íma, s. pl. oscuridades, tinieblas. ', NULL, 'biItMmari', 'Fuente: bubi-español', 'import-script'),
 ('bihMmabi''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. regocijos, satisfacciones. . bihl\Ímari, s. pl. oscuridades, tinieblas. . Tb. birimarima, bihilÍma. biilla / 101', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihMmero', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. contestaciones, respuestas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihMmo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cucarachas. . Tb. beebaeba, bebaeba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihNná', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. abscesos. ampollas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihNtyátya', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. flores. . Tb. taate. bihó, 1. s. pl. rebeldías, travesuras, testarudeces. 2. adj. cabezudos, cabezotas, desobedientes. . Tb. wihó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biho''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. columnas, postes, pilares. . Tb. bio''o', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 45 (entradas 1101 a 1125)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bihoahooa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hojas de la paz. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihobbá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. bosques, selvas. . Tb. bUa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihoehoe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ecos, repeticiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihoi', 's.', NULL, NULL, 'Cl. 7', NULL, 'sing. paces, armonías, tranquilidades. . Tb. ehiJíhiJí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihokko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. arpones, aguijones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihókko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. lazos corredizos del etélle. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihokoro', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. frutos del oero, son comestibles. Se utilizan como condi mentos en la gastronomía bubi. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihólle', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. querencias, apetencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihólolló', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. prostitutos, prostitutas, rameros, rameras, putos, putas, etc. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihomoí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. paces, armonías, tranquilidades. . Tb. bihoi (sing. eho, j', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihorá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. vómitos. ', NULL, 'bihoro', 'Fuente: bubi-español', 'import-script'),
 ('bihoro', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. vómitos. ', NULL, 'bihorá', 'Fuente: bubi-español', 'import-script'),
 ('bihótóttó', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'blancos, blancas. Concuerda con las palabras de la ; bilebbó campanas blancas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihótto', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. horas. . Tb. bisú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihuáeri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. tratos, acuerdos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihuenóko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. tibios, tibias. templanza. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihuhu', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. tórtolas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihulá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. alientos, soplos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihulábette', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hormigueros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihulahúla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. pulmones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihulo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hinchazones, brotes, ampollas. montes, montañas. . Tb. bió, baupo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihuri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hinchazones, inflamaciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihurí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cebos. . Tb. abetebette, bisello', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihurú', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. vientos, aires, brisas. . Tb. bihurúru', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihurúru', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. vientos, aires, brisas. . Tb. bihurú', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 46 (entradas 1126 a 1150)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bihuteri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. embozos, dobleces. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihúto', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. lazos, nudos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bihútu', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. humos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bii''aale', 's.', NULL, NULL, NULL, NULL, 'sing. carga, fardo. Cl. 3. Tb. hiFe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bii''áeri', 's.', NULL, NULL, NULL, NULL, 'pl. entendimiento, comprensión. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
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
 ('biía', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. fincas de ñames. 2. muladares. 3. fin cas, bosques, campos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bíía', 's.', NULL, NULL, NULL, NULL, 'pl. cervezas. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiáa', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. 1. basurero, estercolero. marea baja, bajamar. tiempo de pesca. . Tb. bOá. 2. hachas, mangos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiábanna', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. restos, sobras. . Tb. biiara, biiabara', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiabara', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. restos, sobras. . Tb. biiara, biiábanna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
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
 ('biiállo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ayudas, auxilios, socorros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiara', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. restos, sobras. . Tb. biiabara, biiábanna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiba', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. rocíos. . Tb. bamma, bubba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiera', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. marcas, señales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiheri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. preguntas, cuestiones. 2. servicios de información. . Tb. meíhero', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biiko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. árboles de los salchichones. 2. árbo les de cementerio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biilla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. prohibiciones, abstinencias. . Tb. binna, bii ra. 102 / biilloo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biilloo', 's.', NULL, NULL, NULL, NULL, 'pl. madejas, hilos. nudos, lazos. Cl. 8', NULL, 'yillii', 'Fuente: bubi-español', 'import-script'),
 ('biiloom', 's.', NULL, NULL, NULL, NULL, 'pl. lavaderos. limpiezas. Cl. 8. Tb. batowerí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bíín', 's.', NULL, NULL, NULL, NULL, 'pl. anillos, sortijas, alianzas. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biira', 's.', NULL, NULL, NULL, NULL, 'pl. destetes. prohibiciones. Cl. 8. Tb. binna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biitá', 's.', NULL, NULL, NULL, NULL, 'pl. aceite; - bá ii ribiityii aceite de palma. crema, pomada. Cl. 6. Tb. butá, bahNta, mitá, matyátya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biitalla', 's.', NULL, NULL, NULL, NULL, 'pl. equivocaciones, errores, desacier tos. Cl. 8. Tb. biityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biitánna', 's.', NULL, NULL, NULL, NULL, 'pl. encuentros. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biityám', 's.', NULL, NULL, NULL, NULL, 'pl. lugares donde se corteja a alguien. flirteos, ligues. Cl. 6', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biityi', 's.', NULL, NULL, NULL, NULL, 'pl. equivocaciones, errores, desaciertos, faltas. Cl. 8. Th. biitalla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biityíi', 's.', NULL, NULL, NULL, NULL, 'pl. 1. hermanos menores. Cl. 2 2. antrop. Bityi localizado en Baney. Bijem, antrop. referido al tubérculo deno minado "malanga bubi" o Dioscorea dumetorum. Debería escribirse BiheÓl. Se localiza en Basaka to de la Sagrada Familia. Bijeri, antrop. plural de ehéri. También puede significar "alguien que remedia" si tenemos en cuenta el verbo o MUa. Debería escribirse Biheri. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikaí', 's.', NULL, NULL, NULL, NULL, 'pl. hospitales. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikakká', 's.', NULL, NULL, NULL, NULL, 'pl. apocados, tontos, necios, bobos, botarates, etc. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikákka', 's.', NULL, NULL, NULL, NULL, 'pl. cangrejos negros y amargos. Cl. 8. Tb. ikákka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikáókáó', 's.', NULL, NULL, NULL, NULL, 'pl. esputos, gargajos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 48 (entradas 1176 a 1200)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bikapátya', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. chillidos, berridos, bramidos. Cl. 8. Th. bitábatábba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikará', 's.', NULL, NULL, NULL, NULL, 'pl. lenguas inglesas, idiomas ingleses. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikasokasso', 's.', NULL, NULL, NULL, NULL, 'pl. relámpagos. resplan dores. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikasso', 's.', NULL, NULL, NULL, NULL, 'pl. diligentes, rápidos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bíke', 'adj.', NULL, NULL, NULL, NULL, 'pl. mucho, abundante. Concuerda con las palabras de las Cls. 2, 4, 6 Y 8; a batyii - las perso nas muchas, e beleppo - los espejos muchos, a boppé - el agua mucha, e bilabba - las cosas tradicionales muchas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bike''o', 's.', NULL, NULL, NULL, NULL, 'pl. ensayos, exámenes, pruebas. Cl. 8. Tb. bisori', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikerétta', 's.', NULL, NULL, NULL, NULL, 'pl. ralladores. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikerikeri', 's.', NULL, NULL, NULL, NULL, 'pl. albinos, personas muy blancas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikétekéte', 's.', NULL, NULL, NULL, NULL, 'pl. luchas, batallas. Cl. 8. Th. baoppo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bíki', 's.', NULL, NULL, NULL, NULL, 'pl. semanas, periodos de siete días. mechas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikítollo', 's.', NULL, NULL, NULL, NULL, 'pl. cubos. Cl. 8. Th. bihá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikkí', 's.', NULL, NULL, NULL, NULL, 'pl. cercos, vallas. parques, cerca dos. Cl. 6 ; - bá a Mllá parques infantiles', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biknkuna', 's.', NULL, NULL, NULL, NULL, 'pl. mancos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikobaera', 's.', NULL, NULL, NULL, NULL, 'pl. copiador, copiadoras. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikobbe', 's.', NULL, NULL, NULL, NULL, 'pl. 1. plátanos. 2. racimos de plátanos. Cl. 8. Th. bekobbe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikobbo', 's.', NULL, NULL, NULL, NULL, 'pl. monedas, centavos. Cl. 8. Tb. bikoppii', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikobekobbe', 's.', NULL, NULL, NULL, NULL, 'pl. las hojas de la planta del pláta no o de la banana. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikoé', 's.', NULL, NULL, NULL, NULL, 'pl. objetos, cosas. personas. Cl. 8. Tb. bikiillé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikokka', 's.', NULL, NULL, NULL, NULL, 'pl. águilas imperiales, águilas en general. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikokkí', 's.', NULL, NULL, NULL, NULL, 'pl. gaviotas grandes, cigüeñas gran des. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikokko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cabezas, cráncos. . Th. bitue, bityue, bipóñrbó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikokonno', 's.', NULL, NULL, NULL, NULL, 'pl. 1. núcleos, uniones de dos o tres ramas en su base troncal. 2. amigas con derecho a roce, amantes. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikokoo', 's.', NULL, NULL, NULL, NULL, 'pl. disparos. Cl. 8 ; e - bi e bitataa los disparos de las escopetas. bilappá / 103', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikokóo', 's.', NULL, NULL, NULL, NULL, 'pl. plantas de la malanga. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikokopíppo', 's.', NULL, NULL, NULL, NULL, 'pl. pelmazos, pesados. "plastas", "pesados". Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 49 (entradas 1201 a 1225)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bikokotya', 's.', NULL, NULL, NULL, NULL, 'pl. ebulliciones. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikollé', 's.', NULL, NULL, NULL, NULL, 'pl. objetos, cosas. personas. Cl. 8. Tb. bikoé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikomposi', 's.', NULL, NULL, NULL, NULL, 'pl. mejunjes, potingues. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikonkoo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ruedas, neumáticos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikonna', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. l. jorobas. 2. troncos. . Tb. bitikObbo, bimmommo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikookoo', 'adj.', NULL, NULL, NULL, NULL, 'pocos, pocas, pequeños, peque ñas. Concuerda con las palabras de la Cl. 8; bilappa - pinzas pequeñas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikoppo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. monedas, centavos. Cl. 8. Tb. bikobbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikóri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. desbroces, roturaciones, desmontes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikorókoró', 's.', NULL, NULL, NULL, NULL, 'pl. desórdenes. Cl. 8. Tb. bOkuékui', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikosiballa', 's.', NULL, NULL, NULL, NULL, 'pl. insultos. Cl. 8. Tb. bikosso', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikosso', 's.', NULL, NULL, NULL, NULL, 'pl. gruñidos. insultos. Cl. 8. Tb. bikOsiballa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikotekotte', 's.', NULL, NULL, NULL, NULL, 'pl. búhos, lechuzas. Cl. 8. Tb. biokkó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikúbari', 's.', NULL, NULL, NULL, NULL, 'pl. tropiezos, tropezones. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikuéi', 's.', NULL, NULL, NULL, NULL, 'pl. caídas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikuekka', 's.', NULL, NULL, NULL, NULL, 'pl. frutas silvestres muy dulces. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikuemáa', 's.', NULL, NULL, NULL, NULL, 'pl. guayabas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikukuu', 's.', NULL, NULL, NULL, NULL, 'pl. truenos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikulekulé', 's.', NULL, NULL, NULL, NULL, 'pl. antros, clubes nocturnos. Cl. 8. Tb. bilikúléku', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikunna', 's.', NULL, NULL, NULL, NULL, 'pl. tragos, bebidas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikutakutta', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. mantas grandes, lonas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bikutyú', 's.', NULL, NULL, NULL, NULL, 'pl. bases, fundamentos. relevan cias, importancias. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bila', 'antrop.', NULL, NULL, NULL, NULL, 'que se forma a partir de biilla o bílla. Debería escri birse BüIla o Bílla. Está localizado en Bocoricho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilabaliba', 's.', NULL, NULL, NULL, NULL, 'pl. herbáceas de hojas opuestas y trifoliadas de flores blancas y amarillas o Bidens pilosa. pega-pega. Cl. 8', NULL, 'gubaguba', 'Fuente: bubi-español', 'import-script'),
 ('bilabba', 's.', NULL, NULL, NULL, NULL, 'pl. asuntos, cuestiones, temas, eventos, operaciones, etc. Cl. 8 ; e - bié tyo los asuntos tradicio nales; e - bieó tyue abObée nuestros asuntos más celosamente guar dados nosotros los bubis', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilakka', 's.', NULL, NULL, NULL, NULL, 'pl. 1. collares, gargantillas. 2. panales, colmenas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 50 (entradas 1226 a 1250)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bilako', 's.', NULL, NULL, NULL, NULL, 'pl. faenas, trabajos, tareas, oficios. Cl. 8. Ej. expr. e - bi''a le oríi los trabajos han acabado con migo. bilálessi, pret. v. o bilálla ; o boie n bo - el hombre, yo bailaba con él. bilálla, v. bailar con; o botyo bai lar con alguien. Pret. bilári, bilálessi. bilám, pret. v. o bilánna ; m bo - o waísso con ella bailé, la mujer, to - i pókk. ó bailamos con los bueyes. Tb. bilári. bilámpuá, pret. v. o bilelapuá ; n ri - e raatyé bailé sobre la cama. bilánessi, pret. v. o bilánna ; o bulla bo - o bOie bo ábO la doncella bailaba con su padre. bilanessípuá, pret. v. o bilelapuá ; e raatyé n ri -la cama, bailaba sobre ella. bilánna, v. danzar con alguien o con algo; n la - riOkkó bailo con alegría. Pret. bilám, bilánessi', NULL, 'o bilánna', 'Fuente: bubi-español', 'import-script'),
 ('bilappa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. dedos gordos del cangrejo. tenazas, alicates. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilappá', 's.', NULL, NULL, NULL, NULL, 'pl. pareos. pati. os de grandes dimensiones. telas, retales. Cl. 8. 1 04 / hilil ri bilári, ¡JI"''. 1''. o bl lúl la, ji waíssii 111 bii -la mUJcr bai lé con clla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilasálássá', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. atrevinuentos, osadías. Cl. g', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bile', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'dem. aquellos, aquellas. Concuerda con los nombres de la ; - bihoro aquellos vómi tos, - bihólolló aquellas prostitutas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bile''e', 's.', NULL, NULL, 'Cl. 4', NULL, 'pl. hemorragias nasales. . Tb. hilo''u, bilekka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bile''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. tumbas, sepulcros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bile''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. círculos, circunferencias. . lb. hilikko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileaero', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. almohadas, reposacabezas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biléálo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. respaldos, apoyos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilebári', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. olvidos, omisiones. . Tb. biótári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilebbáa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. defectos fisicos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilebbó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. campanas, cencerros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilebí', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. olvidos, omisiones, dejaciones. Cl. 8. Tb. hilibári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilebóri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. recuerdos, reminiscencias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileheri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. molestias. provocaciones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileka', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. argollas, corajes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bileká', 'antrop.', NULL, NULL, NULL, NULL, 'plural de eleka. Bileka se referirá, pues, a alguien con mucho coraje y valentía. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. arrugas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. canalones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bilekera', 'antrop.', NULL, NULL, NULL, NULL, 'formado a partir de la expresión bubi bí la ekera, y en la que el morfema concordante con función de sujeto no se refiere a personas. Se localiza en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilekka', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hemorragias nasales. . Tb. bile''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilekko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. círculos, circunferencias. . Tb. biutyeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilekúléku', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. barrancos. 2. antros, clubes nocturnos. . Tb. bikulikulé. hilclapuá, 11. bailar sobre algo o, i lglllcn; n la e - e empa yo bai lo sobre el asiento. Pret. bilámpuá, bilanes sípuá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilele', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. legañas. . bilelessi, pret. v. o bilella ; a batyo ba - abébá las per sonas bailaban para los cazadores. bilella, v. bailar por/para; o - tyóbbo alo bai lar delante de una casa. Pret. bileri, bilelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 51 (entradas 1251 a 1275)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('Bilelo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "alguien por quien se baila", formado a partir del verbo o bílla. Debería escribirse Bilelo. Se localiza en Belebú y Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilepaIeppa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. plantas de hojas grandes y comestibles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileperíbbo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. almas malignas que causan el mal. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilepori', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. descubrimientos, hallazgos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileppé', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cadáveres. restos mortales. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bileppo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. escondites. despensas, arma rios. c) ocultaciones, precauciones. . bileri, 1. pret. v. o bilella ; a bOllá ba - i húúa los niños bailaron para el público. 2. s. pl. bailes. Cl. \O', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biléssi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. puntillas, encajes, cenefas. . bílessi, pret. v. o bílla; mpári m - o bOlebbó ayer bailaba el baile de las campanas de madera', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biletera', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. letras, caligrafias. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bilibi', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado es obtenido por analogía a otros términos bubis como bilehí. Se localiza en Lubá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bílla', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. nombres, honores. ; a - ba batyo los nom bres de las personas. bílla, v. bailar, danzar; na - o bOatte bailo la danza de la paz. Pret. bíríi, bílessi. billé, prono pl. otros, otras. Concuerda con las pala bras de la ; bilo biriia, e - estos poblados, los otros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('billo', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pl. días, jornadas, fechas. . bimmátte / 105', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('billo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ñames. . Tb. biemí (sing. eem, j', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('billó', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'pl. negros, oscuros. . Concuerda con las palabras de las Cls. 2, 4, 6 Y 8; baísso - mujeres negras, benkinki abejorros negros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilo', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'dem. estos, estas. Concuerda con los nombres de la ; - biaó estas hachas, - bia pa estas mandíbulas superiores', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilo''a', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. círculos, circunferencias. . Tb. biloka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilo''á', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. mares. océanos. . Tb. binoá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilo''o', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. vagos, holgazanes, perezosos, ñoños. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biloállo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. playas, orillas del mar. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biloátyi', 's.', NULL, NULL, NULL, NULL, 'pl. mordiscos mordeduras. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilobalObba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. grietas, hendeduras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilObalóbba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. champiñones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilobbe', 's.', NULL, NULL, NULL, NULL, 'pl. semilleros. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilobbo', 's.', NULL, NULL, NULL, NULL, 'pl. platos de un ágape. menús. Cl. 8 ; o''a reri - u e bilobbo por ti han comido suculentos platos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bilobé', 'antrop.', NULL, NULL, NULL, NULL, 'plural de elohhe. Se localiza en Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilobí', 's.', NULL, NULL, NULL, NULL, 'pl. pescas. actividades pesqueras. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 52 (entradas 1276 a 1300)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bilóbíllo', 's.', NULL, NULL, 'Cl. 3', NULL, 'pl. vinos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilobo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. faenas, trabajos, tareas. Cl. 8. Tb. bilakiJ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biloka', 's.', NULL, NULL, NULL, NULL, 'pl. circunferencias, círculos. Cl. 8. Tb. bilo''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Biloko', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Beluku y que significa lunaciones. Se aplica a aquellas personas que experimentan cambios constantes en su forma de ser. Se localiza en Moka. bilOlessi, pret. v. o bilolla ; m bo - o bOllá yo destapaba al niño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilollá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. caracoles grandes del mar. . bilolla, v. descubrirse, destaparse; na ni la o''áa huehue a en tyí''a ba - aunque tenga calor no me destapo. Pret. bilori, bilOlessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilOllo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. lugares donde pastan las cabras. las hojas que come la cabra. pastos. ', NULL, 'iliilliJ', 'Fuente: bubi-español', 'import-script'),
 ('bilolló', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. cortezas. pieles de la fruta o de los tubérculos. Cl. 8. Tb. binonó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilopa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. demonios. endiablados. cenizos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilopeloppe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cañas de bambú. . Tb. eloppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biloppe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cañas de bambú. . 10. bilopeloppe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bilora', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Bilo''oora. Está localiza do en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilorí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. aves, pájaros grandes. . bilori, pret. v. o bilolla ; to bo - o boyulla destapamos al abuelo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilosso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ofrendas, presentes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilotolotto', 's.', NULL, NULL, NULL, NULL, 'pl. cuerpos inertes, cadáveres. Cl. 8. Tb. bilotto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilotolOttó', 's.', NULL, NULL, NULL, NULL, 'pl. flores. toda las variedades de f lores. orejas grandes, auriculares. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilotto', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. cuerpos inertes, cadáveres, carcasas humanas. Cl. 8. Tb. biloto lotto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bilottyí', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. veladores, espiritistas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimasosso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. carbones, ascuas, brasas. . Tb. bimatyotyo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimatyotyo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. carbones, ascuas, brasas. . Tb. bimasosso. bimma, prono indo algunos, algunas. Concuerda con los nombres de la Cl. 8 ; he - biriia hay algunos poblados', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimmaa', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'indo todos, todas. Concuerda con los nombres de la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimmaeri', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. asistentes. paladines. testigos. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimmáloto', 'S.', NULL, NULL, 'Cl. 8', NULL, 'pl. piñas de cacao, cacaos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimmátte', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. frutas, frutos. . Tb. bihMma. J O / hilllllll''rí birnrnerí, s, , 1 cénlllllOS, cCllla, "s. birnrnornrno, spl. troncos. Cl. X. Tb. bikonna, bitekiJbbo. bimpa, s, pl. asientos. Cl. 8. Tb. biupa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimpampa', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. asientos grandes, butacas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bimpo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ayudantes y portavoces del sacerdo te bubi. . Tb. biebí', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 53 (entradas 1301 a 1325)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('bimpompo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. narigones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binaéle', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. dedos pulgares. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binámmobiétuepuá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. jilgueros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binanáa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. racimos de bananas. . Tb. binanákobbe. binanákobbe, spl. racimos de bananas. . Tb. binanáa. bineem, pret. v. o binenna ; o le -mpari me pisaste ayer', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bineke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ranas, sapos. arrugas. . Tb. binyeke, binyekábityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binénée', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. fiambreras, bandejas. . binenessi, pret. v. o binenna ; i pókkó i - e elOllo los bueyes pisaban el pasto. binenna, v. pisar; o la le binimna me estás pisando. Pret. bineem, binenessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binepó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. tías, las hermanas del padre. . Tb. bÜlntí. bines si, pret. v. o binna ; n - aplastaba, o - aplasta bas, a - aplastaba, to - aplastábamos, lo - aplastabais, ba aplastaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binkeléssi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. idiomas ingleses. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binkinki', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. moscardones, moscas grandes. Cl. 8. binna, v. triturar, aplastar, moler, atropellar; n tyí''a na''a o - a bi''é no quie ro triturar las nueces de cola. Pret. binni, binessi. hinná, s pl. abscesos. tumores. . Tb. biaká. hinna, s pl. prohibiciones. Cl. 8. TI>. minna. hinni, II/''; n - aplasté, ii aplastaste, a - aplastó, to - aplastamos, 10 - aplastasteis, ba - aplastaron; 010 bOtyo a - o rikotye a esta persona le aplastó un camión', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binno', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. tumbas, sepulcros. . Tb. bile''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binno', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. nudos, . Tb. bUIliJo. bino á, s. pl. mares. . Tb. bilo ''á', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binobanobba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. bostezos. . Binohari, antrop. relacionado con enoá. Se refiere a aquella parte del mar donde generalmente van las mujeres. Se localiza en Belebú y Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binokonokko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. monstruos, cíclopes, ogros, etc. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binokosso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. murmullos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binonó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cortezas. las pieles de las fru tas o de los tubérculos. . Tb. bilolló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binonori', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. notificaciones. declaracio nes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bintanta', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hojas. papeles grandes. follaje. . Tb. biutaut ta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bintúbíntú', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'bajos, bajas, cortos, cortas. Con cuerda con las palabras de la ; billii - ñames cortos', NULL, 'bilÍtú', 'Fuente: bubi-español', 'import-script'),
 ('binyankue', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. cabezudos, mamarrachos. . binyekábityi, spl. ranas, sapos. . Tb. binyeke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binyeke', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ranas, sapos. . Tb. binyekábityi, bineke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('binyo''o', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. personas ignorantes, tontas. . biOppe / 107', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bio', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. alcobas, aposentos, habitaciones. . Tb. bóóm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bió', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. colinas, montes, montañas. cuestas, subidas. . Tb. biiiló, biulo, bauppoo. 2. adj. numo diez; bebaeba bié - diez cucarachas. Concuerda con las palabras de las Cls. 4 y 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bio''o', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. columnas, postes, pilares. Cl. 8. Tb. biho''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biobaobo', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. laderas. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 54 (entradas 1326 a 1350)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('biobba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. suelos. tierras, países. ; e bie Áfrikka los países de África', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biObbe', 'adj.', NULL, NULL, NULL, NULL, 'pl. machos, varones. Concuerda con las palabras de las Cls. 4 y 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biobbé', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. los frutos de la atanga. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biObélle', 's.', NULL, NULL, NULL, NULL, 'pl. solteros. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biObéolla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ancianos, viejos. . Tb. biObetyityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biobftyityi', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. ancianos muy mayores. Cl. 8. Tb. biiibéolla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biobó', 'adj.', NULL, NULL, NULL, NULL, 'pl. duros, fuertes. Concuerda con las palabras de las Cls. 4 y 8; e bekutta - las mantas f uertes, e biriia - los pueblos fuertes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bióbOla', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. entre las montañas. 2. valles, cañadas, collados. . Tb. biówela', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bioboobo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hojas grandes que se utilizan para cubrir las ollas recién salidas del fuego. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biokíssi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. baúles, cajas, cajones. ataú des. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biokki', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. unos tipos de ñame. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biokko', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. avenidas, bulevares. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOkkó', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. búhos, lechuzas. Cl. 8. Tb. bikiitekiitte', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ecos, repeticiones. . Tb. bihiiehiie', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('Bioko', 'antrop.', NULL, NULL, NULL, NULL, 'que parece una castellanización de behokko, o de bi6k6. Se localiza en Rebola, Moe r i y Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOkó', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. día, de día. ', NULL, 'eiikó', 'Fuente: bubi-español', 'import-script'),
 ('biOkollo', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. conchas, caparazones de cangre jos. 2. pimientos. . Th. iikiillii', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biókoóko', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. mariposas. 2. mujeres licencio sas; e - bi a ripotto las mujeres licenciosas de la ciudad. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOkoputtú', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. enjambres. Cl. 8. Tb. ep uputtu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biókóra', 's.', NULL, NULL, 'Cl. 1', NULL, 'pl. camaleones. Cl. 8. Tb. wátéte', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOkoríbba', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. lagos, pantanos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOkuaso', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. personas que obran por inte rés. gorrones, gorreros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biole', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. discapacidades, defectos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bioleri', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. transportadores, transportes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biollé', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. objetos, cosas, materias. 2. tipos de ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 55 (entradas 1351 a 1375)
INSERT INTO dictionary_entries (
 bubi, word_type, gender, number, nominal_class, plural_form,
 spanish, examples, variants, notes, created_by
) VALUES
 ('biólló', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ofensas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOló', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. colinas, montes, montañas. cuestas, subidas. . Tb. bió, biulo, bihulo. 2. s. pl. dátiles verdes y no maduros. racimos verdes de dátiles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOlóba', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. setas, champiñones. Cl. 8. Tb. beesuesu, bitatya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOlólló', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'pl. viejos, veteranos. Concuerda con las palabras de la ; bimpa - asientos viejos, biriia - viejos pueblos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bíoo', 's.', NULL, NULL, 'Cl. 6', NULL, 'pl. fogones. fuegos de tres piedras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biopaoppa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. mantos, capas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biope', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. vagabundeos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bioperí', 's.', NULL, NULL, 'Cl. 7', NULL, 'pl. asambleas, reuniones, encuentros. Cl. 8', NULL, 'iiperi', 'Fuente: bubi-español', 'import-script'),
 ('biopó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. almacenes de ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bioposa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. jactancias, presunciones. ', NULL, 'eiipiisa', 'Fuente: bubi-español', 'import-script'),
 ('bioppa', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. esterilidades, infecundos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bioppe', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. catarros. . 10H / hiiil1lli biOppi, s IJI. dUnlwlI1cs, tardanzas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biosó', 's.', NULL, NULL, NULL, NULL, 'pl. 1. anos. 2. coños. el. X', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biossi', 's.', NULL, NULL, NULL, NULL, 'pl. caballos, potros. Cl. 8', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOssí', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. t. inflamaciones duras. 2. elefantiasis. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('bióta', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. ventanas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biótári', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. olvidos. . Tb. bilebári', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOtee', 'adj.', NULL, NULL, NULL, NULL, 'pl. grandes, voluminosos, importan tes, destacados. Concuerda con las palabras de las Cls. 4 y 8; e bempo - las narices grandes, e bisapúsappú - las tortugas grandes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOto', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. hímenes. virginidades. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOtta', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. trenzados. . T b. biotyi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biottá', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. 1. butacas. 2. tronos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOttó', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. niguas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biótú', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'bajos, bajas, cortos, cortas. Concuerda con las paJabras de la ; bio''o - postes cortos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOtya', 'adj.', NULL, NULL, 'Cl. 8', NULL, 'pl. primeros, primeras. Concuerda con las palabras de la : bió - los pri meros montes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
 ('biOtyi', 's.', NULL, NULL, 'Cl. 8', NULL, 'pl. trenzados. . Tb. biotta', NULL, NULL, 'Fuente: bubi-español', 'import-script');

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
