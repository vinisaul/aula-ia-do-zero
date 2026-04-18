---
type: knowledge
area: ia
usado-em: [[claude-code]], [[playbook-ia]], [[tiktok]]
tags: [prompts, IA, claude, templates, resultado]
---

# Prompts Testados que Funcionam

## Anatomia de um Bom Prompt

```
[CONTEXTO] Quem você é, o projeto, o objetivo
[TAREFA] O que precisa ser feito (verbo + resultado)
[FORMATO] Como você quer a resposta (lista, código, tabela, JSON)
[RESTRIÇÕES] O que não fazer, tom, estilo
```

Quanto mais específico o contexto, melhor o resultado. "Faça um site" retorna genérico. "Construa landing page em Next.js para PocketSafe tag Bluetooth, paleta sky-300, CTA para Shopify" retorna algo utilizável.

---

## Prompts de Produto / Dev

**Criar landing page:**
```
Você é um desenvolvedor Next.js + Tailwind experiente.
Crie uma landing page para [produto] com:
- Hero: headline "[X]", subheadline "[Y]", CTA "[Z]"
- Paleta: [cores específicas hex]
- Seções: hero, problema, solução, prova social, FAQ, CTA final
- Mobile first, sem animações pesadas
Retorne o código completo em um único arquivo page.tsx
```

**Dashboard com dados mockados:**
```
Crie um componente React de dashboard para [projeto].
Cards de métricas: [lista].
Use Shadcn/ui e Tailwind.
Dados mockados, tipagem TypeScript, sem chamada de API.
```

---

## Prompts de Marketing / Copy

**Anúncio Meta:**
```
Crie 5 variações de copy para anúncio Meta Ads.
Produto: [produto]. Público: [descrição]. Objetivo: [conversão/clique].
Formato: headline (máx 40 chars) + texto principal (máx 125 chars) + CTA.
Tom: [direto/emocional/provocativo].
```

**Hook para TikTok/Reels:**
```
Crie 10 hooks de abertura para vídeo de [tema].
Público: [descrição]. Objetivo: retenção nos primeiros 3 segundos.
Formato: 1 frase por hook, máx 15 palavras.
Use: pergunta provocativa, dado chocante, afirmação polarizante (mix).
```

**E-mail de follow-up:**
```
Escreva e-mail de follow-up para lead que não respondeu há [X dias].
Contexto: lead veio de [origem], estava interessado em [produto/serviço].
Tom: leve, direto, não desesperado.
Máximo 5 linhas. Um único CTA.
```

---

## Prompts de Imagem (Foto Realista)

Regras gerais para foto que não parece IA:
- Pedir luz natural, não estúdio
- Incluir imperfeições ("slight grain", "natural shadows")
- Pessoas desfocadas ao fundo
- Produto como acessório da cena, não objeto principal

**Exemplo PocketSafe:**
```
Foto editorial estilo lifestyle. Pessoa jovem urbana (25-30 anos, rosto fora do frame) com mochila em mesa de café. 
Tag azul PocketSafe presa na alça da mochila, desfocado ao fundo. 
Luz natural de janela. Grão de filme. Cores quentes. Canon 5D, 85mm f/1.8.
```

---

## Prompts de Pesquisa / Análise

**Análise de concorrente:**
```
Analise [concorrente] como se fosse um analista de M&A.
Cubra: modelo de negócio, precificação, público, canais de aquisição, pontos fracos.
Formato: tópicos curtos, sem floreio.
```

**Estruturar proposta:**
```
Com base nesse briefing [colar briefing], crie estrutura de proposta comercial.
Inclua: diagnóstico, ROI estimado, escopo, investimento (3 planos), garantia.
Tom: direto, orientado a resultado, sem jargão de agência.
```

---

## O que Não Funciona

- Prompts longos sem estrutura clara (Claude não sabe o que priorizar)
- Pedir "melhor resultado possível" sem critério
- Contexto zero: "escreva sobre marketing"
- Pedir edição cirúrgica de imagem gerada (gera nova imagem)

## Links Relacionados

→ [[claude-code]] — onde esses prompts são executados
→ [[playbook-ia]] — quando usar IA em cada projeto
→ [[tiktok]] — hooks testados no conteúdo real
→ [[ia]] → [[skills-que-uso]] — quando usar skill vs prompt direto
→ [[copywriting]] → [[hooks-reels]] — hooks testados
