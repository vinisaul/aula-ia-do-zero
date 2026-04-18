---
type: knowledge
area: design
usado-em: [[pocket-safe]], [[lead-page]], [[new-bird]], [[carajillo]]
tags: [design, ui, landing-page, tipografia, hierarquia, mobile-first]
---

# Design — Fundamentos

> Ver também: [[branding]], [[copywriting]], [[lead-page]], [[produto]]

---

## Princípios Fundamentais

### 1. Hierarquia Visual
O olho precisa saber onde ir primeiro, segundo, terceiro.

**Ferramentas de hierarquia:**
- Tamanho (maior = mais importante)
- Peso (bold = destaque)
- Contraste (cor que chama atenção ≠ cor de texto corrido)
- Espaço (whitespace cria importância ao redor do que importa)
- Posição (acima do fold = criticamente importante)

**Regra prática:** se tudo é importante, nada é.

### 2. Whitespace
Whitespace não é espaço vazio — é o que dá respiração e faz o conteúdo ser lido.

Menos elementos bem espaçados > muitos elementos comprimidos.
Marcas premium usam muito whitespace. Não é desperdício, é intenção.

### 3. Tipografia
**Sistema simples:**
- 1 fonte para headline/display (personalidade)
- 1 fonte para body (legibilidade)
- Escala de tamanhos: 12 / 14 / 16 / 20 / 24 / 32 / 48 / 64

**Tamanho mínimo de corpo:** 16px em mobile, nunca abaixo.
**Line-height para leitura:** 1.5× o tamanho da fonte.

### 4. Cor
- Paleta funciona com 3 papéis: primary (ação), neutral (conteúdo), accent (destaque pontual)
- Contraste mínimo para texto: 4.5:1 (acessibilidade WCAG AA)
- Cor de CTA deve ser única na página — não repetir em elementos decorativos

---

## Mobile-First (não é opcional)

**Por que mobile-first:**
- 70%+ do tráfego de landing pages vem de mobile
- Dentistas e pacientes navegam no celular
- Meta Ads entrega quase tudo em mobile

**Processo:**
1. Desenha o layout mobile primeiro
2. Adapta para desktop depois
3. Touch targets mínimos: 44×44px
4. Evitar hover states como única interação

---

## Landing Page — Anatomia

```
[Hero — Headline + Subheadline + CTA primário]
[Prova Social — logos, números, depoimentos]
[Benefícios — bullets, não features]
[Como funciona — 3 passos simples]
[Objeções — FAQ ou seção "para quem é"]
[CTA final — repetir, reforçar urgência]
```

**Acima do fold (sem scroll):** headline, subheadline, CTA e uma prova de credibilidade.

**Para [[lead-page]]:** o objetivo único é a conversão do formulário. Remover qualquer link que leve para fora.

---

## Design de Produto Digital

### Estados que precisam ser desenhados
- Empty state (sem dados)
- Loading state
- Error state
- Success state
- Onboarding (primeira vez)

Erro comum: desenhar só o happy path.

### Componentização
Pensar em componentes antes de pensar em páginas. Um botão bem desenhado reaproveita em 30 lugares.

Para [[leeven]]: pipeline/kanban precisa de card component claro — status, ação, próximo passo visíveis sem scroll.

---

## Design Premium vs. Design Genérico

**Genérico (evitar):**
- Tons de azul/cinza sem personalidade
- Cards com bordas em todos os lados
- Ícones de stock genéricos
- Sombras exageradas
- Gradientes desnecessários

**Premium (buscar):**
- Paleta específica com significado
- Tipografia com caráter
- Fotografias com tratamento consistente
- Espaço em abundância
- Detalhes que provam atenção (micro-animações, transições sutis)

Referência de tom premium: identidade do [[carajillo]] (dourado, intenção, não exibição).

---

## Ferramentas

- **Figma:** design de componentes, protótipos, handoff
- **Tailwind CSS:** sistema de design codificado (escala de spacing, cores, tipografia)
- **Shadcn/ui:** componentes base para projetos web — ver [[claude-code]]
- **CapCut:** composição para social media

---

## Erros que custam caro

- Design bonito que não converte (priorizou estética sobre objetivo)
- Nenhum teste A/B de landing page (ver [[trafego-pago]])
- Redesign quando o problema é o copy
- Inconsistência entre ad criativo e landing page (break de expectativa = queda de conversão)

---

## Ligações

- Como as marcas usam o design → [[branding]]
- Design de landing pages em produção → [[lead-page]]
- Copy que acompanha o layout → [[copywriting]]
- PocketSafe site → [[pocket-safe]]
