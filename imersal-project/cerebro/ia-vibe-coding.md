---
type: knowledge
area: ia
usado-em: [[claude-code]], [[pocket-safe]], [[leeven]], [[new-bird]]
tags: [ia, vibe-coding, claude-code, desenvolvimento, prototipagem, build]
---

# Vibe Coding — Como Construir com Claude Code

> Ver também: [[ecossistema-claude]], [[agentes]], [[pocket-safe]], [[leeven]]

---

## O que é Vibe Coding

Vibe coding é o método de desenvolvimento onde o programador (ou não-programador) descreve intenção e o LLM executa — gerando código funcional em fração do tempo convencional.

**Não é:** pedir código aleatório e rezar.
**É:** engenharia de intenção — descrever o problema com precisão, iterar com contexto acumulado, revisar o que importa.

---

## O Pattern por trás de todos os projetos

```
1. DEFINE — O que precisa existir? (produto, feature, automação)
2. CONTEXT — Qual stack, quais arquivos existem, quais constraints?
3. SPEC — Escreve o que quer com precisão (não "faça uma landing page", mas spec detalhada)
4. BUILD — Claude Code gera, você revisa o que importa
5. TEST — Roda, quebra, ajusta — nunca aceitar sem testar
6. ITERATE — Próximo passo, mesmo loop
```

---

## Regras que aceleram

**1. Contexto é capital**
Claude Code é tão bom quanto o contexto que recebe. CLAUDE.md bem escrito = output mais preciso na primeira tentativa.

**2. Spec antes de build**
Descrever o que quer em linguagem natural antes de pedir código. Quanto mais específico, menos iterações necessárias.

**3. Arquivo por arquivo, não projeto inteiro**
Pedir de uma vez um projeto inteiro gera código que não integra. Melhor: "cria o componente X", depois "integra com Y".

**4. Nunca aceitar código que não entendeu**
Mesmo que funcione, se não entende, não mantém. Pedir explicação do que foi construído.

**5. Revisar o que importa**
Não precisa revisar cada linha. Foca em: lógica de negócio, dados sensíveis, dependências externas.

---

## Stack padrão (projetos Vinicius)

- **Frontend:** Next.js + TypeScript + Tailwind CSS + shadcn/ui
- **Backend:** Next.js API routes ou Node/Express
- **Database:** Supabase (PostgreSQL) ou Firebase
- **Auth:** Supabase Auth ou NextAuth
- **Deploy:** Vercel
- **Automações:** n8n

**Por que essa stack:** Claude Code conhece muito bem, documentação abundante, deploy rápido, shadcn facilita UI premium sem custo de design do zero.

---

## Projetos construídos com vibe coding

### PocketSafe ([[pocket-safe]])
- Landing page institucional em `projetos/pocket-safe/site/`
- Componente LogoDog para o bulldog-em-círculo

### Leeven ([[leeven]])
- Sistema de gestão de flipping imobiliário
- Pipeline/kanban de imóveis por estágio (visita → sinal → certidão)
- Spec em `leeven/docs/superpowers/specs/`

### New Bird ([[new-bird]])
- Ferramentas de proposta comercial
- Skills customizados para campanha dental

---

## Vibe Coding com Agentes (nível avançado)

Ao invés de um Claude Code, múltiplos agentes trabalhando em paralelo:

- Agente A: pesquisa e spec
- Agente B: build do frontend
- Agente C: build do backend
- Agente D: testa e reporta bugs

Ver [[agentes]] para o framework de squads.

---

## Armadilhas comuns

- **Contexto perdido:** se a conversa ficou longa, Claude pode "esquecer" decisões anteriores. Reinicia com CLAUDE.md atualizado.
- **Dívida de código:** velocidade de build ≠ qualidade. Revisar periodicamente o que foi gerado.
- **Feature creep:** é fácil pedir mais features do que o necessário porque custa pouco. Manter foco no MVP.
- **Dependência sem compreensão:** saber o suficiente para manter o que foi construído.

---

## Ligações

- Ecossistema completo → [[ecossistema-claude]]
- Como agentes funcionam → [[agentes]]
- Projetos em andamento → [[pocket-safe]], [[leeven]]
- Ferramentas de infra → [[traffic-infra]], [[lead-page]]
