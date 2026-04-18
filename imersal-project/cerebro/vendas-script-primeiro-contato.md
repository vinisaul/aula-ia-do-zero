---
type: knowledge
area: vendas
usado-em: [[new-bird]], [[whatsapp-automation]], [[copywriting]]
tags: [script, whatsapp, qualificação, lead, dentista]
---

# Script de Primeiro Contato — WhatsApp Lead Dentista

## Contexto

Lead chegou via Meta Ads ou Google. Está quente agora. Janela de resposta ideal: menos de 5 minutos. Após 30 minutos, taxa de conversão cai 80%.

## Mensagem de Abertura Automática (n8n/Evolution API)

```
Oi [Nome]! Aqui é da equipe da New Bird 👋

Vi que você se interessou em aumentar o número de pacientes na sua clínica.

Posso te fazer 3 perguntas rápidas pra entender melhor o que faz mais sentido pra você?
```

**Por que funciona**: pede permissão, soa humano, não já atira preço/serviço.

## 3 Perguntas de Qualificação

**Pergunta 1 — Tamanho do negócio:**
```
Quantos pacientes novos você atende por mês hoje, mais ou menos?
```
→ Menos de 20: potencial alto (muito a crescer)
→ Mais de 50: ticket maior, exige proposta mais robusta

**Pergunta 2 — Captação atual:**
```
Como esses pacientes chegam até você hoje? Indicação, Google, Instagram...?
```
→ Só indicação: está deixando dinheiro na mesa, abertura fácil
→ Já roda ads: comparar com resultado que a New Bird entrega

**Pergunta 3 — Ambição:**
```
Se eu te disser que consigo trazer 20-30 novos pacientes por mês nos próximos 60 dias, isso resolveria um problema real pra você?
```
→ Se sim: seguir para proposta
→ Se hesitar: aprofundar o "por quê" antes de continuar

## Reframing de Preço

Se o lead falar "tá caro" antes de ver proposta:

```
Entendo. Me diz: quanto você cobra em média por tratamento?

[Resposta: "R$1.500"]

Então 2 pacientes novos já pagam o nosso serviço no mês. A partir daí, tudo é lucro adicional.
Faz sentido?
```

## Próximo Passo Após Qualificação

Não enviar proposta por mensagem. Marcar uma call de 20 minutos:

```
Perfeito. Tenho horário amanhã às 10h ou quinta às 15h — qual funciona melhor pra você?
(Só 20 minutinhos, prometo)
```

## Red Flags para Desqualificar

- "Quero resultado em 1 semana"
- "Não tenho budget, quero testar de graça"
- "Meu sobrinho faz por menos"
- Não responde perguntas de qualificação, só pede preço

## Links Relacionados

→ [[new-bird]] — contexto do negócio
→ [[whatsapp-automation]] — como automatizar abertura com n8n
→ [[copywriting]] → [[emails-follow-up]] — quando o lead some
→ [[proposta-comercial]] — próximo passo após qualificação
→ [[objecoes-comuns]] — como tratar os red flags
