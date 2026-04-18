# ROTEIRO DE DEMO — DADOS BAGUNÇADOS → SISTEMA

## Contexto
Empresa: Conexão Digital (loja de acessórios de celular)
Arquivos na pasta `dados-bagunca/` — 47 arquivos, 6 pastas, 4 fornecedores, 3 idiomas, 3 moedas, múltiplos formatos.

**REGRA DE OURO:** cada passo é uma tarefa isolada. NÃO mencionar dashboard/sistema até a FASE 2.

---

## ESTRUTURA GERAL

```
FASE 1 — Claude Chat (projeto IMERSAL regular)
  → Vários chats separados, cada um resolve UMA coisa
  → Cada chat GERA o artefato de verdade (planilha, doc)
  → Peças isoladas. Simples. "Eu consigo fazer isso."
  → MAS: abrir pasta, selecionar, arrastar, cada chat isolado... que saco.

FASE 2 — Claude Code
  → "Que saco ficar arrastando arquivo, vamos pra onde não precisa disso"
  → Já tá dentro do projeto. Vê tudo. Lê tudo. Sem arrastar nada.
  → Cruza todos os dados, faz análise estratégica, encontra problemas escondidos
  → Gera dashboard real, deploya, Supabase, Vercel — não sai mais daqui
```

---

# FASE 1 — CLAUDE CHAT (Projeto IMERSAL)

Cada passo = um chat novo dentro do projeto.

---

## CHAT 1 — Despesas (custos + fornecedores + tributário + financeiro)

**Subir arquivos:**
- `01-despesas/` (7 arquivos — abrir pasta, selecionar tudo, arrastar)

**Prompt:**
> Recebi esses dados financeiros da minha empresa. Tem extratos de 4 fornecedores (formatos, idiomas e moedas diferentes), meu controle tributário, e meu extrato bancário.
>
> Quero que você unifique tudo em UMA planilha organizada de DESPESAS COMPLETA.
>
> Converta tudo pra BRL (use o câmbio que está nos arquivos ou referência atual).
>
> Organize com abas/seções:
> - **Fornecedores:** data, fornecedor, descrição, valor BRL, status (pago/pendente/parcial), categoria (capinhas, fones, cabos, frete, etc)
> - **Tributário:** DAS, ICMS-ST, DIFAL, multas — por mês
> - **Custos fixos:** aluguel, funcionário, taxas bancárias (cheque especial, tarifas)
>
> Quero ver claramente: quanto gastei com cada fornecedor, quanto está pendente, quanto já paguei, total de impostos, e os meses que fiquei no negativo no banco (e por quê).
>
> Gera como planilha.

**Resultado:** Planilha completa de despesas. Download.

**Fala pro pessoal:** "6 arquivos, 4 fornecedores, 3 idiomas, 3 moedas, extrato bancário, tributos. Tudo numa planilha. Isso demorava quanto tempo? Uma tarde? Fiz em 30 segundos."

---

## CHAT 2 — Leads (limpeza de base)

**Subir arquivos:**
- `02-leads/` (2 arquivos)

**Prompt:**
> Essa é minha base de leads captados de vários canais + prints de DMs do Instagram. Tá uma bagunça — tem duplicatas, nomes em casing diferente, emails de teste, campos faltando.
>
> Limpa essa base: remove lixo, unifica duplicatas (mesma pessoa aparece com variações de nome/email), padroniza nomes, e me entrega uma planilha organizada com: nome, email, telefone, origem, data primeiro contato, interesse, status (lead/lead quente/cliente).
>
> Gera como planilha.

**Resultado:** Planilha limpa. De ~60 entradas sujas → ~40 leads únicos.

**Fala:** "Olha, ele entendeu que essas 3 Sandras são a mesma pessoa. Sem fórmula, sem VLOOKUP."

---

## CHAT 3 — Comercial (evolui os leads)

**Subir:** a planilha que baixou do Chat 2

**Prompt:**
> Pega essa planilha limpa de leads e transforma numa planilha COMERCIAL. Pra cada lead:
>
> - Classifica: frio, morno, quente, cliente recorrente
> - Sugere uma mensagem personalizada de abordagem baseada no interesse e origem
> - Coloca indicadores: dias desde último contato, valor estimado do ticket, probabilidade de conversão
> - Sugere próxima ação (follow-up, oferta, reativação, etc)
>
> Quero uma planilha que um vendedor olhe e saiba exatamente o que fazer com cada lead.
>
> Gera como planilha.

**Resultado:** Planilha CRM manual inteligente.

**Fala:** "Isso é um CRM. Sem software. Sem mensalidade. Uma planilha que um estagiário consegue usar."

---

## CHAT 4 — Receita (vendas unificadas)

**Subir arquivos:**
- `03-receita/` (4 arquivos)

