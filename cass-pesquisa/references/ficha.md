# O formato da ficha

O produto da skill: um arquivo com a evidência sobre a pergunta, que quem for usar não precisa
refazer. Salvar em `fichas/<tema-slug>-<AAAA-MM-DD>.md`.

**A ficha responde sempre as mesmas cinco perguntas**, seja o tema um suplemento, um remédio, uma
prevalência ou uma manchete. Pergunta sem resposta **fica escrita como sem resposta** — não some,
e não é preenchida com o vizinho.

```markdown
[⛔ SEM AUDITORIA — só quando o revisor não rodou. Primeira linha, antes do título, nunca omitida.]

# Ficha — [tema]

[data]
Confiança: [ALTA/MÉDIA/BAIXA] — [uma frase dizendo QUAL é a perna fraca]
Auditor: [passou / passou com ressalva / auditoria própria] — [se houve ressalva, qual]
Busca usada: [o NOME REAL da ferramenta de busca e da de leitura que você usou — "a nativa do
ambiente" não serve, é categoria, não nome. Se houve troca: qual entrou, em que ponto, e por quê]

## ① O que foi perguntado
[o escopo dos três tempos, em uma linha: população · intervenção/exposição · comparação ·
desfecho · forma ou dose · duração. E, em seguida:]
Ficou em aberto: [os campos respondidos com "tanto faz", e como a busca tratou cada um]
O que veio: [para CADA campo que ficou em aberto, o que os estudos encontrados de fato trazem —
tipo de estudo · população · desfecho medido · comparador · forma/dose · duração. "Não pedi" não é
desculpa para não informar; quem respondeu "tanto faz" precisa saber o que recebeu.]
Preferência declarada: [revistas ou desenhos que a pessoa pediu — e se foram atendidos ou não]

## ② O que a melhor evidência mostra
[o achado, com o número]
- **Frase da fonte:** "[a citação literal, copiada — sem isto o fato não entra]"
- Selo: [texto sustenta / abstract sustenta / metadado confere / não sustenta]
- [Autor/órgão, ano, revista] — [URL]
- Contexto do número: n=[...] · duração=[...] · população=[...]
- [2ª fonte, se passar nas 4 equivalências] — [URL]
- [ou: `fonte primária oficial única` / `contexto, não corrobora`]

## ③ Qual a qualidade dessa evidência
[desenho do estudo · tamanho · quantas ORIGENS independentes (não links) · onde ela é frágil]

## ④ Onde a evidência falta ou discorda
[literatura dividida, com os dois lados · lacuna declarada · `não existe` (ninguém mediu) ·
`medido, não publicado assim`. Seção vazia só se você procurou e não havia divergência nem
lacuna — e aí escreva isso.]

## ⑤ O que este dado NÃO pode dizer
[obrigatório sempre. O que seria estico afirmar a partir daqui: coorte não é causa;
risco relativo sem absoluto; subgrupo vendido como todo mundo; população que não é a brasileira;
dado velho apresentado como atual; indicador trocado por outro; estudo em célula ou animal que não
sustenta recomendação para gente.]

## Tabela de fatos
| pergunta | fato | fontes | selo |
|---|---|---|---|

## Quarentena — números que apareceram e NÃO devem ser usados
| número | motivo | detalhe |
|---|---|---|
| [ex: "97,6% acima do recomendado"] | `fonte não lida` | só citado dentro de outro artigo; a fonte primária não abriu |
| [ex: "colágeno cai 1% ao ano"] | `número órfão` | a referência citada não contém o número |
| [ex: "59% dos lares consomem suplemento"] | `responde outra pergunta` | usar aqui seria responder outra coisa |

**A coluna "motivo" usa um destes, sempre — não é texto livre:**

| Motivo | Significa |
|---|---|
| `responde outra pergunta` | número verdadeiro do assunto vizinho; usá-lo responderia outra coisa |
| `fonte não lida` | a fonte existe, não consegui abrir (3 ângulos vazios) |
| `procedência fraca` | li e rejeitei: preprint, carta ao editor, resumo de congresso, DOI/veículo incoerente |
| `número órfão` | a referência que o texto cita não contém o número |
| `estico` | a fonte foi lida e não sustenta a conclusão que circula com o número |
| `outro — [justificativa]` | caso que não cabe acima (ex.: artigo retratado); escrever o porquê |

O motivo classifica **por que o número não entra**; o selo continua classificando o que a fonte
sustenta — não misturar as duas réguas.

## Todas as fontes
1. [instituição/autor, publicação, data] — [URL]
```

**A quarentena é obrigatória e é metade do valor da ficha.** O número mais vendável de um tema
costuma ser o que não se sustenta — e se ele não estiver escrito com o motivo, alguém vai reencontrá-lo
e usar. Seção vazia: "Nenhum número descartado."

## Notas de forma

- **Traduzir sem perder o número.** "36% mais risco de morrer do coração (HR 1,36; IC95% 1,21–1,53)".
  A tradução é para quem vai ler; o número é a prova.
- **Link que abre.** Paper com `https://doi.org/...` (nunca DOI pelado). Notícia com veículo + data.
- **Conta sua é conta sua.** Somou, dividiu ou converteu um número que a fonte não publica assim?
  Escreva "esta conta é minha, o artigo publica separado".
- **O que não deu pra ler entra na ficha** como `fonte não lida — número não usado`. Silêncio sobre
  o buraco é o que faz a conclusão cair depois.
