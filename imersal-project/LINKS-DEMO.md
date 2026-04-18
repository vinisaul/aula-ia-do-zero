# Links para Demo ao Vivo — Workshop IMERSAL

## Vídeos para transformar em Skills/Agentes

### Steve Jobs — iPhone Introduction (2007)
- **Link:** https://www.youtube.com/watch?v=MnrJzXM7a6o
- **Duração:** ~10min (a intro, não a keynote inteira)
- **Usar para:** Skill de "Product Presentation" — como apresentar produto com buildup, reframe de categoria, demo ao vivo, "one more thing"

### Alternativas (caso precise trocar):
- **Steve Jobs Stanford Commencement:** https://www.youtube.com/watch?v=UF8uR6Z6KLc
  - Usar para: Skill de storytelling/narrativa persuasiva
- **Simon Sinek — Start With Why:** https://www.youtube.com/watch?v=u4ZoJKF_VuA
  - Usar para: Skill de posicionamento (Golden Circle)

## Fluxo da demo ao vivo

### Passo 1: Transcrever
No Claude Code terminal:
```
transcreve esse vídeo: https://www.youtube.com/watch?v=MnrJzXM7a6o
```

### Passo 2: Extrair frameworks
```
Analisa essa transcrição e extrai:
- A estrutura lógica da apresentação (cada fase)
- Os frameworks de persuasão usados
- O tom e estilo de comunicação
- As técnicas de demo ao vivo
- O que faz funcionar (timing, surpresa, buildup)
```

### Passo 3: Criar Skill
```
/skill-creator — transforma essa análise numa skill de "Product Presentation". 
Quero que qualquer pessoa consiga apresentar um produto seguindo essa metodologia.
A skill deve incluir: estrutura de slides, narrativa, timing, como fazer demo, 
como criar buildup, como posicionar o produto como categoria nova.
```

### Passo 4: Criar Agente
```
Cria um agente "product-launcher" que usa essa skill de Product Presentation 
+ a skill de copywriting + a skill de frontend-design.

Missão do agente: receber um produto/serviço e entregar:
1. Script de apresentação no estilo Jobs
2. Slide deck visual (HTML)
3. Landing page de lançamento
4. Email de anúncio
```

### Passo 5: Testar o agente
```
/agent product-launcher "Produto: [algo de um dos amigos]. Público: [público deles]."
```

### Passo 6: Transformar em sistema
```
Transforma tudo isso num sistema web: 
- Input: descreve o produto
- Output: apresentação + landing page + emails
- Dashboard com histórico de lançamentos
- Design premium, funcional, interativo
```

## Briefing executivo — quem pesquisar
(decidir na hora — escolher alguém que o grupo conheça)
- Opção: empresário local, cliente de um dos amigos, professor da FGV
- Claude pesquisa LinkedIn, site, Instagram, Google News

## Lead generation — onde pesquisar
- **Segmento:** clínicas odontológicas (ou o que fizer sentido pro grupo)
- **Região:** Barra da Tijuca / Jardim Oceânico
- **Alternativa:** academias, escritórios de advocacia, clínicas de estética
