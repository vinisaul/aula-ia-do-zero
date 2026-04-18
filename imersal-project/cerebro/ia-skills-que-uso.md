---
type: knowledge
area: ia
usado-em: [[claude-code]], [[ecossistema-claude]], [[playbook-ia]]
tags: [skills, claude, IA, ferramentas, automação]
---

# Skills Instaladas no Claude Code

## O que são Skills

Skills são agentes pré-programados dentro do Claude Code que executam tarefas específicas sem precisar descrever o processo do zero. Funcionam como atalhos de workflow.

---

## Skills Principais e Para que Servem

### Superpowers (brainstorm / plan / execute)
**Quando usar**: qualquer projeto com múltiplas partes — brainstorming de produto, planejamento de campanha, execução de feature complexa.

- `superpowers:brainstorm` → explorar ângulos antes de decidir direção
- `superpowers:write-plan` → gerar plano estruturado antes de executar
- `superpowers:execute-plan` → executar plano gerado com sub-agentes em paralelo
- `superpowers:dispatching-parallel-agents` → rodar tarefas independentes simultâneas

**Aplicação**: planejar funil da New Bird, estruturar roadmap do Leeven, explorar estratégia PocketSafe

---

### Firecrawl
**Quando usar**: scraping de sites, pesquisa de concorrentes, coleta de dados de mercado.

- `firecrawl:firecrawl` → scraping geral
- `firecrawl-search` → busca + extração de conteúdo
- `firecrawl-scrape` → extrair dados de página específica
- `firecrawl-crawl` → percorrer site inteiro

**Aplicação**: pesquisar preços de concorrentes do PocketSafe, analisar sites de clínicas dentárias antes de proposta

---

### Skill Creator
**Quando usar**: criar skill customizada para tarefa repetitiva específica.
**Aplicação**: skill de "gerar proposta New Bird", skill de "criar post TikTok com script"

---

### Vercel
**Quando usar**: deploy de projetos Next.js.

- `vercel:deploy` → publicar projeto
- `vercel:env` → gerenciar variáveis de ambiente
- `vercel:nextjs` → boas práticas Next.js

**Aplicação**: deploy do Leeven, landing pages, projetos clientes

---

### Outras Skills Úteis

| Skill | Uso |
|---|---|
| `write-landing` | Gerar copy de landing page |
| `copywriting` | Copy genérico de anúncios, e-mails |
| `page-cro` | Análise e otimização de conversão |
| `social-content` | Conteúdo para redes sociais |
| `image-generation` / `nano-banana-pro-openrouter` | Geração de imagens |
| `ai-seo` | Estratégia de SEO |
| `gmail` | Automação de e-mail |
| `pdf` | Gerar PDFs (propostas, relatórios) |

---

## Como Chamar uma Skill

No Claude Code, prefixar com `/`:
```
/brainstorm como posicionar o PocketSafe para o TikTok
/write-plan roadmap de lançamento do Carajillo
```

Ou via Skill tool com nome e argumentos.

---

## Quando NÃO Usar Skill

- Tarefas simples de 1 passo (só mandar mensagem diretamente)
- Quando a skill não existe e é mais rápido descrever o contexto manualmente
- Debugging de código específico (usar contexto direto)

## Links Relacionados

→ [[claude-code]] — o ambiente onde as skills rodam
→ [[ecossistema-claude]] — visão geral do ecossistema
→ [[playbook-ia]] — quando e como usar IA em cada projeto
→ [[ia]] → [[prompts-que-funcionam]] — prompts sem skill
→ [[operacoes]] → [[stack-ferramentas]] — stack completa além do Claude
