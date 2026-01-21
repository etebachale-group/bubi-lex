// Lección 1: Introducción y Saludos - Contenido Completo

export const LESSON_1_CONTENT = {
  id: 1,
  title: "Lección 1: Introducción y Saludos",
  
  // Vocabulario con pronunciación y ejemplos
  vocabulary: [
    {
      bubi: "botyo",
      spanish: "persona",
      ipa: "bo.tʃo",
      class: "Cl. 1 (singular)",
      plural: "batyo (Cl. 2)",
      example: "Botyo osossa ribúkku",
      exampleTranslation: "La persona lee un libro",
      notes: "Clase nominal 1 para personas singulares"
    },
    {
      bubi: "batyo",
      spanish: "personas",
      ipa: "ba.tʃo",
      class: "Cl. 2 (plural)",
      singular: "botyo (Cl. 1)",
      example: "Batyo be tyá",
      exampleTranslation: "Las personas van",
      notes: "Clase nominal 2 para personas plurales"
    },
    {
      bubi: "bótó",
      spanish: "casa",
      ipa: "bo.to",
      class: "Cl. 5",
      plural: "mabótó (Cl. 6)",
      example: "Bótó lá móló",
      exampleTranslation: "La casa tiene agua",
      notes: "Sustantivo común, clase 5"
    },
    {
      bubi: "móló",
      spanish: "agua",
      ipa: "mo.lo",
      class: "Cl. 3",
      example: "Móló mó telle",
      exampleTranslation: "El agua es buena",
      notes: "Sustantivo líquido, clase 3"
    },
    {
      bubi: "lóbà",
      spanish: "día",
      ipa: "lo.ba",
      class: "Cl. 11",
      example: "Lóbà ló telle",
      exampleTranslation: "El día es bueno",
      notes: "Tiempo, clase 11"
    },
    {
      bubi: "èrí",
      spanish: "árbol",
      ipa: "e.ri",
      class: "Cl. 7",
      plural: "bièrí (Cl. 8)",
      example: "Èrí é búkku",
      exampleTranslation: "El árbol es grande",
      notes: "Naturaleza, clase 7"
    },
    {,
      answer: "El agua es buena",
      hint: "móló = agua, mó = es (concordancia), telle = bueno/buena"
    },
    {
      type: "fill-blank",
      question: "Completa: 'Botyo o_____ ribúkku' (La persona lee un libro)",
      answer: "sossa",
      hint: "El verbo 'leer' es 'sossa', con prefijo o- en presente"
    },
    {
      type: "plural",
      question: "¿Cuál es el plural de 'bótó' (casa)?",
      answer: "mabótó",
      hint: "Clase 5 (singular) → Clase 6 (plural) con prefijo ma-"
    }
  ]
};
    correct: 2,
      explanation: "El Bubi tiene 7 vocales: a, e, ɛ, i, o, ɔ, u. Esto es más que el español (5 vocales)."
    },
    {
      question: "¿Qué prefijo usa la Clase 1 para personas singulares?",
      options: ["ba-", "bo-", "mo-", "li-"],
      correct: 1,
      explanation: "La Clase 1 usa el prefijo 'bo-' para personas singulares. Ejemplo: botyo (persona)."
    }
  ],

  // Ejercicios prácticos
  exercises: [
    {
      type: "translation",
      question: "Traduce al español: 'Móló mó telle'"tyo' es 'batyo'. Cambia de Clase 1 (bo-) a Clase 2 (ba-) para personas plurales."
    },
    {
      question: "¿Qué significa 'Bótó lá móló'?",
      options: ["La persona tiene agua", "La casa tiene agua", "El agua está en la casa", "La casa es grande"],
      correct: 1,
      explanation: "'Bótó lá móló' significa 'La casa tiene agua'. bótó=casa, lá=tiene, móló=agua."
    },
    {
      question: "¿Cuántas vocales tiene el idioma Bubi?",
      options: ["5 vocales", "6 vocales", "7 vocales", "8 vocales"],
  ar de otros temas."
  ],

  // Quiz progresivo (5 preguntas)
  quiz: [
    {
      question: "¿Qué significa 'botyo' en español?",
      options: ["casa", "persona", "agua", "día"],
      correct: 1,
      explanation: "'botyo' significa 'persona' (singular). Es de la Clase 1 con prefijo bo-. El plural es 'batyo' (Clase 2)."
    },
    {
      question: "¿Cuál es el plural de 'botyo' (persona)?",
      options: ["mabotyo", "batyo", "bibotyo", "lobotyo"],
      correct: 1,
      explanation: "El plural de 'boLos adjetivos copian el prefijo del sustantivo.",
      examples: ["bótó búkku (casa grande)", "mabótó mabúkku (casas grandes)"]
    }
  ],

  // Notas culturales
  culturalNotes: [
    "El Bubi es una lengua bantú hablada en la isla de Bioko, Guinea Ecuatorial.",
    "Es una de las lenguas más antiguas de la familia nigero-congolesa.",
    "La ubicación insular ha preservado aspectos evolutivos únicos.",
    "Los saludos son muy importantes en la cultura Bubi.",
    "Se pregunta por la familia antes de hablcontent: "Los tonos cambian el significado. Tono alto (´) y tono bajo (`).",
      examples: ["móló (agua) - tono alto en mó", "lóbà (día) - tono alto en ló"]
    },
    {
      title: "Clases Nominales - Introducción",
      content: "El Bubi usa prefijos para clasificar sustantivos. Clase 1 (bo-) para personas singulares, Clase 2 (ba-) para personas plurales.",
      examples: ["botyo (persona) → batyo (personas)", "Prefijo cambia: bo- → ba-"]
    },
    {
      title: "Concordancia Básica",
      content: ""Tonos Alto y Bajo",
      "so.sa",
      type: "verbo",
      conjugation: "osossa (presente)",
      example: "Na osossa",
      exampleTranslation: "Yo leo",
      notes: "Verbo con prefijo o- en presente"
    }
  ],

  // Gramática explicada paso a paso
  grammar: [
    {
      title: "Sistema de 7 Vocales",
      content: "El Bubi tiene 7 vocales: a, e, ɛ (e abierta), i, o, ɔ (o abierta), u. Esto es diferente del español que solo tiene 5.",
      examples: ["e cerrada: telle (bien)", "ɛ abierta: èrí (árbol)"]
    },
    {
      title:       spanish: "palabra",
      ipa: "lo.bo.ra",
      class: "Cl. 11",
      example: "Lobora ló telle",
      exampleTranslation: "La palabra es buena",
      notes: "Comunicación, clase 11"
    },
    {
      bubi: "telle",
      spanish: "bien, bueno",
      ipa: "te.le",
      type: "adjetivo",
      example: "Bótó bó telle",
      exampleTranslation: "La casa es buena",
      notes: "Adjetivo de calidad, copia prefijo"
    },
    {
      bubi: "sossa",
      spanish: "leer, contar",
      ipa: ",
lural: "marìbà (Cl. 6)",
      example: "Rìbà ló bótó",
      exampleTranslation: "La comida está en la casa",
      notes: "Alimento, clase 5"
    },
    {
      bubi: "lobora
      ipa: "ri.ba",
      class: "Cl. 5",
      p
      bubi: "rìbà",
      spanish: "comida",