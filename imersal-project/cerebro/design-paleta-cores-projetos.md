---
type: knowledge
area: design
usado-em: [[new-bird]], [[pocket-safe]], [[carajillo]], [[leeven]], [[tiktok]], [[branding]]
tags: [design, cores, paleta, identidade, visual, tokens]
---

# Paleta de Cores por Projeto

## Referência Rápida

Usar esses valores como source of truth em todo design, código e material gráfico.

---

## New Bird

| Role | Hex | Tailwind |
|---|---|---|
| Primária | `#22c55e` | green-500 |
| Primária escura | `#16a34a` | green-600 |
| Fundo | `#f0fdf4` | green-50 |
| Texto | `#14532d` | green-900 |
| Accent | `#86efac` | green-300 |

**Estética**: clean, confiança, crescimento. Não fluorescente.

---

## PocketSafe

| Role | Hex | Tailwind |
|---|---|---|
| Primária | `#7dd3fc` | sky-300 |
| Primária escura | `#38bdf8` | sky-400 |
| Fundo | `#f0f9ff` | sky-50 |
| Texto | `#0f172a` | slate-900 |
| Accent | `#0ea5e9` | sky-500 |

**Estética**: tech, acessível, limpo. Ver [[identidade-pocket-safe]].

---

## Carajillo

| Role | Hex | Referência |
|---|---|---|
| Gold | `#d4a028` | — |
| Marrom escuro | `#3d1f00` | — |
| Creme | `#f5e6c8` | — |
| Fundo dark | `#1a0f00` | — |
| Branco quente | `#fff9f0` | — |

**Estética**: premium, noturno, cultural. Ver [[identidade-carajillo]].

---

## Leeven

| Role | Hex | Tailwind |
|---|---|---|
| Primária | `#1e3a5f` | — |
| Secundária | `#2563eb` | blue-600 |
| Accent | `#93c5fd` | blue-300 |
| Fundo | `#f8fafc` | slate-50 |
| Texto | `#1e293b` | slate-800 |

**Estética**: corporativo premium, confiança, imóvel de alto padrão.

---

## TikTok (Perfil Vinicius)

| Role | Hex | Tailwind |
|---|---|---|
| Accent | `#ec4899` | pink-500 |
| Secundária | `#8b5cf6` | violet-500 |
| Fundo | `#09090b` | zinc-950 |
| Texto | `#fafafa` | zinc-50 |

**Estética**: energia, dinamismo, contraste alto — plataforma de atenção.

---

## Como Usar no Código

**Tailwind config (next.config ou tailwind.config.js):**
```js
colors: {
  'new-bird': { primary: '#22c55e', ... },
  'pocket-safe': { primary: '#7dd3fc', ... },
  carajillo: { gold: '#d4a028', ... },
  leeven: { primary: '#1e3a5f', ... },
}
```

**CSS Variables:**
```css
--color-primary: #22c55e; /* New Bird */
```

## Regras Gerais

- Nunca misturar paletas entre projetos (exceto casos de co-branding)
- Contraste de texto: mínimo 4.5:1 (WCAG AA)
- Modo escuro: cada projeto tem fundo dark definido acima

## Links Relacionados

→ [[branding]] → [[identidade-pocket-safe]], [[identidade-carajillo]]
→ [[design]] → [[checklist-landing-page]]
→ [[new-bird]], [[pocket-safe]], [[carajillo]], [[leeven]], [[tiktok]]
