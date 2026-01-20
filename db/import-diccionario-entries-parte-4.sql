-- Script de importación profesional del diccionario Bubi
-- PARTE 4 de 4
-- Bloques: 166 a 218
-- Total de entradas en esta parte: ~1325
-- Fecha: 2026-01-20

-- ⚠️ IMPORTANTE: Ejecutar las partes en orden (1, 2, 3, 4)

BEGIN;

INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('opatyáballá', 's.', NULL, NULL, NULL, NULL, 'sing. hablante, comunicante. el. 1', NULL, 'tóritóri', 'Fuente: bubi-español', 'import-script'),
  ('opatyí', 's.', NULL, NULL, NULL, NULL, 'sing. cesto grande. palangana grande. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ope', 's.', NULL, NULL, NULL, NULL, 'sing. vagabundeo. ligue. el. 7 ; o bella e - ir de ligue, n la e - estoy de ligue', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ope''e', 's.', NULL, NULL, NULL, NULL, 'sing. burla, broma. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opelari', 's.', NULL, NULL, NULL, NULL, 'sing. ramera, prostituta, mujer lasciva. el. l. opelessi, pret. v. o opella ; elo ebari n - esta mañana arrancaba la hierba con atención. . . ). opella, v. arrancar la hierba con atención sin tener que levantar la tierra. Pret. operi, opelessi. opella, v. tocar para alguien; n la bO - o bo tyutyú yo le toco la cor neta. Pret. operi, opelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opelle', 's.', NULL, NULL, NULL, NULL, 'sing. ramero, prostituto, mujeriego. prostitución. els. 1 y 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opello', 's.', NULL, NULL, NULL, NULL, 'sing. burlón, bufón. el. 1', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opelopello', 's.', NULL, NULL, NULL, NULL, 'sing. burla. el. 3. Tb. lopelopello, lopelello', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opénera', 's.', NULL, NULL, NULL, NULL, 'sing. autor, fabricante. el. l', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opénna', 's.', NULL, NULL, NULL, NULL, 'sing. fabricante, hacedor. el. l. Tb. obáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opeppa', 's.', NULL, NULL, NULL, NULL, 'sing. pintor. blanqueador. el. 1', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opepúu', 's.', NULL, NULL, NULL, NULL, 'sing. hueso de la pierna, canilla. el. 3. operi, pret. v. o opella ; e aríolla - lelle sóté la anciana arrancó la hierba. . . muy bien. operi, 1. pret. v. o opella ; e neppí e le - o bosari el músico toco la canción para mí. 2. s. sing. asam blea, reunión, encuentro. el. 7. opessi, pret. v. o oppa ; e sipóssi si -la o bubá bo e tyué el gato se atragantaba con la espina. opessi, pret. v. o oppa ; balo ibbO ba - estos demonios tardaban. ópessi, pret. v. o óppa ; n yo pegaba, bo - tú pegabas, o - él pegaba, to - nosotros pegá bamos, lo - vosotros pegabais, ba ellos pegaban', NULL, 'eoperi', 'Fuente: bubi-español', 'import-script'),
  ('opetté', 's.', NULL, NULL, NULL, NULL, 'sing. cuerda. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opetyíi', 's.', NULL, NULL, NULL, NULL, 'sing. amargura, amargo, picazón. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opetyípetyíi', 's.', NULL, NULL, NULL, NULL, 'sing. picor. excitación sexual. el. 3. opelessi, pret. v. o opella ; o bOloari a séi lá e raatyé wela n M - e kittá al enfermo, mientras estuvo en la cama, yo le toca ba la guitarra. i', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opilo', 's.', NULL, NULL, NULL, NULL, 'sing. botella. el. 3. Tb. miikoteri, hiikoteri, iipoteri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opippa', 's.', NULL, NULL, NULL, NULL, 'sing. dictador, tirano. el. l', NULL, 'mmaUa', 'Fuente: bubi-español', 'import-script'),
  ('opippo', 's.', NULL, NULL, NULL, NULL, 'sing. naranjo. el. 3. Tb. hiirelÍtya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Opo', 'antrop.', NULL, NULL, NULL, NULL, 'que deberia escribirse Eopo. Este es el antropónimo que deberían llevar los que se apellidan Salomón, ya que éste fue un sobre nombre adoptado por uno de los hermanos Eopo. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opopoo', 's.', NULL, NULL, NULL, NULL, 'sing. charla, conversación, plática, par lamento. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opoppo', 's.', NULL, NULL, NULL, NULL, 'sing. árbol de la papaya. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('oposa', 's.', NULL, NULL, NULL, NULL, 'sing. jactancia, presunción. el. 7', NULL, 'eiipiisa y iipóssa', 'Fuente: bubi-español', 'import-script'),
  ('Oposi', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de oposa. Opósi se refiere a alguien que presume y se jacta. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opóssa', 's.', NULL, NULL, NULL, NULL, 'sing. jactancia, presunción. el. 3. Tb. iipiisa y ityiikó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opoteri', 's.', NULL, NULL, NULL, NULL, 'sing. botella. el. 3. Tb. apilo, miikiJteri, hiikiJteri. opotessi, pret. v. o opotta ; a boppé ba -la e itohí el agua hervía con el sol', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 167 (entradas 4151 a 4175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('opotobílla', 's.', NULL, NULL, NULL, NULL, 'sing. palma real. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opotokkí', 's.', NULL, NULL, NULL, NULL, 'sing. portugués. el. l', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opotoríbbo', 's.', NULL, NULL, NULL, NULL, 'sing. espíritu que se expresa en español o enpidgin english. el. l. opotta, v. l. gatear, rastrear, husmear; o boyol la a la - el abuelo gatea, e sipóssi si lá - el gato husmea. 2. hervir; a boppé ba lá - el agua hier ve. Pret. opotyi, opotessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opotto', 's.', NULL, NULL, NULL, NULL, 'sing. blanco, persona blanca. el. 1', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opotto', 's.', NULL, NULL, NULL, NULL, 'sing. herbácea trepadora de la pimienta negra. el. 3. opotyi, pret. v. o opotta ; e sibólló si - a batyo wela el pobre gateó entre la gente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opowári', 's.', NULL, NULL, NULL, NULL, 'sing. madre criadora. el. 1. oppa, v. atragantarse, ahogarse; o oberíi ÓI a la -la boppé mi madre se atraganta con el agua. Pret. oppi, opessi. oppa, v. tardar, durar, demorar, perdurar; o obé bá a la - el cazador tarda, we oppe no tardes, íme n la - e telle yo soy quien se demora. Pret. oppi, opessi. óppa, v. pegar, golpear, azotar. Pret. óppi, ópessi; o - e eoso encajar, o - botyo o bobba puá tirar a alguien al suelo. oppi, pret. v. o oppa ; e kario''e e - la i puápuá yá i ressi la gallina se atragantó con los granos de arroz. oppi, pret. v. o oppa ; o''a - Iobbó has tardado mucho, lello n - ripottO hoy he tardado en la ciudad. óppi, pret. v. o óppa ; lo''a le - lo''a le ikki, na ló''a le pa''o olláa ná ló''a le oríi me habéis pegado, me habéis insultado, si pudierais matarme me habríais matado. oppia, v. atragantar, ahogar; o tuái to lá bo la saliva le atraganta. Pret. oppiia, opiesiia. oppiia, pret. v. o oppia ; a bo''á ba - o botyo el agua sala da ahogó a la persona', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opuá', 'adv.', NULL, NULL, NULL, NULL, '1. el lado opuesto al mar. 2. norte', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opuakapuáka', 's.', NULL, NULL, NULL, NULL, 'sing. acto sexual, coito. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opulábosso', 's.', NULL, NULL, NULL, NULL, 'sing. huésped, visita. el. I', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opulákke', 'adj.', NULL, NULL, NULL, NULL, 'sing. extranjero, oriundo de otros países, de allende los mares. el. 1. Tb. hiipulákke', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opúlla', 'adv.', NULL, NULL, NULL, NULL, 'antaño, in iIlo tempore, ah initio', NULL, 'mmalé, iipullo', 'Fuente: bubi-español', 'import-script'),
  ('opullo', 'adv.', NULL, NULL, NULL, NULL, 'pasado, antaño', NULL, 'opúlla, mmalé', 'Fuente: bubi-español', 'import-script'),
  ('opuppu', 's.', NULL, NULL, NULL, NULL, 'sing. serbal. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opuputtu', 's.', NULL, NULL, NULL, NULL, 'sing. enjambre. el. 7. Tb. iikiipuUú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opúríi', 's.', NULL, NULL, NULL, NULL, 'sing. oriundo. el. 1', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('opussu', 's.', NULL, NULL, NULL, NULL, 'sing. juego, diversión, pasatiempo. el. 3. oráa, v. enviar, mandar; a bayolla ba áó ba lá - bohullá buebue nuestros abuelos envían una buena ben dición. Pret. oóa, oresiia', NULL, 'o ará', 'Fuente: bubi-español', 'import-script'),
  ('Oraca', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir de oreklw. Está localizado en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('orekka', 'adv.', NULL, NULL, NULL, NULL, 'lejos, lejano; na hella o - voy lejos. oresiia, pret. v. o oráa ; n - boa tabOatyo yo enviaba una carta, bo - bihánna tú envia bas retratos, a - basoppo él enviaba panes, to - batyo noso tros enviábamos a algunas personas, 10 - bentyo vosotros enviabais hechizos, ba - ellos enviaban. ori, pret. v. o olla ; na o - o la hella bOlobbO si lo niegas te convertirás en un monstruo. orla, pret. v. o oráa ; o bObelleÓJ a le - o boatta mi hermano me envió la noticia. Orichi, antrop. que debería escribirse Oriityé. Se ha formado a partir del pret. v. oríi y del sustantivo plural i tyé. Se localiza en Riaba, en Moka y en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('orle', 'adv.', NULL, NULL, 'Cl. 7', NULL, '1. el lado izquierdo mirando al mar. 2. sur. oro, pret. v. o olláa ; mpári n ka - o bOllá e rokútta el militar mató a las personas que no quieren al alto digna tario. Tb. oom. osea, v. obrar con maldad, hacer algo adrede; 010 botyo a la le - esta perso na obra con maldad conmigo. Pret. osei, oseseei. osei, pret. v. o osea ; 010 botyo a le - esta persona obró conmigo con maldad. oselessi, pret. v. o oseIla ; e elottyí to e - al siervo le ofrecíamos algo para que realizara un rito tradicional. osella, v. ofrecer algo a alguien para que rea lice un rito tradicional; to la - o mmo nosotros ofrecemos algo al espíritu. Pret. oseri, oselessi. oserl, pret. v. o osella ; e elottyí to e al siervo le ofrecimos algo para que realizara un rito tradicional. oseseei, pret. v. o osea ; o bohiá rúppe a - a batyo el sacerdote obraba con maldad con las personas. osessi, pret. v. o ossa ; n o - yo te hacía algo adrede, n-yo libaba, o - tú hacías algo adrede, tú li babas, a - él hacía algo adrede, él libab', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('osso', 'adv.', NULL, NULL, NULL, NULL, 'l. enfrente, delante. 2. este. ótáam, pret. v. o ótalIa ; {me n ka - e ribúk kuÓJ yo olvidé mi libro. ótálessi, 1. pret. v. o ótalla ; n ri - e isa''a Ó J yo olvidaba mi lima. 2. pret. v. o ótáIla ; 010 bOie n bo - ba''u a este señor le vendía vino de palma. ótalla, v. olvidar; o boioppé o a la - e ripelló o tu tío olvida tu fiesta. Pret. ótáam, ótálessi. ótálla, v. vender algo a alguien. delatar; we le otálle a batyo no me ven das a la gente, no me delates. Pret. ótári, ótálessi. ótári, pret. v. o ótálla ; o bOtúkku - a batyo a apotto el jefe del pueblo delató a la gente ante los blancos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('óte', 'adj.', NULL, NULL, 'Cl. 7', NULL, 'sing. grande, voluminoso, importante. Concuerda con las palabras de la ; eriia poblado grande, poblado importante, elabba asunto importante. otee, acij. sing. grande, voluminoso, importante, destacado. Concuerda con las palabras de la ; e etataa - la escopeta grande. ótelessi, pret. v. o ótella ; a batyo ba e - a lokko la áó la gente nos vendía nuestras cosas. 260 / óteUa ótella, v. vender para alguien; o wéso''o o a la o - e billo o tu a migo te vende tus ñames. Pret. óteri, ótelessi. óteri, pret. v. o ótella ; a bakollé ba e - i píssi los braceros vendieron el pescado salado para nosotros. otessi, pret. v. o otta ; n-e esíl la a o oberii Ól yo trenzaba el cabello de mi madre, o - e riotté tú hilabas la red, a - e besorí él trenzaba los cordones, to - besippa nosotros trenzábamos trenzas, 10 - voso tros trenzabais, ba - ellos trenzaban. otessi, pret. v. o ótta ; n séi la boseseppe n - basoppo cuando era joven yo vendía panes, e pateri - a batyo el párro co delataba a la gente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('oto', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'dem. esos, esas. Concuerda con las pala bras de la ; - tonoke esas criaturas. otOlessi, pret. v. o otolla ; n-yo destrenzaba, o - tú destrenzabas, a él destrenzaba, to - nosotros destrenzábamos, 10 - vosotros destrenzabais, ba - ellos destrenzaban. otolla, v. destrenzar, deshilar, destejer; to la e etúkká nosotros destejemos la cesta. Pret. otori, otOlessi. otori, pret. v. o otolla ; e le poe o boláwáarí a - o cuando llegó la muchacha le destrenzaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ototto', 'adv.', NULL, NULL, NULL, NULL, 'lejos, lejanía. otta, v. trenzar, hilar, tejer; o tonorí to lá rubOo los pájaros tejen un nido. Pret. otyi, otessi. ótta, v. vender, delatar. Pret. otyíi, otessi; we le otee no me vendas, no me delates', NULL, 'otto', 'Fuente: bubi-español', 'import-script'),
  ('otto', 'adv.', NULL, NULL, NULL, NULL, 'lejos, lejanía. otya, temo numo el primero, la primera. Concuerda con la Clase de la palabra referida. otyáa, v. domar, domesticar; n la - e eossi yo domo al caballo. Pret. otyía, otyesiia. otyaan, pret. v. o otyanna ; o waísso - o bOlIá la mujer cuidó del niño. otyanessi, pret. v. o otyanna; o mmása - a balakoláko el jefe negociaba con los trabajadores. otyanna, v. cuidar; o biitóweri a la - o boat t a el intérprete cuida de la historia negociar. Pret. otyaan, otyanessi. otyarea, v. velar por, cuidar de; o la - e tyóbbo o boyolIa o tú cui das de la casa de tu abuelo. Pret. otyarei, otyareseei. otyarei, pret. v. . o otyarea ; n - o bOlIá yo cuidé del niño, yo velé por el niño. otyareseei, pret. v. o otyarea ; o luuaÓl n 10 - mi vestido, yo cuidaba de él', NULL, 'otollo', 'Fuente: bubi-español', 'import-script'),
  ('otyé', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. universo, mundo, naturaleza. sociedad, entorno. . otyesüa, pret. v. o otyáa ; n ta - e biossi yo no domaba a los caballos. otyi, pret. v. o otta ; o - e esíl la o bulla yo trencé el cabello de la doncella. otyía, pret. v. o otyáa ; o - e eossi yo domé al caballo. otyíi, pret. v. o ótta ; o bo - o bokutta vendiste la manta, n-o botyo Ól yo traicio né a mi pariente', NULL, 'iibOtyii', 'Fuente: bubi-español', 'import-script');

-- Lote 168 (entradas 4176 a 4200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Owete', 'antrop.', NULL, NULL, NULL, NULL, 'que se encuentra en la fase de la vocalización del fonema oclusivo bilabial Ib/. Debería escribirse obette. Se localiza en Baloeri. oyáa, v. apretar; o la - e inoo yo aprieto el nudo. Pret. Oíia, oyesiia. oyáera, v. esperar, aguardar; to la - a batyo ba heri ba obáám esperamos a las personas que fueron a la finca. Pret. oyáeriia, oyáeresiia. oyáeresiia, pret. v. o oyáera ; n - yo esperaba, bo - tú esperabas, o - él esperaba, to nosotros esperábamos, 10 - vosotros esperabais, ba - ellos esperaban. oyáeriia, pret. v. o oyáera ; mpári ne - e euláúla ayer esperé el coche. oyesiia, pret. v. o oyáa ; ne - e ebélette o boyollaÓl ene oyesiia eebelette o bóyóllaam] yo apretaba el cinturón de mi abuelo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Oyó', 'antrop.', NULL, NULL, NULL, NULL, 'probablemente formado a partir de ó ''io. Está localiza do en Baresó y en Baney. pa, mor:f numo dos. Concuerda con las palabras de las Cls. 2, 4, 6 Y ID, previa anteposición del correspondiente morfema concordante; batyo a - dos personas, beheú e - dos huevos, baatyé a dos camas, nabba - dos animales', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pa''á', 's.', NULL, NULL, NULL, NULL, 'sing. amante, concubino, ligue. Cls. 9 y 10. pa''a, v. poder, ser capaz; to la pa''e to la se podemos, hagámoslo. qui tar, sacar; a baitta ba lá - o luua 10 ábo los dignatarios quitan su bandera. Pret. pa''i, pa''essi. pa''essi, pret. v. o pa''a ; o bohiarnrno a - e bentyo el espiritista quitaba los hechizos. pa''i, pret. v. o pa''a ; e ribatyu ri áí n ri - su braga, se lo quité. páa, v. dar, donar, dispensar; o rnrnásaÓl a la le - billo n ebbee mi jefe me da días para que yo descanse. regalar, obsequiar, ofrecer; o waísso Ól a la le - ehátyibianna mi mujer me da un abrazo. ofrecer, ceder, conceder. * 0-to''ú noso tros autorizamos al niño. Pret. péi, pessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('paao', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. sien. Cls. 9 y ID. paatessi, pret. v. o paatta ; n - yo volaba, o - tú volabas, a - él volaba, to - nosotros volá bamos, 10 - vosotros volabais, ba ellos volaban. paatta, v. volar; a batyiáñtyo ba lá - botyíó los hechiceros vuelan de noche. Pret. paatyi, paa tessi. Tb. o haata. paatyi, pret. v. o paatta ; e bikokka bi las águilas volaron. pabba, v. pestañear; ná n la to''ólla n tyi - cuando hablo no pesta ñeo. Pret. pabbi, pabessi. pabbi, pret. v. o pabba ; n - pestañeé, o - pestañeaste, a - pestañeó, to - pes tañeamos, 10 - pestañeasteis, ba - pesta ñearon. pabessi, pret. v. o pabba ; o le ekessi lá n - esta persona hur ga en mis cosas. Pret. pakaria, pakaresiia. pakaresiia, pret. v. o pakara ; o bollá a - a lokko el niño revol vía las cosas. 262 I pakaria pakaria, pre/. v. o pakara ; n la - a lokko la áí yo revolví sus enseres. Pako, an/rop. que proviene de pakopako. Algunos usuarios lo consideran un préstamo de otra lengua. Se localiza en Baney y en Sampaka. pakOla, V. am', NULL, 'haatessi', 'Fuente: bubi-español', 'import-script'),
  ('pakopako', 'S.', NULL, NULL, NULL, NULL, 'sing. *nieve, nubes en lo alto de la montaña. Cls. 9 y 10. pakori, pret. v. o pakola ; o bokó bo tá - lelle el día no amaneció bien, e pullá e - o bokó la tormenta despejó el día. pakuessi, pret. v. o pakola ; e billo bi - bakasso e tyokkó los días amanecían pronto en verano', NULL, 'nebba', 'Fuente: bubi-español', 'import-script'),
  ('Palo', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a uno de los tres gran des clanes de la sociedad bubi. Ópáálo está relacionado con jjpalláa. Se localiza en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pando', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. cabañas, chozas. . Tb. wetya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pankékki', 'S.', NULL, NULL, NULL, NULL, 'sing. torta. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('paoséla', 'S.', NULL, NULL, NULL, NULL, 'sing. enamorado, amado, prendado. Cls. 9 y 10. Tb. hopaoséla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('papá''á', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. verruga/s. Cls. 9 y 10. papaba, V. palpitar, latir; o botébbá lÍl bo lá - mi corazón palpi ta. Pret. papabi, papabessi. papabessi, pret. V. o papaba ; o botébbá bo boyolla bo - el corazón del abuelo palpitaba. papabi, pret. V. o papaba ; bo - o botébbá o palpitó tu corazón. papabia, V. palpitar, latir; o botébbá l Í l bo lá - kóri n la salláa mi corazón palmita por que tengo miedo. Pret. papabiia, papabiesiia. papabiesüa, pret. V. o papabia ; o botébbá lÍl bo - bakasso mi corazón latía deprisa. papabiia, pret. V. o papabia ; bo o botébbá bo áí pal pitó su corazón. papálea, V. revolcarse; o bulla a la - e raatyé puá la donce lla se revuelca en la cama; o boie a tyí a - a anno el hombre no se revuelca en el suelo. Pret. papálei, papáleseei. papálei, pret. V. o papálea ; o bulla a - a boppé wela la doncella se revolcó en el agua. papáleseei, pret. v. o papálea ; o bulla a - a wéi la o oberíi áí la doncella se revol caba en el suelo cuando murió su madre. papara, v. revolcar, r', NULL, 'o papahia', 'Fuente: bubi-español', 'import-script'),
  ('pappa', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. cuña, calzo, falca. els. 9 y lO', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('páppo', 's.', NULL, NULL, NULL, NULL, 'pI. techados, tinglados. el. 10. para, v. ofrendar para obtener algo; o - robbo ofrendar para obtener algo a cambio. Pret. pariia, paresiia. paráa, v. hacer llegar; o botákko a la - o botólló el embajador hace llegar el mensaje. *0 - botákko comunicar. Pret. paríia, paresiia. parabia, pret. v. o parabia ; i tyué n i - el pescado lo freÍ. parabia, v. freír; n la - i tyué yo frío el pescado. Pret. parabia, parabie siia. parabiesiia, pret. v. o parabia ; n- e bekobbe behótóttó yo freía los plátanos maduros', NULL, 'o tyetyéra', 'Fuente: bubi-español', 'import-script'),
  ('Paralele', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado encontramos e n Eparalele. Está localizado en Moka. paresiia, pret. v. o para ; n - yo ofrendaba, o - tú ofrendabas, a - él ofrendaba, to - nosotros ofrendábamos, lo vosotros ofrendabais, ba - ellos ofrendaban. paresiia, pret. v. o paráa ; o mmé a - o botólló la señora hacía llegar el mensaje. parí, 1. pret. v. o palláa ; n - botyió llegué de noche. 2. pret. v. o pálla ; o boie ro bue''a - á ná o tyí''a sosalla o mi padre fue quien dijo que no se contaba contigo. Pariché, antrop. construido a partir del verbo o paráa y del sustantivo plu ral i tyé. Párityé se refe rirá a alguien que hace llegar a los países. Se localiza en Batoicopo. pariia, pret. v. o para ; e robbo n ri el rito lo ofrecí. paríia, pret. v. o paráa ; o M''e m M - el fargo lo hice llegar', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('parloki', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. candado. els. 9 y lO. pasessi, pret. v. o passa ; elo ebari to e beakká la i pillá esta mañana revolvíamos las almendras y los dátiles', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('parto', 's.', NULL, NULL, NULL, NULL, 'pI. cobertizos, caseríos, barracas. el. 10. patyáa, v. llegar de algún lugar, acudir; o bObelle ro a la - lello mi hermano mayor llega hoy. Pret. patyía, patye siia. patyesiia, pret. v. o patyáa ; n - yo llegaba, n ta - yo no llegaba. patyía, pret. v. o patyáa ; o bOatta M - elo ebari la noticia llegó esta mañana. 264 / patyíbba patyíbba, v. saltar, brincar; i kolóbetté i lá los grillos saltan, i ká i tyí''a la - los cangrejos no saltan. Pret. patyíbi, patyíbessi. patyIbessi, pret. v. o patyíbba ; a batyo ba -lá patyípatyí las personas brincaban como saltamontes. patyíbi, pret. v. o patyíbba ; n-yo brinqué, o - tú brincaste, a - él o ella brincó, to - nosotros brincamos, 10 - vosotros brincasteis, ba - ellos brincaron. patyíi, 1. pret. v. o pattáa ; mpári n-e bireÍltya m ayer cogi mis narantas del árbol. 2. s. sing. zancada. Cls. 9 y lO', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pasialo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Pasí''alo. Está localizado en Ruiché. passa, v. revolver, escarbar, hurgar, etc. o - a lokko hurgar en las cosas, revol ver las cosas. Pret. passi, pasessi. Tb. o papara. passi, pret. v. o passa ; mpári to - i kuua ayer revolvimos la ropa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Patabobe', 'antrop.', NULL, NULL, NULL, NULL, 'que puede traducirse por "cri ticón de los machos". Se localiza en Baresó y en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Patato', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de palláa. Pálaalo se refiere a alguien que está a la entrada de una sala. Está localizado en Batoicopo. palessi, pret. v. o palláa ; n-yo llegaba, o - tú llegabas, a - él llegaba, to - nosotros llegá bamos, lo - vosotros llegabais, ba - ellos llegaban. pálla, 1. V. decir. Pret. parí, pessi; to - ná potóo digamos gracias! 2. S. sing. pala. CIs. 9 y 10. palláa, 1. S. sing. y pI. sala, salón. Cls. 9 y 10. 2. -, V. llegar, llegar a ser; a bollá bá la - batyo los niños llegan a ser personas de pleno derecho. Pret. parí, palessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pateri', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. padre, sacerdote, misionero. els. 9 y lO. patessi, pret. v. o pattáa ; n- e bimmálOto ro yo cosechaba mis piñas de cacao, n bi ápollo yo cogía manza nas del árbol', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('patta', 's.', NULL, NULL, NULL, NULL, 'pi. bofetadas, cachetes, tortazos. el. lO. pattáa, v. cosechar, coger del árbol; n la bimaÍlkoro cojo mangos del árbol. criticar a alguien; n la - bOtyo yo critico a alguien. Pret. patyíi, patessi. Tb. o uppáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('patyípatyí', 's.', NULL, NULL, NULL, NULL, 'sing. saltamontes. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pe''e', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. aguja grande. alfiler. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pe''o', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. refrán, proverbio. aforis mo. Cls. 9 y lO. peálessi, pret. v. o peálla ; n - pagaba, o - pagabas, a - pagaba, to - pagába mos, 10 - pagabais, ba - pagaban. peálla, v. pagar, remunerar; e kobinna a tyí''a - a batyo el gobierno no paga a la gente. Pret. peám, peáles si. Tb. o obella. peám, pret. v. o peálla ; n - yo pagué, n o - yo te pagué, o - tú pagaste, o ba - a bé ntá tú pagaste a los señores, a - él o ella pagó, to no - nosotros os pagamos, 10 le - vosotros me pagasteis, ba bO - ellos le pagaron. Th. oberi. pebbá, mor{ que aparece pospuesto a dos objetos, personas o animales. Concuerda con las palabras de la Cl. lO. Ej. : i lo o''lIó - las dos lenguas, i nabba - los dos animales. Pecho, antrop. que debería escribirse Petyoo. Se localiza en Baney. peem, pret. v. o pella ; n - obáám llegué a la finca, o ta - obáám no llegaste a la fm ca, a - sornó lle gó a ser valiente, etc. Th. peri. péém, pret. v. o pélla ; balo batyo bá''a - ripotto estas personas vivieron en la ciudad. o', NULL, 'obelessi', 'Fuente: bubi-español', 'import-script'),
  ('peké', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. úlcera, llaga. Clases 9 y 10. pekobia, v. cojear; na botyo a la - ata pa''e o húbbia si una persona cojea no puede correr. Pret. peko biia, pekobiesiia. pekobiesiia, pret. v. o pekobia ; n - yo cojeaba, o - tú cojeabas, a - él cojeaba, to - nosotros cojeábamos, lo - voso tros cojeabais, ba - ellos cojeaban. pekobiia, pret. v. o pekobia ; n- la e etyuppo yo cojeé con la muleta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pela', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse PeUá. Está principalmente localizado en Batete y en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 169 (entradas 4201 a 4225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('pelaka', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. topo. Clases 9 y 10', NULL, 'péláká', 'Fuente: bubi-español', 'import-script'),
  ('péláká', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. topo. Clases 9 y 10. Th. pelaka. pelalessi, pret. v. o pelalla ; tue - e puá e etyíó nosotros ence rrábamos al perro por la noche. pélalessi, pret. v. o pélalla ; o obulaella a - baísso be appa el abogado vivía con dos mujeres. pelalla, v. encerrar; o bolotta a la - botyo el guardián encierra a alguien. Pret. pelam, pelalessi. pélalla, v. vivir con; ne waísso, n la - 010 bOie soy mujer, vivo con este hombre. Pret. pélam, pélalessi. pelam, pret. v. o pelalla ; e sotyáa si - e húbbé el soldado ence rró al ladrón. pepapeppa / 265 pélam, pret. v. o pélalla ; n ka bo - 010 bOie este hombre, viví con él. peli�lessi, pret. v. o pelella ; n - me burlaba, o - te burlabas, a - se burlaba, to - nos burlábamos, lo - os burlabais, ba - se burlaban. pelella, v. burlarse, mofarse; e kinatto e láa e enyankue el sor do se burla del cabezudo. Pret. peleri, pelelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pelello', 's.', NULL, NULL, 'Cl. 10', NULL, 'pi. burlas. ironías. . peleri, pret. v. o pelella ; to bi - e binyankue nos burlamos de los cabezudos. pelessi, pret. v. o pella ; to séi la ripotto to ta - o rótta cuando estuvimos en la ciudad no llegábamos al mercado. pélessi, pret. v. o pélla ; n yo vivía, o - tú vivías, a - él vivía, to - nosotros vivíamos, lo - vosotros vivíais, ba - ellos vivían', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Peleté', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Peléte. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('peléte', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. plato. Cls. 9 y 10; e - he el plato nuevo, e - kolólló el plato vie jo, e - e báteri é el plato lla no, e - e tyíréia é el plato hondo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Peliko', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a alguien que anun cia la llegada de los loros. Está compuesto por el verbo o bélla y por el sus tantivo plural i k06. BeIíkoo se locali za en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pellá', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. anguila. Cls. 9 y 10. pella, v. llegar, llegar a ser; abé ntá ba lá - o wetya los señores llegan a la cabaña. Pret. peem, pelessi. pélla, v. 1. vivir, habitar, hospedar; n la - hállo yo vivo aquí. 2. cesar; o lOé 10 lá - bakasso el lloro cesa deprisa. 3. efec tuar. * 0-iIIo sentarse. Pret. péém, pélessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pellé', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. un tipo de serpiente, víbora. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pello', 's.', NULL, NULL, 'Cl. 10', NULL, 'pi. burlas, mofas, desprecios, ignomi nias, desaires. deshonores, vergüenzas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pelótta', 's.', NULL, NULL, NULL, NULL, 'sing. balón, pelota. Cls. 9 y 10; o puus sa - jugar a la pelota, jugar al fútbol. Tb. suppá. pélÍlma, v. botar; e setyi si lá - el antílope bota. Pret. pémmi, pétÍJmessi. péÓlmessi, pret. v. o pérnma ; e bilotyí bi - o boissó wela los sacerdotes bubis botaban en el fu ego. péÓlmi, pret. v. o pérÍ1ma ; o obitya bo pérÍlmi bO é le elle e sipóssi el ratón botó al ver al gato', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pen', 's.', NULL, NULL, NULL, NULL, 'sing. inconveniente, impedimento. Cls. 9 y 10. pénera, v. 1. hacer algo por/para alguien; o bulla to la bo - ripelló a la doncella le hacemos una fiesta. 2. arreglarse; n la - e esílla lÍl yo me arreglo el pelo. 3. festejar, celebrar; to la - ello n berí o é nosotros celebramos el día de mi naci miento. Pret. péneriia, péneresiia. péneresiia, pret. v. o pénera ; 010 botyo n bo - e bilako bi áí roló botJo m bo péneresíé bilakó bíááí] a esta persona le hacía sus trabajos, n ba - kóri ha séi ripelló me arreglaba porque había fiesta. péneriia, pret. v. o pénera ; lello ommaa o wéso''o lÍl m bo - e elako áí durante todo el día a mi compañero le hice su trabajo. pénessi, pret. v. o pénna ; to a baotté la besorí nosotros hacíamos las redes de pesca con hilos. pénna, v. hacer, fornicar, fabricar; a bayolla ba lá - i pohá i ábo los ancianos hacen sus proezas. Pret. péém, pénessi. péótalessi, pret. v. o péÍltalla ; a bakuera kueráa ba - a bate los escolares pintaban las piedras. péútalla, v. pint', NULL, 'o tetya', 'Fuente: bubi-español', 'import-script'),
  ('péóti', 's.', NULL, NULL, NULL, NULL, 'sing. pintura, color. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pEPa', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. caracol de río. Clases 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pepapeppa', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. gris. tierra grisá cea. Cls. 9 y 10. 266 / Pepekuku', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pepekuku', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del término pidgin-english pepecúk. Está localizado en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pepelle', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. tobillo/s. Cls. 9 y 10. Tb. kekesse, pepenna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pepenna', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. tobillo/s. Cls. 9 y 10. Tb. kekesse, pepelle. pépessi, pret. v. o péppa ; o bOoáooa ro a - a abaUá mi abuela enrollaba los rollitos de malanga. pepólessi, pret. v. o pepólla ; o - e ion o yo desen rollaba el nudo. Tb. pepueessi. pepólla, v. desdoblar, desenrollar; e aríolla e lá - e eppáa la anciana desenrolla la pulsera de tyíbbo. Pret. pepóm, pepólessi. pepóm, pret. v. o pepólla ; oe - e iIloo desenrollé el nudo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('peppa', 's.', NULL, NULL, NULL, NULL, 'pI. caolín, mineral de arcilla blanca y dura. Clase 10. péppa, v. enrollar, doblar, devanar; tyuíi - se e sipéppa por favor dobla el papel. Pret. péppi, pépessi. peppáa, v. doblar, enrollar; o la ri - e ripép pa yo 10 enrollo, el docu mento. Pret. peppíi, pepessi', NULL, 'kalabátyoko', 'Fuente: bubi-español', 'import-script'),
  ('peppe', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. remedio, fo rma, manera. Cls. 9 y 10; ha tyí - no hay remedio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('peppe', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. telarañas. . péppi, pret. v. o péppa ; o - yo enrollé, yo doblé, o - tú enrollaste, tú doblaste, a - él o ella enrolló, él o/ella dobló, to - nosotros enrollamos, nosotros doblamos, 10 vosotros enrollasteis, vosotros doblasteis, ba ellos enrollaron, ellos doblaron. peppíi, pret. v. o peppáa ; e ripeppe ri e ribobo la telaraña enrolló a la araña. pepueessi, pret. v. o pepólla ; o - e inoo yo desenrolla ba el nudo. Tb. pepólessi, pera, v. hacer llegar, llevar; bolo bo''e o la bO - obessé esta carga lo haces llegar al poblado. Pret. periia, peresiia. peráera, v. quejarse porque a uno le toca siem pre hacer las cosas. Pret. pemeriia, peráeressia. peraeriia, pret. v. peráera. peráeressia, pret. v. o peráera. péréa, v. cruzar, atravesar; 10 la- o bokoo vosotros cruzáis la calle. saltar u n obstáculo; to la - o boakká nosotros saltamos la acequia. Pret. péréi, péréseei. péréi, pret. v. o péréa ; mpári o - o boakká ayer salté la acequia. péreseei, pret. v. o péréa ; o boakká to bo - la aceq', NULL, 'apeppe', 'Fuente: bubi-español', 'import-script'),
  ('perí', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. veneno. Cls. 9 y lO. peri, pret. v. o pella ; o - sornó llegué a ser valiente, o ta - sornó no llegué a ser valiente, o - botyo llegaste a ser alguien, o bollá a ta bOtyo el niño no llegó a ser alguien, no llegó a vivir. Tb. peem. periia, pret. v. o pera ; o r notóo bo le - otottto el coche me llevó lejos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pesa', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado encontramos en Pessa. Se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pessa', 'antrop.', NULL, NULL, NULL, NULL, 'que también aparece escrito Pesa. Hace referencia a una niña entre varios herma nos. Deberia escribirse pessá. Se localiza en Batoicopo. pessi, pret. v. 1. o pálla ; n - yo de cía, o - tú decías, a - él decía, to - nosotros decía mos, 10 - vosotros decíais, ba - ellos decían. 2. o páa ; e obéolla e le - e epotópotóo el anciano me daba las gracias. petalessi, pret. v. o petalla ; o boie ro o bo - weka a mi padre le cuestionaba. petalla, v. cuestionar, contradecir con; o la o - weka yo te contradigo, we le petalle weka no me contradigas. Pret. petam, petalessi. petam, pret. v. o petalla ; 010 botyo o bo - weka a esta persona le contradije. petessi, pret. v. o petta ; o - o weka bO a bi e bilabba yo cuestionaba estos asuntos. pipelessi I 267 petessi, pret. v. o pettáa ; e nabba e - la carne sabía amargo, e epa''á e el puercoespín sabía amargo. petta, v. contradecir, discordar, discrepar, contrariar. * o - weka cuestionar. Pret. petyi, petessi. pettáa, v. saber amargo, picar; e siokollo si ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('petté', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. liana, ronzal. comba. Cls. 9 y 10. petyá, v. apuntalar; n la - e eho''o apuntalo el poste. Pret. petyía, petyesiia. petyáa, v. amargar, agriar; e tyía e lá - e súp pu la hiel agria la salsa. Pret. petyía, petyesiia', NULL, 'o petyobaera', 'Fuente: bubi-español', 'import-script'),
  ('petyapetya', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. entrepiernas. Cls. 9 y 10. petyesiia, pret. v. o petyá ; n - apuntalaba, o - apuntalabas, a apun talaba, to - apuntalábamos, lo apuntalabais, ba - apuntalaban. petyesiia, pret. v. o petyáa ; e tyía e - bOlÍlmua la hiel agriaba la carne. petyi, pret. v. o petta ; n yo contradije, o - tú contradijiste, a - él o ella contradijo, to - nosotros contradijimos, lo - vosotros contradijisteis, ba ellos o ellas contradijeron. petyía, pret. v. o petyáa ; e tyía e súppu la hiel agrió la salsa. petyía, pret. v. o petyá ; n - apuntalé, o - apuntalaste, a - apuntaló, to - apuntalamos, lo - apuntalasteis, ba - apuntalaron. petyíi, pret. v. o pettáa ; o la carne supo amargo. bOlÍlmua bo petyobaera, v. apoyar, apuntalar; to la - e eteppe nosotros apunta lamos la pared. Pret. petyobaeria, petyobaeresiia. petyobaeresiia, pret. v. o petyobaera ; n - yo apuntalaba, n e - e eteppe yo apuntalaba la pared, o - tú apuntalabas, a - él o ella apuntalaba, to - nosotros apuntalábamos, lo - a bakobbe vos', NULL, 'o petyá', 'Fuente: bubi-español', 'import-script');

-- Lote 170 (entradas 4226 a 4250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('petyoo', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. objeto con el que se apunta la algo. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pi''e', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. pez colorado, breca. Clases 9 y 10', NULL, 'bi''a', 'Fuente: bubi-español', 'import-script'),
  ('pi''í', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. agujero, hoyo. Clases 9 y 10', NULL, 'bOlló', 'Fuente: bubi-español', 'import-script'),
  ('pi''o', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. riñón. Clases 9 y 10. piessi, pret. v. o piia ; túe tue nosotros nos íbamos. pii, pret. v. o piia ; e hOtúkku botee n ke - oh gran alcalde, me he ido. piia, v. irse, marcharse; - e ¡vete, már chate! Pret. pii, piessi', NULL, 'bi''o', 'Fuente: bubi-español', 'import-script'),
  ('píín', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. alfiler, aguja. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pikko', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. pico. Cls. 9 y 10. pilelessi, pret. v. o pilella ; 010 botyo n bo bitékobbo a esta persona le plantaba troncos. pilella, v. plantar o fijar un poste o un palo en la tierra para alguien. Pret. pileri, pilelessi. pileri, pret. v. o pilella ; e eyári lÍl wela ne biho''o en mi par cela planté postes. pilessi, pret. v. o pilla ; n - bitekobbo la biho''o yo fij aba troncos y postes en la tierra', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pillá', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. dátil de la palmera de aceite. Cls. 9 y 10. pilla, v. plantar o fijar un poste o un palo en la tierra; 10 la - batté vosotros plantáis postes. Pret. piri, pilessi. pipea, v. adornarse, engalanarse, acicalarse; a bakuerakueráa ba lá - Iello los estudiantes se engalanan hoy. Pret. pipei, pipeseei. pipei, pret. v. o pipea ; o bulla a''a - mpári la doncella se engalanó ayer. pipelessi, pret. v. o pipella ; o wettalÍl n bo - o bOllá áí a mi hermana le engalanaba a su hijo. pipella, v. adornar para, engalanar para; to la - e eriia kóri he ripelló nosotros adornamos el pueblo porque hay fiesta. Pret. piperi, pipelessi. piperi, pr et. v. o pipella ; ne - e tyóbbo lÍl adorné mi casa. pipeseei, pret. v. o pipea ; to - kóri to séi ripelló nos engalanábamos porque estábamos de fiesta. pipessi, pr et. v. o pippa ; o loa lullé a batyo bammaa ba - i tyóbbo yábbO el año pasado todas las personas adornaban sus casas. pippa, v. adornar, engalanar, decorar, or namentar; a batyo ba lá - a batté', NULL, 'nammo', 'Fuente: bubi-español', 'import-script'),
  ('pippo', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. adornos, ornamentos. limpie zas, pulcritud. . piri, pret. v. o pilla ; a batyo bammaa ba - e biho''o todas las personas plantaron los postes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pisíssi', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. retazo, trapo, gamuza. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('píssi', 's.', NULL, NULL, NULL, NULL, 'sing. bacalao, pescado salado. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pitabome', 'antrop.', NULL, NULL, NULL, NULL, 'probablemente construido a partir del verbo o pitta y del sustantivo plural a bO mme. Se localiza en Belebú y en Ruiché. pítálessi, pret. v. o pítálla ; e pateri e - a batyo el párroco pitaba a la gente. pítálla, v. pitar, tocar el claxon; o motóo bo lá - el coche pita. Pret. pítári, pítálessi. pítári, pret. v. o pítálla ; e meotóo be - los coches pitaron. pitessi, pret. v. o pitta ; to - batyo nosotros recibíamos gente, tue - biitá e erutta untas tu cuerpo con tol la. fornicar, joder; o bOie a la - o waísso el hombre se acuesta con la mujer. recibir algo; 10 la - baheppoo lello vosotros recibís visitas hoy. Pret. pityi, pitessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pittóo', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. silbato, pito, claxon, bocina. Cls. 9 y 10. pityi, pret. v. o pitta ; n ta - o sá e elakom no pude hacer mi trabajo, e lo baie to''a - señores, hemos recibido algo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('po''a', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. mono, macaco. Cls. 9 y 10. poalelessi, pret. v. o poalella ; a batyo ba mmaa ba - todas las personas se daban las manos. poalella, v. darse las manos; to la nos damos las manos. Pret. poaleri, poalelessi. poaleri, pr et. v. o poalella ; n o boríbáa yo di la mano al extranjero. pobba, v. charlar, conversar, parlamentar, pla ticar; a batyo ba lá - las personas charlan. Pret. pobbi, pobessi. pobbá, v. burlarse, reírse de alguien, mofarse, despreciar; o la le -? ¿te ríes de mí? Pret. pobbí, pobessi. póbba, v. reventar, explotar, reventarse, deto nar; o buellá o bo lá - tu vientre revienta. Pret. póbbi, póbessi. pobbi, pret. v. o pobba ; a batyo appa lé ba - Ielle las dos personas charlaron muy bien. pobbí, pr et. v. o pobbá ; n-o botyo me burlé de la persona. póbbi, pret. v. o póbba ; e etue áí e - su cabeza reventó. póbbia, v. reventar, explotar, hacer reventar, hacer explotar, detonar; a bakuerakueráa ba lá - e ibolobOlló los alumnos hacen reventar los glo bos. Pret. póbiia, ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pofupOfu', 's.', NULL, NULL, NULL, NULL, 'sing. bollo, buñuelo. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pohá', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. hazaña, fechoría, desmán, hecho o trabajo asombroso, insólito. Cls. 9 y 10; a bayoUa báó ba sessí i - nuestros abuelos reali zaban hechos asombrosos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pokette', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. bolsillo. ahorros. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pókkó', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. buey, toro, vaca. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pokó', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Pókkó. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pola', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Pollá. Se localiza en Baney y en Batoicopo. pOlelessi, pret. v. o polella ; o wéso''o lÍl a le - mi amigo me evitaba, n - i to l Í l yo cavaba alrededor de mis ñamales. pOlella, v. 1. prevenir, evitar; o bonatú''olÍl a la o - mi hermano mayor te evita. 2. cavar alrededor de la planta del ñame; abó rnrne ba la e biheelÍl las señoras cubren con barro el bajo tallo de las plantas de la malanga bubi. Pret. pOleri, polelessi. pOleri, pret. v. o po yo evité al soldado. pOlessi, pret. v. o pollá ; o boie o a - a barnrnáloto ba áí tu padre podaba sus cacaoteros. pollá, v. esquilar, podar. escoger las hojas buenas. trocear; to la - o bOka''ó nosotros escogemos las buenas hojas de la verdura. Pret. pori, polessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('polló', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. frente. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pomma', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. alguita, granos del paraíso. Clases 9 y 10. pómma, v. latir. Pret. pómmi, pórnmessi; o botébbá lÍl bó la - mi corazón late, o wáo bó la - ae el tuyo también late. pómmessi, pret. v. o pómma ; o botébbá bO bonatú''o áí bo - kóri to seí botyíó el corazón de su hermano latía porque era de noche. pómmi, pret. v. o pórnma ; o botébbá o bo tá - tu corazón no latió. pompalessi, pret. v. o pompalla ; e kobinna a - e ripotto ri rnrnaa el gobierno fumigaba toda la ciudad. pompalla, v. bombear, fumigar, sulfatar; a baie ba la - a barnrnáloto los hombres sulfatan los cacao teros. pompari, pret. v. o pOlÍlpalla ; o rnotóo bO - boppé el coche bombea agua. ponisibbia, v. maltratar; 010 botyo a la le esta persona me maltrata. Pret. ponisibiia, ponisibiesiia. ponisibiesiia, pret. v. o ponisibbia ; o r nrnássa a - o botákkí áí el jefe maltrataba a su criado. ponisibiia, pret. v. o ponisibbia ; n ta 0- yo no te maltraté. pooa, v. venir, llegar; to la - atyí venimos otra vez. Pret. pooi, poessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('póríi', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. cabra. Cls. 9 y 10. ', NULL, 'bóri, bOom', 'Fuente: bubi-español', 'import-script'),
  ('Posa', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del verbo o pósá. Está localizado en Riaba y en Moka. pósá, v. alardear, pavonearse, presumir; a ba tyu''ú bá e eriia wela ba tyí''a la - los ricos del pueblo no presumen. Pret. pósi, pósessi. pósessi, pret. v. o pósá ; n - yo alardeaba, o - tú alardeabas, a él alardeaba, to - nosotros alardeábamos, lo vosotros alardeabais, ba - ellos alardeaban. pósi, pret. v. o pósá ; o obébá a -la i nabba i áí el cazador alardeó con su botín', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('possáa', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. monedero, cartera. bolso. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Pote', 'antrop.', NULL, NULL, NULL, NULL, 'probablemente obtenido de bOtté con el consiguiente ensordecimiento del fonema oclusivo bilabial Ib/. Se localiza en Baney. pótessi, pret. v. o pótta ; n - sinorí yo cazaba un pájaro, n - bireÍltya yo cogía naranjas del árbol con algún objeto. potobiera, V. agradecer, dar las gracias; a batyo ba lá - o botúkku á e eriia la gente agradece al jefe del pueblo. Pret. potobieriia, potobieresiia. potobieresiia, pret. v. o potobiera ; n la o - yo os daba las gracias. potobieriia, pret. V. o potobiera ; n ba - a batyo bammaa bá''a le ekldi ba hNná di las gracias a todas las personas que me acompañaron', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 171 (entradas 4251 a 4275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('potobílla', 'S.', NULL, NULL, NULL, NULL, 'sing. y pI. palo jabón. Clases 9 y 10. potóo, int. gracias. potóo, inl. gracias. pótta, V. cazar al vuelo con algún objeto; n la - sinorí cazo un pájaro. coger del árbol con algún objeto n la - bireñtya cojo naranjas del árbol con algún objeto. Pret. pótyi, pótessi', NULL, 'potóo', 'Fuente: bubi-español', 'import-script'),
  ('potto', 'S.', NULL, NULL, NULL, NULL, 'sing. Dios, Supremo. Cl. l. Tb. Ruppé. pótyi, pret. V. o pótta ; n - tonorí yo cacé pájaros, n - birentya yo cogí naranjas del árbol con algún objeto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Propro', 'antrop.', NULL, NULL, NULL, NULL, 'que proviene probablemente de eporoporo. Se loca liza en Sampaka y en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pua', 'prep.', NULL, NULL, NULL, NULL, 'sobre; e empa - sobre el asiento, e tyóbbo - sobre la casa. puá, 1. s. sing. y pi. perro, can. Cls. 9 y 10. 2. morf. adv. encima, sobre; e empa - sobre el asiento. 3., V. brotar, germinar; e nikobbe rí la - el reto ño del plátano brota. Pret. puéi, puessi. puákabbia, V. fornicar, hacer el coito, etc. ; a baseseppe bá la - los jóvenes hacen el coito. Prel. puákabiia, puákabiesiia. puákabiesiia, pret. V. o puákabbia ; 010 bulla n bo - a esta doncella le hacía el coito. puákabiia, pret. V. o puákabbia ; e biulla bi a Ebi''o be - la o boebba las don cellas de Ebi''ó hicieron el coito con el vinatero. puálessi, pret. V. o puálla ; bOlo boatta n bo - rípotto esta noticia lo traía de la ciudad. puálla, V. 1. traer de; a batyo bá la - o bulla obáám las per sonas traen a la doncella de la finca. 2. cuidar. Pret. puám, puálessi; o - onnotyé cuidar desde la niñez. puám, pret. v. o puálla ; e ebilákob be ne - obáám el racimo de plátanos lo traje de la finca', NULL, 'bá', 'Fuente: bubi-español', 'import-script'),
  ('puápúa', 'S.', NULL, NULL, NULL, NULL, 'sing. y pI. 1. pepita, grano. Clases 9 y 10. 2. antrop. sipúa vulgarniente traducido por "perrito". púbba, v. reventar, explotar ; e esawasawáa e lá - el guanábano revienta al caer al suelo. Pret. púbbi, púbessi. puráa / 271 púbbi, pret. v. o púbba ; e bireñtya bi - las naranjas reventaron al caer al suelo. púbbia, v. hacer reventar; to - e suppáa. Pret. púbiia, púbiesiia. púbessi, pret. v. o púbba ; e beakaleko be - los cocos reventaban al caer al suelo. púbiesiia, pret. v. o púbbia ; e biróya to bi - las naranjas las hacíamos reventar. púbiia, pret. v. o púbbia ; e bireÍltya 10 bi - las naran jas las hicisteis reventar. puéi, pret. v. o puá ; i puápúa i - los granos brotaron. puelessi, pret. v. o puella ; n obáám o''a le eelÍl lá venía de la finca cuando me viste. puella, v. 1. proceder, venir de, provenir; to la - e elo''á o''aaé venimos de allende los mares. 2. gotear; e epánna e la la palangana gotea. Pret. pueri, puelessi. puera, v. escupir; to la - tuái nosotros escu pimos; o - bot', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('puleri', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. pan, panes. Clases 9 y 10. Puliché, antrop. que nos remite a Buli ché. Se loca liza en Batoicopo', NULL, 'isoppo', 'Fuente: bubi-español', 'import-script'),
  ('pullá', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. tempestad, tormenta, huracán. Cls. 9 y 10. púlláa, v. 1. salir, ser de, proceder. Pret. púríi, puessi; púllán o tyóbbo salid de casa. 2. derivar. 3. 0-bi''o separar se, apartarse. Pulo cholo, antrop. probablemente obtenido a partir del verbo o púlláa y del sustantivo 6 ty6nnó. PúlOtyóló se localiza en Balachá. tyí''a la púlóo, v. venir, acudir; n la - voy, acudo, n no voy, no acudo. Pret. pooi, poessi', NULL, 'bullá', 'Fuente: bubi-español', 'import-script'),
  ('Pupú', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de 6puppu. Se localiza en baney. pupuálessi, pret. v. o pupuálla ; i sotyáa i - a batyo los soldados expulsaban a las personas. pupuálla, v. expulsar, desterrar, echar; e bittá bi lá - a batyo i tyóbbo wela la guerra expulsa a la gente de las casas. perseguir; to la - i kólló nosotros perse guimos las ratas de bosque. Pret. pupuám, pupuálessi. pupuám, pret. v. o pupuálla ; n e puá eché al perro, n e - e puá lo eché, al perro. pupúlessi, pret. v. o pupúIla ; n - yo madrugaba, o - tú madrugabas, a él/ella madrugaba, to - nosotros madrugábamos, lo - vosotros madrugabais, ba - ellos madrugaban. pupúlla, v. madrugar; n la - ello ebba madru go todos los días. Pret. pupúm, pupúlessi. pupúm, pret. v. o pupúlla ; to - e elako madrugamos por el tra bajo. puráa, v. dar, entregar; o la - e ripepáa o entregas tu documento. Pret. puría, puesiia. 272 / puría puría, pret. v. o puráa ; o ri - e ripe páa o lo entregaste, tu documento. púríi, pret. v. o púlláa ; a - a heri salió de y fu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('púrúu', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. puerta, entrada. Cls. 9 y 10. pusalessi, pret. v. o puusalla ; a bakuerakueráa ba - bireÍltya los alumnos jugaban con naranjas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('pussa', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. aceitera. Cls. 9 y 10. putessi, pret. v. o putta ; i puá i los perros escarbaban. purta, v. escarbar, cavar; e péláká e lá - el topo escarba. Pret. putyi, putessi. putyi, pret. v. o putta ; e kólló e o bobba la rata escarbó la tierra', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('putyú', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. cólico, indigestión. Clases 9 y 10. puusalla, v. jugar con, divertirse con; 10 la e empa vosotros jugáis con el asiento, lue puusalleempa no juguéis con el asiento. Pret. pusaam, pusalessi. puusam, pret. v. o puusalla ; n ka bo - o bonatú''o áí jugué con su hermano mayor. puuselessi, pret. v. o puusella ; to - e riOssa puá nosotros jugábamos en el estadio. puusella, v. divertirse o jugar por/para; a baie ba la - e eriia los hombres juegan por el pueblo. Pret. puuseri, puuselessi. puuseri, pret. v. o puusella ; lúe lo - i nalle puá vosotros jugasteis sobre los márboles. puusessi, pret. v. o puussa ; n - yo jugaba, o - tú jugabas, a - él jugaba, to nosotros jugábamos, 10 - vosotros jugabais, ba ellos jugaban. puussa, v. jugar, divertirse; to la - kóri to''a oberi o nosotros nos estamos divirtiendo porque nos han pagado. Pret. puussi, puusessi. puussi, pret. v. o puussa ; e biulla be mmaa be - e suppá todas las doncellas jugaron al fútbol', NULL, 'buttú', 'Fuente: bubi-español', 'import-script'),
  ('Puye', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir del verbo ya en desuso o buyeea. Está loca lizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ra', 'conec.', NULL, NULL, NULL, NULL, 'prep. de; rihúla - bisussú un montón de hormigas comunes y rojas. Concuerda con las palabras de la CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ra''a', 'adj.', NULL, NULL, NULL, NULL, 'numo seis; to le - ba son las seis; batyo be - seis personas. ráa, V. comer, beber, alimentarse, manducar, jalar, tomar; a batyo bá la - la gente come, a batyo bá la - boppé la gente bebe agua. Pret. réi, ressi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('raa''o', 'S.', NULL, NULL, NULL, NULL, 'sing. excremento, hez. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('raakio', 'S.', NULL, NULL, NULL, NULL, 'sing. dictadura. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('raálá', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. pierna. . Tb. [opollá, [oponná', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('raam', 'S.', NULL, NULL, NULL, NULL, 'sing. cultura, saber. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('raatyé', 'S.', NULL, NULL, NULL, NULL, 'sing. lecho, cama, catre. CI. 5. Tb. rassi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rakka', 'S.', NULL, NULL, NULL, NULL, 'sing. víspera de festivo, viernes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rállo', 'S.', NULL, NULL, NULL, NULL, 'sing. 1. hígado, 2. soberbia. CI. 5. ralohekka. loc. adv. un instante, momento', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rapápísso', 'S.', NULL, NULL, NULL, NULL, 'sing. anona blanca. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rappáa', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. sobaco. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rappí', 'S.', NULL, NULL, NULL, NULL, 'sing. resto, limosna, dádiva. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rappo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. atrevimiento, osadía. ; 010 bOllá e - rote este niño es muy atrevido', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 172 (entradas 4276 a 4300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rappú', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. buche. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rapú', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "buche". Se localiza en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Raso', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere al cangrejo de río. Rassó hace también referencia a alguien cuya formación iniciática no ha concluido. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rasse', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. cama, lecho, catre. . Tb. raatyé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rassó', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. cangrejo de río. . re, mor! prep. de, del, de la; e raatyé rá i tyóbbo wela la cama de la casa. re, mor:l como lo, la, el; bo''á - e rikobbe cógelo, el plátano', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ré', 'conec.', NULL, NULL, NULL, NULL, 'prep. del, de la, de los, de las; e raatyé - sobeolla la cama del ancianito', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('re''a', 'S.', NULL, NULL, NULL, NULL, 'sing. ñame de las tres hojas. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('re''áeri', 's.', NULL, NULL, NULL, NULL, 'sing. contagio. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('re''eri', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. centro de aprendizaje, academia, instituto. ; rottee cen tro superior de aprendizaje, universidad', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ré''oo', 'S.', NULL, NULL, NULL, NULL, 'sing. puente, pontón. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rebbá', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. estómago, vientre. embara zo. ; - ró bODe la yema del dedo. Tb. reMe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rebbe', 'S.', NULL, NULL, 'Cl. 6', NULL, 'sing. embarazo. CI. 5. Tb. riMá. 274 / reeá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('reeá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. luna. ; e - a eri la luna está llena, e - re lé ri he la luna está nueva', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('reetye', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. diversión, jolgorio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('reetyo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. 1. puntal, apoyo. 2. nombre. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rehá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. fruto muy dulce del buehá. melocotón. . Reheba, antrop. que nos ofrece dos posi bles significados. Escrito Riebba significará "lugar de festejos" o "bodega". Escrito RjeMa significará descanso. En el caso que nos ocupa, debe escribirse Riebba. Se localiza en Ureka. Reho, antrop. que debería escribirse Ré''oo. Se localiza en Basupú. réía, pret. v. o réya ; n e obéolla di de comer al an ciano', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rekera', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. investigación, indagación. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rekeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. administración, régimen. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rekká', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. braga, calzoncillo. . Tb. ribatyu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rekkí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. mirador, balcón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('releri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. 1. llamada. 2. lugar desde donde se puede llamar. . Tb. ebétyi. relessi, pret. v. o rellá ; e sipóssi si - e ribésse wela el gato comía en la fiambrera', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rella', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. timón, guía. . rellá, V. comer en, comer por/para; lúe 10 la a batyo billo vosotros coméis ñame para la gen te. Pret. rerí, relessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rellá', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'indo otro, otra. Concuerda con las pala bras de la ; ritoperi - otro municipio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rello', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. diente, mordisco. . reótibbia, V. alquilar, prestar; n la na''a o róóm quiero alquilar una habitación, to la - e tyóbbo áó nosotros alquilamos nuestra casa. Pret. reÍltibiia, renti biesiia. reótibiesiia, pret. V. o reÍltibbia ; ne - e tyóbbo wáae n teem botyo alquilaba la casa pero no vi a nadie. reótibiia, pret. V. o rentibbia ; ne - e tyóbbo yo alquilé la casa, we - e epátta tú alquilaste la finca de cacao', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Reñao', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de rinya ''o. Se localiza en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 173 (entradas 4301 a 4325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('reppí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. culpa, culpabilidad. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('reppo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. banco, caja de caudales, aho rros. base, esencia. ; e - ra i tyokko el almacén del dinero, el banco. rere, 1. s. sing. mujer bella y primera del políga mo. . 2. adj. bello, boni to, hermoso, agradable. Concuerda con las pala bras de la ; e rihuee - la agradable familia. rerí, pret. v. o rellá ; o''a - o e bilobbo por ti han comido suculentos platos. rero, forma compuesta por rerí + el morf. prono o. Puede traducirse por comió por/para; o''a - o e bilobbo por ti han comido suculentos platos. Cfr. red. resálessi, pret. V. o resálla ; o bohiárúppe a - el sacerdote rezaba. resálla, V. rezar, rogar a Dios; to la - o tyotyi nosotros rezamos en la iglesia. Pret. resári, re sálessi. resári, pret. V. o resálla ; e materi e - la o bohiárúppe la monja rezó con el sacerdote', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Resopa', 'antrop.', NULL, NULL, NULL, NULL, 'plural de bOsoppa (caracol gran de y con la concha de color marrón claro u oscu r o. Dcbería escribirse Besoppa. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Resopo', 'antrop.', NULL, NULL, NULL, NULL, 'plural que si¡''''Ilifica "árboles saquientes" o "arcos flecheros". Debería escribir se Besoppo en el primer caso, o Besoppo en el scgundo. Está localizado en Rebola y en Baney. hesoppa, s. pI. caracoles grandes y con la concha de color marrón claro u oscuro. CI. 4', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ressi', 'S.', NULL, NULL, 'Cl. 10', NULL, 'pI. arroz. . Tb. bollá ba mbobOlló [bollá bá rÍlbobOlIól', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Reta', 'antrop.', NULL, NULL, NULL, NULL, 'plural de luettáa. Debe r ía escribirse Bettáa. Está localizado en Basaka lo de la Sagrada Familia. betá, 1. adj. numo tres. Concuerda con las palabras de la CI. 4: beatta - tres historias. 2. adv. quizá; a ta pá''e o pooa quizá no pueda venir', NULL, 'metá', 'Fuente: bubi-español', 'import-script'),
  ('retyíi', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. petición, súplica. . réya, V. alimentar, dar de comer, nutrir; o obe rii a la - o bollá la madre alimenta al niño. Pret. réía, réyesiia. réyesiia, pret. V. o réya ; m ba - a banapana yo alimentaba a los estudiantes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ri', 'conec.', NULL, NULL, NULL, NULL, 'prep. del, de la; e reppo - tyokko el almacén de los dineros, el banco. ri''a, V. hundirse, naufragar; o bokussú bO lá a boppé welit el hierro se hunde en el agua. Pret. ri''i, ri''essi. lb. o rikka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ri''abba', 'S.', NULL, NULL, NULL, NULL, 'sing. lugar donde se reparten o distri buyen cosas. CI. 5. ribári / 275', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ri''abbo', 's.', NULL, NULL, NULL, NULL, 'sing. regalo, obsequio, donación. CI. 5. Tb. ityuho, bOtuho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ri''é', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. nuez de cola. CI. 5. Tb. rinké, v. hundirse, naufragar; o buátto M lá la barca se hunde. Pret. ri''ei, ri''esei. ri''ei, pret. v. o ri''ea ; o botyo a -la per sona se hundió. ri''esei, pret. v. o ri''ea ; e emmommo e - el tronco se hundía. ri''essi, pret. v. o ri''a ; o buátto bo - el barco naufragaba. Tb. rikessi. ri''i, pret. v. o ri''a ; o buátto bo - el barco naufragó', NULL, 'rikki', 'Fuente: bubi-español', 'import-script'),
  ('ri''o', 's.', NULL, NULL, NULL, NULL, 'sing. ancla. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ri''ó', 's.', NULL, NULL, NULL, NULL, 'sing. cañaveral. lugar donde abundan las cañas. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ri''otya', 'adj.', NULL, NULL, NULL, NULL, 'sing. primero, primera Concuerda con las palabras de la CI. 5. efr. riOtya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ri''uá', 's.', NULL, NULL, NULL, NULL, 'sing. suerte, dicha. CI. 5 ; to''ú la - a ta bá pala''e la fuerza y la suerte no son compatibles. basoppo be �', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ría', 'adv.', NULL, NULL, NULL, NULL, 'caro; e isoppo ré - el pan está caro, a los panes están caros. * o sá - cos tar caro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ria''o', 's.', NULL, NULL, NULL, NULL, 'sing. antorcha. CI. 5. Tb. bOkokko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riaba', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Ri''abba. Se localiza en Batoicopo y en Ehoko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riabbi', 's.', NULL, NULL, NULL, NULL, 'sing. reparto, distribución. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riabbí', 's.', NULL, NULL, NULL, NULL, 'sing. culpabilidad. CI. 5. Riachó, antrop. que se refiere al lugar donde abundan los buitrones o las ostras. Riaty6 se localiza en Belebú. riáera, v. frotar, borrar; to la - o bobba nosotros frotamos el suelo. Pret. riáe riia, riáeresiia. riáeresüa, pret. v. o riáera ; n - boat ta yo borraba la historia, n-e ribasso yo borraba la pizarra. riáerüa, pret. v. o riáera ; ne - e epánna froté la palangana', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riakka', 's.', NULL, NULL, NULL, NULL, 'sing. menú, plato de comida. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riakkí', 's.', NULL, NULL, NULL, NULL, 'sing. condena, castigo, sentencia. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riakko', 's.', NULL, NULL, NULL, NULL, 'sing. enlace, puntal. incienso natural. CI. 5 ; e rá e eté rimo el incienso natural de los espíritus', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riakko', 's.', NULL, NULL, NULL, NULL, 'sing. multa, sanción. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riako', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "incienso natural". Se localiza en Batete y en Ureka', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 174 (entradas 4326 a 4350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('riallá', 's.', NULL, NULL, NULL, NULL, 'sing. mano, . CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riari', 's.', NULL, NULL, NULL, NULL, 'sing. cosecha de dátiles. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riatte', 's.', NULL, NULL, NULL, NULL, 'sing. pedriza, terreno pedregoso, pedre gal. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riatyi', 's.', NULL, NULL, NULL, NULL, 'sing. división, separación, entrada. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riatyó', 's.', NULL, NULL, NULL, NULL, 'sing. lugar donde abundan los buitrones o las ostras. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riba', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Riíbá. También significa "rocío, humedad". Se localiza en Ureka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ribado', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Ribatto. Se localiza en Batete y en Riaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribákeri', 's.', NULL, NULL, NULL, NULL, 'sing. revuelta. disturbio. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ribala', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a ribállá. Se localiza en Belebú. ribálessi, pret. v. o ribálla ; a baobbe ba - e elo''á wela los marineros se perdían en el mar', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riballá', 's.', NULL, NULL, NULL, NULL, 'sing. canelón. rollito de malanga rallada. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribállá', 's.', NULL, NULL, NULL, NULL, 'sing. matrimonio, esposos, desposo rios. pareja de hombre y mujer que conviven. CI. 5. ribálla, v. extraviarse, perderse; o wetta o a la - o botyíó tu hermana se pierde con la noche. olvidar, olvi darse; n la - e tyé yo olvido el lugar. Pret. ribári, ribálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribapatyilla', 's.', NULL, NULL, NULL, NULL, 'sing. araña peluda. CI. 5. ribári, pret. v. o ribálla ; bolo Matta n bo - esta historia lo olvidé. 276 / Ribas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ribas', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "rocío". También aparece escrito Rivas. Se localiza en Batete y en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribasaisso', 's.', NULL, NULL, NULL, NULL, 'sing. incendio, fuego grande. falla. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribasso', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. pizarra, mármol. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribatto', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. vaso de libación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribátto', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. esponja. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribatya', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. palo bifurcado en tres. tri dente, tenedor. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribatyu', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. taparrabo, braga, calzoncillo. . Tb. rekká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribba', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. rocío, chirimiri. . * e - ri lá si''a o tonta el rocío humedece las hojas. ribba, v. cerrar; o la - e púrúu tú cierras la puerta. Pret. ribbi, ribessi. ribbáa, v. emborracharse, embriagarse; a baebba ba lá - ba''u bábil los vinateros se emborrachan con su vino de palma. perderse, extraviarse; a bollá ba lá - e ebObbá wela los niños se pierden en el bosque. Pret. ríbbíi, ribessi. ribbi, pret. v. o ribba ; mpári e atoo n-e púrúu ayer tarde cerré la puerte. ribbia, v. cerrar, barrar; e pateri e lá - e tyo tyi el sacerdote cierra la iglesia. Pret. ribiia, ribiesiia. Tb. o ribba. ribbiáa, v. emborrachar, embriagar; a ba''u ba lá le - el vino de pal ma me emborracha. Pret. ribía, ribiesiia. ribbü, pret. v. o ribbáa ; o boobbe a - el marinero se perdió', NULL, 'o ribbia', 'Fuente: bubi-español', 'import-script'),
  ('ribé', 'adj.', NULL, NULL, NULL, NULL, 'malo, mala, feo, fea. Concuerda con las palabras de la CI. 5; ityuho - un regalo feo, rihóle - amor malo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribé''í', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. llorón, quejumbroso. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribébá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. caza, cacería. . Tb. ribebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribebba', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. caza, cacería. . Tb. ribébá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribebba', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. tiempo de arrancar los ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 175 (entradas 4351 a 4375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribebeppu', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. macho cabrío. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribébo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. carnicería. . ribeea, v. cerrarse; e púrúu e lá - botyíó la puerta se cierra de noche. Pret. ribei, ribieseei. ribei, pret. v. o ribeea ; e púrúu e - la puerta se cerró, e sáppo si - la tienda está cerrada', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribeIle', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. seno, teta, ubre. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribeki', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. saco, macuto, talego. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribekko', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. elogio, alabanza. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribekkú', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. emboscada, encerrona. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribekúbeku', 's.', NULL, NULL, NULL, NULL, 'sing. papada, barbilla grande. CI. 5. ribelessi, pret. v. o ribella ; e ribasaisso ri - el incendio se apagaba. ribella, v. desaparecer, apagarse, extinguir se; i bileri yáó i á la - nuestros bailes desaparecen. Pret. riberi, ribe lessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribélo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. calendario, almanaque. tiempo anunciado. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribenno', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. humillación, desprecio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ribepá', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a bOeppa. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riberi', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. aparato de radio, magnetófono. . riberi, pret. v. o ribella ; o boissó bo - el f uego se apagó, to - o botyíó wela desaparecimos en la noche', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riberi', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Riberí. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribésse', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. sopera, fiambrera, vasija. . ribessi, pret. v. o ribba ; n-e tyóbbo lÍl yo cerraba mi casa. ribessi, pret. v. '' o ribbáa ; n-e ello e ripelló me emborrachaba el día de la fiesta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribétáso', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. esperanza. . ribúkku / 277', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribetebette', 's.', NULL, NULL, NULL, NULL, 'sing. trampa, estratagema. el. 5. Tb. esello, ehurí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribeteri', 's.', NULL, NULL, NULL, NULL, 'sing. espera, añoranza. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribetté', 's.', NULL, NULL, NULL, NULL, 'sing. barril, bidón. el. 5. Tb. lusiánno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribetto', 's.', NULL, NULL, NULL, NULL, 'sing. desembocadura. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribetto', 's.', NULL, NULL, NULL, NULL, 'sing. 1. poza. 2. parada. 3. sala de espe ra. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribétto', 's.', NULL, NULL, NULL, NULL, 'sing. 1. ceremonia de prohibición. 2. remanso. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribetye', 's.', NULL, NULL, NULL, NULL, 'sing. escoba. fregona. el. 5 ; puráa e-n ubolle e tyóbbo dame la escoba para que barra la casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribetyi', 's.', NULL, NULL, NULL, NULL, 'sing. espera. el. 5. Tb. ribeteri. ribía, pret. v. o ribbiáa ; n-e ripepáa ÓI yo perdí mi docu mentación, n ri - e ripepáa ÓI lo perdí, mi documentación, i konyákko i o boioppé ÓI el coñac emborrachó a mi tío', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribetyí', 's.', NULL, NULL, NULL, NULL, 'sing. espera, esperanza. el. 5. Tb. ribetyi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribieri', 's.', NULL, NULL, NULL, NULL, 'sing. nacimiento. el. 5. ribieseei, pret. v. o ribeea ; e púrúu e - la puerta se cerraba. ribiesiia, pret. v. o ribbia ; to ri - e ripel ló nosotros cerrábamos la fiesta. ribiesiia, pret. v. o ribbiáa ; n ri - e ribúkku ÓI yo lo perdía, mi libro, a ba''u ba le - el vino de palma me emborrachaba. ríbíi, pret. v. o ribbáa ; o bonánna ÓI a - e ehobbá wela mi abuela se perdió en el bosque. ribiia, pret. v. o ribbia ; n 10 - o IObakka yo lo cerré, el baúl, n-o IObakka yo cerré el baúl', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribinno', 's.', NULL, NULL, NULL, NULL, 'sing. batidora, trituradora. opre sión, dictadura. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 176 (entradas 4376 a 4400)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ribissó', 's.', NULL, NULL, NULL, NULL, 'sing. ascensor, montacarga. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribobo', 's.', NULL, NULL, NULL, NULL, 'sing. araña. el. 5. Riboho, antrop. cuyo significado nos remite a "cabaña" o "cocina". Se localiza en Sampaka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribokká', 's.', NULL, NULL, NULL, NULL, 'sing. algo que encoge. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ribolebe', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por el verbo o ribOl la y el sustantivo ebbé. Ribolebbé se localiza en Bososo. ribolla, v. abrir, iniciar una fiesta; to la - e ripeUó nosotros abrimos la fiesta. Pret. ribori, ribuessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribolló', 's.', NULL, NULL, NULL, NULL, 'sing. odio, rencor. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribómma', 's.', NULL, NULL, NULL, NULL, 'sing. borrachera. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribóperi', 's.', NULL, NULL, NULL, NULL, 'sing. crianza, cuidado. el. 5. Tb. ribóppi ; - rá oberü cuidado materno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribóppi', 's.', NULL, NULL, NULL, NULL, 'sing. crianza, cuidado. el. 5 ; - rá o bOllá el cui dado del niño. Tb. ribóperi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribóra', 's.', NULL, NULL, NULL, NULL, 'sing. arrendamiento, alquiler. el. 5. ribori, pret. v. o ribOlla ; elo ebari n-e rohiáa esta mañana abrí el oratorio', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribósekka', 's.', NULL, NULL, NULL, NULL, 'sing. harmónica, acordeón. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribotónbotó', 'adj.', NULL, NULL, NULL, NULL, 'blando, tierno. eoncuerda con las palabras de la el. 5; iteke - cangrejo de río blando', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribótyikka', 's.', NULL, NULL, NULL, NULL, 'sing. herpes simple. el. 5. ribotyI1la, s. sing. apellido. mote, sobre nombre. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribotyo', 's.', NULL, NULL, NULL, NULL, 'sing. la vida, sociedad. destino. el. 5. Ej. expr. e - ri e pa nyá ré to''ú la vida de España es dura', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribuéi', 's.', NULL, NULL, NULL, NULL, 'sing. fallecimiento, defunción, muerte. el. 5. Tb. riwéi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribueríi', 's.', NULL, NULL, NULL, NULL, 'sing. comunicación. el. 5. ribuessi, pret. v. o ribOlla ; a bayoUa ba - o bosilla los ancianos abrían la cueva', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribukkí', 's.', NULL, NULL, NULL, NULL, 'sing. 1. abundancia, multitud. 2. diver sidad. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ribúkku', 's.', NULL, NULL, NULL, NULL, 'sing. libro ; a sero anna - es muy culto. el. 5. 278 / riburí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riburí', 's.', NULL, NULL, NULL, NULL, 'sing. salvación, protección. el. 5 ; o le peí - me diste protección', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ribusa', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir del vcrbo o hússa. Se localiza en Baney. Richere, antrop. obtenido a partir de ri�veretyere. Se loca liza en Ureka. Ricoso, antrop. obtenido a partir del ver bo o kossá. Rikosso se refiere al emparejamiento. Se localiza en Baney. Ridojori, antrop. que debería escribirse Rítohóri. Se localiza en Riaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ríe', 's.', NULL, NULL, NULL, NULL, 'sing. río, afluente, arroyo. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rieba', 'antrop.', NULL, NULL, NULL, NULL, 'que ofrece dos significados. Cfr. riebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riebba', 's.', NULL, NULL, NULL, NULL, 'sing. lugar de festejos. bodega, bar. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riebba', 's.', NULL, NULL, NULL, NULL, 'sing. descanso, huelga. parada. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riema', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado coincide con el de riebba. Ri''ema se refiere por tanto al lugar donde se concentran los vinateros para beber y charlar', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riené', 'antrop.', NULL, NULL, NULL, NULL, 'que parece haberse construido a partir de riena. Pare ce referirse al lugar donde se encuentran las ardi llas pequeñas. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 177 (entradas 4401 a 4425)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Rienó', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a rimo. Se localiza en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rieppa', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. siembra, sembrado. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riesá', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a rieryá. Se localiza en Belebú y en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riesso', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. plataforma. acera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ríetuetto', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. pechuga. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rietyá', 's.', NULL, NULL, NULL, NULL, 'sing. bizquera. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rietyi', 's.', NULL, NULL, NULL, NULL, 'sing. 1. distancia, recorrido. 2. lugar don de se reunen los amigos. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rietyo', 's.', NULL, NULL, NULL, NULL, 'sing. vía, raíl. CI. 5. Rigetema, antrop. cuyo significado encontramos en Rijetema. Se localiza en Belebú yen Ruiché. rígóla, v. enderezar; n-o bokussú yo enderezaba el hierro. Pret. rígóri, rígueesi. rígóri, pret. v. o rígóla ; n-o mopen dé yo enderecé la cuerda. rígueesi, pret. v. o rigóla ; to - e bilab ba nosotros enderezábamos los hechos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rígüese', 'antrop.', NULL, NULL, NULL, NULL, 'que proviene del verbo o rígóla. Se refiere a alguien que corrige o endereza. Debería escribirse Rígueesi. Se locali za en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihakko', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. conexión. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihattá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. reino, palacio. parlamento. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ríhe', 'adj.', NULL, NULL, NULL, NULL, 'nuevo, nueva. Concuerda con las pala bras de la CI. 5; o le péi ribotyo - me diste una nueva vida', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riheIla', 's.', NULL, NULL, NULL, NULL, 'sing. lugar donde se arregla ropa. CI. 5. Rihepe, antrop. que se refiere al lugar donde abundan las anguilas. Debe ría escribirse Rieppe. Se localiza en Rebola y en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihekka', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. modelo. cigarra. mari posa. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riheleri', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. recurso, súplica. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riheperi', 's.', NULL, NULL, NULL, NULL, 'sing. visita. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riheppo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. sala de visita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riheri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. rehabilitación, arreglo. . rihíhi, l. s. sing. calambre. . Tb. rikOkOttó. 2. o sá -tener calam bre, dormirse alguna extremidad; o IOpéiUá mIO é - mi pierna se ha donnido', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihítáari', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. monarquía. . Rihoe, antrop. que debería escribirse RiMe. Se localiza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihóle', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. amor, amabilidad, simpatía. ; roppá rá - enfermedad de amor', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihóra', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. regreso, vuelta. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihori', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. libertad, desligamiento. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihóterí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. vuelta, revés. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihótóttó', 'adj.', NULL, NULL, NULL, NULL, 'blanco, blanca. Concuerda con las palabras de la CI. 5; robbo - escalera blanca. rikkáa / 279', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihótyi', 's.', NULL, NULL, NULL, NULL, 'sing. algo que es transparente y brillan te. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 178 (entradas 4426 a 4450)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rihúa', 's.', NULL, NULL, NULL, NULL, 'sing. lugar del público. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihuee', 's.', NULL, NULL, NULL, NULL, 'sing. familia, parentela. el. 5 ; tue - somos parientes. Tb. rihoe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihuera', 's.', NULL, NULL, NULL, NULL, 'sing. orientación, consejo. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihúla', 's.', NULL, NULL, NULL, NULL, 'sing. 1. hilera de hormigas rojas. el. 5. 2. hormiguero. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rihúo', 's.', NULL, NULL, NULL, NULL, 'sing. envuelto, paquete, envoltorio. nido. cartucho. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riiba', 's.', NULL, NULL, NULL, NULL, 'sing. rocío. el. 5. Tb. rimma, rubba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riiliiri', 's.', NULL, NULL, NULL, NULL, 'sing. saneamiento. limpieza. el. 5. Tb. bOi/iir;', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riín', 's.', NULL, NULL, NULL, NULL, 'sing. anillo, sortija, alianza. el. 5 ; e - ri e mareri el an i 110 de boda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riityám', 's.', NULL, NULL, NULL, NULL, 'sing. lugar donde se corteja a alguien. ligue, flirteo. eL 5. Rijetema, antrop. que también apare ce escrito como Rigetema en español. Debería escribirse Rihéetémá. Se localiza en Belebú y en Ruiché. Rijole, antrop. que debería escribirse Rihóle. Se refiere a la persona amada o querida. Se localiza en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikaí', 's.', NULL, NULL, NULL, NULL, 'sing. hospital. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikakatyó', 's.', NULL, NULL, NULL, NULL, 'sing. desorden, desconcierto, incer tidumbre. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikakí', 's.', NULL, NULL, NULL, NULL, 'sing. ruina, desperdicio. el. 5. Tb. rikappi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rikakí', 'antrop.', NULL, NULL, NULL, NULL, 'que hace referencia a la ruina. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikamiisa', 's.', NULL, NULL, NULL, NULL, 'sing. joven y bella doncella. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikanápette', 's.', NULL, NULL, NULL, NULL, 'sing. 1. masa blanda y pegajosa. 2. gran cantidad de heces blandas. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikappi', 's.', NULL, NULL, NULL, NULL, 'sing. destrucción, destrozo, ruina, etc. despilfarro, derroche. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikará', 's.', NULL, NULL, NULL, NULL, 'sing. lugar de blancos, de extranjeros. el. 5 ; o luarí lua - el conti nente de los blancos, Europa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikatte', 's.', NULL, NULL, NULL, NULL, 'sing. lugar donde duermen los murcié lagos. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikatto', 's.', NULL, NULL, NULL, NULL, 'sing. contador. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikatto', 's.', NULL, NULL, NULL, NULL, 'sing. vaso, cubiletc. el. 5. Tb. tompulla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rike''o', 's.', NULL, NULL, NULL, NULL, 'sing. prueba, ensayo. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikekko', 's.', NULL, NULL, NULL, NULL, 'sing. mejilla, mofletc. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikélékélée', 's.', NULL, NULL, NULL, NULL, 'sing. animación, diversión, parranda. jolgorio, juerga. el. 5 ; e - ri o motóo wela la juerga que hay en el coche, la animación del coche. rikelessi, pret. v. o rikella ; o buatébi sapá a - o obulaella el juez calumniaba al abogado. rikeUa, v. calmnniar; o la - e materi tú calumnias a la monja. Pret. rike ri. rikelessi. rikeri, pret. v. o rikella ; to bo - o obulaella nosotros calumniamos al abogado. rikessi, pret. v. o rikka ; n - kóri n ta aan be''a me hundía porque no sé nadar. rikessi, pret. v. o rikkáa ; e sotyáa si - o lobbo 10 bobeIle lÍl el soldado torcía el brazo de mi hermano', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikettá', 's.', NULL, NULL, NULL, NULL, 'sing. caimán, cocodrilo. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riketyí', 's.', NULL, NULL, NULL, NULL, 'sing. crustáceo ermitaño. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 179 (entradas 4451 a 4475)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rikibba', 's.', NULL, NULL, NULL, NULL, 'sing. parada. el. 5. Tb. riebba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikikká', 's.', NULL, NULL, NULL, NULL, 'sing. racimo. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikká', 's.', NULL, NULL, NULL, NULL, 'sing. cola del gallo. el. 5. rikka, v. hundirse; na botyo a ta aan be''a a la - si una persona no sabe nadar se hunde. Pret. rikki, rikessi. rikkáa, v. torcer, retorcer, doblar; e húbbé e lá - e hNko e somíoko el ladrón tuerce el cuello del gallo. Pret. rikkíi, rikessi. 280 / rikki rikki, pret. v. o rikka ; o botyo a -la e emmommo la per sona se hundió con el tronco', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikkí', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. cerco, valla. parque, cercado. CI. 5 ; - rá a bollá parque infantil. rikkíi, pret. v. o rikkáa ; n-o lobM 10 áí yo torcí su brazo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikko', 's.', NULL, NULL, NULL, NULL, 'sing. tenedor. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riknbbí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. final, término, conclusión. . rikuera, v. facultar; n la - 010 botyo a le tówelle yo faculto a esta persona para que hable por mí. Pret. rikueria, rikueresi ia. rikueresiia, pret. v. o rikuera ; n-yo facultaba, o - tú facultabas a - él facultaba, to nosotros facultábamos, lo - vosotros facultabais, ba - ellos facultaban. rikueria, pret. v. o rikuera ; n-yo facul té, n ta - yo no faculté, o - tú facultaste, o ta - tú no facultas te, etc', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikobbe', 's.', NULL, NULL, NULL, NULL, 'sing. planta del plátano macho, plata nero. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikobinna', 's.', NULL, NULL, NULL, NULL, 'sing. jefatura. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikokko', 's.', NULL, NULL, NULL, NULL, 'sing. temblor, ataque de nervios. cohesión, unión. CI. 5. Tb. rityíbierí (pI. batyíbierlJ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikokko', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. alumbrado, iluminación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikokoo', 's.', NULL, NULL, NULL, NULL, 'sing. cohesión, solidaridad. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikokottó', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. calambre. absceso duro. . Tb. rihíhi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikookonno', 'adj.', NULL, NULL, NULL, NULL, 'pequeño, pequeña, corto, corta, etc. Concuerda con las palabras de la CI. 5. Cfr. rikookoo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikookoo', 'adj.', NULL, NULL, NULL, NULL, 'pequeño, pequeña, corto, corta, etc. Concuerda con las palabras de la CI. 5; rikobbe plátano pequeño, riallá - mano pequeña. rikora, v. denunciar, acusar, delatar; o botyo á e eriia a la - a batyo el paisano denuncia a la gente. Pret. riko riia, rikoresiia. rikoresüa, pret. v. o rikora ; n yo denunciaba, o - tú denunciabas, a - él denuncia ba, tii - nosotros denuncíábamos, 10 - vosotros d enunciabais, ba - ellos denuncíaban. rikoriia, pret. v. o rikora ; n-o biibbe lÍl kóri a le óppi denuncié a mi esposo porque me pegó. R', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikotánta', 's.', NULL, NULL, NULL, NULL, 'sing. contenedor de papeles. papelera. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikottí', 's.', NULL, NULL, NULL, NULL, 'sing. *pañal. CI. 5. Ej. exp r. e sine''e si aríi - el bebé lleva un pañal', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikotto', 's.', NULL, NULL, NULL, NULL, 'sing. pie, patada. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikottó', 's.', NULL, NULL, NULL, NULL, 'sing. puño, puñetazo. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikótto', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. colección, conjunto. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikottoáta', 's.', NULL, NULL, NULL, NULL, 'sing. planta del pie. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikotye', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. tren. camión largo, camión en general. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikuku', 's.', NULL, NULL, NULL, NULL, 'sing. tajada. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rikupí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. ofensa, afrenta. falta de res peto, desobediencia. desdén. . Tb. ripukké', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rilabba', 's.', NULL, NULL, NULL, NULL, 'sing. lugar para tratar varios asun tos. política. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rilé', 'adj.', NULL, NULL, NULL, NULL, 'dem. aquel, aquella. Concuerda con las palabras de la CI. 5; - isaké aquel machete, raatyé aquella cama', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 180 (entradas 4476 a 4500)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('rile''é', 's.', NULL, NULL, NULL, NULL, 'sing. hernia, prostatitis. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rile''o', 's.', NULL, NULL, 'Cl. 4', NULL, 'sing. 1. nombre de Basakato del Este. 2. depósito, almacén. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rilebueri', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. observación, atención. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rilekku', 's.', NULL, NULL, NULL, NULL, 'sing. escondite, lugar donde se puede ocultar algo. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rileppo', 's.', NULL, NULL, NULL, NULL, 'sing. refugio, retiro, depósito. CI. 5. rílessi, pret. v. o ''rílla ; o mmo a - e tyóbbo lÍl el demonio exterminaba mi hogar. rílla, v. exterminar, matar; na mmo a la - e tyób bo lÍl ká mmo obbé si un demonio extermina mi hogar es porque es un demonio malo. Pret. ríríi, rílessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rilo', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'dem. este, esta. Concuerda con los nom bres de la ; - isaké este machete, - raatyé esta cama', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riloa', 'antrop.', NULL, NULL, NULL, NULL, 'que encontramos escrito también como Riloha. Se localiza en Belebú. Riloha, antrop. que a veces encontramos escrito como Riloa. Se obtiene a partir del verbo o lo ''a. Rilo''a se refiere al lugar donde se duerme. Se localiza en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rilokko', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. residencia, albergue. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rilopa', 'antrop.', NULL, NULL, 'Cl. 5', NULL, 'que hace referencia al lugar don de abundan los bilópa. Rilopa se localiza en Batoicopo. rimma, 1. adj. indo alguno, alguna. Concuerda con las palabras de la ; he - raatyé hay algu na cama. 2. S. sing. roCÍo. . Tb. rubba, riiba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rimmammabi''o', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. felicidad, alegría. placer, satisfacción. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rimmo', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. 1. roCÍo. 2. belleza, hermosura. . Tb. ribba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rimo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Rimmo. Se localiza en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rimpá', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. cosecha de dátiles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rimpo', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. hocico grande, morro. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rimpo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "hocico grande", "morro". Se localiza en Sampaka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rimuetye', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. 1. danza bubi de los espíritus barekaita. 2. cohe sión. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rinakaboríi', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. macho cabrío. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rinké', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. nuez de cola. . Tb. ri''é', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rintúrÍntú', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'bajo, baja, corto, corta, etc. Con cuerda con las palabras de la. Cfr. ritÍfú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rinya''o', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. lugar donde se produce la camo rra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riobbo', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. beneficio. premio, impues to, paga, . Tb. riomo. Riochí, antrop. obtenido a partir del térmi no bubi rihótyi. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riodé', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de riotté. Se localiza en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riohe', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a Rihoe. Se localiza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rioka', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. mérito, fama. . Th. rubbí. R', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riokkó', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. alegría, satisfacción, júbilo. ', NULL, 'roho y rohoho', 'Fuente: bubi-español', 'import-script');

-- Lote 181 (entradas 4501 a 4525)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('riokollo', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. plantación de picante. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riomo', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. beneficio. premio, impues to, tributo. . Th. riobbo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ríoo', 'S.', NULL, NULL, 'Cl. 6', NULL, 'sing. fogón. fuego de tres piedras. el. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rioobe', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. lugar de pescadores. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rioolÍl', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. retrete, letrina. pozo ciego. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riopo', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. árbol de Navidad. . Tb. ripuppu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riopo', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "batalla", "contien da". Debería escribirse Rioppo. Se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rioppí', 'S.', NULL, NULL, NULL, NULL, 'sing. castigo, punición. el. 5. 282 / rioppo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rioppo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. 1. pelea, lucha, batalla, combate, lid. 2. tormento. . riOri, s sing. lugar de com pra. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Riosa', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Riossa. Se localiza en Baríobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rioso', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "lugar para la liba ción". Riosso se localiza en Bahó y en Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riOssa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. plaza. campo de fútbol. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riosso', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. división. separación. lugar para la libación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riOtótto', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. avispero, colmena. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riotta', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'sing. debilidad, flojedad. abati miento. . Th. Motta, obOttó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riotté', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. red de pesca. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riótú', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'bajo, baja, corto, corta, etc. Concuer da con las palabras de la ; e riibbo - la escalera corta, e isaké - el machete corto', NULL, 'rinfúrínfú', 'Fuente: bubi-español', 'import-script'),
  ('riotya', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'sing. primero, primera Concuerda con las palabras de la ; e riossa - la primera pla za, el primer estadio. Th. ri''otya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riótya', 'S.', NULL, NULL, 'Cl. 5', NULL, 'sing. suciedad, desorden. . riobaera, V. frotar; lii la - o bobba vosotros frotáis el suelo. Pret. rióbae ria, rióbaeresiia. riobaeresiia, pret. V. o rióbaera ; n-yo frotaba, o - tú frotabas, a - él frotaba, to - noso tros frotábamos, 10 - vosotros frotabais, ba ellos frotaban. riobaeria, pret. V. o rióbaera ; n bo - o bobba yo froté el suelo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riotyanna', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. cuidado, guardería. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripá''a', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. sujetador. ', NULL, 'sitéppi', 'Fuente: bubi-español', 'import-script'),
  ('ripa''o', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. palo para apuntalar. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripá''o', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. antorcha, candil. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripaasí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. España. . Ripalacasa, an/rop. que debería escribirse Ripalakassa. Se refiere a un resba lón. Se localiza en Basakato de la Sagrada Familia', NULL, 'ripanyá, ripanná', 'Fuente: bubi-español', 'import-script'),
  ('ripanná', 's.', NULL, NULL, NULL, NULL, 'sing. España. el. 5. Tb. ripaasí, ripanyá', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 182 (entradas 4526 a 4550)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ripanyá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. España. . Tb. ripaasí, ripanná', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripapupappu', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. llamarada. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripátto', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. luz, lámpara. ', NULL, 'láppo', 'Fuente: bubi-español', 'import-script'),
  ('ripe''u', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. planta nueva, retoño. lugar donde abundan las plantas nuevas o los retoños. . ripéa, v. enrollarse, enroscarse; o opetté bo lá - la cuerda se enrolla. Prel. ripei, ripe seei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripeám', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. retribución, paga, beneficio, suel do, ganancia, pensión. . Tb. riobbo. ripéi, prel. v. o ripéa ; e esokolla e - el ciempiés se enrolló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripelam', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. necesidad, carencia, falta de algo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripelari', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. puterío, ramería. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripeleri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. necesidad, deseo. . r', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripelló', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. fiesta, celebración, festividad, fes tejo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripém', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. lugar de domicilio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripepáa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. documento, escrito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripeppe', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. telaraña. mana. ', NULL, 'pippi', 'Fuente: bubi-español', 'import-script'),
  ('ripera', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. tiempo para atar las guías de los ñames. . ripeseei, pret. v. o ripéa ; o bosikké bo e puá bü - el rabo del perro se enronaba. ripessi, pret. v. o rippáa ; to o opetté nosotros enrollába mos la cuerda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripétyoo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. puntal, apuntalamiento. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ripeu', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Ripe''u. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripi''e', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. pájaro carpintero. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripottá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. la base de la palmera de aceite o de cualquier palmera. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripotto', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. ciudad, barrio de blancos en gene ral. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rippá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. sobaco. . Tb. rappáa. rippáa, v. enrollar, enroscar; to la - o opetté nosotros enrollarnos la cuerda. Pret. rippíi, ripessi. rippíi, pret. v. o rippáa ; ne - e nooa enrollé la serpiente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripueri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. salida. . Tb. ripúla, ripurí. rityiáeri / 283', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripukké', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. ofensa, afrenta. falta de respeto, desobediencia, desdén. . Tb. rikupí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripúla', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. salida, partida. . Tb. ripurí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripuppu', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. 1. lugar donde abundan los ser bales. 2. árbol de Navidad. . Tb. dopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripuráósüa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. Francia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ripurí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. salida. . Tb. ripúla, ripueri', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 183 (entradas 4551 a 4575)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ripúríi', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. origen, procedencia. . Riquechí, antrop. que debería escribirse Riketyí. Se localiza en Baney y en Bososo. Riquesa, antrop. que hace referencia al lugar donde abundan los helechos. Rikessá se localiza en Baney. Riquito, antrop. obtenido a partir de los sustantivos rikkí y to. Se refiere al cerco que se pone a las plantas del ñame. Rikkítu se localiza en Rebola. ríríi, pret. v. o rílla ; u mmo a - a batyu Ó1 el demonio exterminó a mi gente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('risabbo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. lija. *cepillo metálico. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('risákiera', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. felicidad, felicitación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riseríi', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. enfermería, clínica. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rísokká', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. sombrero. bolso. som brerería. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rísopuára', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. tobogán. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rísosueri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. lugar donde se recibe infor mación. oficina de información. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rísoteri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. derecho, rectitud. ; - rá e rihuee derecho de la familia; "); - rá e elako derecho del trabajo, etc', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('risúlla', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. techo, tejado. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('risúpia', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. elección. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritáeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. lugar de encuentro. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritákkí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. dominio, gobernación, jurisdic ción. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritákko', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. mensajería. ministerio, embajada. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritáperi', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. aceptación. recibimiento. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rité', 'antrop.', NULL, NULL, NULL, NULL, 'que hace referencia al lugar donde existe una gran extensión de rocas. Se trata tam bién de la pedriza. Rite se localiza en Balachá y en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rite''í', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. consuelo, pésame, condolencia, súplica. . ritessi, pret. v. o ritta ; u bu''e bo - la carga pesaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rito', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'alto, largo. Concuerda con las palabras de la ; e raatyé la cama larga', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritoatooa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. risotada, carcajada. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritohó', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. juzgado, tribunal. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritOlállo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. retahíla. piropo, elogio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritolari', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. alianza, unión, solidaridad. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritolló', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. vínculo, enlace. eslabón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ritope', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere al lugar donde abunda el árbol etoppe. Ritoppe se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritoperi', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. municipio, condado. . rítta, v. tener mucho peso, pesar; o bu''e bu la - la carga pesa. Pret. ntyi, ritessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rittáa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. grupo, pandilla. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 184 (entradas 4576 a 4600)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ritto', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. lugar donde se plantan los ñames. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ritutera', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. acogida, recepción. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rituttá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. vertedero, estercolero. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rityámaau', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. Alemania. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rityeretyere', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. mezcla pastosa, menestra. . rityi, pret. v. o ritta ; o M''e bo - la carga pesa, si tá - no pesa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rityiáeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. perdón, disculpa, benevolencia. . 284 / rityíbierí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rityíbieri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. temblor, tiritera. . Tb. rikokko', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rityo', 's.', NULL, NULL, NULL, NULL, 'sing. sociedad. CI. 5; ii - la socie dad, la vida', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rityué', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. pescaderia. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riukí', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. confusión. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riuppoo', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. cuesta, montaña. CI. 5 ; - rito una montaña alta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riusóri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. nombramiento. referencia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rivas', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Ribba. Se localiza en Belebú y en Basupú. Riveché, antrop. que significa "escoba". Se localiza en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rivedé', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere al bidón o al tonel. Se localiza en Belebú y en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('riwéi', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. fallecimiento, muerte, defunción, fune r al. . Tb. ribuéi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ro', 'conec.', NULL, NULL, 'Cl. 5', NULL, 'prep. del, de la; e ribúkku - bOtyii el libro de la persona. Concuer da con las palabras de la', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ro''áeri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. entendimiento, comprensión. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ro''oro''o', 'loc.', NULL, NULL, NULL, NULL, 'adv. poco a poco, así así', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roáa', 's.', NULL, NULL, NULL, NULL, 'sing. hacha, mango. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roake', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. parto, dolor de parto. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('robbe', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'sing. macho, varón. Concuerda con las palabras de la ; e iteke - el cangrejo macho de río', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Robbe', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Riibbe. Se locali za en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('robbo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. amuleto, fetiche. rito, cere moma. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('robbo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. escalera, escalón. ; e - rito la escalera larga', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roberi', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. pagaduría, cobro. CI. 5. Tb. rioberi', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 185 (entradas 4601 a 4625)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('robetyoru', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. camero. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('robó', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'sing. duro, fuerte. Concuerda con las palabras de la ; e rioppo - la dura batalla. Roca, antrop. que hace referencia a la unión, a la unidad. En este caso habrá de escribir se Rokka. Se localiza en Bariobé. Rocoso, antrop. que significa "murmu llo", "quejido". Rookosso se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rohiáa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. oratorio, iglesia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roho', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. alegría, entusiasmo. ', NULL, 'rohoho y riokkó', 'Fuente: bubi-español', 'import-script'),
  ('rohoho', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. alegría, entusiasmo. ', NULL, 'roho', 'Fuente: bubi-español', 'import-script'),
  ('rohoo', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. piedra que se utiliza para moler cosas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rokalla', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. unión, unidad. CI. 5. Tb. rokka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rokáteri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. comienzo, inicio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rokátya', 's.', NULL, NULL, NULL, NULL, 'sing. avanzadilla, precursor. CI. 5', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rokítta', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. médico, doctor. . Tb. rokútta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rokka', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. unión, cohesión. . Tb. rokalla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rokkí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. cuadrilla, pandilla. ', NULL, 'bOko', 'Fuente: bubi-español', 'import-script'),
  ('rokko', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. asociación, cumbre. ', NULL, 'rokkí', 'Fuente: bubi-español', 'import-script'),
  ('rokuékue', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. desorden. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rokútta', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. médico, doctor. . Tb. rokítta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rOleri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. matadero. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rolo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse ROló. Se localiza en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rOló', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. árbol pequeño de látex blanco amar go y corteza también amarga de fruto verde pero roj o cuando madura. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rolólló', 'adj.', NULL, NULL, 'Cl. 5', NULL, 'sing. viejo, veterano. Concuerda con las palabras de la ; e reppo - el viejo banco', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('róm', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. habitación, alcoba, aposento. . Tb. etyubbá, rúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rombebí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. muñeca. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rombúttu', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. bota, bota de lluvia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rommua', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. carnicería. . . Rupacohó I 285', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Romo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Roomo. Se localiza en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ronkótte', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. gabardina, impermeable. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 186 (entradas 4626 a 4650)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('ronno', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. acto, meollo. ; o ka ba ítyi o - les encontré en el acto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rooá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. competición. riña, disputa, discusión. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roobe', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. pescadería. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rookosso', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. murmullo, quejido. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Rope', 'antrop.', NULL, NULL, NULL, NULL, 'que ofrece dos significados según cómo se pronuncie y escriba. En primer lugar, escrito Rope significará "lugar donde se golpea o pega a la gente". En segundo lugar, escrito Roope se referirá al lugar donde abunda el agua. Se localiza en Rebola y en Bahó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Ropo', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a rioppo. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roppá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. dolor, enfermedad. ; - rá rihóle enfermedad de amor', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roppó', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. estropajo. . Tb. kutyá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('roréa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. autogobierno. . rotee, ad). sing. grande, voluminoso, importante, destacado. Concuerda con las palabras de la ; e rappo - el atrevimiento grande', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rótta', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. mercado, venta. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rotteri', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. tienda, comercio. ', NULL, 'sáppo', 'Fuente: bubi-español', 'import-script'),
  ('rottó', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. bolsa, macuto, mochila. . ru''a, v. prohibir; o boie a la - e bisawasawáa el hombre prohíbe tocar los guanábanos. Pret. ru''iia, ru''iesiia. ru''iesiia, pret. v. o ru''ia ; to bo - o bOra''o bii áó [to bo rú''iesiia o bora''o búáój nosotros prohibíamos tocar nuestra comida. ru''iia, pret. v. o ru''ia ; lello to - o botté bo áó [Iello to ru''íó botté búáój hoy hemos prohi bido acercarse a nuestro árbol', NULL, 'o rubbia', 'Fuente: bubi-español', 'import-script'),
  ('Ruake', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Roake. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rubba', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. rocío. . Tb. bamma, biiba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rubbá', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. habitación, alcoba. . Tb. bityubá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rubbí', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. fama, reputación, imagen, nombra día. . Tb. esálero y rioka. rubbia, v. prohibir; e bikokkó ro n la bi - yo prohibo tocar mis plan tas de malanga. Pret. rubbiia, rubiesiia. rubbiia, pret. v. o rubbia ; lello to - o botté bo áó hoy hemos prohibido acercarse a nuestro árbol. rubiesiia, pret. v. o rubbia ; to bO - o bora''o bii áó nosotros prohibíamos tocar nuestra comida. rubOlessi, pret. v. o rubolla ; o obi tya bo - e tamma el ratón descorchaba la petaca. rubolla, v. descorchar; ii boseseppe a la - e tyáa el joven muchacho descorcha el garrafón. Pret. rubori, rubolessi', NULL, 'o ru''a', 'Fuente: bubi-español', 'import-script'),
  ('ruboo', 's.', NULL, NULL, 'Cl. 6', NULL, 'sing. nido. C1. 5 ; e ri obo''ó el nido de arriba. rubori, pret. v. o rubolla ; o obitya bo - e tamma el ratón descorchó la petaca', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rue''í', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. enseñanza, educación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ruebba', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. hipopótamo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('ruebbáa', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. barrigón, barrigudo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rukkio', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. ronquido. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rule''o', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. tapón de corcho. . rulessi, pret. v. o rulla ; o boi taari a - bakassii la reina envejecía deprisa. rulla, v. envejecer, caducar; a apaooá ba lá bakasso los blancos envejecen pronto. Pret. ruri, rulessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('rúm', 's.', NULL, NULL, 'Cl. 5', NULL, 'sing. habitación, alcoba, aposento. . Tb. etyubbá, róm. Rupacohó, antrop. obtenido a partir del verbo o ruppa y del sustantivo /dj''ó. Se localiza en Basuala. 286 I rupalessi rupalessi, pret. v. o rupalla ; e biruppú n bi - a bello ro las hierbas las cortaba con mis dientes. rupalla, v. cortar con caer con; o - ''iIlo caerse, desplomarse. Pret. rupari, rupalessi. rupari, pret. v. o rupalla ; o luua n 10 - sisássi la tela lo corté con tijeras. rupessi, pret. v. o ruppa ; o biiie a - e rikobbe el hombre cortaba la planta del plátano. ruppa, v. cortar; to la - o botattá nosotros cortamos la piel. Pret. ruppi, rupessi. ruppé, . 1''. sing. divinidad, Dios. el. 7. ruppi, pret. v. o ruppa ; e arÍolla e - o obíl la la anciana cortó la palmera. ruri, pret. v. o rulla ; o botú kuáari a - bakasso la alcaldesa envejeció pronto', NULL, 'ep uessi', 'Fuente: bubi-español', 'import-script'),
  ('rusollo', 's.', NULL, NULL, NULL, NULL, 'sing. purgante. el. 5. rutya, v. gemir, sollozar, lloriquear, quejarse; n la - kóri n la o''áa tyallá me quejo porque tengo hambre. Pret. ru tyia, rutyessi. rutyelessi, pret. v. o rutyella ; o boseseppe a - o bulla a eero ó el muchacho suspiraba por la doncella a la que vio. rutyella, v. suspirar por algo/alguien; n la o - suspiro por ti. Pret. rutyeri, ru tyelessi. rutyeri, pret. v. o rutyella ; 10 - e bilabba bi áó vosotros suspirastes por nuestras cosas. rutyessi, pret. v. o rutya ; n - yo gemía, o - tú gemías, a - él gemía, to nosotros gemíamos, lo - vosotros gemíais, ba ellos gemían. rutyia, pret. v. o rutya ; o bOllá a - sóté a herí tollo el niño sollozó tanto que se quedó dor mido', NULL, 'o se''úbba', 'Fuente: bubi-español', 'import-script'),
  ('sa', 'conec.', NULL, NULL, NULL, NULL, 'prep. de; e sáppo - abúkku la tienda de libros, la librería. Concuer d a con las palabras de la CL 12. sá, v. 1. ser, estar, haber, celebrar, soler; ne botyo soy una persona, ne hállo estoy aquí, o la - botyo bo e eriia sueles ser una persona del pueblo, n la - ripotto suelo ir a la ciudad, he botyo hállo hay alguien aquí, to la - e ripelló ri áó nosotros celebramos nuestra fiesta. 2. narrar; to la - boatta nosotros narramos una historia. Pret. séi, sessi', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 187 (entradas 4651 a 4675)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sa''á', 's.', NULL, NULL, NULL, NULL, 'sing. bastón, vara. CL 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sáám', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. finquita, huertecillo. CL 12. saatessi, pret. v. o saatta ; to o luua lo áó nosotros desgarrábamos nuestra tela. saatta, v. romper, desgarrar; o la - e sotte si o wéso'' o o rom pes la camisa de tu amigo. firmar; n la - e ripepáa firmo el escrito. Pret. saatyi, saatessi', NULL, 'o salla', 'Fuente: bubi-español', 'import-script'),
  ('saatyanna', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. mujercita, esposita. . Tb. saísso', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('saatyé', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. camilla, catre, lecho pequeño. CL 12. saatyi, pret. v. o saatta ; o obel lá bo - botattá IÍl el bejuco desgarró mi pieL sábba, v. astillarse, desgarrarse, arrancar. asustarse; o botébbá IÍl bó la - mi corazón se desgarra. Pret. sábbi, sábessi. sábbi, pret. v. o sábba ; ij botté bó - el árbol se astilló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sabe', 'antrop.', NULL, NULL, NULL, NULL, 'que parece provenir de sappé. Se localiza en Batete. sabea, v. arrancarse, desgajarse; o lubbá lo lá - la palma se desgaja. Pret. sabei, sabeseei. sabei, pret. v. o sabea ; o IObM lo e enokonokko 10 - el brazo del ogro se desgajó. sabeseei, pret. v. o sabea ; o bonne IÍl bo - mi dedo se desgajaba. sábessi, pret. v. o sábba ; o botébbá o bó - tu corazón se desgarraba. sabora, v. desembarcar; o buatto bO lá - e tataúlo el barco desembarca en la orilla del mar. Pret. saboria, sabOresiia. saboresüa, pret. v. o sabora ; e sitímma si - a batyo el barco desembarcaba a las personas. saboria, pret. v. o sabOra ; ij bu atto bo - la a batyo el cayuco desembarcó con las personas. sabuera, v. desembarcar; o buatto bo lá - e elo''á alo el barco desembarca en la playa. Pret. sabueriia, sabueresiia. 288 / sabueresiia sabueresiia, pret. v. o sabuera ; o bu atoo bo - e elo''á alo el barco desembarcaba en la playa. sabueriia, pret. v. o sabuera ; o buatoo bo - e elo''á alo el barco desembarcó en la playa. S', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sade', 'antrop.', NULL, NULL, NULL, NULL, 'que parece provenir de satée. Se localiza en Batete. saébiaan, pret. v. o saébianna ; o bOie a - a bakOé el hom bre contrató a los braceros. saébianesiia, pret. v. o saébianna ; n ba - a balakoláko yo contrataba a los trabajadores. saébianna, v. contratar; e kobinna a la batyo el gobierno contrata a gente. Pret. saébiaan, saébianesiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Saeló', 'antrop.', NULL, NULL, NULL, NULL, 'cuya forma escrita en bubi debería ser Sá''ilo. Se localiza en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sagobe', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a kOppé. Ságobbé se refiere a alguien parecido al gavilán. Se localiza en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('saísso', 's.', NULL, NULL, NULL, NULL, 'sing. mujercita, damita. el. 12. Tb. satyanna', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sáityi', 's.', NULL, NULL, NULL, NULL, 'sing. mes de enero. el. 12. sákessi, pret. v. o sákka ; to bO o bOpulákke felicitábamos al extranjero. sákiera, v. felicitar a alguien; to lo - lello te fel icitamos hoy. Pret. sákieriia, sákieresiia. sákieresiia, pret. v. o sákiera ; to lo - mpári os felicitá bamos ayer. sákieriia, pret. v. o sákiera ; lo le - e ello n ka berí o e me felicitasteis el día de mi nacimiento. sákiesiia, pret. v. o sákkia ; n-yo elogiaba, o - tú elogiabas, a - él elogiaba, to nosotros elogiábamos, 10 - vosotros elogiabais, ba - ellos elogiaban. sákíia, pret. v. o sákkia ; a baie lÍl ba le - mis padres me ala baron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sakká', 's.', NULL, NULL, NULL, NULL, 'sing. pequeña almendra. compri mido, píldora, gragea. bastón, cetro. el. 12. Th. simeressi. sákka, v. felicitar, elogiar; to la - o boseseppe nosotros felicitamos al muchacho. Pret. sákki, sákéssi. sákki, pret. v. o sákka ; 10 - o boseseppe vosotros felici tasteis al muchacho. sákkia, v. elogiar, alabar, halagar; to la o lello te alabamos hoy. Pret. sákíia, sákiésiia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sala', 'antrop.', NULL, NULL, NULL, NULL, 'que significa hambre o la cáscara del palmiste. Se locali za en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('saláa', 's.', NULL, NULL, NULL, NULL, 'sing. cáscara del palmiste. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('saláhekka', 'adv.', NULL, NULL, NULL, NULL, 'ahora mismo, al instante, al rato; sé - en este instante', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sale', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de buaUe. Salle se localiza en Baney. salessi, pret. v. o salla ; n-o botattá bo e emaÍlkoro yo desgarraba la piel del mango. salessi, pret. v. o salláa ; a bakOé to ba - a los brace ros les teníamos miedo. salla, v. desgarrar, romper; o tyi - o botébbá o no rompes tu corazón. Pret. sari, salessi. Tb. o saatta. salláa, v. temer, tener miedo; e biobéolla bi tyá la - ti bittá los ancianos no temen la guerra. Pret. sáríi, saléssi. salOlessi, pret. v. o salolla ; ti pullá e - ti bítabbé la tormenta desgajaba las ramas. salolla, v. desgajar, rajar, desprender, arrancar de cuajo, de raíz; n la - a batté arranco los árbo les de cuajo. Pret. salori, salOlessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Salomé', 'antrop.', NULL, NULL, NULL, NULL, 'prestado de otra lengua. Se loca liza en Sampaka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Salomón', 'antrop.', NULL, NULL, NULL, NULL, 'adoptado y sustituido por Opo. Se localiza en Baney. salorea, v. desgajarse, arrancarse de raíz, de rrumbarse, desprenderse; a abílla ba lá - las palmeras se derrumban. Pret. salorei, salOreseei. salOrei, pret. v. o salorea ; o wettalÍl a - lá ekonna mi hermana se desgajó como un tronco. se''úbessi / 289 salOreseei, pret. v. o salOrea ; iS iSbílIa biS biSyolla lÍl biS - la palmera de mi abuelo se derrumbaba. salOri, pret. v. o salolIa ; n biS - iS biStattá biS e emaÍlkiSro desgajé la piel del mango', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sam', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de buáám. Sáám se localiza en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Samba', 'antrop.', NULL, NULL, NULL, NULL, 'construido por los términos sá y mba. Está localizado en Baloeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Samí', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a Sáám. Se localiza en Bariobé y en Ruiché', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sámoóte', 's.', NULL, NULL, NULL, NULL, 'sing. mes de febrero. el. 12. Sancola, antrop. que parece obtenerse a partir de los términos Sáám y cola. Se localiza en Bahó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Saní', 'antrop.', NULL, NULL, NULL, NULL, 'que también nos remite a Sáám. Se localiza en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sanná', 's.', NULL, NULL, NULL, NULL, 'sing. dedo anular. el. 12; e - el dedo anular', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sansi', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Sánsé. Se localiza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sañaba', 'antrop.', NULL, NULL, NULL, NULL, 'construido por los términos sá y nyabba. Sányabba se localiza en Belebú, en Moka, en Moeri y en Ruiché. sapessi, pret. v. o sappa ; to - e billo la a bato''a dábamos un bocado a los ñames y a las patatas. sappa, v. dar un bocado, mordisquear; o bOllá a la - e isOppo ri áí el niño mordisquea su pan. Pret. sappi, sapessi', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 188 (entradas 4676 a 4700)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sappé', 's.', NULL, NULL, NULL, NULL, 'sing. hollejo seco de poca cantidad. el. 12. sappi, pret. v. o sappa ; o obitya bo - e oonessú lÍl el ratón mordisqueó mis dedos del pie', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sáppo', 's.', NULL, NULL, NULL, NULL, 'sing. tienda, abacería, comercio. el. 12. . sára, v. atemorizar, intimidar; e erikiriki e lá - a batyo la sombra atemoriza a la gente. Pret. sáría, saresiia. saresiia, pret. v. o sára ; e enokonokko e - a bOllá el ogro atemorizaba a los niños', NULL, 'roter', 'Fuente: bubi-español', 'import-script'),
  ('Sari', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de warí. Se localiza en Bahó. sari, pret. v. o salla ; 010 waísso a - e sinkiletti lÍl esta mujer rompió mi camiseta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sarí', 's.', NULL, NULL, NULL, NULL, 'sing. mujercita, esposita. el. 12. sáría, pret. v. o sára ; e eno konokko e le - el ogro me atemorizó. sáríi, pret. v. o salláa ; n bo - 010 botyo tuve miedo de esta persona', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sarÍolla', 's.', NULL, NULL, NULL, NULL, 'sing. ancianita, viejecita. el. 12. Tb. sarítyityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sarítyityi', 's.', NULL, NULL, NULL, NULL, 'sing. ancianita con mucha expe riencia, viejecita. el. 12. Tb. saríolla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sataté', 's.', NULL, NULL, NULL, NULL, 'sing. tiesto. cuenco. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('satée', 's.', NULL, NULL, NULL, NULL, 'sing. ladito, trocito. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sátiré', 's.', NULL, NULL, NULL, NULL, 'sing. sábado. el. 12. Tb. lokia. Sautó, anlrop. que debería escribirse Santo''o. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sauto''o', 's.', NULL, NULL, NULL, NULL, 'sing. frasco, petaca. el. 12. Tb. sitó ''o, tamma. se''a, v. medir, alinear; n tori o - e biyári o tengo que medir tus parcelas. Prel. se''i, se''essi. se''essi, pret. v. o se''a ; n bi - e biyári o yo los medía, tus parcelas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('se''i', 's.', NULL, NULL, NULL, NULL, 'sing. 1. barro rojo 2. límite. el. 12. se''i, pret. v. o se''a ; la bOlo botté 10 - o bokOo con este palo medisteis la calle', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('se''o', 's.', NULL, NULL, NULL, NULL, 'pI. 1. mediciones. 2. balanzas, balances, pesas. el. 10. se''úbbi, pret. v. o se''úbba ; o -la o lOé gemiste con el lloro. se''úbba, v. gemir, sollozar; n la ó''a botyo ná a la - oigo a alguien que solloza. Pret. se''úbbi, se''úbessi. se''úbessi, pret. v. o se''úbba ; o wanapana a - kóri a tyí''a hetyíi el estudiante solloza ba porque no aprobó. 290 / sebaam sebaam, pret. v. o seballa ; n-a batyo ba orii bo bá soñé con las personas que fueron asesinadas', NULL, 'o rutya', 'Fuente: bubi-español', 'import-script'),
  ('sebáám', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. hoja, papel. . Tb. sinta. sebalessi, pret. v. o seballa ; n lo - lúe ammaa yo soñaba con todos vosotros. seballa, v. soñar; o la - e eriia o tú sueñas con tu pueblo. Pret. sebaam, sebalessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sebam', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Sebáám. Se localiza en Batoicopo. sebbáa, v. huir, escapar; 10 la - vosotros huís. Pret. sebbí, sebessi', NULL, 'o húbbia', 'Fuente: bubi-español', 'import-script'),
  ('sebbe', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. aguilucho. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sebbe', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. embarazo de pocas semanas. . sebbí, pret. v. o sebbáa ; 010 botyo e - esta persona huyó. sebéa, v. fugarse, escaparse; o obitya bo lá el ratón se escapa. Pret. sebéi, sebeseei. sebéi, pret. v. o sebéa ; a bapulákke ba mmaa ba - todos los oriundos de otros países se escaparon. sebeseei, pret. v. o sebéa ; n-yo me fugaba, n ta - yo no me fugaba. sebessi, pret. v. o sebbáa ; to nosotros huíamos, to ta - nosotros no huíamos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sebbe', 'antrop.', NULL, NULL, NULL, NULL, 'que ofrece dos significados en fun ción de su forma escrita. En primer lugar, Sebbe. En segundo lugar, Sebbe. Se loca liza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('seeí', 'adv.', NULL, NULL, NULL, NULL, 'ahora, en este momento, etc. - púlóo aho r a ven, we pooe - no vengas ahora', NULL, 'nkuáaó', 'Fuente: bubi-español', 'import-script'),
  ('seéle', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. persona débil, persona indefensa y apocada. . Seha, antrop. obtenido a partir del verbo o se''a. También significa "hojas comestibles de la berenjena". Se localiza en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sehehi', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. calma, amaine. ; pullá a la hettáa - wela en una tempestad pasa la calma. séi, pret. v. o sá ; mpári n - obáám ayer estuve en la finca', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('seké', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. necio, tonto, bobalicón, ignorante. ; 010 bOllá a serí o sá - este niño es muy ton to. * we - no tienes conciencia, eres necio. selessi, pret. v. o sellá ; o boyolla lÍ1 a -la o lOetto mi abuelo desfallecía con la caminata. selessi, pret. v. o sella ; e rokit ta a - o bOllá el médi co curaba al niño, o bOllá n bo - siatta al niño le contaba un cuento, 010 botyo a le - elako esta persona me hacía un trabajo. sélessi, pret. v. o sélla ; n-yo falle cía, n ta - yo no fallecía', NULL, 'wessi', 'Fuente: bubi-español', 'import-script'),
  ('sellá', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'indo otro, otra. Concuerda con las pala bras de la ; sinki - otra mosca. sellá, v. desmayarse, desfallecer; a batyo ba lá -la o botyibíi la gente desfallece del cansancio. También se trata de un verbo que sirve de apoyo a una acción principal; o - o to''ólla no parar de hablar, o - o etta no parar de caminar, etc. Pret. seri, selessi. sella, v. curar; to la - a batyo bammaa nosotros curamos a todas las personas. hacer algo por alguien. narrar, contar; n ka o - boatta voy a contarte una historia. Pret. seri, selessi. sélla, v. morir/se, fallecer, fenecer; a batyo ba lá - la e bekaaí la gente muere por las epidemias. Pret. séri, sélessi. senáera, v. enviar, mandar; lo la le - boták ko vosotros me enviáis un recado. Pret. senáeriia, senáeresiia. senáeresiia, pret. v. o senáera ; to - o boatta bo e riwéi ri o botúkku nosotros enviábamos la noticia de la muerte del alcalde. senáeriia, pret. v. o senáera ; n o boie lÍ1 tyokko man dé dinero a mi padre', NULL, 'o wáa', 'Fuente: bubi-español', 'import-script'),
  ('senena', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. hormiga menuda. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sénobua', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Séna''obuáa. Se localiza en Bososo. sétta / 291', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sénoko', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado hace referencia a alguien que hace ruido. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 189 (entradas 4701 a 4725)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Sepa', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del verbo o seppa. Se localiza en Baney, en Basakato de la Sagrada Familia, en Belebú y en Ruiché. sepelessi, pret. v. o sepella ; to - e kobinna nos quejába mos del gobierno. sepella, v. quejarse de algo o de alguien; o la le tú te quejas de mí, we le sepelle no te quejes de mÍ. Pret. seperi, sepelessi. seperi, pret. v. o sepella ; n bo - o mmása lÍl me quejé de mi jefe. sepessi, pret. v. o seppa ; lello ommaa n - todo el día de hoy me quejaba, e obéolla e - el anciano se quejaba. seppa, v. vanagloriarse, alabarse a sí mis mo. quejarse; lello mmaa n la - todo el día de hoy me quejo. Pret. seppi, sepessi. seppi, pret. v. o seppa ; n-me quejé, o - te quejaste, a - se quejó, to - nos quejamos, 10 - os quejasteis, ba - se quejaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('seppo', 's.', NULL, NULL, NULL, NULL, 'sing. música, melodía. CI. 12. séra, v. acabar con, terminar; to la - a ba''u nosotros terminamos el vino de palma. llenar, repoblar. Pret. séría, séresiia. séresiia, pret. v. o séra ; to be - e bekobbe nosotros termi nábamos los plátanos, to si - e sibólló nosotros acabábamos con la pobreza. serí, pret. v. o sella ; n bo hOatta o wéso''o o yo narré una historia a tu amigo, e taa to - é hállo la razón por la que estamos aquí. seri, pret. v. o sellá ; n buéi n ta - morí no desfallecí. séri, pret. v. o sélla ; a batyo ba e eriia á Kodda ba - be ammaa todos los habitantes del poblado de Kodda murieron. séría, pret. v. o séra ; a abitábítta ba - a batyo los militares acabaron con las personas. Seriché, antrop. formado a partir del ver bo séra y del sustantivo plural i tyé. Sérityé se referirá a alguien que repuebla los poblados. Se localiza en Balachá, en Moka y en Belebú', NULL, 'wéi', 'Fuente: bubi-español', 'import-script'),
  ('SeSe', 'adj.', NULL, NULL, NULL, NULL, 'bello, bonito, hermoso, bueno, agrada ble. Concuerda con las palabras de la CI. 12; e sokko - la buena noticia, e siatta - la hermosa historieta. seselessi, pret. v. o sesella ; ii bulla a - o oberíi áí la doncella visitaba a su madre. sesella, v. visitar a alguien; a bariariia ba lá - a balokia los gobernantes visitan a los hoteleros. Pret. seseri, seselessi. seseri, pret. v. o sesella ; o tua rítyityi to - e rohiáa las ancianitas visitaron el oratorio. sesessi, pret. v. o sessa ; a batyo ba - la gente comía y guardaba algo. sessa, v. guardar, comer y guardar algo para después; e tyallá e lá tyuará a batyo la - el ham bre hace que la gente coma y guarde algo para después. Pret. sessi, sesessi. sessi, pret. v. o sessa ; epókkó e - el buey comió y guardó algo para después. sessi, pret. v. o sa ; o loa lulé n ripotto Iikélíke el año pasado solía ir mucho a la ciudad. sétaelessi, pret. v. o sétaella ; e ribetté ri - boppé e tyokkó el bidón se desecaba en verano. sétaella, v. desecarse, ag', NULL, 'o leppa', 'Fuente: bubi-español', 'import-script'),
  ('settáa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pluma cuchillo. navaja. . Tb. lo ''obbá, si''obbá. sétya, v. acabar, disminuir, terminar, concluir; 10 la - elo elako termináis este trabajo. Pret. sétyiia, sétyesiia. sétyesiia, pret. v. o sétya ; n e isoppo la o buakaleko yo terminaba el pan y el coco, n ri - e isoppo yo terminaba el pan, n bo - o bua kaleko yo termi naba el coco', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('setyi', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. antílope. . Tb. sibelo. sétyi, pret. v. o sétta ; a boppé ba - el agua se agotó. sétyiia, pret. v. o sétya ; n-e elako terminé el trabajo, ne - e elako lo terminé, el trabajo. Sey, antrop. que se refiere al barro rojo aunque también significa límite. Se locali za en Moka. si''a, v. tocar; n la - botyo yo toco a alguien. humedecer, mojar; o lóllá lo lá obotyo la lluvia hume dece el entorno. Pret. si''i, si''essi. si''ea, v. tocarse, tocar a alguien; 10 la batyo tocáis a algunas personas. humedecer se, mojarse; e bie''e bi lá -la o tuái los labios se humedecen con la saliva. Pret. si'' ei, si'' eseei. si''ei, pret. v. o si''ea ; ba a batyo se tocaron a las per sonas, bi - e biriia la e sille se humedecieron los poblados con el frío. si''eseei, pret. v. o si''ea ; i kuua i -la e esubba la ropa se humedecía con el invierno. si''essi, pret. v. o si''a ; o tonáé náé to - obotyo la llovizna humedecía el entorno. si''i, pret. v. o si''a ; a bahNneri ba o bollá ba - o boassó la orina del niño humedeció ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('si''obbá', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. navaja. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('si''otya', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'sing. primero, primera. . Concuerda con las palabras de la CI. 12: e sipotto -la primera pimienta negra', NULL, 'siotya', 'Fuente: bubi-español', 'import-script'),
  ('si''ú', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. fuerza, vigor, salud. CI. 12 ; ká we le? ne - ¿cómo estás? estoy un poco bien', NULL, 'sito''ú', 'Fuente: bubi-español', 'import-script'),
  ('Siabú', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bOappú. Siabbú se localiza en Ureka. siaelessi, pret. v. o siaella ; to bi - e bilabba nosotros uníamos los hechos, e beatta to be - las historias los relacionábamos. siaella, v. enlazar, unir, relacionar; to la - bi e bilabba nosotros rela cionamos estos hechos. Pret. siaeri, siaelessi. siaeri, pret. v. o siaella ; 10 - i tyerú vosotros unisteis las nipas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siaga', 'antrop.', NULL, NULL, NULL, NULL, 'también diminutivo de bOakká. Siagá se localiza en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siaká', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bOakká. Está localizado en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siakki', 's.', NULL, NULL, NULL, NULL, 'sing. liendre. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siale', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado hace referencia a alguien que muestra bastante timidez ante situa ciones dificiles. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siallo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. canción, saeta, música. mani festación artística con baile. ; e - to la bílla sé la música que estamos bailando', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sialo', 'antrop.', NULL, NULL, NULL, NULL, 'que se refiere a la manifestación artística compuesta por baile, canción, etc. Se localiza en Baney y en Baresó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siarpe', 'antrop.', NULL, NULL, 'Cl. 12', NULL, 'prestado del inglés sharp "afilado, cortante". Se localiza en Lubá. si atta, s. sing. cuento, historieta, fábula. ; e - si o Weweopo el cuento de Weweopo. sibáa, v. obstruir; e biruppú bi lá - e telIe Le biruppú bí la sibbé telle] las hierbas obstruyen el camino. mirar mal, desairar; 010 botyo a la se - esta persona me mira mal. Pret. sibí, sibessi. Sibacha, antrop. que debería escribirse Sibatya. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibaella', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. humildad. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibáka', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. tabaco, rapé. CI. 12. Sicaya / 293', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibakka', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. urna, cajita. . síbalessi, pret. v. o síballa ; o botyíó bO - la e pullá la noche llegaba con la tormenta. síbaUa, v. caer, llegar ; o botyíó bo lá - la noche llega. Pret. síbari, síba lessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibappa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. culebrita, serpiente pequeña. . Tb. sinooa. síbari, pret. v. o síballa ; o botyíó bo - bakasso la noche llegó pronto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibatya', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. varita, flechita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibatyabatya', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. costilla. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibbO', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. diablillo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibbó', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. miradita. miramiento. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibé', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'malo, mala, feo, fea. Concuerda con las palabras de la ; sokkb - una noticia mala. sibéa, v. obstruirse; i telle i lá - la e biruppú los caminos se obs truyen con las hierbas. Pret. sibéi, sibesei. sibéi, pret. v. o sibéa ; e telle e - el camino está obstruido', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 190 (entradas 4726 a 4750)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sibekabékka', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. tortolito, palomita. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibekúbeku', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. barbilla. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibelle', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. mamita, tetina. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibélló', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. luego, momentito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibelo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. antílope. . Tb. setyi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibelohékka', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. instante, momento. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siberí', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. nana, romanza. . sibesei, pret. v. o sibéa. o boakká bo - el canalón se obstruía. sibessi, pret. v. o sibáa ; e sipóssi si le - el gato me miraba mal', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sibeto', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de ebétto. Sibétto se localiza en Topé y en Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibetté', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. barrica. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibétto', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pequeño rito de la reconciliación. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibetye', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. escobilla. . Tb. siburúm, sise�''eele. sibí, pret. v. o sibáa ; ne - e koppí obstruí el retrete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibíkinnó', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pellizco. . Tb. simíkoró', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibitoto', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pequeño cangrejo de mar. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibitya', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. ratoncito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibó', 's.', NULL, NULL, NULL, NULL, 'sing. mirada, miramiento; o mpá -tener en cuenta. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibokko', 's.', NULL, NULL, NULL, NULL, 'sing. pequeña caverna o cavidad de un árbol. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibókko', 's.', NULL, NULL, NULL, NULL, 'sing. conchita de mar. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siboko', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse SibOkko. Se loca liza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sibokobuela', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por sibOkkO y el adverbio buella. Sibokkobuella se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibólló', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pobre, desvalido, paupérrimo. pobreza, miseria. ; - la etta e ebolló el pobre debe comportarse como tal', NULL, 'bObollo', 'Fuente: bubi-español', 'import-script'),
  ('sibónó', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. mosqUIto diminuto. CI. 12', NULL, 'sibOono', 'Fuente: bubi-español', 'import-script'),
  ('sibotósíbotó', 'adj.', NULL, NULL, NULL, NULL, 'blando, tierno. Concuerda con las palabras de la CI. 12; sebáám - hoja blanda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibotyera', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cariño, ternura. piropo. ; o o''á - tener cariño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibotyílla', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. apodo, mote. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sibúkku', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. 1. librito. 2. papel. 3. oficio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 191 (entradas 4751 a 4775)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('siburúm', 's.', NULL, NULL, NULL, NULL, 'sing. escobilla. CI. 12. Tb. sibetye, siseseele. Sicaya, antrop. diminutivo de bOlea ya, obte nido a partir del verbo o káya. Sikaya se localiza en Baney. 294 / Sicoco Sicoco, antrop. que presenta dos signifi cados en función de su forma escrita. En primer lugar, Sikókó. En segundo lugar, Sikoko. Está localizado en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sidokó', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de etokko. Sidokko se localiza en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sienna', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. ardilla pequeña. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sieppa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. hoja de lija, lija. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siesse', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. collarín. collarín con campa nillas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siette', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. palito para cavar, pico. . * e ko''e e - el pollo del palito para cavar. Se refiere al pollo que debían comer los enterradores tras cavar la tum ba del muerto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihá', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cuchara de cualquier tipo. . Tb. sipúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihakká', 's.', NULL, NULL, NULL, NULL, 'sing. pequeño nudo corredizo. pequeña trampa. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihám', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. parecido, semejanza. . El término sihám está en desuso, aunque en Bariobé se refiere a una chica', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihe', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'nuevecito, nuevecita. Concuerda con las palabras de la ; sityakalébbii - sonajero nuevecito', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siheká', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. trocito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihíri', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. danza tradicional común reservada a las mujeres. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihMmuahMmua', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. herbácea ramificada y aromática. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihÑtó', 's.', NULL, NULL, NULL, NULL, 'sing. la pequeña flor de la planta de la malanga, el capullo. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihótóttó', 'adj.', NULL, NULL, NULL, NULL, 'blanquito, blanquita. Concuerda con las palabras de la CI. 12; siseke - tableta blanquita', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihuenókii', 'adj.', NULL, NULL, NULL, NULL, 'sing. tibio. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihuhu', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cierto tipo de pájaro. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihúku', 's.', NULL, NULL, NULL, NULL, 'sing. anzuelo. CI. 12. Tb. si/ohM', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sihutétete', 's.', NULL, NULL, NULL, NULL, 'sing. oruga. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siikíro', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pequeño movimiento. baile, fiesta. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siilaliikkó', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. planta perenne. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siió', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. hormiga negra mediana. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siítyi', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. dedo meñique. CI. 12. Sijolari, antrop. que en bubi debería escribirse Sihólári. Se localiza en Moka. Sikachá, antrop. diminutivo de katyá. Sikatyá se localiza en Bahó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sikale', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de kallá. Sikallá o Sikallé se refiere al pequeño pan golín. Se localiza en Basilé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikápáa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. castaña. . Tb. sitebú', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 192 (entradas 4776 a 4800)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Sikara', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bOkará. Sikará se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikárityi', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. carretilla. . sikessi, pret. v. o sikkáa ; a batyii ba -la e tyallá la gente adelgazaba con el hambre. sikía, pret. v. o sikkiáa ; ii bOrulIa bii bó - la vejez le desmedró', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikiére', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. balanza, báscula, pesa. . Tb. liise''o, ke''o. sikiesiia, pret. v. o sikkiáa ; e tyiikkó e - e bekobbe el estío reducía el tamaño de los plátanos, e tyallá e - a batyii el hambre desmedraba a la gente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikíkko', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. columpio. . sikkáa, v. adelgazar, perder peso, menguar, mermar, desmedrarse; ii bOllá a la - kóri a tyá la ráa el niño adel gaza porque no come. Pret. sikkí, sikessi. sikkí, pret. v. o sikkáa ; ii - sóté has adelgazado mucho, estás muy delgado. '' sikkiáa, 1. s. sing. cigarrillo, pitillo. CI. 12. Tb. simíki. 2., v. desmedrar, medrar, disminuir, reducir el tamaño de algo. Pret. sikía, sikiesiia. Silo / 295', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sikó', 'antrop.', NULL, NULL, NULL, NULL, 'que parece provenir de tyikkó. Se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siko''e', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pollito, gallinita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siko''ó', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. hierba limón, citronela. ', NULL, 'kontrití', 'Fuente: bubi-español', 'import-script'),
  ('Sikobo', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de Bokobó. Se locali za en Rebola. Sikocha, antrop. obtenido a partir del verbo o kOtya. Sikotya se refie re a alguien o algo diminuto que traga o engulle. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikokkí', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cigüeña. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sikoko', 'antrop.', NULL, NULL, NULL, NULL, 'que nos remite a Sicoco. También puede significar "algo o alguien delgado", o "pequeña cohesión". Se localiza en Rebola y en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikokoo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pequeña cohesión. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikollé', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cosita, objetito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikono', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pequeño, diminuto. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sikono', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "pequeño", "dimi nuto". Sikono se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikookonno', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'pequeño, pequeña. Concuerda con las palabras de la ; e siatta - la histo rieta pequeña. sikookoo, 1. s. sing. algo o alguien pequeño o del gado. . 2. adj. pequeño, pequeña. Concuerda con las palabras de la ; simpa - asientito pequeño o peque ñito', NULL, 'sikiJokonno', 'Fuente: bubi-español', 'import-script'),
  ('sikoppo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. bote, lata. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sikotá', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de biikótta. Sikótta se localiza en Batete yen Bahó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikótta', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. algo o alguien que agrupa o reú ne. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikottí', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. *compresa, támpax. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikotye', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. camioneta, furgoneta. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikuella', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. escuela, centro educativo, cole gio. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikullá', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. cantimplora. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikutúm', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. chabola. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sikuua', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. dim. de tela, paño, etc. ban derín. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sila', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Siilla. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 193 (entradas 4801 a 4825)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('silabba', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. ej emplo, cosita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silakka', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. campana sagrada. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silappa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pinza. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siláppo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. lamparilla, candil. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silé', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'dem. aquel, aquella. Concuerda con los nombres de la ; - sikuelIa aquella escuela, - siloppo aquel pájaro mosca', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silebbó', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. campanilla, cencerro pequeño, timbre. . Ej. expr. e - si o bue''iáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Silebó', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Silebbó. Se localiza en Baney y en Bahó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sileppa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. verdura un poco amarga. . silessi, pret. v. o sillá ; o bokaaí bo a batyo ba mmaa la epidemia exterminaba a todas las personas. sílessi, pret. v. o sílla ; o bokkó bo - el día obscurecía', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silipássi', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. chancletas. . sillá, v. exterminar; o mmo a la - e rihuee ri áó el demonio extermi na a nuestra familia. Pret. sirí, silessi. lb. o rllJa. silla, v. obscurecer, obscurecerse, anochecer; e reeá ri lá - o bokó la luna obscurece el día. Pret. síri, sílessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sille', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. frío, helado. ; n la ó''a - tengo frío. sillé, prono sing. el otro, la otra. Concuerda con las palabras de la ; e siatta, e - el cuento, el otro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silo', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'dem. este, esta. Concuerda con los nom bres de la ; - s¡okollo este picante, - sibe lo este antílope', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Silo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse SiIlo. Se refiere también al lugar donde permanecía el artesano que fabricaba las sartas de tyíbii. Se localiza en Batoicopo. 296 / silo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silobarí', 's.', NULL, NULL, NULL, NULL, 'sing. mejoría. O. 12 ; o sá - estar mejor, ne - estoy mejor', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silobbo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. anzuelo. . Tb. sihúku. Silochi, antrop. diminutivo de elotyí. Silotyí es un siervo, guar dián o sacerdote tradicional bubi. Se localiza en Moka y en Riaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('silopelOpe', 'adj.', NULL, NULL, NULL, NULL, 'sing. despistado, desorientado. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siloppo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pájaro mosca. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simaraéa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. escapulario. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simeóti', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cemento. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simeressi', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. comprimido, píldora, gragea. . Tb. sakká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simíki', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cigarrillo. . Tb. sikkilía', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simma', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'indo alguno, alguna. Concuerda con las palabras de la ; he - silobbo hay algún anzuelo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simmí', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. camisón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simotóo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cochecito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('simpa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. asiento, escaño, banqueta. . Simpampa, un/ropo diminutivo de empampa. Se localiza en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sina', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de enna. Sinna se localiza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 194 (entradas 4826 a 4850)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Siné', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bOne. También significa "frío". Se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sine''e', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. bebé. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinekká', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. manantial, fuente. . Tb. sirekká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinki', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. mosca. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinkiletti', 's.', NULL, NULL, NULL, NULL, 'sing. camiseta. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sínne', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cine, película, local de cine. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinoke', 's.', NULL, NULL, NULL, NULL, 'sing. crío, criatura, cachorro. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinooa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. culebrita. . Tb. sibappa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinópi', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. tabaco molido. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinorí', 's.', NULL, NULL, NULL, NULL, 'sing. pájaro. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sinta', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. hoja, papel. CI. 12. Tb. sipéppa, sintanta. sin tanta, s. sing. papel, hoja. . Tb. sinta, sipéppa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sintúsíntú', 'adj.', NULL, NULL, NULL, NULL, 'cortito, cortita, bajito, bajita. Concuerda con las palabras de la CI. 12; e sityo - la personita bajita', NULL, 'siñtú', 'Fuente: bubi-español', 'import-script'),
  ('Siñoko', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de nyokO. Sinyoko se localiza en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siObbo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. roca arcillosa sagrada de color ocre. hollín. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siobé', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bOobbe. Siobbe se localiza en Baresó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siobo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Siobbo. Se localiza en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siOkollo', 's.', NULL, NULL, NULL, NULL, 'sing. picante, pimienta, guindilla. CI. 12', NULL, 'sokollo', 'Fuente: bubi-español', 'import-script'),
  ('siokoríbba', 's.', NULL, NULL, NULL, NULL, 'sing. laguna. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('síoo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. fueguecito de tres piedras. fogón pequeño. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sioppa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. compresa. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siosá', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de riossa. SiOssa se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siosso', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. taba. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siOsso', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. taba. . Tb. sikókóló', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siOssó', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cerilla, encendedor. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sioto', 'antrop.', NULL, NULL, 'Cl. 12', NULL, 'obtenido a partir de eoto. SiOtij está localizado en Bahó y en Basupú. siOtya, acij. sing. primero, primera. . Concuerda con las palabras de la CI. 12: e sipotto - la primera pimienta negra. sipúm / 297', NULL, 'si''otya', 'Fuente: bubi-español', 'import-script');

-- Lote 195 (entradas 4851 a 4875)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('siótú', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'cortito, cortita, bajito, bajita. Con cuerda con las palabras de la. Cfr. sintú síntú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipaao', 's.', NULL, NULL, NULL, NULL, 'sing. pequeña entrada en la sien. el. 12. Sipachí, antrop. diminutivo de opatyí. Sipatyí se localiza en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sipako', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de pakopako. Se localiza en Rebola. Sipale, an/rop. obtenido a partir del verbo o palláa. Se localiza en Moka. sipálessi, pre/. V. o sipálla ; e po''a e -la e epetté el mono se enredaba con las lianas. sipálla, V. enredarse, tropezar; e pókkó e lá el buey tropieza. Pret. sipári, sipálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipalláa', 'S.', NULL, NULL, NULL, NULL, 'sing. canastilla. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sipao', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Sipaao. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipappá', 'S.', NULL, NULL, NULL, NULL, 'sing. aleta, alita. el. 12. sipára, V. dificultar, obstaculizar; ello elabba e lá - e elako Ól este asunto dificulta mi proyecto. Pret. sipária, sipáresiia. sipáresiia, pret. V. o sipára ; e po''a e - o 100tto el mono dificultaba el trayecto. sipári, pret. V. o sipálla ; o botyo a - la e beakká la persona se enredó con las raíces. sipária, pret. v. o sipára ; o le - me obstaculizaste', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipatyípatyí', 'S.', NULL, NULL, NULL, NULL, 'sing. pequeño saltamontes. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipelapella', 'S.', NULL, NULL, NULL, NULL, 'sing. llamita. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sipele', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de opiHle. Sipelle está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipelló', 'S.', NULL, NULL, NULL, NULL, 'sing. fe stín. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipényápényá', 'S.', NULL, NULL, NULL, NULL, 'sing. pata. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipepáa', 'S.', NULL, NULL, NULL, NULL, 'sing. papel, folio. el. 12. Tb. sinta, sipéppa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipepáam', 'S.', NULL, NULL, NULL, NULL, 'sing. verdura gelatinosa. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipepe', 'S.', NULL, NULL, NULL, NULL, 'sing. pipa. falo. el. 12. Tb. bOoppá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sipepe', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Sipepe. Significa "viruta", "pequeña pipa" o sim plemente "pipa". Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipéppa', 's.', NULL, NULL, NULL, NULL, 'sing. papel, folio. el. 12. Tb. sinta, sipepáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipetye', 'S.', NULL, NULL, NULL, NULL, 'sing. gorrioncito. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sipi', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de eppí. Sippí se refiere también a una pequeña nalga. Se localiza en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipo''a', 'S.', NULL, NULL, NULL, NULL, 'sing. mono tití, monito. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipókkó', 's.', NULL, NULL, NULL, NULL, 'sing. becerro, novillo. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipollá', 's.', NULL, NULL, NULL, NULL, 'sing. piernecita. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipopotto', 'S.', NULL, NULL, NULL, NULL, 'sing. cuenta menuda, abalorio. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipoppi', 's.', NULL, NULL, NULL, NULL, 'sing. avaricia, tacañería. avaro, tacaño. el. 12 ; 010 botyo e - esta persona es avara', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipóríi', 's.', NULL, NULL, NULL, NULL, 'sing. cabrito, cabrita. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siporóko', 's.', NULL, NULL, NULL, NULL, 'sing. rumor, comentario. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 196 (entradas 4876 a 4900)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sipóssi', 'S.', NULL, NULL, NULL, NULL, 'sing. gato, jineta. el. 12. Sipoto, an/rop. diminutivo de opotto. Sipotto se refiere a la misma pimienta negra. Se localiza en Baloeri y en Batoicopo', NULL, 'tyippa', 'Fuente: bubi-español', 'import-script'),
  ('sipotto', 's.', NULL, NULL, NULL, NULL, 'sing. pimienta negra del país. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipoya', 'S.', NULL, NULL, NULL, NULL, 'sing. polilla. el. 12. sippí, dim. sing. genital femenino pequeño. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipuá', 'S.', NULL, NULL, NULL, NULL, 'sing. perrito, chucho. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sipúa', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de puápúa. La forma Sipuá es el signi ficado más corriente utilizado por los bubiha blantes. Sipúa se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipúm', 'S.', NULL, NULL, NULL, NULL, 'sing. cuchara de cualquier tipo. el. 12. Tb. sihá. 298 / sipúrúu', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipúrúu', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. puertecita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sipussu', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. diversión, juego. juguete. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sirábette', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. conejo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sirekká', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. manantial, fuente. . Tb. sinekluí. sirí, pret. v. o sillá ; o bOkaaí bO - a batyo ba mmaa la epidemia exterminó a todas las personas. síri, pret. v. o sílla ; o bokkó bO - el día anocheció', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Siribola', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de eribolla. SiribOlla se refiere más bien a un dia blillo. Se localiza en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siribolla', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. diablillo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siriia', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. aldea, pueblecito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sirubé', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bOruppe. Siruppe o Siruppé se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siruerué', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. grillo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siruppe', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. arbolito divino. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sisási', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. tijeras. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sise''e', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. larva, gusanito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siseke', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. tableta, tablilla. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siseseele', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. escobilla. . lb. sibetye, siburúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sisokka', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. gorro, gorrita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sisóló', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cerdito, cochinillo. jabato. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sisoppo', 's.', NULL, NULL, NULL, NULL, 'sing. panecillo. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sisorí', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. cordel, hilo. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sisula', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. coscorrón, capón. CI. 12. Tb. wakóo', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 197 (entradas 4901 a 4925)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sisússu', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. zapatito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitáa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. batuta. nalguita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitaeta''e', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. hongo. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitappá', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. presunción, orgullo, altanería. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitattá', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. membrana, pequeña piel. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitátyi', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. almidón. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sité', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de ite. Se localiza en Sampaka y en Bososo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitebótyo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. dibujo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitebú', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. castaña. . Tb. sikápáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitelle', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. sendero, caminito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siteppe', 's.', NULL, NULL, NULL, NULL, 'sing. tabiquito, pequeña pared, tabique f ino. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitéppi', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. sujetador. . Tb. ripá''a', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('siteteri', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. corte pequeño. minuto. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitímma', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. barco, buque, nave, navío. CI. 12. Tb. buatto', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sito', 'adj.', NULL, NULL, NULL, NULL, 'alto, largo. Concuerda con las palabras de la CI. 12; siokollo - picante largo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sitó', 'antrop.', NULL, NULL, 'Cl. 12', NULL, 'que significa "largo", "alto". Con cuerda con las palabras de la. Debería escribirse Sito. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitó''o', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. frasco, petaca, tarro. . Tb. tamma, sauto''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sito''ú', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. fuerza, vigor. ', NULL, 'si''ú', 'Fuente: bubi-español', 'import-script'),
  ('sitóbboo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. nota, mensaje corto. . Sito boro, antrop. que debería escribirse Sitoboro. Se localiza en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sitoka', 'antrop.', NULL, NULL, NULL, NULL, 'que hace referencia a un pájaro pequeño, de plumas negras y blancas, de carne amarga y que vuela en pequeñas manadas. Sito k ka está localizado en Rebola', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitokiin', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. calcetín. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitokka', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. pájaro pequeño de plumas negras y blancas, de carne amarga y que vuela en peque ñas manadas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitolla', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. 1. capullo de la rama de la palme ra. 2. cigarro, puro. . Tb. sim{kimíki. sobessi I 299', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sittó', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. despensa, almacén. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('situbbá', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. partícula, lote. migaja. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 198 (entradas 4926 a 4950)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('sitúkká', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. cesto, cestita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitúkku', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. jefecillo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitúllá', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. islita, isleta, islote. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sitúllu', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. orinal. CI. 12. Tb. epó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityakalébbo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. objeto pequeño que pue de aparecer bajo muy diversas formas, que contie ne pequeños elementos en su interior que lo hacen sonar. sonajero, cascabel, maraca. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityapelle', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. flautita, trompetita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityappa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. comunión, hostia. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityatyá', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. dado. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityatyapellé', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. bicicleta. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityatyó', 's.', NULL, NULL, 'Cl. 1', NULL, 'sing. chismoso, chivato, cotilla. 2', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityetyee', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. destello. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityitte', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. manchita. ; - sa luua bi''o man chita en el vestido', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. persona pequeña, personita. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityóbbo', 's.', NULL, NULL, NULL, NULL, 'sing. casita, caseta. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityoru', 's.', NULL, NULL, NULL, NULL, 'sing. cordero. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityotyo', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. ballenato. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sityué', 's.', NULL, NULL, NULL, NULL, 'sing. pescadito. CI. 12. só, entonces, para ello, etc. so''a, v. htmdirse; o borito bo lá - e eteppe el peso hunde la pared. Pret. so''í, so''essi. so''essi, pret. v. o só''a ; o -la o bOritto o te hundías con tu peso. so''í, 1. pret. v. o só''a ; e tyóbbo e - la casa se hundió. 2. s. sing. y pi. venado. CIs. 9 y 10. sóa, v. 1. coser; n la - e torosíssiÓl yo coso mi pantalón. 2. fijar la mira da en alguien o en algo. Pret. sói, sóessi. soalessi, pret. v. o soalla ; o bOkoé n bo - bisoÍ al bra cero le calumniaba. soalla, v. calumniar; n la - o botyo bisoÍ yo calumnio a alguien. Pret. soari, soalessi. soari, pret. v. o soalla ; 010 botyo to bo - bisoÍ a esta perso na le calumniamos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Soba', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bobba. Está localizado en Moeri. sobáa, v. chupar, lamer; e sipóríi si lá - e ribelle ri e tyoru la cabrita chupa la ubre de la oveja. Pret. sobí, sobessi. sobbá, v. desollar; to la - e pókkó nosotros desollamos la vaca. Pret. sob bí, sobessi', NULL, 'o sóppia', 'Fuente: bubi-español', 'import-script'),
  ('sobbe', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'sing. machito, varoncito. Concuerda con las palabras de la ; e sollá - el muchachito varón. sobbi, pret. v. o sobbia ; e koppá e - o boobbe el tiburón engulló al pescador. sobbí, pret. v. o sobbá ; e sine''e si - e pókkó e siatta wela el bebé desolló la vaca en el cuento. sobbia, v. tragar, engullir, devorar; e tyotyo e lá - o totyué tokookonno la ballena traga los pescaditos. Pret. sobbi, sobessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sobe', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bObbe. También aparece escrito como Sobbe. Se localiza en Bariobé, en Baney, en Basakato de la Sagrada Familia y en Batoicopo. Sobehola, antrop. diminutivo de obéoi la. Sobéolla se localiza en Batoi copo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sobeolla', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. ancianito, viejecito. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sobesobó', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por sobbe y sobó. Sobbesobbó está localizado en Basupú. sobessi, pret. v. o sobbia ; o luebba 10 - o obitya la culebra grande devoraba al ratón. 300 / sobessi sobessi, pret. v. o sobáa ; n-yo chupaba, o - tú chupabas, a - él chupaba, to nosotros chupábamos, lo - vosotros chupabais, ba - ellos chupaban. sobes si, pret. v. o sobbá ; 10 - e po''a vosotros desollabais el mono', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sobetyityi', 's.', NULL, NULL, NULL, NULL, 'sing. bisabuelo. CI. 12. sobí, pret. v. o sobáa ; n-e erentya chupé la naranja, o - e emaókoro chupaste el mango. sóbiera, v. 1. fijar los ojos en alguien. 2. mos trar el culo descubierto en una situación de discusión. Pret. sóbieriia, sóbieresiia. sóbieresiia, pret. v. o sóbiera ; o oberíi a - o bOllá áí la madre le mostraba el culo descubierto a su hijo. sóbieriia, pret. v. o sóbiera ; o le - mpá ri me mostraste tu culo des cubierto ayer', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sobisila', 'antrop.', NULL, NULL, NULL, NULL, 'que parece referirse a alguien que acude a menudo a las cuevas. Sóbe silla se localiza en Baloeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sobó', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'sing. duro, fu erte. Concuerda con las palabras de la ; e sollá - el muchachito fuerte', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 199 (entradas 4951 a 4975)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Sobole', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse SóbOole. Se localiza en Balachá. Socosote, antrop. compuesto por sokkO y siitee. Debería escri birse Sokkosotee. Se localiza en Batete. soessi, pret. v. o sooa ; n - bisOí, n - yo decía mentiras, yo mentía. sóessi, pret. v. o sóa ; n-e sotte lÍl yo cosía mi camisa, n ta - e sotte IÍI yo no cosía mi camisa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sogó', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Sogo. Se localiza en Moeri. Sohá, antrop. del verbo o so ''a o también del diminutivo de bo ''á. So''á se localiza en Batoicopo. Sohora, antrop. obtenido a partir del ver bo o soora. Soora se referirá a alguien que le quita el mango a una herramienta. Se localiza en Ruiché. sói, pret. v. o sóa ; n-e sotte IÍI yo cosí mi canlisa, o ta - e ribatyu o tú no cosiste tu braga. sokalessi, pret. v. o sokalla ; 10 bo - o bosikké bO e pókkó vosotros menea bais el rabo del buey. sokalla, v. alegrar, menear; a banatú''olÍl ba la - a basesepári mis hermanos mayores ale gran a las muchachas. animarse, divertirse. fornicar. Pret. sokari, sokalessi. sokari, pret. v. o sokalla ; to bo - o boláwáarí nosotros alegramos a la chica. sokessi, pret. v. o sokka ; e kario''e e - e ebatyú áe la gallina movía su cola. sokka, v. animar, divertir. menear, mover; e tyué e lá - e ebatyú áe el pez mueve su cola. Pret. sok ki, sokessi. sokki, pret. v. o sokka ; e kario''e e - e ebatyú áe la gallina me', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sokko', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. noticia, suceso. novedad. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sókko', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. herbácea de tallo espinoso con hojas situadas en el extremo superior. . Tb. ese''ú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('soko', 's.', NULL, NULL, NULL, NULL, 'sing. cero. nada. CI. 9. sokobba, v. abortar. Pret. sokobbi, sokobessi. sokobbi, pret. v. o sokobba ; o waísso a - la mujer abortó. sokobbia, v. hacer abortar. Pret. sokobiia, sokobiesiia. sokobessi, pret. v. o sokobba ; o waísso a - la mujer abortaba. sokobiesiia, pret. v. o sokobbia ; e saríolla si - o boláwáarí la ancianita hacía abortar a la muchacha. sokobiia, pret. v. o sokobbia ; e saríolla si tá - o boláwáarí la ancianita no hizo abortar a la muchacha. Somori / 301 sokolessi, pret. v. o sokolla ; ne - e torosíssi lÍl yo desabrochaba mi pantalón', NULL, 'o pa''a rebbá', 'Fuente: bubi-español', 'import-script'),
  ('Sokolete', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por sokkO y lette. Deberia escribirse Sok kolette. Se localiza en Baney. Sokoliché, antrop. compuesto por sokkO y la forma la i tyé. Sokkolityé se localiza en Batete, en Baney y en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sokolityé', 'adj.', NULL, NULL, NULL, NULL, 'sing. célebre, famoso. CI. 12. sokolla, v. 1. desabrochar; o la - e sotte o tú desabrochas tu camisa. 2. for nicar. Pret. sokori, sokolessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sokolo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse SiOkollo. Se localiza en Batoicopo. Sokorichi, antrop. compuesto por sokko y rityi. Sokkorityi se referirá a una noticia impor tante. Se localiza en Batoicopo. sokuera, v. inclinarse; a baie ba lá - ná a la het táa o botúkuaari los hombres se inclinan cuando pasa la jefa de poblado. Pret. sokeriia, sokueresiia. sokueresiia, pret. v. o sokuera ; n me inclinaba, o - te inclinabas, a - se inclinaba, to - nos inclinábamos, 10 - os inclinabais, ba se inclinaban. sokueriia, pret. v. o sokuera ; n-o bosuálo bo o boÍtaarÍ te inclinaste delante de la princesa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sola', 'antrop.', NULL, NULL, NULL, NULL, 'que deberia escribirse Soola. Se localiza en Basakato de la Sagrada Familia. sOlaan, pret. v. o solanna ; o waísso la o boie ba - la mujer y el hombre se separaron, se divorciaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('soláe', 's.', NULL, NULL, NULL, NULL, 'sing. niño, muchachito, chiquillo, nene. CI. 12. sOlanessi, pret. v. o sOlanna ; o waísso la o bOÍe ba - o la mujer y el hombre se separaban, se divorciaban. sOlanna, v. separarse, divorciarse; to la ba o nosotros nos separamos, nos divorciamos. Pret. solaan, sOlanessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Solebapa', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por el verbo o solla y el sustantivo e bappa. Solebappa se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Solebilobe', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por el verbo o solla y el sustantivo e bilobbe. Se localiza en Belebú. soles si, pret. v. o solla ; to o bora''o nosotros probába mos la comida. sOlessi, pret. v. o solla ; o botákka bo i sotyáa a - batyelernán barnrnaa el mandamás de los soldados liberaba a todos los presos. Solicopá, antrop. compuesto por el verbo o solla y el sus tantivo i koppá. Solikoppá se localiza en Bahó. solla, v. degustar, probar, catar; n la - o wilówíl10 yo pruebo el vino tinto. emborra charse; to la - la i konyáko nos emborrachamos con el coñac. Pret. sori, solessi. solla, v. dejar, soltar, desatar, desasir, Iiberar; le déjanle, we le solle no me dejes. Pret. sori, solessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sollá', 's.', NULL, NULL, NULL, NULL, 'sing. niñito, muchachito. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sollé', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. cosita, algo. CI. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sollo', 's.', NULL, NULL, 'Cl. 10', NULL, 'pi. sal. . solobbia, v. salar; 10 la - i tyué vosotros saláis el pescado. Pret. solobiia, solobiesiia. solobiesiia, pret. v. o solobbia ; tue - e nabba nosotros salábamos la carne. solobiia, pret. v. o sOlobbia ; o bolÍlrnua lo bo la carne lo salasteis', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sOlólló', 'adj.', NULL, NULL, NULL, NULL, 'sing. viejo, viejito, veteranito. Concuer da con las palabras de la CI. 12; e siatta - el cuento viejo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('solopíssi', 's.', NULL, NULL, NULL, NULL, 'sing. pescado salado. Cls. 9 y 10. Tb. píssi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('somíOko', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. gallo. . Tb. bOteo''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Somo', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Sornó, o también Soorno. Se loca liza en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('somó', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'sing. fuerte, valiente. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Somori', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de ombóri. Sómbóri se localiza en Sampaka. 302 / sonimo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sonono', 's.', NULL, NULL, NULL, NULL, 'sing. hormiga negra menuda. el. 12. Tb. senena. sooa, v. mentir, engañar, falsear; o la - bisoí tú dices mentiras. Pret. sooi, soessi. sooi, pret. v. o sooa ; mpári ommaa n- todo el día de ayer mentí. sóoo, int. palabra que acompaña al gesto de o sóbiera. soora, v. desmangar; o boebba a la - e eaó el vinatero desmanga el hacha. Pret. soori, sooressi. sooressi, pret. v. o soora ; o boie a e eaó el hombre desman gaba el hacha. soori, pret. v. o soora ; n lo - o lo''obbá desmangué el cuchillo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sootottya', 's.', NULL, NULL, NULL, NULL, 'sing. sensitiva o hier ba de matas espinosas y hojas bipinnadas que se cierran al contacto. el. 12. sootya, v. bajar, descender; n la - e robbo desciendo la escalera. Pret. soo tyi ia, sootyesiia. sootyesiia, pret. v. o sootya ; n - e robbo bakasso yo bajaba la escalera deprisa, o - o obíla bakasso yo bajaba la palmera deprisa. sootyiia, pret. v. o sootya ; 10 a batyo o motóo voso tros bajasteis a las personas del coche. sootyo, v. bajarse, descender; to la ba - noso tros nos bajamos. Cfr. o sootya', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sopale', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse So''opaale o Sopale. Se loca liza en Rebola y en Sampaka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sope', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Sope. Se refiere a una cumbre o cima. Está localizado en Moeri. sopes si, pret. v. o soppa ; to - e ebíla nosotros separábamos del raquis los dátiles. sopía, pret. v. o soppiá ; n-e bie''e bi o bOna''í IÍl besé los labios de mi prometido/a. sopiesiia, pret. v. o soppiá ; e puá e - riallá ri o mmása e el perro lamía la mano de su dueño', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 200 (entradas 4976 a 5000)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('soppá', 's.', NULL, NULL, NULL, NULL, 'sing. dolorcito. el. 12. soppa, v. separar los dátiles de su racimo; to la - e ebíla separamos los dátiles del racimo. Pret. soppi, sopessi. soppi, pret. v. o soppa ; e ebíla lo e - separas teis los dátiles de su racimo. soppiá, v. lamer, besar; e sipóssi si lá - e peIéte el gato lame el plato. Pret. sopía, sopiesiia', NULL, 'o sobáa', 'Fuente: bubi-español', 'import-script'),
  ('Sóppo', 's.', NULL, 'sing.', NULL, NULL, 'y pi. jabón, detergente. els. 9 y 10. sora, v. 1. hacer probar, hacer degustar; o boebba a la le - a ba''u ba áí el vinatero me hace probar su vino de palma. 2. ocultarse, ponerse; e reeári lá - la luna se oculta. Pret. soriia, soresiia. sora, v. colgar, pender. ahorcar; to la e bitobba colgamos las cala bazas. Pret. soriia, soresiia. Tb. o heñkalla. soresiia, pret. v. 1. o sora ; a batyo ba ¡Ho eriia n ba - a baoppo ba ribotyo a la gente de este pueblo les hacía pro bar los tormentos de la vida. 2. e itohí ri - e atoo el sol se ponía por la tarde. soresiia, pret. v. o sora ; n-yo colgaba, o - tú colgabas, a - él colgaba, to nosotros colgábamos, lo - vosotros colgabais, ba - ellos colgaban. sori, pret. v. o solla ; 010 bOtyo a - sóté esta persona está muy borracha, 10 - e bilobbo probas teis los menús. sori, pret. v. o solla ; e eette e - a batyo ammaa bé tyaróm la justicia soltó a todas las personas de la cárcel. soriia, pret. v. o sora 1. ; o bollá n bo - i meressi al niño le hice pro', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sorizo', 'antrop.', NULL, NULL, NULL, NULL, 'que hace referencia a alguien que está en vida. Se localiza en Rebola. sotyi /303 sosalessi, pret. v. o sosalla ; n-e bene Ól yo contaba con mis dedos. sosalla, v. contar con alguien, contar con; n la - biityii cuento con alguien, n tyí''a la - biityii no cuento con nadie. Pret. sosam, sosalessi. sosa m, pret. v. o sosalla ; ii biitúkku a - a batyii ba mmaa bá e eriia wela el alcalde contó con todos los habi tantes del pueblo. sosessi, pret. v. o sossa ; a bakuerakueráa ba - e ribúkku ri ábo los alum nos leían su libro, a bellé ba - beakká los otros contaban almendras', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sosieráa', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. asociación, empresa. sociedad. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sosó', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de losM. También se refiere a sosso. Se localiza en Batoicopo. sosolla, v. relatar, testificar, declarar; ii biiie a la - ii buatébisapá alo el hombre declara ante el juez. Pret. sosom, sosuessi. soso m, pret. v. o sosolla ; n kóri n tyá na''a o hella e tyaróm testifiqué porque no quiero ir a la cárcel. sosori, pret. v. o sosolla ; n ta - kóri n tyá na''a o ákóra ii bOtyiiÓl no testifiqué porque no quiero perjudicar a mi pariente. sossa, v. leer, contar objetos; n la - leo, cuen to, etc. Pret. sossi, sosessi. sossi, pret. v. o sossa ; n-e ribúkku, n ri - leí el libro, lo leí', NULL, 'sosori', 'Fuente: bubi-español', 'import-script'),
  ('sosuállo', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. mujeriego, pendón. . sosuelessi, pret. v. o sosuella ; ii biitúkku a ba - ii biiatta a batyii ba mmaa el jefe del pueblo relataba la historia a toda la gente. sosuella, v. relatar para, testificar para, decla rar; ii biitúkku a la - i húúa el jefe del pueblo relata para el público. Pret. sosuem, sosuelessi. sosuem, pret. v. o sosuella ; a batyii ba mmaa a ba - ii biiatta bii mmaa a toda la gente les relató toda la historia. sosuera, v. 1. inspeccionar, mirar detenida mente. 2. delatar para alguien. Pret. sosueriia, sosueresiia. sosueresiia, pret. v. o sosuera ; e epiiriisía e - a habba ha mmaa el policía inspeccionaba todo el lugar. sosueri, pret. v. o sosuella ; iilo biityii ii bii - e ehattá áó a esta persona le relataste nuestro secreto. sosueriia, pret. v. o sosuera ; n - ii biityii kóri n tá bii aan miré detenida mente a la persona porque no le conozco. sosuessi, pret. v. o sosolla ; e i ibéolla e - e bilabba bi mmaa el anciano relataba todos los hechos', NULL, 'sosueri', 'Fuente: bubi-español', 'import-script'),
  ('Sota', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "rectitud", "recto". Proviene del verbo o sotya. Se localiza en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sóté', 'adv.', NULL, NULL, NULL, NULL, 'hasta, muy, mucho. Ej. expr. - iibari hasta mañana, ii biiie a la ekkáa ii bOllá áí labé - el hombre cui da muy mal a su hijo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sotee', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'sing. grande, voluminoso, importante, destacado. Concuerda con las palabras de la ; e sityitte -la manchita grande. sotessi, pret. v. o sótta ; e elabba e el asunto se enderezaba. sotta, v. enderezarse; e bilabba bi lá - los asuntos se enderezan. Pret. sótyi, sótessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sotte', 's.', NULL, NULL, 'Cl. 12', NULL, 'sing. camisa. . sotya, v. enderezar, poner derecho, norma lizar; tii la - elo elabba ende rezamos este asunto. legislar. Pret. sótyiia, sótyesiia. sotyesiia, pret. v. o sótya ; tii bi - e bilabba nosotros enderezábamos los asuntos. sotyi, pret. v. o sótta ; e elabba e el asunto se enderezó. 304 I sotyiia sotyiia, pret. v. o sotya ; 10 bo - o bOtólló enderezasteis el asunto. Soy, antrop. que hace referencia al venado. Se localiza en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Suba', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo obtenido a partir del sus tantivo lubbá. Se localiza en Batoicopo. subalessi, pret. v. o suballa ; to la e be''e be áó nos quedábamos atrás con nuestras cargas. súbalessi, pret. v. o súballa ; o bonánna ID a - e ehMma wela mi abuela tropezaba en la oscuridad. suballa, v. quedarse atrás; o hella obáám n la - para ir a la finca me quedo atrás. Pret. subari, subalessi. súballa, v. resbalar, tropezar; to la - la i sús su i áó nosotros resbalamos con nuestros zapatos. Pret. súbam, súbalessi. súbam, pret. v. o súballa ; e ebo ránokko e - e bitebótyo el ciego tropezó contra las estatuas. subari, pret. v. o suballa ; mpári 10 - kóri na Iii''a tyíbbi ayer os quedasteis atrás porque esta bais cansados. subbá, 1. mo�f numo el último, la última; o botyo bO - la última persona, a batyo ba - las últimas personas, o botté bo - el último árbol, e riossa ri - la última plaza, a baossa ba - las últimas pla zas, e eriia e - el último pueblo, e biriia bi - los últimos pueblos, e ko''e - el último ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('suítti', 'S.', NULL, NULL, NULL, NULL, 'sing. caramelo, bombón. els. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sukáa', 'S.', NULL, 'sing.', NULL, NULL, 'y pI. azúcar. els. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sukku', 'S.', NULL, NULL, NULL, NULL, 'sing. pequeña selva. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Suku', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de bukku. Sukku se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sula', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del verbo sulla. Se localiza en Batete y en Be1ebú. sulea, V. desplumarse, sufrir; bO na''a lelle e quien busca el bien, sufre. Pret. sulei, suleseei', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sule', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Súllée. Se localiza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sulecopa', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por el verbo sulla y koppá. Sullekop pá se localiza en Basupú. sulei, pret. V. o sulea ; o bo utya lelle a - el buscador del bien sufrió. suleseei, pret. V. o sulea ; e ko''e e - la boppé be húé el pollo se desplmnaba con el agua caliente. sulessi, pret. v. o sulla ; to - e nebba nosotros desesca mábamos la iguana, 10 - e ko''e vosotros desplumabais la gallina. sulla, V. 1. desescamar, desplumar, esquilar; o bollá a la - e siko''e el niño despluma el pollito. 2. o - botyo tocar a alguien. Pret. suri, sulessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('súllée', 'S.', NULL, NULL, NULL, NULL, 'sing. tortuga de bosque. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Sulu', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de hOlló. Debe ría escribirse Solió. Se local iza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sulufáto', 'S.', NULL, NULL, NULL, NULL, 'sing. sulfato, insumo. el. 12', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Supá', 'antrop.', NULL, NULL, NULL, NULL, 'que significa "balón", "pelota". Debe ría escribrse Suppá. Está localizado en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Supe', 'antrop.', NULL, NULL, NULL, NULL, 'q�e hace referencia a un mosquito pequeño. Está localizado en Batoicopo. supessi, pret. V. o suppáa ; a batyo ba - e biyári bi ábo la gente escogía sus parcelas. suutta / 305 supiesiia, pret. v. o supplaa ; o luua n lo - la tela lo escogía para alguien', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('suppá', 's.', NULL, NULL, NULL, NULL, 'sing. balón, pelota. encuentro de f útbol. el. 12. suppáa, v. elegir, escoger; o botúkku a la - a baseseppe ba lá na''a bá o bella iporosía el alcalde elige a los jóvenes que quie ren ser policías. Pret. suppíi, supessi. suppía, pret. v. o suppiáa ; e isoppo n ri - el pan lo escogí para alguien. suppiáa, v. elegir/escoger para. reser var. Pref. suppía, supiesiia. suppíi, pret. v. o suppáa ; o bo tyíáídyo a - a batyo a''a íse''era bá el hechicero esco gió a las personas que iba a hechizar', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('súppu', 's.', NULL, NULL, NULL, NULL, 'sing. salsa, caldo. el. 12. supútalessi, pret. v. o supútalla ; n-yo resbalaba, o - tú resbalabas, a - él resbalaba, to - nosotros resbalábamos, 10 - vosotros resbala bais, ba - ellos resbalaban. supútalla, v. resbalar; lo la -la i sússu i áno resbaláis con vuestros zapatos. Pret. supútam, supútalessi. supútam, pret. v. o supútalla ; n-o bokoo wela resbalé en la calle. Tb. susúbam. supútessi, pret. v. o supútta ; e telle e el camino resbalaba. supútta, v. resbalar; o bobba bo lá - sóté el suelo resbala mucho. Pret. supútyi, supútessi. supútyi, pret. v. o supútta ; e kario''e e la gallina resbaló. suri, pret. v. o sulla ; to e elori desplumanos el ave', NULL, 'susúbalessi', 'Fuente: bubi-español', 'import-script');

-- Lote 201 (entradas 5001 a 5025)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Suse', 'antrop.', NULL, NULL, NULL, NULL, 'que parece una transcripción errónea de sossí. Está localizado en Basupú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('sússu', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. zapato, calzado, babucha. els. 9 y ID. susúbalessi, pref. v. o susúballa ; n-yo resbalaba, n ta - yo no resbala ba. susúballa, v. resbalar. Pref. susúbam, susúba lessi. susúbam, pret. V. o susúballa ; e epúlla opuá ná n-e epepúuÓl ta atyasse o bobba atyassi viniendo de hacia arriba, mis piernas no se rompieron pero la tierra se rompió. susulessi, pret. V. o susulla ; e ossi e - e etekobbo el caballo arrastraba el tronco. susulla, V. arrastrar, remolcar, llevarse a alguien a la fuerza; we le susulle no me arrastres. Pret. susum, susulessi. susum, pret. V. o susulla ; o rnotóo bo - e rikotye el coche remolcó al camión', NULL, 'supútalessi', 'Fuente: bubi-español', 'import-script'),
  ('Suta', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Surta. Está localizado en Batoicopo. sutaam, pref. V. o sutalla ; n-la born búttu Ól resbalé con mis botas de lluvia. sutalessi, pret. V. o sutalla ; n - yo resbalaba, o - tú resbalabas, a - él resbalaba, to - nosotros resbalábamos, 10 - vosotros resbalabais, ba - ellos resbalaban. sutalla, v. resbalar. Pret. sutaam, sutalessi. �usúballa', NULL, 'o supútalla, o', 'Fuente: bubi-español', 'import-script'),
  ('Sutela', 'antrop.', NULL, NULL, NULL, NULL, 'construido a partir del verbo o sutalla. Se localiza en Moka. sutta, s sing. hoja, papel. el. 12. Tb. sinta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('suua', 'S.', NULL, NULL, NULL, NULL, 'sing. venda, tela fina. el. 12. suua, v. 1. mover, mecer; n la - o luua muevo la bandera. 2. lavar; o la bakorto o lavas tus pies. Pret. suui, suessi. suui, pret. v. o suua ; n - i kuua lavé la ropa, n - i tyerú moví las nipas. suutessi, pret. V. o suutta ; e birnmálOto bi - la i kóllá las piñas de cacao se pudrían, se estropeaban con las lluvias. suutta, v. pudrirse, aj arse, estropearse; e birn r nálOto bi lá - la e esubba las piñas de cacao se pudren, se estropean con el invierno. Pret. suutyi, suutessi. 306 I suutya suutya, v. hervir; a boppé ba lá suutya el agua hierve. Pret. suutyi, suutyessi. suutyessi, pret. v. o suutya ; e etélÍl e la olla hervía. bi suutyi, 1. pret. v. o suutya ; a boppé ba el agua hirvió. 2. pret. v. o suutta ; e birnmálOtii las piñas de cacao se pudrieron, se estropearon. ta, morf de negación en verbos conjugados; n pa''e no puedo', NULL, 'o kokotta', 'Fuente: bubi-español', 'import-script'),
  ('tá''o', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. lugares donde se pone la leña en la cocina. els. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('taa', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. razón, objetivo. els. 9 y 10; e - to serí é hállo la razón por la que estamos aquí. tábaam, pret. v. o táballa ; a batyo bammaa m ba - a todas las personas les grité. tábalessi, pret. v. o táballa ; e eporosía e - a bapulákke el policía gritaba a los extranjeros. táballa, v. gritar o chillar a alguien; o la le tú me gritas, we le táballe no me grites. Prer. tábaam, tábalessi. tábba, v. gritar, vociferar; na botyo a la kábera a la báa la nabba si una persona grita es porque se comporta como un a nimal. Pret. tábbi, tábessi. tábbi, pret. v. o tábba ; a batyo ba lá ekkáa ba e suppá ba - sóté la gente que mira el encuentro de fú tbol gritó mucho. tábessi, pret. v. o tábba ; o botyelemán a ópessi lo lá a el preso, cuando era golpea do, gritaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tábuella', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. toallas. els. 9 y 10. takelessi, pret. v. o takella ; o botúkku e oríi i tyé a - a batyo ba mmaa puá eljefe de todos los pueblos destaca ba sobre toda la gente. takella, v. destacar sobre, dirigir, presidir; o bOllá a la - a batyo ba mmaa el niño dirige a todas las perso nas. Pret. takeri, takelessi. takeri, pret. v. o takella ; e kobinna e - a batyo e tyá la pénna e bilabba lelle el gobierno que dirige a la gen te no hace las cosas bien. takessi, pret. v. o takkáa ; a batyo ba - bá IÍlmalé ba aan sóté las personas que gobernaban antaño sabían mucho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tákityé', 's.', NULL, NULL, NULL, NULL, 'sing. gobernador, emperador. el. I. takkáa, v. gobernar. destacar, predomi nar, dominar; na n tyá na''a le n la - aunque no quiera destaco. Pret. takkí, takessi. takki, 1. pret. v. o takkáa ; o botyo e - ó a ta púríi e eriia wela la persona que gobierna no es del pueblo. 2. mandamás, director/es. legislador. els. 9 y 10. takólla, v. enviar/mandar a alguien; o botúk ku e oríi i tyé a la - a baitta ba mmaa el jefe de 308 / takóm todos los pueblos envía a todos los gobernadores. Pret. takóm, takuessi. takóm, pret. v. o takólla ; n bo - o boebba he mandado al vinatero. takue''eem, pret. v. o takuella ; o boták kí to bo - elako al criado le encargábamos un trabajo. takuella, v. encargar; o la - o bulla lotóbboo tú encargas un reca do a la doncella. Pret. takuem, takue''eem. takuem, pret. v. o takuella ; n-o MlIá elabba yo encargué un asunto al chico. takuessi, pret. v. o takólla ; to ba - a bayolla ba etelle e bilabba bi áó nosotros mandábamos a los ancianos para que intercedieran por nuestros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tale', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Ntálé. Está localizado en Batete. tálessi, pret. v. o tála ; e eboránokko e - e ello el ciego pelaba demasiado el ñanle, to - o IObM a boppé wela nosotros introducíamos el brazo en el agua', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tamarááu', 's.', NULL, NULL, NULL, NULL, 'sing. bizcocho, galleta. els. 9 y 10', NULL, 'bisikittí', 'Fuente: bubi-español', 'import-script'),
  ('tamballé', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. tambores. els. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tamma', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. petacas. els. 9 y 10. Tb. sitó ''o. tapán ''a, pret. v. o tapánna ; n bo - o Mllá lÍl pensé en mi hijo. tapánessi, pret. v. o tapánna ; o - o botólló recordabas el mensaje. tapánna, v. 1. pensar, reflexionar, barruntar, meditar; n la - ná n pa''e o olla isoppo pienso que puedo comprar pan. 2. recordar, evocar, acordarse; to la 0- nos acordamos de ti. 3. pre sentar, iniciar. Pret. tapán'' a, tapánessi. tapánno, formo verbo que se obtiene de la unión entre tapán''a y el morfema complemento --O ; batyo e - wáe a tyi e hólánno las personas son presentadas pero no son iniciadas en el querer. tápelessi, pret. v. o tápella ; to botólló, to - beheppoo nosotros recibíamos un men saje, recibíamos a unos visitantes. tápella, v. aceptar, recibir; n la - e esokka lÍl yo recibo mi medalla. Pret. táperi, tápelessi. táperi, pret. v. o tápella ; a basobbá ammaa ba -e bisokka bi ábo todos los guardias recibieron sus medallas. tapessi, pret. v. o tappáa ; e kobinna e - e beheppoo i tyélle kubbaa i', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('táppa', 's.', NULL, NULL, NULL, NULL, 'pi. crestas. el. 10. tappáa, v. 1. mostrar, demostrar; n la - a batyo i nabba kubbaa ka oríi i é muestro a la gente toda mi cacería. 2. expresar. Pret. tappí, tapessi. tappí, pret. v. o tappáa ; e béheppoo 10 be - e ripotto ri mmaa a los visitantes les mostrasteis toda la ciudad', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tappo', 's.', NULL, NULL, NULL, NULL, 'pi. fachadas de un edificio. el. 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tari', 'antrop.', NULL, NULL, NULL, NULL, 'que proviene del verbo o tála. Tári es el pret. del v. o tála y se refiere a alguien que introduce. Se localiza en Baney. tári, pret. v. o tála ; á me - o 10110 e eteppe wela? ¿quién introdujo el ñamaJ en la pared?', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tarifa', 'antrop.', NULL, NULL, NULL, NULL, 'adoptado de la lengua española. Está localizado en Basakato de la Sagra da Familia. tarítarí, loco adv. poco a poco; - a baie bá ukkí o boitta botte poco a poco los hombres escogieron al secretario general. tatáa, v. cortar, zajar; e si''obbá si lá - o bollá la navaja corta al niño. operar; e rokítta ri lá - o botyo el médico opera a la persona. Pret. tatyíi, tatessi. tatalessi, pret. v. o tatalla ; e tatapó''a e - e etapóllo el chimpancé rompía la lona. tatalla, v. romper, desgajar; o la - o bokutta tú rompes la manta. Pret. tatari, tatalessi. tatam, pret. v. o tatalla ; n 10 o luua yo rompí el vestido. Th. tatari. tatapó''a, . 1''. sing. y pI. chimpancé, gorila. Cls. 9 y lO. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tatáppa', 's.', NULL, NULL, NULL, NULL, 'pI. esteras, alfombras. CI. 10. tatara, v. hacer desgajar/romper; to la - e sotte nosotros hacemos romper la camisa. Pret. tatariia, tataresiia. tataresiia, pret. v. o tatara ; n-e etapóllo yo haCÍa desgajar la lona. tatari, pret. v. o tatalla ; o obel lá bo - e kótte lÍl la liana espinosa rompió mi chaqueta. tatariia, pret. v. o tatara ; o obellá bo - e kótte o la liana espinosa hizo romper tu chaqueta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tataúlo', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. orilla del mar, playa. litoral. Cls. 9 y 10. tátéa, v. cortarse; o bollá a la - la o lo''obbá el niño se corta con el cuchillo. Pret. tátéi, táteseei. tátéi, pret. v. o tátéa ; n-la sipéppa me corté con un papel. táteseei, pret. v. o tátéa ; n - me cortaba, o - te cortabas, a - se cortaba, ro - nos cortábamos, 10 - os cortabais, ba - se cortaban. tatessi, pret. v. o tatáa ; o lO''obbá 10 le - el cuchillo me cortaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tátyi', 's.', NULL, NULL, NULL, NULL, 'pI. ganchos metálicos. CI. 1 0. Tb. bitádyi. tatyíi, pret. v. o tatáa ; n-o booné l Í l corté mi dedo, n bo - lo corté. te, morf neg. no. Se usa en la conjugación de los ver bos: a batyo ba - poa no han venido las personas. té, 1. morf numo uno; neppí - un músico. Sólo se usa para las palabras de la CI. 9. 2. morf de nega ción; to - ráa no hemos comido, to - rá''a toda vía no vamos a comer. 3. prono otro/s, otra/s. Concuerda con las palabras de las Cls. 9 y 10; elo nabba, e - este animal, el otro, ilo nabba, i estos animales, los otros. Cfr. te. te''a, v. consolar, calmar, apaciguar; n la - a batyo ba lá ba o ólalla bo ba yo apaciguo a las personas que se están pegando. Pret. te''i, te''essi. te''essi, pret. v. o te''a ; to ba - a batyo ba bé''essi ba nosotros consolábamos a las personas que lloraban. te''i, pret. v. o te''a ; o oberíi a o bollá áí la madre calmó a su hijo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('te''o', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. mesas. mostradores. Cls. 9 y 10. te''ólessi, pret. v. o te''ólla ; e sibólló si e - la pobreza nos des consolaba. te''ólla, v. desconsolar; e roppá ri la e - el dolor nos desconsuela. Pret. te''óri, te''ólessi. te''óri, pret. v. o te''ólla ; e riwéi ri áí ri e - su muerte nos des consoló. tealessi, pret. v. o tealla ; e isaké n ri - o botté bi''o el machete lo apoyaba en el árbol. tealla, v. apoyar; n la - e eho''o e eteppe bi''o apoyo el poste en la pared. Pret. teari, tealessi. teari, pret. v. o tealla ; o ri - e isaké o tú apoyaste tu machete. tébaam, pret. v. o téballa ; o bue''iáa e le pooe to - o buppá bU áó cuando llegó el maestro pusimos fin a nuestro alboroto. tébaIessi, pret. v. o téballa ; to bo - o buppá bo áó nosotros poníamos fin a nuestro alboroto. tébaIla, v. dejar de incordiar, poner fin; e nokonoko o - e tu alboroto, ponle fin. Pret. tébaam, tébalessi. tébba, v. callar, cesar; e neppí e lá - kóri a batyo ba tyí''a la oátyera el músico se calla porque la gente no escuc', NULL, 'tébiilW', 'Fuente: bubi-español', 'import-script'),
  ('tébiillii', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. mesas. mostradores. els. 9 y 10', NULL, 'te''o', 'Fuente: bubi-español', 'import-script'),
  ('Teka', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Tekka. En este último caso provendrá del verbo o tekka. Está localizado en Basakato de la Sagrada Familia. tekebba, v. inclinarse, estar inclinado; a bat té ba lá tekebba le pullá los árboles se inclinan con la tormenta. Pret. tekebbi, tekebessi. tekebbi, pret. v. o tekebba ; e tyóbbo e - la casa está inclinada. tekebessi, pret. v. o tekebba ; o obílla bo - la e pullá la palmera se inclinaba con la tormenta. tekessi, pret. v. o tekka ; o bona tú''o o o - tu hermano mayor te hacía cosquillas', NULL, 'bukessi', 'Fuente: bubi-español', 'import-script'),
  ('tekka', 's.', NULL, NULL, NULL, NULL, 'pI. rafia. el. 10. tekka, v. hacer cosquillas; n la - o buityíi lÍl hago cosquillas a mi herma nito. Pret. tekki, tekessi. Tb. o bukka. tekki, pret. v. o tekka ; n bo - o buityíi lÍl hice cosquillas a mi hermanito', NULL, 'bukki', 'Fuente: bubi-español', 'import-script'),
  ('telállo', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. entradas, puertas. els. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 202 (entradas 5026 a 5050)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('teleri', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. hilos para coser, para trenzar, etc. els. 9 y 10. Tb. sisorí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('telle', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. caminos, senderos, itinerarios, pasos, derroteros, destinos. els. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('telo', 's.', NULL, NULL, NULL, NULL, 'sing. dedo corazón. el. 9', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('teppo', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. nivel, grado. els. 9 y 10. tételessi, pret. v. o tétella ; o bonánna a - i kollo la abuela debilitaba a las sardinas por medio de una sustan cia vegetal. tétella, v. debilitar por medio de alguna sustancia vegetal o química atraer por medio de cualesquiera argucias con objeto de despistar o desorientar a una persona o a un animal. Pret. téteri, tételessi. téteri, pret. v. o tétella ; i kollo to i nosotros debilitamos las sardinas. tétessi, pret. v. o tétta ; o liibinno lo - e bimpa la apiso nadora tritura las piedras. Pret. tétyi, tétessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tetto', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. glandes, cabezas del penes. els. 9 y 10. tetya, 1. s. sing. y pI. color, colores. els. 9 y 10 ; e - killó el color negro, e - tolla el color rojo o granatc, e - obo el color ocre, e - peppa color gris. 2. -, v. dibujar, colorear, pintar; n la - yo dibujo. Pret. tetyi, te tyessi. Tb. o dibuhalla. tetya, v. imponer, condecorar; o la - esokka tú impones una medalla. Pret. tetyía., te tyesiia. tetyesiia, pret. v. o tetya ; e kobinna a - a batyo ba mmaa bá''a buéi ba e ebéló e ko''e el gobierno condecoraba a todas las personas que murieron en tiempos del gallo. tetyessi, pret. v. o tetya ; a bokútta ba pi''o los médicos dibu jaban riñones. tetyi, pret. v. o tetya ; o bue''iáa a - i nab ba kubbaa i é eriia wela el maestro dibujó todos los animales del pueblo. tétyi, pret. v. o tétta ; e emasíín e - a bate la máquina trituró las piedras. tetyía, pret. v. o tetya ; o botúkku bote a - a abitábítta el gran jefe condecoró a los militares', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('teute''u', 's.', NULL, NULL, NULL, NULL, 'pi. pombas grandes. espumas. el. 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tiríti', 's.', NULL, NULL, NULL, NULL, 'sing. calle, callejuela. el. 9. Tb. bo ''o, bokoo. toallo / 311 to, mor:l l. prf4l sujo nosotros, nos; mpári - bíles si ayer bailábamos. 2. moif. conc. ellos, ellas; tonori - ba pájaros ellos dos. 3. s. pI. plantas del ñame. CI. JO ; o óppa ¡- pegar las plantas del ñame. to, 1. mOTi num. cinco. Debe llevar el morfema con cordante de la Clase del nombre determinante. Cls. 2 y 6: batyo/abósekka ba - personas/acor deones cinco. CI. 4: besuppa be - trenzas cinco. CI. 8: bihótto bi - horas cinco. CI. JO: kallo -/tyo rodetes cinco. CI. 13: toatta to - historietas/cuentos cinco. 2. adj. largo, alto. Concuerda con las pala bras de las Cls. 9 y 10; e tyóbbo - casa alta, i tyób bo - casas altas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tó', 'adj.', NULL, NULL, NULL, NULL, 'num. diez; toatta tué - diez cuentos. Con cuerda con las palabras de la CI. 13. tó''a, v. 1. vencer, ganar, derrotar; a batyo ba lá - i pókkó la gente ven ce a los bueyes. 2. sacar la comida; o bOie IÍl a la - o bora''o mi padre saca la comida. Pret. tó''i, tó''essi. tó''e, int. ¡basta!, ¡ya vale!, ¡cálmate! tó''elessi, pret. v. o tó''ella ; o bolappí a - a batyo ba mmaa el cocinero sacaba la comida para toda la gente. tó'' ella, v. sacar la comida para alguien; o boie a la - a bollá el hombre saca la comida para los niños. Pret. tó''eri, tó''e lessi. tó''eri, pret. v. o tó''ella ; o bOie a ba - a bOllá el hombre sacó la comida para los niños. tó''essi, pret. v. o tó''a ; a ba tó''i pókkó ba - e bittá los que vencieron los bue yes ganaban la guerra. tó''i, pret. v, o tó''a ; lo - o bora''o sacasteis la comi da, lo - e bitta ganasteis la guerra. tó''ía, pret. v. o tó''ia ; o bOtyo a e eriia a le - el paisano me sacó de dudas. tó''ia, v. 1. explicar, sacar de dudas; o bue''iáa a la - a bakuerakueráa el maestr', NULL, 'o wínanna', 'Fuente: bubi-español', 'import-script'),
  ('to''obbá', 's.', NULL, NULL, NULL, NULL, 'pI. navajas. CI. 13. Tb. tuettáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('to''óleri', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. portavoz. charlatán, parlanchín. Cls. 9 y lO. to''ólla, v. hablar, dialogar, conversar, opinar, parlar; to la - e etyo nosotros hablamos el bubi, a bollá ba lello ba ta aan o e etyo los niños de hoy no saben hablar el bubi. Pret. to''óm, towessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tó''ólló', 's.', NULL, NULL, NULL, NULL, 'pI. lenguas, idiomas, hablas. CI. 13. to''óm, pret. v. o to''ólla ; mpári 10 - e etyo ayer hablasteis el bubi. tó''óra, v. interpelar; o buatébisapá a la - e kobinna el juez interpela al gobierno. Pret. tó'' óriia, tó''óresiia. tó''óresiia, pret. v. o tó''óra ; o bu até bisapá a - e eriia el juez interpelaba al pueblo. tó''óriia, pret. v. o tó''óra ; o buatébi sapá a - e eriia el juez interpeló al pueblo. to''otya, aqj. pI. primeros, primeras. CI. 13. Concuerda con las palabras de la CI. 13; o topotto - las primeras pimientas negras. to''ú, 1. s. sing. facultad, autorización, energía, fuerzas, vigor, beneplácito, potestad, potente. CI. 13 ; -la ri''uá a ta bá pala'' e la fuerza y la suerte son incompatibles. 2. ad). dificil; e ehMmero é - la res puesta es dificil. toáán, pret. v. o toánna ; e bilabba bi los hechos están mezclados', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toakki', 's.', NULL, NULL, NULL, NULL, 'pI. liendres, piojos pequeños. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toallo', 's.', NULL, NULL, NULL, NULL, 'pI. pequeñas manifestaciones artísticas con baile, canto, etc. CI. 13. 312 I toánessi toánessi, pret. v. o toánna ; n la - a lokko la mmaa yo mezclaba todas las cosas. toánna, v. mezclar; ii waíssii a la - ii túp pu tii e ripelló Ia mujer mezcla las salsas de la fiesta. barajar. Pret. toáán, toánessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toatta', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cuentos, historietas, fábulas. . Tobachi, antrop. obtcnido a partir de tjjbatyibatyi. Tiibatyi está localizado en Basakato de la Sagrada Familia y en Basuala', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobaella', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. humildades. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobáka', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. tabacos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobakka', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. urnas, cajitas. . tobálelessi, pret. v. o tobálera ; a ba seseppe ba - i siityáa los jóvenes desafiaban a los soldados. tobálera, v. desafiar; n la - a batyii yo desafio a las personas. Pret. tobále ri, tobálelessi. tobáleri, pret. v. o tobálera ; n ba - a batyii yo desafié a las per sonas. tóbalessi, pret. v. o tóballa ; e biulla be - a baebba las doncellas se encontraban con los vinateros. tóballa, v. encontrarse con alguien o con algo; na biityii a la - kiittó tii''a ká tóbalakiittó si alguien se encuentra con un valiente decimos que se llama encontrador de valiente. Pret. tóbari, tóba lessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobappa', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. culebritas, serpientes pequeñas. . Tb. lonooa. tóbari, pret. v. o tóballa ; ne le pooe n-e rioppo cuando llegué me encontré con la batalla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tobasi', 'antrop.', NULL, NULL, NULL, NULL, 'que tiene el mismo significado que Tobachi. Está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobatya', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. varitas, flechitas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobatyabatya', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. costillas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobatyibatyi', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. primeras hierbas después de desbrozar un terreno. . tobba, v. derramar; n la - a biitá yo derramo el aceite. Pret. tobbi, tobessi. tobba, v. herirse, lastimarse; ii biiseseppe a paa''e o - e esókkó wela el joven puede lastimarse en su juventud. Pret. tóbbi, tóbessi. tóbba, v. acudir; n la - acudo, we tóbbe no acudas. Pret. tóbbi, tóbessi. tóbbáa, v. defecar, cagar; ii la ba - o tú defecas, ii tyá ba - o tú no defecas. Pret. tóbbíi, tóbessi', NULL, 'o hella', 'Fuente: bubi-español', 'import-script'),
  ('tobbe', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'pi. machitos, varoncitos. Concuerda con las palabras de la ; ii tollá - los muchachitos varones. tobbi, pret. v. o tobba ; n-a biitá, n ba - a biitá, derramé el aceite. tobbi, pret. v. o tóbba ; e rikotto ri áí ri - su pie se lastimó. tóbbi, pret. v. o tóbba ; n e - mpári acudí ayer. tobbia, v. lastimar a alguien, lisiar; n la 0- te lastimo, te voy a lastimar. Pret. tóbía, tóbiesiia. tóbbíi, pret. v. o tóbbáa ; n ba - o yo defequé, n ta ba - o no defequé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobbo', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. y pI. heridas, cortes, lesiones. armas. Cls. 9 y 10. tobbó, 1. S. pi. miradas, miramientos; o mpá tener en cuenta. . 2. adj. pi. duros, fuertes. Concuerda con las palabras de la ; ii tollá - los mucha chitos fuertes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tóbboo', 'S.', NULL, NULL, 'Cl. 10', NULL, 'pI. mandamientos, recados, envíos. mensajes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 203 (entradas 5051 a 5075)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Tobe', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Tiibbe. Se localiza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobé', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'malos, malas, feos, feas. Concuerda con las palabras de la ; tokko - unas noticias malas/feas. tobea, V. parar, cesar. Pret. tobei, tobesei. toenna / 313 tobeea, v. volcarse, derramarse; o motóo bo lá - el coche se vuelca, a biitá ba lá - el aceite se derrama. Prel. tobeei, tobieseei. tobei, prel. v. o tobea. tobeei, pret. v. o tobeea ; o motóo bo el coche se volcó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobekabékka', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. tortolitos, palomitas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobekúbeku', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. barbillas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobelle', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. mamitas, tetinas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobélló', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. momentitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobelo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. antílopes. . Tb. tuetyi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobelOhékka', 's.', NULL, NULL, NULL, NULL, 'pI. instantes, momentos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobeolla', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. ancianitos, viejecitos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toberí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. nanas, romanzas. . tobesei, pret. v. o tobea. tobessi, pret. v. o tobba ; n-a biitá, n ba - a biitá, yo derramaba el aceite. tobessi, pret. v. o tóbba ; to la i kobbá nos lastimábamos con los cuchillos. tóbessi, 1. pret. v. o tóbbáa ; n ba - o yo defecaba, n ta ba - o yo no defecaba. 2. pret. v. o tóbba ; o - tú acudías', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobetté', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. barricas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobétto', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. pequeños ritos de la reconciliación. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobetye', 's.', NULL, NULL, NULL, NULL, 'pi. escobillas. CI. 13. Tb. tiiburúm, tiisesee le', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobetyityi', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. bisabuelos. . tobía, pret. v. o tóbbia ; ba - o bOtyelemán lastimaron al preso. tobieseei, pret. v. o tobeea ; o motóo bo - el coche se volcaba. tobiesiia, prel. v. o tóbbia ; e eaó e le - el hacha me lasti maba, o - o BOsoppé tú las timabas a B6soppé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tobilerí', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de la frase tij bUeri. Debería escribir se TiiobOeri. Se localiza en Moka y en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobinna', 's.', NULL, NULL, NULL, NULL, 'pI. mocos, mucosidad. gripe. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobitya', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. ratoncitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobokko', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. pequeñas cavernas o cavidades de un árbol. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobókko', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. conchitas de mar. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Toboko', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo plural de ebOkk6. En este caso se escribirá Tobokko. También puede escribirse Tobókko. Se localiza en Baney. tobólla, v. escoger, separar, etc. ; lo la - e bim málOtto bi áno vosotros separáis vuestras piñas de cacao. Pret. tobóri, tobuessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobólló', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. pobres, desvalidos, paupérrimos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobónó', 's.', NULL, NULL, NULL, NULL, 'pI. mosquitos. CI. 13. tobóri, pret. v. o tobólla ; n la a lokko la áno separé vuestras cosas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobotóobbó', 's.', NULL, NULL, NULL, NULL, 'pi. aguardiente, bebida alcohóli ca. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobotótóbotó', 'adj.', NULL, NULL, NULL, NULL, 'blandos, tiernos. Concuerda con las palabras de la CI. 13; tohá - cucharas blandas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tobotyera', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. cariños, ternuras. piropos. CI. 13. tobuessi, pret. v. o tob611a ; a batyo bo o rótta ba - i tyué las personas del mercado esco gían el pescado', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 204 (entradas 5076 a 5100)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tobúkku', 's.', NULL, NULL, NULL, NULL, 'pi. 1. libritos. 2. papeles. 3. oficios. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toburúm', 's.', NULL, NULL, NULL, NULL, 'pi. escobillas. CI. 13. Tb. tiibetye, tiiseseele. Tocolo, antrop. también escrito Tokolo. Debería escribirse Tookollo. Está localizado en Basakato de la Sagrada Familia. toen na, s. pI. ardillas pequeñas. CI. 13. 314/ toeppa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toeppa', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. hojas de lija, lijas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toesse', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. collarines. collarines con cam panillas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toette', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. palitos para cavar, picos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohá', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cucharas. . Tb. topúm. tohakká, . 1''. pi. pequeños nudos corredizos. pequeñas trampas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohám', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. parecidos, semejanzas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohe', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'nuevecitos, nuevecitas. Concuerda con las palabras de la CI. 13; tohúku - anzuelos nue vecitos. toheká, . 1''. pi. trocitos. . Toherida, antrop. obtenido a partir de la f rase to ''á e rUda. To''ériída está localizado en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohíri', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. danzas tradicionales comunes. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohNtó', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. las flores de la planta de la malanga, los capullos. . Tohori, antrop. que debería escribirse Too hóri. Se localiza en Moka', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohótóttó', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'blanquitos, blanquitas. Concuerda con las palabras de la ; tose''e - gusanitos blanquitos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohuenóko', 'adj.', NULL, NULL, NULL, NULL, 'pi. tibios. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohuhu', 's.', NULL, NULL, NULL, NULL, 'pI. ciertos tipos de pájaros. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohúku', 's.', NULL, NULL, NULL, NULL, 'pi. anzuelos. CI. 13. Tb. tolobM', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tohutétete', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. orugas. CI. 13. Toichoa, antrop. que debería escribirse To''ítyo''áa o también To''ityooa. Está localizado en Basakato de la Sagrada Fa milia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toilalokó', 's.', NULL, NULL, NULL, NULL, 'pi. plantas perennes. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toitoí', 'adj.', NULL, NULL, NULL, NULL, 'gris, color ceniza. Tojaka, antrop. diminutivo plural de ehakká. Debería escri birse Tohakká. Se localiza en Basakato de la Sagrada Familia. Tojam, antrop. obtenido a partir del ver bo o háUa. Tojárn se refie re al parecido con alguien. Se localiza en Baney. Tojunto, antrop. diminutivo de bOhNtó. Debería escribirse TohNtó. Está localizado en Basakato de la Sagrada Familia', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toJatolla', 'adj.', NULL, NULL, NULL, NULL, 'rojo, rojizo rosado; luua lua - ves tido rojo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Toka', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo plural de káa. Tokáa está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokápáa', 's.', NULL, NULL, NULL, NULL, 'pi. castañas. CI. 13. Tb. tótebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokárityi', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. carretillas. . tokarosíi, dim. pi. pequeña cantidad de keroseno o petróleo. CI. 13. tokea, v. quemarse, abrasarse; e tyóbbo e lá la casa se quema. Pret. tokei, tokeseei. tokei, pret. v. o tokea ; e eta póUo e - la lona se quemó. tokeseei, pret. v. o tokea ; e tyóbbo á e eriia e - la e ribasaisso la casa del pueblo se quemaba con el incendio. tokessi, pret. v. o tokka ; n 10 o luua ro yo quemaba mi vestido. tokessi, pret. v. o tokká ; to - e betotto nosotros engar zábamos las cuentas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokie', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. dedo índice. CI. 9. tokiera, v. señalar o indicar con el dedo; a batyo ba rnrnaa ba lá - e húbbé todas las personas seña lan al ladrón. Pret. tokiériia, tokiéresiia. tokiére, . 1''. pi. balanzas, básculas, pesas. . tokieresiia, pret. v. o tokiéra ; o bue''iáa a le - el maestro me señalaba con el dedo. tokieriia, pret. v. o tokiéra ; lo le - elo ebari me señalasteis con el dedo esta mañana. tokiesiia, pret. v. o tokkia ; o bo¡ssó bo - o obitya el fu ego quemaba al ratón. tokiia, pret. v. o tokkia ; o bois só bo - o obitya el fue go quemó al ratón. Tokule / 315 tokka, v. 1. quemar, abrasar; tii la - biikobbe nosotros quemamos un plátano. 2. extinguir. Pret. tokki, tokessi. tokká, v. 1. engarzar, ensartar, poner cuen tas en un cordón; 10 la - i tyíbbii vosotros engarzáis por sartas de tyíbbO. 2. originar, causar; tii la - biilláa, nosotros ori ginamos o armamos un jaleo. Pret. tokkí, tokessi. tokki, pret. v. o tokka ; ii biiissó bii le - el fuego me quemó, me abrasó. tokkí, pret. v. o', NULL, 'o ribella', 'Fuente: bubi-español', 'import-script'),
  ('tokkiáa', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cigarrillos, pitillos. . Tb. tomíki', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokko', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. clavo/s. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokko', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. noticias, sucesos. novedades. sesos, cerebro. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 205 (entradas 5101 a 5125)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tokko', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. clavo, punta, gancho. Cls. 9 y 10', NULL, 'néri', 'Fuente: bubi-español', 'import-script'),
  ('toko''e', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. pollitos, gallinitas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toko''ó', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. hierbas limón, citronelas. . Th. kontrití', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tokobé', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Tiikiibbé. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokokkí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cigüeñas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokokoo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. pequeñas cohesiones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokolityé', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'pI. célebres, famosos. . tokólla, v. extirpar, arrancar; a basesepari ba lá - i tyetyélle las muchachas extirpan la carne de los moluscos univalvos. Pret. tokóri, tokuessi. tOkólla, v. 1. desengarzar, desensartar, deste jer. 2. o - biilláa pacificar, arreglar el problema de dos contendientes. Pret. tokóri, tokuessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokollé', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. cositas, objetitos. . Tokolo, an/rop. también escrito Toco10. Tiiiikiillii está localizado en Belebú. tokóm, pret. v. o tokólla ; n bii - ii biilláa bii a bá lo batyii arreglé el proble ma de estas dos personas', NULL, 'tokóri', 'Fuente: bubi-español', 'import-script'),
  ('tokono', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. pequeños, diminutos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokookonno', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'pequeños, pequeñas. Concuer da con las palabras de la ; tiinki la tiinorí - moscas y pájaros pequeños. tokookoo, 1. s. pI. cosas o personas pequeñas y delgadas. . 2. adj. pequeños, pequeñas. Concuerda con las palabras de la CI. 13; tiityii - personitas pequeñi tas. Tb. tokookonno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokoppo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. botes, latas. . tokóri, pret. v. o tokólla ; e sipóssi si - e nokko a ii iibitya el gato arrancó el oj o del ratón. tokóri, pre/. v. o tokólla ; ii be - e betiittii tú desengarzaste las cuentas. Th. tokóm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokorokko', 's.', NULL, NULL, NULL, NULL, 'pi. poca cantidad de bebida alcohó lica. CI. 13. Tokotobe, an/rop. compuesto por tokko y /abé. Debería escribirse Tokkotiibé. Se localiza en Bocoricho', NULL, 'tua ''u', 'Fuente: bubi-español', 'import-script'),
  ('tokótta', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. objetos o personas que agrupan o reúnen. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokottí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. *compresas, támpax. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokotye', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. camionetas, furgonetas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokuella', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. escuelas, colegios. . tokuessi, pret. v. o tokólla ; ii biibelle lÍ1 a - e biliillá mi hermano arrancaba la carne de las conchas marinas. tokuessi, pret. v. o tokólla ; a batyii bololló ba - i tyerú las personas mayores desengarzaban las nipas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tokule', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del verbo o kulla. Tiikulle se refiere a objetos recogidos del suelo. Está localizado en Rebola. 316/ tokullá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokullá', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. cantimploras. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokutúm', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. chabolas, ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tokuua', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. dirn. de telas, paños. bande rines. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOlabba', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. ej emplos, cositas, asuntillos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toláe', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. niños, muchachitos, chiquillos, nenes. . tolaelessi, pret. v. o tolaella ; to ta bí - e bilabba bí obotyo la o mmo no enlazá bamos las cosas de la vida y el Más Allá. tolaella, v. añadir, enlazar, engarzar, entrelazar; to la - e bilabba nosotros enzalamos los asuntos. Pret. tolaeri, tolaelessi. tolaeri, pret. v. o tolaella ; ne e tereri yo enlacé el hilo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOlappa', 's.', NULL, NULL, NULL, NULL, 'pI. pinzas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOláppo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. lamparillas, candiles. ; e ripotto wela ri tyi - en la ciudad no hay luz', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOlé', 'adj.', NULL, NULL, NULL, NULL, 'ciern. aquellos, aquellas. Concuerda con los nombres de la CI. 13; - toko''ó aquellas citronelas, - tolebbó aque llas campanillas', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 206 (entradas 5126 a 5150)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tOlebbó', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. campanillas, cencerros, cencerros pequeños, timbres. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toleppa', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. verduras un poco amargas. CI. 13. toJessi, pret. v. o tolla ; n - i pillá yo molía los dátiles. tolla, 1. s. pi. masa rojiza que se obtiene de las hojas del árbol botolJa. Se usa para untado en el cuerpo de las jóvenes casaderas. CI. 10. 2., v. moler los dátiles para separar la fibra de la semilla o hueso. tener que. Pret. tori, tolessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tollá', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. niñitos, muchachitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tollé', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. cositas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tollo', 's.', NULL, NULL, NULL, NULL, 'pi. sueño, ensueño. CI. 13; o bonánna e la abuela duerme; - tuá tyommaa sueño eterno, descanso eterno', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOlo', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'dern. estos, estas. Concuerda con los nombres de la ; tobíkinnó estos pelliz cos, - tokkiáa estos cigarrillos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOlobarí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. mejorías. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOlobbo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. anzuelos. . Tb. tohúku', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOlólló', 'adj.', NULL, NULL, NULL, NULL, 'pi. viejos, veteranos. Concuerda con las palabras de la CI. 13; o toatta - las viejas his toríetas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tolOpelOpe', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'sing. despistados, desorientados. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tolOppo', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. pájaros mosca. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomaityi', 's.', NULL, NULL, 'Cl. 13', NULL, 'sing. mes de septiembre. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tOmaraéa', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. escapularios. CI. 13. Tomasiché, antrop. obtenido a partir de la frase tówási i tyé. Debería escribirse Tówásityé. Se localiza en Bahó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomeóti', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cementos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomeressi', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. medicamentos, píldoras, gra geas. . Tb. tuak ká', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tomí', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse ToolÍl. Se localiza en Baresó yen Bakake', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomíki', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cigarrillos. . Tb. tokkiáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomíkoró', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. pellizcos. . Tb. tobíkinnó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomíOko', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. gallos. . Tb. beteo''e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomma', 'adj.', NULL, NULL, NULL, NULL, 'indo algunos, algunas. Concuerda con las palabras de la CI. 13; he - tonki hay algunas moscas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomó', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'pI. fuertes, valientes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomólekke', 'S.', NULL, NULL, NULL, NULL, 'sing. y pi. luciérnaga/s. Cls. 9 y \O', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tomotóo', 'S.', NULL, NULL, 'Cl. 12', NULL, 'pI. cochecitos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tompa', 'S.', NULL, NULL, 'Cl. 13', NULL, 'pI. asientos, escaños, banquetas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonáénáé', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. llovizna', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 207 (entradas 5151 a 5175)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tone''e', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. bebés. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonekká', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. manantiales, fuentes. . Tb. torekluí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonki', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. moscas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonkileti', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. camisetas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonoke', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. críos, criaturas, cachorros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonooa', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. culebritas, serpientes pequeñas. . Tb. tobappa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonópi', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. tabaco molido, rapé. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonorí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. pájaros. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tonta', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. hojas, papeles. . Tb. tiipéppa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tontanta', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. papeles, hojas. . Tb. tonta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tontútóntú', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'bajitos, bajitas, cortitos, cortitas. Concuerda con las palabras de la ; o too kileti - las camisetas cortitas', NULL, 'tOÍltú', 'Fuente: bubi-español', 'import-script'),
  ('tooa', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. risa. ; o oooa - reirse', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toobbo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. rocas arcillosas sagradas de color ocre. hollines. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tookollo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. picantes, pimientas, guindillas, . Tb. toko//o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tookoríbba', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. lagunas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toOlÍl', 's.', NULL, NULL, NULL, NULL, 'pI. excrementos, heces, boñigas, cagarru ta. CI. 13. toóm, pret. v. o to'' ólla ; o - a labba dijiste las cosas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tooppa', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. *compresas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toosso', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. tabas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tootottya', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. sensitivas o hierbas de matas espinosas y hojas bipinnadas que se cie r r a n al contacto. . topáa, v. atar, ligar ; to la - e póríi atamos la cabra. Pret. topíi, topéssi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topaao', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. entradas en la sien. . topálessi, pret. v. o topálla ; e biho''o ID o bi - ebellá mis postes los ataba con lianas espinosas. topálla, v. atar con; e pókkó to le - lOtyókko el buey lo atamos con cadena. Pret. topám, ilipálessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topalláa', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. canastillas. CI. 13. topám, pret. v. o topálla ; a abúkku o ba - opetté los libros los até con cuerda', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Topapori', 'antrop.', NULL, NULL, NULL, NULL, 'probablemente obtenido a par tir del verbo o topáa y del sustantivo póríi. Topápórli se refiere a alguien que se encarga de atar o cuidar las cabras. Está localiza do en Batoicopo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topappá', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. aletas, alitas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topatyípatyí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. pequeños saltamontes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Tope', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo de boppé. Toppé está localizado en Sampaka. tope''em, pret. v. o topélla ; 010 bOtyo o bo - bo''e a esta persona le ataba una carga', NULL, 'topelessi', 'Fuente: bubi-español', 'import-script');

-- Lote 208 (entradas 5176 a 5200)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('topelapella', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. llamitas. CI. 13. topelessi, pret. v. o topella ; belo bekobbe o be - o botyo ID estos plátanos los ataba para mi pariente. topella, v. atar para alguien; o bOie m a la le - e pórli mi padre me ata la cabra. Pret. topém, topé''em', NULL, 'tope''em', 'Fuente: bubi-español', 'import-script'),
  ('topelló', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. fe stines. . topem, pret. v. o topélla ; o - e pórli o bOtyo a ripotto até la cabra para la persona de la ciudad', NULL, 'toperi', 'Fuente: bubi-español', 'import-script'),
  ('topénaera', 's.', NULL, NULL, NULL, NULL, 'pi. hechos pequeños. CI. 13. Ej. expr. i pohá í lé o - las acciones están en los pequeños hechos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topényápényá', 's.', NULL, NULL, NULL, NULL, 'pi. patas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topepáam', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. verduras gelatinosas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topepe', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. pipas. falos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Topepé', 'antrop.', NULL, NULL, NULL, NULL, 'cuyo significado hace referencia a las virutas o a los pequeños haces de leño que hacen los niños. Topepe está localizado en Baney, en Basuala, en Baresó y en Batete. 318/ topepe', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topéppa', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. papeles, folios. . Tb. tiinta. toperi, pret. v. o topella ; n-e póríi o botyo a ripotto até la cabra para la persona de la ciudad. topessi, pret. v. o topáa ; JO - i kóÓIÍl vosotros atabais los leños. tópessi, pret. v. o tóppa ; ne - e puá yo ata ba al perro', NULL, 'tiipern', 'Fuente: bubi-español', 'import-script'),
  ('Topetope', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir de etoppe. Es el nombre de un personaje popular muy famoso por sus hazañas. Se localiza en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topetye', 's.', NULL, NULL, NULL, NULL, 'pi. gorrioncitos. CI. 1 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topiánna', 's.', NULL, NULL, NULL, NULL, 'pi. ovarios. Clases 9 y 10. topíi, pret. v. o topáa ; lo - i kóóIÍl atasteis los leños', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topo''a', 's.', NULL, NULL, NULL, NULL, 'pI. monos titis, monitos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topókkó', 's.', NULL, NULL, NULL, NULL, 'pI. becerros, novillos. CI. 1 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Topolá', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Topollá. Está localizado en Baney y en Bariobé', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topollá', 's.', NULL, NULL, NULL, NULL, 'pi. piernecitas. CI. 13. topólla, v. desatar, desencadenar; to la - a batyo bá''a tóppi bo bá desatamos a las personas que fueron atadas. Pret. topóm, topuessi. topóm, pret. v. o topóJla ; lo - a batyo ba mmaa desatasteis a todas las personas', NULL, 'tiipóri', 'Fuente: bubi-español', 'import-script'),
  ('topopotto', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. cuentas menudas, abalorios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topoppi', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'pi. avaricias, tacañerías. ava ros, tacaños. . topóri, pret. v. o topólla ; ba - a batyo ba mmaa desataron a todas las personas. Tb. tiipórn', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topóríi', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. cabritos, cabritas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toporóko', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. rumores, comentarios. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topóssi', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. gatos, jinetas. . Tb. tyippa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topotto', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. pimientas negras del país. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topoya', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. polillas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toppá', 's.', NULL, NULL, 'Cl. 10', NULL, 'pi. nubes. . 2 dolorcitos, pequeñas enfermedades. . tóppa, v. atar, liar; to la - o botyo eIÍlmetyi o atamos a la persona detenida. Pret. tóppi, tópessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toppé', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. agüita. ; na na''a quiero un poco de agua. toppí, dim. pi. genitales femeninos pequeños. . tóppi, pret. v. o tóppa ; to bo - o botyo e I Í lmetyi o hemos atado a la persona detenida', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topuá', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. perritos, chuchos. . topuessi, pret. v. o topólla ; to - e be''e la a batyo nosotros desa tábamos las cargas y a las personas', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 209 (entradas 5201 a 5225)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('topúm', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cucharas. . Tb. tiihá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topúrúu', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. puertecitas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('topussu', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. juegos, diversiones. jugue tes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('torábette', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. conejos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Toraó', 'antrop.', NULL, NULL, NULL, NULL, 'diminutivo plural de hOra ''o. Tora''o está localizado en Baney', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('torekká', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. manantiales, fuentes. . Tb. tiinekká. tori, pret. v. o tolla ; n i - i pillá moJí los dátiles, n-o hella ripotto tengo que ir a la ciudad', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('torí', 's.', NULL, NULL, NULL, NULL, 'pi. dotes, bienes del matrimonio. petición de mano y entrega de dote. Cl. lO', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toribolla', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. diablillos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toriia', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. aldeas, pueblecitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tóritóri', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. cantoral de río. char latán, parlanchín. c) hablador, hablante. Cls. 9 y 10. totto / 319', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tornpulla', 'S.', NULL, NULL, NULL, NULL, 'sing. vaso de cristal, un vaso cual quiera. CI. 9. Tb. akákka, etyakka. Topepé /317', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('torosíssi', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. pantalón. Cls. 9 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Toroyó', 'antrop.', NULL, NULL, NULL, NULL, 'prestado de otra lengua y cuyo significado aproximado es toronja o pomelo. Se localiza en Baloeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toruerué', 's.', NULL, NULL, NULL, NULL, 'pI. grillos. charlatanes. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toruppe', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. arbolitos divinos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosási', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. tijeras. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tose''e', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. larvas, gusanitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toseke', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. tabletas de madera, tablillas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toseseele', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. escobillas. . Tb. tobetye, toburúm', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosieráa', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. asociaciones, empresas. sociedades. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosokka', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. gorros, gorritas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosollo', 's.', NULL, NULL, NULL, NULL, 'pi. pequeña cantidad de sal. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosóló', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cerditos, cochinillos. jabatos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosoppo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. panecillos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosorí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cordeles, hilos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 210 (entradas 5226 a 5250)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tosuállo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. mujeriegos, pendones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosula', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. coscorrones, capones. . Tb. biakóo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tosússu', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. zapatitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totáa', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. batutas. nalguitas. . totaella, v. aliviar, calmar; ii biilallo bii lA le - el medicamento ali via mi dolor. Pret. totaeri, totaelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totaeta''e', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. hongos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totappá', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. presunciones, orgullos, altanerías. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totattá', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. membranas, pequeñas pieles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totátyi', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. almidones. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totebótyo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. dibujos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totebú', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. castañas. CI. 13. Tb. tokápáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totee', 'adj.', NULL, NULL, NULL, NULL, 'pi. grandes, voluminosos, importantes, destacados. Concuerda con las palabras de la CI. 13; ii tiiiikiillii - los picantes grandes', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totelle', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. senderos, caminitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toteppe', 's.', NULL, NULL, NULL, NULL, 'pI. tabiquitos, tabiques finos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totéppi', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. sujetadores. CI. 13. Tb. apá ''a. totessi, prel. v. o tóttáa ; ne - a batyii bá''a pooi bA me dirigía a las personas que llegaron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('toteteri', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cortes pequeños. minutos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totímma', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. barcos, buques, naves, navíos. . tto', NULL, 'bio', 'Fuente: bubi-español', 'import-script'),
  ('toto', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'altos, altas, largos, largas. Concuerda con las palabras de la ; tiiiikiillii - picantes largos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tóto', 's.', NULL, NULL, NULL, NULL, 'herbácea de hojas alternas y con pequeñas f lores de color amarillo-naranja. Clases 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totó''o', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. frascos, petacas, tarros. . Tb. tamma, tuauto''o', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totóbboo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. notas, mensajes cortos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totokiin', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. CI. 13. totora, v. camelar, engañar; ii biinatú''o lÍl a la le - mi hermano mayor me despista, me camela, me engaña. fingir, disimular. Pret. totoriia, totoresiia. totoresüa, pret. v. o totora ; n - yo camelaba, ii - tú camelabas, a - él camela ba, tii - nosotros camelábamos, lO - vosotros camelabais, ba - ellos camelaban. totoriia, pret. v. o totora ; n bii - iio biityii yo engañé a esa persona, ii bii - iilo biityii tú engañaste a esta persona, ii ta bii - iilo biityii tú no engañaste a esta persona. tóttáa, v. dirigirse, salir al encuentro, apresu rarse; n tyí''a - a batótta no me dirijo a los acu dientes. Pret. totyíi, totessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totte', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. camisas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totto', 's.', NULL, NULL, NULL, NULL, 'sing. poder, corona. Cls. 9 y 10 ; o olláa tener 320 I tottó poder, llevar una corona como símbolo de poder, i - ki ao los poderes están en tus manos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tottó', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. despensas, almacenes. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totubbá', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. partículas, lotes. migaj as. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 211 (entradas 5251 a 5275)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('totúkká', 's.', NULL, NULL, NULL, NULL, 'pI. cestos, cestitas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totúkku', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. jefecillos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totúllá', 's.', NULL, NULL, NULL, NULL, 'pI. islas, isletas, islotes. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totúllu', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. orinales. . Tb. ipó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyakalébbo', 's.', NULL, NULL, NULL, NULL, 'pI. objetos pequeños que pue den aparecer bajo muy diversas formas, que con tienen pequeños elementos en su interior. sona jeros, cascabeles, maracas. CL 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyappa', 's.', NULL, NULL, NULL, NULL, 'pI. comuniones, hostias. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyaptme', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. flautitas, trompetitas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyatyá', 's.', NULL, NULL, NULL, NULL, 'sing. dados. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyatyapellé', 's.', NULL, NULL, NULL, NULL, 'pI. bicicletas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyatyó', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. chismosos, chivatos, cotillas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyetyee', 's.', NULL, NULL, NULL, NULL, 'pI. destellos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyí', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. caracol. Cls. 9 y 10. totyíi, pret. v. o tóttáa ; n- a batyo ba lá púlláa ba ripotto salí al encuentro de las personas que vienen de la ciudad', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyo', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. personas pequeñas, personitas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyóbbo', 's.', NULL, NULL, NULL, NULL, 'pI. casitas, casitas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyoru', 's.', NULL, NULL, NULL, NULL, 'pi. corderos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyotyo', 's.', NULL, NULL, NULL, NULL, 'pi. ballenatos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('totyué', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. pescaditos. . tówálessi, pret. v. o tówálla ; oberii ID a le - kóri n tyí''a pooi bakasso mi madre me regañaba porque no llegué pronto. tówálla, v. 1. reprender, regañar; n la - o bui tyíi ID regaño a mi hermani to. 2. hablar con alguien; a batyo ba la - o botúk ku las personas hablan con el alcalde. Pret. tówám, tówálessi. tówám, pret. v. o tówálla ; o bonatú''o o o - tu herma no mayor te reprendió. tówe''em, pret. v. o tówella ; o obu laella a - i hMmá el defensor hablaba por los mudos. tówelessi, pret. v. o tówella ; o obu laella a - i hMmá el defensor hablaba por los mudos. tówella, v. hablar por otro; o bOíe a la - o bollá áí el padre habla por su hijo. Pret. tówe''em, tówem. tówem, pret. v. o tóweIla ; o obulaella a - i hMmá el defensor habló por los mudos. tóweri, pret. v. o tówella ; o bulla bo e eriia bo - a basesepári la doncella del pueblo habló por las mozas. towessi, pret. v. o t; n-e enkeléssi yo habla ba inglés, n-e ekará yo hablaba el inglés, o - e epanná tú habla bas e', NULL, 'tówelessi', 'Fuente: bubi-español', 'import-script'),
  ('toútú', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'bajitos, bajitas, cortitos, cortitas, etc. Concuerda con las palabras de la ; o totyo - las personitas bajitas, o tobatya - las varitas cortitas', NULL, 'tontútóntú', 'Fuente: bubi-español', 'import-script'),
  ('tua''á', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. bastones, varas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tua''u', 's.', NULL, NULL, NULL, NULL, 'pi. poca cantidad de bebida alcohólica. CI. 13. tuilipássi / 321', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuáám', 's.', NULL, NULL, NULL, NULL, 'pI. finquitas, huertecillos. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuaatyé', 's.', NULL, NULL, NULL, NULL, 'pI. camillas, catres. CI. 1 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuái', 's.', NULL, NULL, NULL, NULL, 'pI. saliva. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuaísso', 's.', NULL, NULL, NULL, NULL, 'pI. mujercitas, damitas. CI. 13. Tb. tuatyanna. tuak. ká, s. pI. almendras pequeñas. compri midos, píldoras, grageas. bastones, cetros. CI. 1 3. Tb. tomeressi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tualáa', 's.', NULL, NULL, NULL, NULL, 'pI. cáscaras del palmiste o de cualquier almendra. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 212 (entradas 5276 a 5300)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tuappé', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. hollejos secos en poca cantidad. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuáppo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. tiendas, abacerías, comercios. . Tb. bOteri (sing. roter, J', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuarí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. espositas, mujercitas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuaríolla', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. ancianitas, viejecitas. . Tb. tuarltyityi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuarityityi', 's.', NULL, NULL, 'Cl. 1', NULL, 'pI. ancianitas con mucha experien cia, viejecitas. 3. Tb. tuaríolla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuataté', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. tiestos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuatée', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. laditos, trocitos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuátiré', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. sábados. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuatyanna', 's.', NULL, NULL, NULL, NULL, 'pI. mujercitas, espositas. CI. 13. Tb. tuaísso', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuauto''o', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. frascos, petacas. . Tb. totó''o, tamma. túbaera, v. decir; o la - botyo alo e bilabba bi lá etta lá le dices a alguien cómo van las cosas. Pret. túbaeria, túbaeresiia. Tb. o bOl/á. túbaeresüa, pret. v. o túbaera ; a banatú''ó ba áó ba e - alo to pénnesa lá nuestros hermanos mayores nos decían lo que debíamos hacer. túbaería, pret. v. o túbaera ; n ba - a batyo ná ba pélle i tyóbbo i ábó wela les dije a las personas que permanecieran en sus casas. tue, pref sujo nosotros, nosotras; - batyo somos personas. túe, prono nosotros, nosotras; - tue batyo ba e eriia nosotros somos pai sanos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tue''i', 'S.', NULL, NULL, 'Cl. 12', NULL, 'pI. 1. barro/s rojo/s. 2. límites. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuebáám', 'S.', NULL, NULL, NULL, NULL, 'pi. hojas, papeles. CI. 1 3. Tb. tonta', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuebbe', 'S.', NULL, NULL, 'Cl. 13', NULL, 'pi. aguiluchos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuebbe', 'S.', NULL, NULL, 'Cl. 12', NULL, 'pI. embarazos de pocas semanas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tueéIe', 'S.', NULL, NULL, 'Cl. 13', NULL, 'pI. personas débiles, personas indefensas y apocadas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuehehi', 'S.', NULL, NULL, 'Cl. 12', NULL, 'pI. calmas, amaines. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tueké', 'adj.', NULL, NULL, 'Cl. 12', NULL, 'pi. necios, tontos, bobalicones, igno rantes. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuellá', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'indo otros, otras. Concuerda con las palabras de la ; toatta - otros cuentos, otras historietas', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuenena', 'S.', NULL, NULL, 'Cl. 12', NULL, 'pI. hormigas menudas. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tueppo', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. músicas, melodías. CI. 13. Ej. expr. we bOlle ná o - to aríi e ehullá áó no permitas que las melodías nos dejen sin aliento', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuettáa', 'S.', NULL, NULL, 'Cl. 1', NULL, 'pI. plumas. cuchillos. nava jas. 3. Tb. /o''obbá, to''obbá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuetue', 'adj.', NULL, NULL, 'Cl. 13', NULL, 'pI. bellos, bonitos, buenos, hermosos, agradables. Concuerda con las palabras de la ; o tokkó - las buenas noticias', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuetyi', 's.', NULL, NULL, 'Cl. 12', NULL, 'pi. antílopes. CI. 13. Tb. tobillo. túhía, pret. V. o túhia ; ne - eló empa presté este asiento. túhia, V. prestar; n la - e sótte Ól yo presto mi camisa. Pret. túhía, tú hiesiia. túhiesiia, pret. V. o túhia ; n-e ebuttá ó yo prestaba tu sombrero', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuibbO', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. diablillos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuiítyi', 's.', NULL, NULL, 'Cl. 12', NULL, 'pI. dedos meñiques. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 213 (entradas 5301 a 5325)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tuikíro', 's.', NULL, NULL, NULL, NULL, 'pI. pequeños movimientos. bai les, fiestas. CI. 1 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuilipássi', 's.', NULL, NULL, NULL, NULL, 'pI. chancletas. CI. 13. 322 / tuille', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuille', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. frío abundante. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuimmí', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. camisones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuió', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. hormigas negras medianas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuíoo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. fueguecillos de tres piedras. pequeños fogones. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('túke', 'adj.', NULL, NULL, NULL, NULL, 'pi. muchos, abundantes. Concuerda con las palabras de la CI. 13; tobelo - antílopes muchos. tukessi, pret. v. o tukka ; to ba - a boppé nosotros removíamos el agua, lo bi - e bilabba vosotros removíais los hechos. tukka, v. remover, enturbiar, revolver; o la - a boppé tú revuelves el agua. fastidiar; o la - e bilabba tú fastidias las cosas. Pret. tukki, tu kessi. tukki, pret. v. o tukka ; to ba - a biitá nosotros removimos el aceite', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tukku', 's.', NULL, NULL, NULL, NULL, 'pI. pequeñas selvas. CI. 13. tukolla, v. aclarar, depurar; o boebba a la - a boppé el vinatero depura el agua. Pret. tukori, tukuessi. tukora, v. contentar; o botúkku a la - a batyo ba mmaa bá e eriia wela el alcalde con tenta a todos los habitantes del pueblo. arre glar; to la - e tyóbbo noso tros arreglamos la casa. Pret. tukori, tukuessi. tukori, 1. pret. v. o tukora ; o botúkku a - a batyo el alcalde contentó a la gente, to - o wettya nosotros arreglamos la cabaña. 2. pret. v. o tukol1a ; o boebba a - a boppé el vinatero depuró el agua. T', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('túllée', 'S.', NULL, NULL, 'Cl. 12', NULL, 'pI. tortugas de bosque. CI. 13', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tulufáto', 'S.', NULL, NULL, 'Cl. 12', NULL, 'pi. sulfatos, insumos. CI. 13. tupelOlessi, pret. V. o tupelolla ; o lohebbO lo - a balakOláko el descanso desentumecía a los trabajadores. tupelOlla, v. desentumecer; n la - e hNko ID yo desentumezco mi cuello. Pret. tupelori, tupelOlessi. tupelori, pret. V. o tupelolla ; o IOhebbO 10 - e bene be a batyo el descanso desentume ció los dedos de la gente. tupessi, pret. V. o tuppa ; n -la o lOetto me cansaba con el trayecto. Tb. tyibessi. tupiáera, V. 1. apoyar; imp. we le tupiáere no me apoyes. 2. apuntalar; preso to la - e rikobbe nosotros apuntalamos el árbol del plátano. 3. enlazar; o la - e beatta tú enlazas las historias. Pret. tupiáeriia, tupiáeresiia. tupiáeresüa, pret. V. o tupiáera ; ne - e tyóbbo yo apuntalaba la casa. tupiáeriia, pret. V. o tupiáera. tupiesiia, pret. V. o tuppia ; o bOie áó e la o lOetto nuestro padre nos cansaba con el trayecto. tupiia, pret. v. o tuppia ; elo elako e le este trabajo me cansó. tupOlessi, pret. V. o tupolla ; o tollo to le - el sueño me hacía', NULL, 'o tyib báa', 'Fuente: bubi-español', 'import-script'),
  ('tuppá', 's.', NULL, NULL, NULL, NULL, 'pl. balones, pelotas. encuentros de f útbol. CI. 13. tyebbá / 323 tuppi, pret. v. o tuppa ; to -la o lOetto nos cansamos con el trayecto. tuppia, v. cansar, agotar; o lOetto 10 la le - el trayecto me cansa, me agota. Pret. tupiia, tupiesiia', NULL, 'tyíbbi', 'Fuente: bubi-español', 'import-script'),
  ('tuppio', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. apoyos, soportes. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('túppu', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. salsas, caldos. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tutta', 's.', NULL, NULL, 'Cl. 13', NULL, 'pi. hojas, papeles. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuttú', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. orujo húmedo del dátil, holle jo. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tuua', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. vendas, telas finas. . tya, 1. adv. hasta, solamente; - bá batyo ha tyí solamente están estas personas. 2. adj. numo tres; nabba - tres animales, ketto - o ket to yé - tres veces. 3. morj. " neg. no; n-la pupúl la no madrugo. 4. loe. adv. más que a -la to''ólla - e tyo no habla más que el bubi. Concuerda con las palabras de las Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyáa', 's.', NULL, NULL, 'Cl. 10', NULL, 'sing. garrafa, garrafón. CL 9. tyábba, v. estriarse, romperse; o bosekke bo lá - la tabla de madera se estría. Pret. tyábbi, tyábessi. tyábbi, pret. v. o tyábba ; o botté bo - el árbol se estrió. tyábessi, pret. v. o tyábba ; o botté bo - el árbol se estriaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyakkí', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. pitos, cornetas. Cls. 9 y 10 ; to la óppa i - tocamos los pitos', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyákkó', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. remo. Cls. 9 y 10. Ej. expr. -- bue le bó etya remo remo le hace avanzar. tyakóbia, v. hacer ruido al masticar un ali mento, ronchar. Pret. tyakóbiia, tJakóbiesiia. tyakóbiesiia, pret. v. o tyakóbia ; o biSyólla a - o tolló wela el abuelo ronchaba en el sueño. tyakóbiia, pret. v. o tyakóbia ; sé sibél ló n - hace un momento ronché', NULL, 'kappí', 'Fuente: bubi-español', 'import-script'),
  ('tyakumá', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. verruga/s. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyáló', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. pelo blanco, canas. . Tb. tyánnó', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyánnó', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. canas, pelo blanco. . Tb. tyáló. tyap¡me, s. sing y pI. flauta, trompeta. y 10', NULL, 'tyepelle', 'Fuente: bubi-español', 'import-script'),
  ('tyappa', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. semilla grande con vaína. se usa a veces como sonajero. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyaróm', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. cárceles, prisiones, peniten ciarías, calabozos, celdas. Cls. 9 y 10', NULL, 'tyéUi', 'Fuente: bubi-español', 'import-script'),
  ('tyatyá', 's.', NULL, NULL, NULL, NULL, 'sing. dados, el juego de los dados. Cls. 9 y 10. tyátya, v. brillar, relucir; i nalle i lá - sóté el mármol brilla mucho. Pret. tyátyi, tyátyessi. tyátyessi, pret. v. o tyátya ; o bossó biS áí bo - su cara brillaba. tyátyi, pret. v. o tyátya ; o bobba bo - el suelo brilló. tyatyiiUa, v. fundirse, derretirse; a butá ba lá -la e itóhí el aceite se derrite con el Sol. Pret. tyatyorei, tyatyueseei. tyatyiira, v. fundir, derretir; e itóhí ri lá - a butá el Sol derrite el aceite. Pret. tyatyoriia, tyatyuesiia. tyatyiirei, pret. v. o tyatyolla ; a butá ba - el aceite se derritió. tyatyiiriia, pret. v. o tyatyora ; e itóhí ri - a butá el Sol derritió el aceite. tyatyueseei, pret. v. o tyatyolla ; a butá ba -la e húé el aceite se derretía con el calor. tyatyuesiia, pret. v. o tyatyora ; m ba - a butá mpári derretía el aceite ayer', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 214 (entradas 5326 a 5350)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tyaUá', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. 1. hambre, hambruna. 2. cha pa de zinc. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyé', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. país, patria, nación. territo rio, lugar. Cls. 9 y 10 ; 0 en el mundo, en la vida, ké - we é? ¿dónde estás?', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyé''a', 's.', NULL, NULL, NULL, NULL, 'pi. hojas comestibles de la berenjena. Cl. lO ; i - ya haríbbO las hojas no comestibles de la berenjena', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyebbá', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. sueño/s. Cls. 9 y 10. 324 / tyebólla', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyebólla', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. jabón/jabones, detergen te/s. Cls. 9 y 10', NULL, 'sóppo', 'Fuente: bubi-español', 'import-script'),
  ('tyeíttyi', 's.', NULL, NULL, NULL, NULL, 'sing. cambio. CIs. 9 y 10. tyentyibbia, v. cambiar, mudar; n la - kuua la sússu yo cambio ropa y zapatos, o la - i bon ní o tú cambias tu dine ro. Pret. tyentyibiia, tyentyibiesiia. tyeótyibiesüa, pret. v. o tyentyibbia ; b ; ni - i bonní lÍl yo cambié mi dinero, n-e tyóbbo, me mudé de casa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyekka', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. cordón que se ata en el tobi llo. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyekke', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. orugas de la palmera de aceite. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyekkú', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. ombligo. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyella', 's.', NULL, NULL, NULL, NULL, 'sing. pez de nariz brillante y muy rico mota. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyelle', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. gajo. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyélle', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. cárcel, prisión, penitenciaría, calabozo, celda. Cls. 9 y 10', NULL, 'tyaróm', 'Fuente: bubi-español', 'import-script'),
  ('tyello', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. cascada/s, salto/s de agua. Cls. 9y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyenó', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. agua de cascada, chorro. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyepelle', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. flautas. Cls. 9 y 10', NULL, 't yapelle', 'Fuente: bubi-español', 'import-script'),
  ('tyerú', 's.', NULL, NULL, 'Cl. 10', NULL, 'pI. nipas, chapas de zinc. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyetye', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. espina/s, púa/s. Cls. 9 y 10. Tb. lonorí', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyetye', 'adj.', NULL, NULL, NULL, NULL, 'negro, muy oscuro. Se pospone a los morfemas concordantes de todas las Clases', NULL, 'wiló', 'Fuente: bubi-español', 'import-script'),
  ('tyetyélle', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. molusco univalvo pequeño. Cls. 9 y 10 ; i - i serí o sá boroo los moluscos univalvos son muy ricos. tyetyéra, v. freír, secar. Pret. tyetyéria, tye tyéresiia. Tb. o parabia. tyetyéresiia, pret. v. o tyetyéra ; i kollo n i - las sardinas las freía', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyetyeri', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. cigarra. Cls. 9 y 10. tyetyéria, pret. v. o tyetyéra ; n i - i tyué freí el pescado', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyetyewallé', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. estrellas. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyéútyéu', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. hipo/s. Cls. 9 y 10. t y', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyí', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. calamar/es. Cls. 9 y 10; to la na''a o olla - yé mpa que remos comprar dos calamares. tyí''a, v. dejar atrás, abandonar. depo sitar; to la - e robbo dejamos la escalera, lüe le - tyuíi no me dejéis atrás por favor. Pret. tyí''i, tyí''essi. tyí''essi, pret. v. o tyí''a ; n -yo dejaba atrás, o - tú dejabas atrás, a - él deja ba atrás, to - nosotros dejábamos atrás, 10 vosotros dejabais atrás, ba - ellos dejaban atrás. tyí''i, pret. v. o tyí''a ; to mmaaó ob(i''ó a batyo ba e - pongámonos de pie, que la gente nos ha dejado atrás', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyía', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. hiel/es. Cls. 9 y 10. tyiáán, pret. v. o tyiálla ; i nokkolÍl i''a - e ehurú weJa mis oj os se han quedado en el aire. tyiálelessi, pret. v. o tyiálella ; o botúkku a le - el alcalde me perdonaba. tyiálella, v. disculpar, perdonar, anmistiar. Pret. tyiáleri, tyiálelessi. tyiáleri, pret. v. o tyiálella ; o buatébisapá a - i húbbé el juez perdonó a los ladrones. tyiálessi, pret. v. o tyiálla ; e puá e - o bOllá el perro se quedaba con el niño. tyiálla, v. quedar, alojarse, quedarse con; o botyo quedarse con alguien que está físicamente impedido. Pret. tyiáán, tyiálessi. tyibaan, pret. v. o tyibanna ; nne n ka - e sille sa botyíó yo estoy harto del frío de la noche. tyilelessi I 325 tyibanessi, pret. v. o tyibanna ; to - e sibólló nosotros nos hartábamos de la pobreza. tyibanna, v. estar harto de; to la - e ribiityo nos hartamos de la vida. Pret. tyibaan, tyibanessi. tyibbáa, v. cansarse, agotarse, fatigarse. Pret. tyíbbi, tyibessi. tyíbbi, pret. v. o tyibbáa ; nne n ka - yo es', NULL, 'o tuppa', 'Fuente: bubi-español', 'import-script'),
  ('tyíbbo', 's.', NULL, NULL, NULL, NULL, 'pI. sartas de conchas. CI. 10. tyíbelessi, pret. v. o tyíbella ; o bonatú''o Ól a -la a bi''ó mi hermano mayor temblaba de fiebre. tyíbella, v. temblar, tiritar. Pret. tyíberi, tyíbe lessi. Tb. o kokobbia. tyíberi, pret. v. o tyíbella ; n-yo temblé, o - tú temblaste, a - él tembló, to - noso tros temblamos, lo - vosotros temblasteis, ba ellos temblaron. tyibessi, pret. v. o tyibbáa ; n sessí lá ripotto n- cuando iba a la ciudad me cansaba. tyibiesüa, pret. v. o tyibbia ; a bi''ó ba le - la fiebre me agotaba. tyie''eem, pret. v. o tyiella ; to - e ello bó biityíó aplazábamos el día anoche. tyieem, pret. v. o tyiella ; o biiheppoo a ta le - bOra''o el huésped no me dejó comida. tyíelessi, pret. v. o tyíella ; a batyo n ba - a lokko lábbO a las personas les dejaba sus cosas. tyiella, v. legar, dejar, aplazar; to la - e ello aplazamos el día. Pret. tyieem, tyielessi. tyíella, v. dejar algo para alguien; n la - o buityíi Ól eruua dejo sitio a mi hermano menor. Pret. tyíem, tyíelessi. tyíem, pret', NULL, 'tupessi', 'Fuente: bubi-español', 'import-script');

-- Lote 215 (entradas 5351 a 5375)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tyiétyié', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. estornudo/s. Cls. 9 y 10. tyihébbia, v. estornudar; o tokollo to la - a batyo los picantes hacen estornudar a la gente. Pret. tyihébiia, tyihébiesiia. tyihébiesiia, pret. v. o tyihébbia ; lo vosotros estornudabais. tyihébiia, pret. v. o tyihébbia ; i puá i - los perros estornudaron. tyikela, v. 1. pinchar. 2. fornicar. Pret. tyike ri, tyikelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyikeIeelé', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. talón, talones. Cls. 9 y 10. tyikelessi, pret. v. o tyikela ; n - yo pinchaba, o - tú pinchabas, a - él/ella pin chaba, to - nosotros pinchábamos, 10 - vosotros pinchabais, ba - ellos pinchaban. tyikeri, pret. v. o tyikela ; n yo pinché, o - tú pinchaste, a - él/ella pinchó, to - nosotros pinchamos, lo - vosotros pinchasteis, ba - ellos pincharon', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyikkó', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. fruto silvestre redondo, pequeño, utilizado para fines rituales. disco. Cls. 9 y 10. tyikólessi, pret. v. o tyikólla ; to - a bakobbe nosotros derrumbábamos las plantas del plátano. tyikólla, v. talar, derrumbar; n la - o Mtté yo talo el árbol. Pret. tyikóri, tyikólessi. tyikóri, pret. v. o tyikólla ; to ba - a batté nosotros derrumbamos los árboles. tyilálessi, pret. v. o tyilálla ; n-yo cava ba con, o - tú cavabas con, a -él/ella cavaba con, to - nosotros cavábamos con, 10 - vosotros cava bais con, ba - ellos cavaban con. tyilálla, v. cavar con; n la - isaké yo cavo con un machete, n tyi''a - isaké yo no cavo con ma chete. Pret. tyilám, tyilálessi. tyilám, pret. v. o tyilálla ; a batyele mán ba - o bobba la e bie''e bi ábO los presos cava ron la tierra con sus bocas. tyilelessi, pret. v. o tyilella ; n-yo ente rraba, o - tú enterrabas, a - él/ella enterraba, to - nosotros enterrábamos, lo - vosotros enterra bais, ba - ellos enterraban. 326 / tyUeIla tyUella, v. enterrar, se', NULL, 'n la ha tyíllo', 'Fuente: bubi-español', 'import-script'),
  ('tyinálOIIáa', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. tataratataranietos. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyio', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. gancho/s, garfio/s trai dor/es. Cls. 9 y 10. tyiOlea, v. peinarse, cepillarse el pelo; n la me peino, me cepillo el pelo. Pret. tyiOlei, tyio leseei. tyiOlei, pret. v. o tyiolea· ; n-me peiné, o - te peinaste, a - se peinó, etc., n ta - no me peiné, o ta - no te peinaste, a ta - no se peinó, etc., n ka - me he peina do, o''a - te has peinado, a''a - se ha peinado, etc. tyiOleseei, pret. v. o tyiolea ; n-la e bene lÍl me peinaba con mis dedos, o Mllá a - kóri a séi beakki el niño se peinaba porque tenía piojos. tyiOlessi, pret. v. o tyiolla ; n-o MUá yo peinaba al niño, o - e besup pa IÍlla e tyiori peinabas mis trenzas con el peine', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyioIla', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. huérfano/s; i - yá e eriia lÍl los huérfanos de mi país/pueblo. Clases 9 y 10. tyiOlla, v. peinar; n la - e esilla o peino tu pelo. Pret. tyiori, tyiolessi. tyiOlOlessi, pret. v. o tyiololla ; n-e sipóssi lÍl yo despeinaba a mi gato. tyiolOlla, v. desgreñar, despeinar; to la - o bulla nosotros despeinamos a la doncella. Pret. tyiolori, tyiololessi. tyiOlori, pret. v. o tyiololla ; n-e bisílla bi o boyolla lÍl yo despeiné los cabellos de mi abuelo. tyiOri, 1. s. sing. y pi. peines, cepillo de púas. Cls. 9 y 10. 2. pret. v. o tyiolla ; elo ebari n-e esílla lÍl esta mañana peiné mi pelo. tyipóbba, v. fracasar; n la sélla o - no hago más que fracasar. Pret. tyipób bi, tyipóbessi. tyipóbbi, pret. v. o tyipóbba ; n-yo fra casé, o - tú fracasaste, a - él fracasó, to - noso tros fracasamos, 10 - vosotros fracasasteis, ba ellos fracasaron. tyipóbessi, pret. v. o tyipóbba ; n-yo fracasaba, o - tú fracasabas, a - él/ella fracasaba, to - nosotros fracasábamos, 10 - vosotros fraca sabai', NULL, 'kónna', 'Fuente: bubi-español', 'import-script'),
  ('tyippa', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. jineta/s, gato/s salvaje/s. Cls. 9 y 10. tyíri, pret. v. o tyílláa ; n-me fui, o - te fuiste, a - se fue, to - nos fuimos, lo - os fu isteis, ba - se fueron. tyíríi, pret. v. o tyilIáa ; n-e bekokkó rula e billo ru arranqué de la tierra mis malangas y mis ñames. tyitá, v. manchar; Iii la - e etapóllo vosotros mancháis la lona. Pret. tyití, tyitessi. tyitessi, pret. v. o tyitta ; n-yo arrasaba, o - tú arrasabas, a - él arrasaba, to - nosotros arrasábamos, lo - vosotros arrasabais, ba - ellos arrasaban. tyitessi, pret. v. o tyitá ; n-e ribatyu r ula biitá mancha ba mi braga con aceite. tyití, pret. v. o tyitá ; o - e sotte o manchaste tu camisa. tyitobia, v. empujar; we le tyitobie no me empujes. Pret. tyitobiia, tyitobiesiia. tyitobiesiia, pret. v. o tyitobia ; tue ammaa to - o motóo todos nosotros empujábamos el coche. tyitobiia, pret. v. o tyitobia ; m bo - o bokoé ee ké taa a kuerí é empujé al bracero por eso cayó. tyitóra, v. atormentar, perturbar; elo elabba e lá le - e', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyítyá', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. genital/es fe menino/s. Cls. 9 y 10; e mme ká tyu i ikíria é [e mme ká tJúíkíriá él? tyúíkíríá bale''é, la batyapotyapo, i - í óóri señora, ¿qué hemos movido? Hemos movido los testículos, y los penes, los genitales femeninos están ya maduros. tyo, mor! numo cinco; tyekkú yé - cinco ombli gos. Se usa sólo para la clase 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyo''u', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. venados, cabra montés. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyobbó', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. iguana/s, reptil/es comesti ble/s. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyóbbo', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. casas, moradas, hogares. Cls. 9 y 10; e - í kaaí la casa de las enfermedades, el hospital, i - yí kaaí las casas de las enfermeda des, los hospitales. tyokaam, pret. v. o tyókalla ; o motóii bo le - el coche chocó conmigo. tyokalessi, pret. v. o tyókalla ; e kobinna a - a batyo e riallá el gobernador chocaba la mano a las personas. tyokalIa, v. chocar, colisionar; o motóo bo lá - a batté el coche choca contra los árboles. Pret. tyókaam, tyó kalessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyokka', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. humedades. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyokké', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. raja por la que sale la savia de la palmera datilera. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyokko', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. dinero, chavos, monedas, etc. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyokkó', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. verano, estío. Cls. 9 y 10; e - é húé sótté el estío es muy cálido', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyókko', 's.', NULL, NULL, 'Cl. 10', NULL, 'pi. cadenas. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyollá', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. reuma, artrosis. Cls. 9 y 10. E}. e xpr. ne tyollá tengo reuma, estoy con reuma', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyommaa', 'adv.', NULL, NULL, NULL, NULL, 'nunca, jamás; we''a le elelle no me llames jamás', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyonnó', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. lugar recóndito, rincón. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyooa', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. termitas blancas, comején. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyoom', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. vergüenza, rubor. Cls. 9 y 10. E}. expr. o tyí o''áa - no tienes vergüenza. tyopálessi, pret. v. o tyopálla ; e kólló ne - néri yo pinchaba la rata de bosque con un clavo. tyopálIa, v. pinchar con algo; to la - o bora''o tokko nosotros pin 328 / tyopári chamos la comida con un clavo. Pret. tyopári, tyopálessi. tyopári, pret. v. o tyopálla ; n pinché con algo, o - pinchaste con algo, a - pinchó con algo, to - pinchamos con algo, 10 - pinchas teis con algo, ba - pincharon con algo. tyopessi, pret. v. o tyoppáa ; n-yo pinchaba, o - tú pinchabas, a - él pinchaba, to - nosotros pinchábamos, 10 - voso tros pinchabais, ba - ellos pin chaban', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyoppá', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. faj os de billetes. Cls. 9 y ID. tyoppáa, v. picar, pinchar, punzar. for nicar. Pret. tyoppíi, tyopessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyóppe', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. hachas grandes. Cls. 9 y 10. tyoppíi, t. s. sing. y pi. puntas. Cls. 9 y 10. 2. pret. v. o tyoppáa', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyoppo', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. loco, trastornado, chifla do, chalado. locura, demencia. Cls. 9 y 10; 010 botyo e - esta persona está loca, trastornada', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyopu', 's.', NULL, NULL, 'Cl. 9', NULL, 'sing. destajo, estajo. y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 216 (entradas 5376 a 5400)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('tyori', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. sarna, tiña. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyoru', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. ovejas. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyotyi', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. iglesias, capillas, catedrales. Cls. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyotyo', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. ballenas. Cls. 9 y 10; i - kotee i lá e elo''á wela otee las grandes ballenas están en el océano', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyotyo', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. leña candente, tizón. Cls. 9 y ID. tyütyóbia, v. sorber, chupar; e sipórí sí la - a abelle bá e puá el cabrito chupa las ubres de la perra. Pret. tyotyóbiia, tyotyóbiesiia. tyotyóbiesiia, pret. v. o tyotyóbia ; n-yo chupaba, o - tú chupabas, a - él chupa ba, to - nosotros chupábamos, 10 - vosotros chupabais, ba - ellos chupaban. tyotyóbüa, pret. v. o tyotyóbia ; n- sorbí, o - sorbiste, a - sorbió, to - sorbimos, lo - sorbisteis, ba - sorbieron', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyotyounó', 's.', NULL, NULL, NULL, NULL, 'sing. y pi. planta/s que forma/n matas y de hojas elíptico-lanceoladas dispuestas helicoidalmente. Clases 9 y 10. tyu''úbba, v. medrar, enriquecerse; a batyo ba lá - la e bilako las personas se enriquecen con los traba jos. Pret. tyu''úbbi, tyu''úbessi. tyu''úbbi, pret. v. o tyu''úbba ; a batyo ba - las personas se han enri quecido. tyu''úbbia, v. enriquecer. Pret. tyu''úbiia, tyu ''úbiesiia. tyu''úbessi, pret. v. o tyu''úbba ; e kobinna e - la e bilako bi a batyo el gobier no se enriquecía con los trabajos de las personas. tyu''úbiesiia, pret. v. o tyu''úbbia ; 10 ba - a baísso vosotros enriquecíais a las mujeres. tyu''úbüa, pret. v. o tyu''úbbia ; o bo - tú le enriqueciste', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyua', 's.', NULL, NULL, 'Cl. 10', NULL, 'pi. lavabos, pilas. bañeras. lava doras. . tyuáán, pret. v. o tyuánna ; o mmé o ata lá - tu madre no lo permitió. tyuánessi, pret. v. o tyuánna ; o ri - e ripukké tú permitías la falta de respeto. tyuánna, v. permitir, tolerar, propiciar; we a batyo ba ori o no per mitas que las personas mueran', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyuappo', 's.', NULL, NULL, 'Cl. 13', NULL, 'pI. cruce. . * 0-pua en el cruce. tyuára, v. facilitar, promover, permitir; e tyok kó e lá - ná a batyo ba lá hMmabi''o el verano permite que las personas se alegren. Pret. tyuáría, t y uáresiia. tyuáresiia, pret. v. o tyuára ; e kobinna a - ná e bilabba bi lá etta lelle el gobierno permitía que las cosas funcionaran bien. tyuária, pret. v. o tyuára ; o boie lÍl a ta - na n heri obitábítta mi padre no permitió que yo fu era militar. tyúbiera, v. pedir, suplicar, rogar. Pret. tyú bieriia, tyúbieresiia. tyúbieresiia, pret. v. o tyúbiera ; oboie a - o botúkku el hombre suplicaba al alcalde. tyúbieriia, pret. v. o tyúbiera ; a le - o waíssolÍl me suplicó mi esposa. tyuuri / 329', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyué', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. peces, pescado. els. 9 y 10. tyuhela, v. regalar; o wetta ID a la - o bOllá mi hermana regala algo al niño. dar. ofrecer. Pret. tyuheri, tyuhelessi. tyuhelessi, pret. v. o tyuhela ; a balako láko to ba - lokko mpári a los trabajadores les regalábamos cosas ayer. tyuheri, pret. v. o tyuhela ; m bo - o bollá regalé algo al niño', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyuíi', 'loc.', NULL, NULL, NULL, NULL, 'adv. por favor, piedad; e''era le boppé dame agua, por favor', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyuíune', 's.', NULL, NULL, NULL, NULL, 'pI. cines, locales de cine, películas. el. 13. tyukea, v. enturbiarse ; a boppé ba lá -la o lóllá el agua se enturbia con la lluvia. Pret. tyukei, tyukeseei. tyukei, pret. v. o tyukea ; e bilabba bi - mpári los hechos se enturbiaron ayer. tyukeseei, pret. v. o tyukea ; a bo''á ba - la e pullá las aguas del mar se enturbiaban con la tormenta. tyukessi, pret. v. o tyukka ; a bOllá ba a boppé los niños revolvían el agua. tyukka, v. revolver. Pret. tyukki, tyukessi. tyukki, pret. v. o tyukka ; n-revolví, o - revolviste, a - revolvió, to - revolvimos, 10 revolvisteis, ba - revolvieron. tyulessí, pret. v. o tyuulá ; n-yo tiraba al suelo, o - tú tirabas al sue lo, a - él tiraba al suelo, to - nosotros tirábamos al suelo, 10 - vosotros tirabais al suelo, ba - ellos tiraban al suelo. tyupaera, v. apuntalar; n la - apuntalo, o la apuntalas, etc. Pret. tyupaeriia, tyupaeresiia. tyupaeresiia, pret. v. o tyupaera ; n apuntalaba, o - apuntalabas, etc. tyupaeriia, pret. v. o tyupaera ; n apuntalé, o -', NULL, 'o petyobaera', 'Fuente: bubi-español', 'import-script'),
  ('tyussú', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. hormiga roja. els. 9 y 10. tyútya, v. ayudar a caminar o a avanzar, ani mar. Pret. tyútyía, tyútyesiia. tyutyera, v. arrimarse; - le bi''o arrímate a mÍ. Pret. tyutyeriia, tyutyeresiia. tyutyeresiia, pret. v. o tyutyera ; a batyo ba le - bi''o las personas se arrimaban a mÍ. tyutyeriia, pret. v. o tyutyera ; n ta bó - bi''o tyommaa no me arrimé a él nunca. tyútyesiia, pret. v. o tyútya ; e bilabba n bi - los asuntos, yo ayudaba a que avanzaran. tyútyía, pret. v. o tyútya ; 010 botyo n ka bii - sé sibélló esta persona le ayudé a caminar hace un momen tito', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyutyú', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. 1. hormiga roja. 2. orujo. els. 9 y 10', NULL, 'tyussú', 'Fuente: bubi-español', 'import-script'),
  ('tyutyú''ú', 's.', NULL, NULL, NULL, NULL, 'sing. y pI. experiencia. orgu llo. el. 9 y 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('tyútyulé', 'adv.', NULL, NULL, NULL, NULL, 'l. ahora, ahora mismo. 2. por favor, ¡piedad! tyutyúra, v. conducir; n la - motóii yo con duzco un coche. Pret. tyutyúriia, tyutyúresiia. tyutyúresiia, pret. v. o tyutyúra ; ii rikiitye tú conducías un camión. tyutyúriia, pret. v. o tyutyúra ; ii ri - e rikiitye tú lo condujis te, el camión. tyuulá, v. tirar al suelo, derrumbar. Pret. tyuu rí, tyulessÍ. Ej. exp. na bórebóla ne bO tyúúlá, na bósakatiJ ne bóppá itááé si es un rebolano le tiro al suelo, si es un basakateño le lanzo una piedra. tyuuri, pret. v. o tyuulá ; n- tiré al suelo, o - tiraste al suelo, a - tiró al suelo, tii - tirarnos al suelo, 10 - tirasteis al sue lo, ba - tiraron al suelo', NULL, 'dyító, lála, láólé, nkuáhóóle', 'Fuente: bubi-español', 'import-script'),
  ('uhá', 's.', NULL, NULL, NULL, NULL, 'sing. hueso. CI. 7. uhera, v. lanzar, tirar, arrojar; e puá n la e ite al perro le lanzo una pie dra. Pret. uheria, uheresiia; o - botyo o bobba puá tirar a alguien al suelo. uheresiia, pret. v. o uhera ; o obitya n bo - lóólÍl al ratón le lanzaba un leño. uheria, pret. v. o uhera ; n e - e akákka yo lancé el cubilete de coco. uhOlea, v. reanimarse, prepararse; i húúa i la - o hella ripotto el público se prepara para ir a la ciudad. Pret. uhOlei, uhOleseei. uhOlei, pret. v. o uhOlea ; ba - bakasso te preparaste pronto. uhOleseei, pret. v. o uhOlea ; i húúa i - o hella obáám el público se preparaba para ir a la finca. úi, pret. v. o úa ; e bilabba bi e - los asuntos fue ron pospuestos. ukalla, v. abrazar; n la - o Mtté yo abrazo al árbol. Pret. ukari, ukalessi; le abrázame; we le -le no me abraces; - bO abrázale; we bo - le no le abraces. ukessi, pret. v. o ukka ; n-e béakká la i pillá yo recogía las almendras y los dátiles. ukessi, pret. v. o ukká ; e pullá o obílla la tormenta movía l', NULL, 'euhá', 'Fuente: bubi-español', 'import-script'),
  ('uku', 'antrop.', NULL, NULL, 'Cl. 13', NULL, 'que probablemente provenga de Tokko. Se localiza en Rebola. tukuessi, l. pret. v. o tukora ; o bOllá a - o oberíi áí el niño contentaba a su madre. 2. pret. v. o tukol la ; balo batyo ba - e bilabba mpári estas personas aclaraban las cosas ayer. tullé, prono pi. los otros, las otras. Concuerda con las palabras de la ; o toatta, o los cuen tos, los otros', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Url', 'antrop.', NULL, NULL, NULL, NULL, 'que ofrece dos significados. En primer lugar, se referirá a alguien que reúne si tenemos en cuenta el pret. del v. o ulla. En segun do lugar, úrí significa "lugar". Se localiza en Rebola. url, pret. v. o ulla ; n bi - e bireótya cogí las naranjas, reuní las naranjas. uríi, pret. v. o ulláa ; ba - o bolláa bo e eriia ellos juzgaron el pro blema del pueblo. usólla, v. nombrar, mencionar, mentar, pronunciar; o mmása lÍl a la - a balak{}láko ba be mi jefe nombra a los nuevos trabajadores. desig nar. Pret. usóri, usuessi. usóri, pret. v. o usólla ; o mmása lÍl a ba - a balak{}láko ba he mi jefe nom bró a los nuevos trabajadores. usuessi, pret. v. o usólla ; n - yo nombraba, o - tú nombrabas, a - él nombra ba, to - nosotros nombrábamos, lO - vosotros nombrabais, ba - bá úsúeessi] ellos nombraban. utaelessi, pret. v. o utaella ; a abitábítta ba - e eriia los mili tares rodeaban el pueblo. utaella, v. rodear; a abitábítta ba la - a batyo los militares rodean a la gente. Pret. utaeri, utaelessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('utaityi', 's.', NULL, NULL, NULL, NULL, 'sing. mes de marzo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('utamoote', 's.', NULL, NULL, NULL, NULL, 'sing. mes de febrero. el. 3. utessi, pret. v. o utta ; o bOllá a - i sOllo el niño vertía la sal. utta, v. 1. verter, echar al suelo; n la - a bop pé yo vierto el agua al suelo. 2. Rodear, invadir. Pret. utyi, utessi. utya, v. buscar, rastrear, indagar, explorar; to la - e Rere nosotros buscamos a Rere. Pret. utyi, utyessi. utyelessi, pret. v. o utyera ; n bo - peppe le buscaba remedio. utyella, v. buscar para alguien; n la - botyo babba ha lokke busco un lugar para que alguien duerma. Pret. utyia, utyesiia. utyeri, pret. v. o utyella ; o buityíi lÍl a le - eruua mi hermanito me buscó sitio. utyesiia, pret. v. o utyella ; to - a batyo bá''a IÍlmetyi bo bá nosotros buscábamos a las personas que fueron detenidas. utyessi, pret. v. o utya ; n ri - e raatyé yo buscaba la cama. utyi, 1. pret. v. o utya ; n-o botyo {} yo busqué a tu pariente. 2. pret. v. o utta ; lO - a boppé vosotros vertisteis el agua. utyia, pret. v. o utyella ; o wetta { } a - e emankolOsi áí tu hermana buscó su brazalete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Vabé', 'antrop.', NULL, NULL, NULL, NULL, 'plural de abé. Debería escribirse Babé si tenemos en cuenta que la grafía "v" es escasa en lengua bubi. Se locali za en Bocoricho', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Viñamala', 'antrop.', NULL, NULL, NULL, NULL, 'compuesto por el verbo o bi nya y el sustantivo plural ma ''alá. Vinyama''alá se localiza en Balachá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Vodela', 'antrop.', NULL, NULL, NULL, NULL, 'obtenido a partir del verbo o bode''e/a. Vode''ela está localizado en Belebú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wa', 'conec.', NULL, NULL, NULL, NULL, 'prep. de; boatta - batyo noticia de la gente, botyo - e eriia persona del mismo pueblo, paisano. Concuerda con las palabras de las Cls. l y 3. wáa, v. morir, fallecer; to la - la e sille nosotros morimos de frío. Pret. wéi, wessi', NULL, 'bua', 'Fuente: bubi-español', 'import-script'),
  ('wáae', 'conj.', NULL, NULL, NULL, NULL, 'pero, sin embargo; o botyo a tyá la to''ólla - a le o''áa la persona no habla pero entiende', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 217 (entradas 5401 a 5425)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('waaka', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. epidemia, peste. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('waakká', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. chichón, absceso. ; o - bo e polló el chichón de la frente', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Waba', 'antrop.', NULL, NULL, NULL, NULL, 'que parece el resultado de la vela rización de Mabba. Se localiza en Lubá. Wahobe, antrop. obtenido a partir de baobbe. Debería escri birse Waobbe. Se localiza en Batete', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('waíribbo', 'S.', NULL, NULL, 'Cl. 1', NULL, 'sing. espíritu guardián. mujer que vela por alguien. protectora. . Tb. muarírimo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('waísso', 'S.', NULL, NULL, 'Cl. 2', NULL, 'sing. mujer, esposa. Cl. l. Tb. wari, muára, muadyána', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wáka', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. paseo, vagabundeo. ; na helláa o - voy de paseo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wakákka', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. árbol de ramitas delgadas. . Tb. bualuikk', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wakalekko', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. cocotero, coco. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wakalelé', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. transeúnte. caminante. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wakatyullé', 'S.', NULL, NULL, 'Cl. 2', NULL, 'sing. persona mayor y conocedora de la cultura de su comunidad. Cl. l', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wakká', 's.', NULL, NULL, 'Cl. 3', NULL, 'sing. belleza, hermosura. orgu llo. ; o - wá e eriia el orgullo del pueblo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wakóo', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. coscorrón. capón. . Tb. sisula', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('walállo', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. intemperie, fuera, exterior. . walessi, pret. V. o waIláa ; o bOllá a - o losisi lo o oberíi áí el niño moria por la nostalgia de su madre', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wallá', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. grupo, legión, pandilla, asocia ción, cuadrilla, club. conjunto, colección. . walláa, v. morir de; to la - e tyallá nosotros morimos de hambre. Pret. warí, waIessi', NULL, 'buallá', 'Fuente: bubi-español', 'import-script'),
  ('wallée', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. enfado, enojo. ', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wálló', 'S.', NULL, NULL, 'Cl. 3', NULL, 'sing. arena. ', NULL, 'bOáló', 'Fuente: bubi-español', 'import-script'),
  ('wanabílla', 'S.', NULL, NULL, 'Cl. 2', NULL, 'sing. bailadora. Cl. l. 338 I wanaburú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wanaburú', 'adj.', NULL, NULL, NULL, NULL, 'sing. sabedor de noticias o chis mes. el. I', NULL, 'buana burú', 'Fuente: bubi-español', 'import-script'),
  ('wanapana', 's.', NULL, NULL, NULL, NULL, 'sing. estudiante, alumno. persona con conocimiento. el. 1. wanná, int. ¡cuidado!', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('waótalla', 's.', NULL, NULL, NULL, NULL, 'sing. un duro. el. 3. warí, 1. s. sing. mujer, esposa. el. I. Tb. muára, waísso, muadyána. 2. pret. v. o walláa ; a batyo ba mm aa ba - e tyal lá todas las per sonas murieron de hambre', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('waríballá', 's.', NULL, NULL, NULL, NULL, 'sing. 1. cónyuge. 2. rival. el. I. warubba, v. incendiarse, quemarse; e tyotyi e lá - la iglesia se incendia. Pret. warubbi, waru bessi. warubbi, pret. v. o warubba ; e tyóbbo e - la casa se incendió. warubessi, pret. v. o warubba ; i kuua i - la ropa se quemaba', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wásibé', 's.', NULL, NULL, NULL, NULL, 'sing. topo del inglés west bay, hoy Lubá. el. 3; 0-Lubá, n la helláa o - voy a Lubá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wátéte', 'S.', NULL, NULL, NULL, NULL, 'pi. camaleón. el. 10', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('watya', 'S.', NULL, NULL, NULL, NULL, 'sing. picor, quemazón. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('watyatya', 'S.', NULL, NULL, NULL, NULL, 'sing. brillo, centelleo, que tiene buen aspecto. el. 3. Tb. ebuera buera', NULL, NULL, 'Fuente: bubi-español', 'import-script');

-- Lote 218 (entradas 5426 a 5446)
INSERT INTO dictionary_entries (
  bubi, word_type, gender, number, nominal_class, plural_form,
  spanish, examples, variants, notes, created_by
) VALUES
  ('Waya', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse wehá. Se localiza en Baney. we, 1. prej : sujo tú; - le betelle tú no me esperes. 2. fo rmo verbo eres/estás; - botyo, - ripotto eres una persona, estás en la ciudad. we, prono tú; - we botyo tú eres una persona, - wti tákkió tú eres quien manda. wéán, pret. v. o wéánna ; a baie ba - a abe ki ba abO los hombres pesaron sus sacos. wéánessi, pret. v. o wéánna ; lo ba - a abeki ba e bimmálOtO vosotros pesabais los sacos de cacao. wéánna, V. pesar; to la bi - e billo nosotros pesamos los ñames. Pret. wéán, wéánessi', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('webba', 'S.', NULL, NULL, NULL, NULL, 'sing. eructo, regurgitación. el. 3. Tb. buebá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('webbe', 'S.', NULL, NULL, NULL, NULL, 'sing. congoja, tristeza. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wehá', 'S.', NULL, NULL, NULL, NULL, 'sing. árbol que da el fruto IIamado rehá parecido al melocotón. el. 3. Tb. buehá. wéi, pret. v. o wáa ; i ko''e ku baa i - la o bokaaí todas las gallinas murieron por la plaga', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Weka', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Wtika. Fue el sobrenom bre del que fuera jefe del poblado de Baney y destacado político Bubi D. Pastor Toraó Sikara. Se localiza en Baresó. weka, 1. s. sing. controversia. disputa. cuestación. 2. antrop. persona que lo cuestiona todo. el. 3 ; o peta cuestionar', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wekéke', 's.', NULL, NULL, NULL, NULL, 'sing. caracol pequeño. el. . wela, morj: adv. en, dentro, centro; e bilabba bié tyo - bié to''ú las cosas tradicionales son serias, t i ripotto - en el centro de la ciudad. welebba, v. tener buena salud, estar bien, mejorar; a bollá ba lá - la e btilallo los niños tienen buena salud con los medicamentos. Pret. welebbi, welebessi. welebbi, pret. v. o welebba ; n tyi a - no tenía buena salud, estaba enfermo. welebessi, pret. V. o welebba. Término en desuso', NULL, 'buekéke', 'Fuente: bubi-español', 'import-script'),
  ('wellá', 'S.', NULL, NULL, NULL, NULL, 'sing. lluvia. el. 3. Tb. l óllá', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('welláa', 's.', NULL, NULL, NULL, NULL, 'sing. vientre, barriga, estómago. el. 3', NULL, 'buelláa', 'Fuente: bubi-español', 'import-script'),
  ('welle', 'S.', NULL, NULL, NULL, NULL, 'sing. salud. el. 3; ne - estoy bien de salud', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wem', 'S.', NULL, NULL, NULL, NULL, 'sing. vino. el. 3. Tb. wilóbíllo', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('werí', 'S.', NULL, NULL, NULL, NULL, 'sing. hormiga roja grande. carácter, temperamento, forma de ser. el. 3. witáeri / 339', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wéso''o', 's.', NULL, NULL, NULL, NULL, 'sing. compañero, amigo, colega, cama rada. el. I. wessi, pret. v. o wáa ; i ko''e ku baa i - la o bokaaí todas las gallinas morían por la plaga', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wetta', 's.', NULL, NULL, NULL, NULL, 'sing. hermana, prima. el. 1', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wettya', 's.', NULL, NULL, NULL, NULL, 'sing. cabaña, choza, *casa. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wetyetyú', 's.', NULL, NULL, NULL, NULL, 'sing. lagarto, lagartija. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wewe', 's.', NULL, NULL, NULL, NULL, 'sing. y adj. guapo/a, bello/a, hermoso/a. el. I. wihó, 1. s. sing. rebeldía, travesura, testarudez. 2. adj. cabezudo, cabezota. el. 3', NULL, 'buihó', 'Fuente: bubi-español', 'import-script'),
  ('wikíra', 's.', NULL, NULL, NULL, NULL, 'sing. 1. columpio. 2. movimiento. el. 3. Tb. esikiri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('Wilasi', 'antrop.', NULL, NULL, NULL, NULL, 'que debería escribirse Wiláasi iláasa: vaguear). Se localiza en Moeri', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('wilówillo', 's.', NULL, NULL, NULL, NULL, 'sing. vino tinto. el. 3. Tb. wem. wínaam, pret. v. o wínanna ; a baie ba - e bittá los hombres ganaron la guerra. wínanesia, pret. v. o wínanna ; n bo - o wéso''o lÍl yo ganaba a mi amigo. wínanna, v. ganar, vencer; 10 la - a batyo ba mmaa vosotros ganáis a todos. Pret. wínaam, wínanesia', NULL, 'o ló''a', 'Fuente: bubi-español', 'import-script'),
  ('winoo', 's.', NULL, NULL, NULL, NULL, 'sing. energía, fuerza, facultad, autoriza ción. el. 3. Tb. t(j''ú', NULL, NULL, 'Fuente: bubi-español', 'import-script'),
  ('witáeri', 's.', NULL, NULL, NULL, NULL, 'sing. encuentro, concentración. el. 3', NULL, NULL, 'Fuente: bubi-español', 'import-script');

COMMIT;

-- ============================================
-- RESUMEN DE PARTE 4
-- ============================================

DO $$
DECLARE
  total_count INTEGER;
BEGIN
  SELECT COUNT(*) INTO total_count FROM dictionary_entries;
  
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'PARTE 4 DE 4 COMPLETADA';
  RAISE NOTICE '===========================================';
  RAISE NOTICE 'Total acumulado: % entradas', total_count;
  RAISE NOTICE '===========================================';
  IF total_count = 5446 THEN
    RAISE NOTICE '✅ IMPORTACIÓN COMPLETA - 5446 entradas';
  ELSE
    RAISE NOTICE '⚠️  Total actual: %, esperado: 5446', total_count;
  END IF;
  RAISE NOTICE '===========================================';
END $$;
