---
type: knowledge
area: ia
usado-em: [[claude-code]], [[playbook-ia]], [[new-bird]], [[pocket-safe]]
tags: [ia, claude, mcp, skills, agentes, ecossistema, llm]
---

# Ecossistema Claude — Visão Completa

> Ver também: [[vibe-coding]], [[agentes]], [[obsidian-mcp]], [[claude-code]]

---

## Os 3 Modos de Interação

### 1. Claude Chat (claude.ai)
- Conversa padrão, sem ferramentas de sistema de arquivos
- Bom para: brainstorming, análise de texto, escrita, raciocínio
- Limitação: não acessa arquivos, não executa código em produção

### 2. Claude Cowork / Projects
- Chat + memória de projeto (arquivos de contexto persistentes)
- Bom para: contexto longo, manter continuidade entre sessões
- Diferencial: context window de projeto que persiste entre conversas

### 3. Claude Code (CLI)
- Agente com acesso completo ao sistema de arquivos
- Lê, escreve, edita arquivos; roda comandos bash; usa ferramentas
- É o modo de maior poder — ver [[claude-code]]
- Bom para: desenvolvimento, automação, operações em arquivos

---

## Skills

Skills são instruções especializadas que estendem o comportamento do Claude Code.

**Como funcionam:**
- São arquivos Markdown (`.md`) com instruções e contexto
- Invocados com `/nome-do-skill` no Claude Code
- Podem chamar ferramentas externas, APIs, fazer buscas na web
- Armazenados em `~/.claude/` ou no projeto em `.claude/`

**Skills de uso frequente:**
- `/image-generation` — gera imagens via API
- `/web-search` — busca na web em tempo real
- `/nano-banana-pro-openrouter` — geração de imagem premium
- `/copywriting` — frameworks de copy aplicados

**Para criar skills customizados:** ver pasta `playbook-ia/skills-md/`

---

## MCPs (Model Context Protocol)

MCPs são servidores que expõem ferramentas externas ao Claude.

**O que são:** protocolo aberto da Anthropic para conectar LLMs a ferramentas.
**Como funcionam:** servidor MCP roda localmente ou remotamente; Claude se conecta e pode chamar suas ferramentas como se fossem nativas.

**MCPs disponíveis no setup:**
- Obsidian MCP → lê e escreve no vault — ver [[obsidian-mcp]]
- Figma MCP → acessa designs, exporta código
- Gamma MCP → gera apresentações
- Rube/Composio → 1000+ integrações (Slack, Notion, Gmail, etc)

**Configuração:** `~/.claude/settings.json` (mcpServers)

---

## Agentes e Squads

**Agente:** Claude com ferramentas + capacidade de executar múltiplos passos autonomamente.
**Squad:** múltiplos agentes especializados trabalhando em paralelo.

Ver [[agentes]] para aprofundamento.

---

## Hooks — Comportamentos Automáticos

Hooks disparam ações antes/depois de eventos do Claude Code.

**Tipos:**
- `PreToolUse` — antes de usar uma ferramenta
- `PostToolUse` — depois de usar uma ferramenta
- `Stop` — quando Claude termina de responder

**Casos de uso:**
- Logar todas as operações de arquivo no journal
- Notificar via webhook quando tarefa é concluída
- Bloquear escrita em arquivos sensíveis

Configurado em `~/.claude/settings.json` → hooks.

---

## Prompts Avançados

**Técnicas que funcionam:**
- **System prompt + user prompt separados:** contexto fixo no system, tarefa no user
- **Chain of thought:** pedir que pense passo a passo antes de responder
- **Few-shot:** mostrar exemplos do formato esperado antes de pedir
- **Role assignment:** "aja como um especialista em X"
- **Constraint injection:** "sem usar palavra Y, em máximo Z linhas"

**Anti-padrões:**
- Prompts vagos que aceitam qualquer output
- Não especificar formato da resposta esperada
- Dar contexto redundante que dilui a instrução real

---

## Hierarquia de Contexto no Claude Code

```
1. CLAUDE.md (raiz do projeto) — lido sempre
2. CLAUDE.md (subpastas) — lido ao entrar na pasta
3. Arquivos referenciados explicitamente
4. Contexto da conversa em curso
```

**No cerebro:** o `/Users/viniciussaul/cerebro/CLAUDE.md` define a estrutura e instrui a sempre ler `_vinicius/perfil.md` antes de qualquer tarefa.

---

## Ligações

- Usar Claude Code na prática → [[vibe-coding]]
- Configurar MCP do Obsidian → [[obsidian-mcp]]
- Criar agentes e squads → [[agentes]]
- Prompts organizados → `playbook-ia/prompts/`