**Prompt:**
> Tenho vendas de 3 canais: Shopify (e-commerce), Mercado Livre (marketplace), loja física (registro manual) e comprovantes PIX.
>
> Unifica tudo numa planilha de RECEITA organizada. Quero ver:
> - Receita por canal por mês
> - Receita por categoria de produto
> - Ticket médio por canal
> - Produtos mais vendidos
>
> Atenção: Mercado Livre tem taxas e frete que reduzem a receita líquida. Loja física tem dados semanais, não por venda individual. PIX é só loja física.
>
> Gera como planilha.

**Resultado:** Planilha unificada de receita.

**Fala:** "Quatro formatos completamente diferentes. Unificou. Quem faz isso no Excel?"

---

## CHAT 5 — Ads (performance de anúncios)

**Subir arquivos:**
- `04-ads/` (3 arquivos)

**Prompt:**
> Tenho relatórios de Meta Ads, Google Ads e TikTok Ads. Formatos diferentes, métricas diferentes.
>
> Unifica numa planilha de PERFORMANCE DE ADS com:
> - Investimento total por plataforma por mês
> - ROAS por campanha
> - CPC e CTR médios
> - Quais campanhas são lucrativas e quais estão queimando dinheiro
> - Recomendações: onde aumentar budget, onde pausar
>
> Gera como planilha.

**Resultado:** Planilha de análise de ads unificada.

**Fala:** "Meta, Google e TikTok num lugar só. Com recomendação de onde botar mais grana. Sem analista."

---

## CHAT 6 — Influencers (análise + tiers)

**Subir pasta inteira:**
- `05-influencers/` (12 comprovantes: PIX, boleto, TED, NF permuta, pendência)

**Prompt:**
> Esses são meus comprovantes de pagamento com influenciadores. Tá tudo solto — PIX, boleto, TED, tem até permuta. Analisa tudo e me entrega uma planilha de PERFORMANCE de influencers com:
>
> - Nome, @, seguidores
> - Total investido (mai-set)
> - Total de vendas geradas
> - ROI médio
> - Tendência (melhorando, piorando, estável)
> - Tier 1 (manter e aumentar), Tier 2 (manter observando), Tier 3 (reavaliar)
> - Observações e recomendação
>
> Gera como planilha.

**Resultado:** Análise estratégica em planilha.

**Fala:** "12 recibos soltos virou análise de performance com tiers. Isso era trabalho de um analista."

---

## CHAT 7 — Briefing Elite (reunião com influencer)

**Prompt:**
> Quero fazer uma reunião com a Julia Ferreira (@gadgetsdaju). Ela é minha melhor influenciadora (Tier 1).
>
> Prepara um briefing executivo completo pra eu chegar preparado na reunião.
> Pesquisa ela online.
>
> Quero saber: tom de conteúdo, público-alvo dela, marcas que já trabalhou, engajamento, pontos fortes, como negociar melhor, sugestão de proposta de parceria anual com valores.
>
> Formato: documento executivo, não planilha. Nível McKinsey.

**Resultado:** Documento de briefing gerado.

**Fala:** "Imagina chegar numa reunião com isso. A pessoa do outro lado pensa: 'esse cara me estudou'. Não. O Claude estudou em 40 segundos."

---

## A DOR — Transição pro Claude Code

> Este momento acontece NATURALMENTE durante os chats. Especialmente no Chat 1 (7 arquivos), Chat 6 (12 recibos) e se tentar fazer orçamentos (8 subpastas). NÃO pular.

**O que acontece na prática:**
Abre Finder, navega até pasta, seleciona arquivos, arrasta pro chat. Próximo chat, faz de novo. Influencers são 12 recibos individuais. E os orçamentos? 8 subpastas com 2-3 arquivos cada — nem tenta.

**Fala em voz alta:**
"Beleza, fizemos um monte de coisa boa. Mas perceberam o que eu tô fazendo? Abrindo pasta, selecionando arquivo por arquivo, arrastando, abrindo novo chat, fazendo de novo..."

"E pior: cada chat é isolado. O de despesas não sabe da receita. O de leads não sabe dos ads. EU que tô sendo o conector entre as peças."

"E os orçamentos ali? 8 subpastas com monte de arquivo? Nem tentei. Que saco. Isso não escala."

"E se eu te disser que existe um lugar onde eu falo UMA vez e ele lê TUDO? Todas as pastas, todos os arquivos, todos os dados? Sem arrastar nada?"

---

# FASE 2 — CLAUDE CODE (daí não sai mais)

**Fala:**
"Isso aqui é o Claude Code."

(abre o terminal no projeto)

"Ele já tá DENTRO do projeto. Vê todas as pastas. Todos os 47 arquivos. Sem arrastar, sem selecionar, sem abrir Finder. Eu só falo."

---

## CLAUDE CODE PASSO 1 — Análise estratégica cruzada

