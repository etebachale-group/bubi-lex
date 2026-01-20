# Lengua Bubi (Ëríbukkú ra Bòóbë)

> Documento base en **Markdown (.md)** para entrenar una IA lingüística.
> Contiene reglas **gramaticales, fonéticas, morfológicas y estructurales** del **bubi**, en **español y bubi**.

---

## 1. Identidad lingüística

**Español**  
El bubi es una lengua bantú (familia Níger-Congo), hablada principalmente en la isla de Bioko, Guinea Ecuatorial. Es una lengua **tonal**, **aglutinante** y organizada mediante **clases nominales**.

**Bubi**  
Ë bubi ë tɔ́ʼɔ́llɔ́ ra bantú, ë tɔ́ʼɔ́llɔ́ ra Bioko. Ë tɔ́ʼɔ́llɔ́ tɛ́ tónò, tɛ́ sɔ́llɔ́-sɔ́llɔ́, bó rɔ́ classes ra botyo.

---

## 2. Sistema fonético y fonológico

### 2.1 Vocales

El bubi posee **7 vocales**, cada una con **tono alto (´)** y **tono bajo (sin marca)**.

| Vocal | IPA | Español | Ejemplo Bubi | Significado |
|------|-----|---------|--------------|-------------|
| a / á | [a] | a | libaam / libáám | mañana / huerto |
| e / é | [e] | e | ebebe / e b bé | culebra / desgracia |
| i / í | [i] | i | iriki / ríín | cine / anillo |
| o / ó | [o] | o | boo / bónó | vida / mosquitos |
| u / ú | [u] | u | uhá / ehúto | hueso / lazo |

**Regla IA**: el **tono cambia el significado léxico**.

---

### 2.2 Consonantes

- Existen consonantes **simples** y **geminadas** (alargadas).
- La geminación **no es decorativa**, es semántica.

Ejemplo:
- *bappa* = serpiente  
- *bapa* ≠ mismo significado

Consonantes especiales del bubi:
- **ty** → sonido /tʃ/  
- **dy** → sonido /dʒ/  
- **hM, hN** → sonidos glotonasales exclusivos

---

## 3. Escritura y pronunciación

**Español**  
La ortografía bubi es **fonológica**: se escribe como se pronuncia.

**Bubi**  
Ë bubi bó lɔ́kɔ́ ɔ́lɔ́kɔ́: ë tɔ́ʼɔ́llɔ́ bó bɔ́rɔ́ bí lɔ́kɔ́.

**Regla IA**: no separar fonética y ortografía.

---

## 4. Clases nominales (núcleo del idioma)

El bubi organiza los sustantivos mediante **clases**, no género.
Cada clase usa **prefijos** que afectan:
- sustantivos
- adjetivos
- demostrativos
- posesivos

### 4.1 Ejemplo clave

| Clase | Singular | Plural | Significado |
|------|---------|--------|-------------|
| Cl.1 | botyo | batyo | persona / personas |
| Cl.3 | botté | betté | árbol / árboles |
| Cl.5 | ribúkku | abúkku | libro / libros |

**Regla IA**: el prefijo controla la concordancia total.

---

## 5. Composición de palabras

### 5.1 Estructura básica

```text
Prefijo de clase + Raíz léxica + (Sufijo opcional)
```

Ejemplo:
- **bo-tyo** → botyo (persona)
- **ba-tyo** → batyo (personas)

---

## 6. Adjetivos y concordancia

El adjetivo **cambia según la clase**, no según masculino/femenino.

Ejemplo:
- botyo **boto** → persona alta  
- batyo **bato** → personas altas

**Regla IA**: el adjetivo copia el prefijo de la clase.

---

## 7. Determinantes

### 7.1 Aumento (definición)

El aumento define si el sustantivo es **específico**.

| Aumento | Uso |
|--------|-----|
| o- | singular definido |
| a- | plural definido |
| e- | neutro / colectivo |
| i- | plural clase 9/10 |

Ejemplo:
- **botyo** = persona  
- **o botyo** = la persona

---

## 8. Demostrativos

| Distancia | Tema |
|---------|------|
| cerca | -lo (este) |
| media | -o / -e (ese) |
| lejos | -lé (aquel) |

Ejemplo:
- o botyo **olo** → esta persona
- o botyo **olé** → aquella persona

---

## 9. Posesión

La posesión va **después del sustantivo**.

| Persona | Sufijo |
|-------|--------|
| mi | -m / -l |
| tu | -o |
| su | -áí |

Ejemplo:
- o botyo **m** → mi pariente

---

## 10. Verbos

### 10.1 Infinitivo

Todos los verbos usan el prefijo **o-**.

Ejemplos:
- o báa → hacer
- o bella → cantar
- o ira → curar

**Regla IA**: el verbo no concuerda por género, solo por tiempo/aspecto.

---

## 11. Orden sintáctico

**Orden dominante:**

```text
Sujeto + Verbo + Objeto
```

Ejemplo:
- o botyo o báa ribúkku  
  (la persona hace el libro)

---

## 12. Reglas clave para IA

1. El **tono cambia significado**.
2. Las **clases nominales** gobiernan todo.
3. No existe género masculino/femenino.
4. La ortografía es fonética.
5. La concordancia es obligatoria.

---

## 13. Uso recomendado para IA

- Tokenizar por **prefijos de clase**.
- Entrenar embeddings sensibles a **tono**.
- No traducir literal desde español.

---

**Fin del documento base**