**Prompt:**
> Lê todos os dados na pasta dados-bagunca/. São 47 arquivos em 6 pastas: despesas de fornecedores (4, em idiomas e moedas diferentes), extrato bancário, tributário, custos fixos, vendas de 3 canais, leads, comprovantes de influencers, relatórios de 3 plataformas de ads, e uma pasta inteira de orçamentos históricos com subpastas duplicadas.
>
> Cruza TUDO e me dá uma análise estratégica completa:
>
> FINANCEIRO:
> - Receita total vs despesas totais = lucro real por mês
> - Confere se receita reportada bate com extrato bancário — tem diferença?
> - Meses no cheque especial: por quê? poderia ter sido evitado?
>
> PRODUTO:
> - Quais produtos dão mais margem considerando custo de aquisição?
> - Algum deveria ser descontinuado?
> - Algum deveria ter preço ajustado? Quanto e quanto gera de lucro extra?
>
> FORNECEDORES E ORÇAMENTOS:
> - Compara orçamentos históricos entre as pastas — quem subiu preço? Quanto?
> - Tem contrato com cláusula problemática? Exclusividade, multa abusiva, renovação automática?
> - Onde renegociar? Quanto economiza?
>
> MARKETING:
> - Ads: quais campanhas queimando dinheiro? Onde realocar?
> - Influencers: quais descontinuar, quais aumentar?
> - CAC por canal
>
> OPERACIONAL:
> - Custos pra cortar, dívidas urgentes, fluxos pra matar
>
> Me diz EXATAMENTE o que fazer pra ser mais lucrativo amanhã.

**O que acontece:** Claude Code lê os 47 arquivos em segundos, cruza tudo, e começa a achar os problemas:
- Gráfica Star subiu 27% em 3 meses (pastas separadas esconderam)
- Contrato Embalart: exclusividade 24 meses, multa R$11.8k — GreenPack é 34% mais barato sem contrato
- PackPro: desconto "bom" mas exclusividade com multa de 3x último pedido
- Malha Carioca: +18% no mesmo produto, pasta diferente escondeu
- Display RJ: +19%, empurrando contrato de manutenção desnecessário
- Cheque especial: pagou fornecedor internacional sem casar com entrada de receita
- Produtos com margem negativa depois de taxa ML + frete

**Fala:** "Ele acabou de ler 47 arquivos em 6 pastas que eu nem quis abrir na mão. E encontrou um contrato com multa de 12 mil que ninguém leu direito. Fornecedor 34% mais barato. Gráfica que subiu 27% escondido. Tava tudo aí nos dados. Ninguém cruza isso. Ele cruza."

---

## CLAUDE CODE PASSO 2 — Gera o dashboard

**Prompt:**
> Agora gera um dashboard HTML interativo completo com TUDO que analisamos:
>
> - Home com KPIs principais (receita, despesa, lucro, margem, CAC)
> - Aba Despesas (fornecedores, tributário, custos fixos)
> - Aba Receita (por canal, por produto, por mês)
> - Aba Comercial (leads com score, mensagem, próxima ação)
> - Aba Marketing (ads por plataforma + influencers com tiers)
> - Aba Orçamentos (comparativo histórico, quem subiu preço)
> - Aba Alertas & Recomendações (contratos problemáticos, renegociações, produtos pra ajustar, despesas pra cortar, economia projetada)
>
> Visual premium, dark mode, navegação por abas, gráficos e tabelas.
> Dados reais dos arquivos.

**Resultado:** Dashboard HTML gerado no projeto, com os dados reais.

**Fala:** "Todas as peças que a gente fez separada no chat, mais os 47 arquivos que nem abri, mais análise estratégica que encontrou problemas escondidos. Tudo junto. Sem arrastar um arquivo."

---

## CLAUDE CODE PASSO 3 — Deploya (papo de homem)

**Prompt:**
> Deploya isso na Vercel. Quero um link real.

**O que acontece:** Claude Code cria o repo, faz push, deploya na Vercel. Link real. Sistema real.

**Fala:** "Link real. Qualquer um acessa. Atualiza. Funciona. Isso não é um arquivo HTML num chat. É um sistema no ar."

---

## CLAUDE CODE PASSO 4 — Supabase (se der tempo)

**Prompt:**
> Agora conecta num Supabase. Quero que esses dados fiquem num banco de dados real, com auth, pra poder atualizar e ter histórico.

**Fala:** "Agora tem banco de dados. Login. Os dados vivem lá. Semana que vem quando chegar nota nova de fornecedor, atualiza no sistema e o dashboard recalcula tudo sozinho."

---

## POR QUE ESSA ORDEM FUNCIONA

1. **Fase 1 (Chat):** cada tarefa é simples — eles veem que é fácil, geram planilhas reais
2. **A dor é real:** arrastar arquivo, chat isolado, orçamentos nem tentou — eles SENTEM a limitação
3. **Fase 2 (Code):** resolve tudo de uma vez — lê 47 arquivos, cruza, acha problemas, gera dashboard, deploya
4. **Cada ferramenta resolve a dor da anterior** — ninguém precisa ser convencido, eles sentiram
5. **Não sai mais do Code** — faz sentido, é onde tudo acontece de verdade
6. A progressão: **fazer coisas simples → sentir a limitação → resolver tudo de uma vez**
