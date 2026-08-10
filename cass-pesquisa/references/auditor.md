# O auditor

Auto-verificação carimba tudo como bom. O auditor roda em **contexto novo**, read-only, e o
trabalho dele é **derrubar** a ficha — na dúvida, reprovar.

## Como chamar

Grave o rascunho primeiro, num arquivo de verdade (o auditor não enxerga o que está só na sua
cabeça — precisa ler o arquivo, não a sua memória da conversa): `fichas/.rascunho-<tema>.md`, com
a ficha completa.

Abra um **subagente em contexto novo**, read-only, com o prompt abaixo. É a única forma de
auditoria desta skill: um modelo conferindo a própria ficha na mesma conversa carimba tudo como
bom, que é o vício que este passo existe para evitar.

```
Você é auditor INDEPENDENTE de uma ficha de evidência científica. Read-only. Seu trabalho é
DERRUBAR, não aprovar — na dúvida, reprove.

Leia: <caminho do rascunho>. Você tem internet: ABRA as URLs citadas e confira os números
contra a fonte. Não confie na ficha.

Devolva APENAS este JSON:

{
  "fatos": [{"id":"...", "selo":"texto sustenta|abstract sustenta|metadado confere|não sustenta",
             "justificativa":"a URL X diz literalmente '...'", "corrobora_de_verdade": true|false}],
  "checklist": [
    {"id":"A1","check":"Todo campo preenchido responde a pergunta DAQUELE campo? Nenhum foi preenchido com o número mais parecido de uma pergunta vizinha?","status":"pass|fail|n/a","evidence":"..."},
    {"id":"A2","check":"Todo número tem n amostral, duração e população?","status":"..."},
    {"id":"A3","check":"Dado de prevalência declara escopo (qual pesquisa, que população, que ano)?","status":"..."},
    {"id":"A4","check":"O que a ficha chama de 2ª fonte bate em população, exposição, período E desfecho? Ou é corroboração falsa? Dois artigos da mesma coorte são UMA origem, inclusive quando um é a versão ampliada do outro.","status":"..."},
    {"id":"A5","check":"Nenhum fato principal apoiado só em estudo animal ou in vitro?","status":"..."},
    {"id":"A6","check":"Os selos batem com o que foi lido? Nenhum 'texto sustenta' onde só o abstract abriu?","status":"..."},
    {"id":"A7","check":"Risco relativo sem risco absoluto está marcado como tal?","status":"..."},
    {"id":"A8","check":"Comparação entre anos de pesquisa oficial: foi checado se a metodologia mudou?","status":"..."},
    {"id":"A9","check":"Todo paper com https://doi.org/... e toda fonte com instituição+data+URL que ABRE?","status":"..."},
    {"id":"A10","check":"Todo número tem a FRASE LITERAL da fonte colada nele? Algum veio como conclusão parafraseada, sem citação — ou seja, possivelmente nunca lido?","status":"..."},
    {"id":"A11","check":"Alguma fonte citada fala do assunto VIZINHO e não do tema? (órgão certo, documento sobre outra doença/contexto)","status":"..."},
    {"id":"A12","check":"O que a pessoa PEDIU no escopo (população, desfecho, forma/dose, duração, tipo de estudo, revista) está atendido? Para cada campo que ela declarou: a evidência corresponde, ou a ficha diz que não achou nesse recorte? Campo pedido e silenciosamente ignorado é fail.","status":"..."},
    {"id":"A13","check":"Para cada campo que a pessoa NÃO pediu (respondeu 'tanto faz' ou pulou), a ficha DECLARA o que veio? Ex.: não pediu população, mas os estudos são em homens de 20-40 anos — isso está escrito? Quem não escolheu precisa saber o que recebeu.","status":"..."},
    {"id":"A14","check":"Algum fato com selo 'não sustenta' ou 'fonte não lida' ficou entre os fatos, em vez de ir para a Quarentena?","status":"..."}
  ],
  "esticou": ["a ficha diz X, a fonte diz Y"],
  "veredito": "passou|passou com ressalva|reprovou",
  "consertos": ["..."]
}

REGRA DE VEREDITO — não é média, é lista de itens que derrubam sozinhos:
Se A1, A6, A10, A12, A13 ou A14 vier "fail", o veredito é OBRIGATORIAMENTE "reprovou",
não importa quantos outros passaram. Falha em qualquer outro item → "passou com ressalva",
e a ressalva vai no campo "consertos". Nenhum fail em lugar nenhum → "passou".
Item que não se aplica ao tema é "n/a" e sai da conta; item aplicável que você não checou
é "fail", não "n/a".

ESTICO é o que mais importa: quando a ficha atribui à fonte uma conclusão maior do que ela tem.
É o erro que faz a conclusão nascer errada.
```

- **passou** / **passou com ressalva** → escrever a ficha final, apagar o rascunho. A ressalva vai
  escrita na ficha, não some.
- **reprovou** → aplicar os consertos, regravar, **rodar de novo**. Reprovou 2× no mesmo ponto →
  levar o ponto pra decisão de quem manda, não insistir.

## Quando o subagente não responde

Não existe versão de mão deste passo. Um checklist de bolso preenchido por quem escreveu a ficha dá
a sensação de auditoria sem a independência que faz a auditoria valer — e é pior que não ter
auditoria, porque parece que teve.

Se o mecanismo de subagente não existir, ou não responder depois de uma segunda tentativa, **a ficha
é entregue mesmo assim** — jogar fora a pesquisa por falha de ferramenta é pior — **mas entra com
este carimbo, na primeira linha, antes do título:**

```
⛔ SEM AUDITORIA — nenhum número desta ficha foi conferido por revisor independente.
Motivo: [o que falhou]. Os selos e as frases das fontes são o que o pesquisador registrou,
e ninguém os checou depois.
```

O carimbo **não sai** da ficha depois e não vira nota de rodapé: quem abrir essa ficha um mês
depois precisa ver, na primeira linha, que ela não passou por revisão. É o mesmo princípio da
quarentena — não esconder, marcar.

## O que fazer com fato reprovado

**Fato com selo `não sustenta` não fica entre os fatos.** Sai da resposta e vai para a
**Quarentena**, com o motivo `estico` e o detalhe do que a fonte diz de fato. O mesmo vale para
`fonte não lida`: número que não foi lido não é fato, é número em quarentena.

A skill não decide o que quem pediu vai fazer com a pesquisa — decide que número reprovado não
viaja misturado com número que passou.

## Confiança — diga qual perna manca

Rótulo sozinho não informa. **Sempre escrever qual é o ponto fraco**, em uma frase.

- **ALTA** — todos os campos usados com `texto sustenta` e fonte primária lida.
- **MÉDIA** — algum campo usado em `abstract sustenta`, ou fonte oficial única declarada.
- **BAIXA** — algum campo usado em `metadado confere`.

A confiança mede **a evidência que a ficha usa**, não a que ela descartou. Número que foi para a
quarentena não rebaixa a ficha — ele já não está nela. Rebaixar por causa do que foi corretamente
descartado pune justamente o comportamento certo, e faria toda pesquisa honesta sair BAIXA.

Fonte oficial única **não é defeito** quando o dado só existe num lugar (é o normal em prevalência
brasileira e em checagem de notícia). Nesse caso: MÉDIA com a nota "fonte primária oficial única —
não há segunda medição no país", e não BAIXA.

**Auditoria própria não vira uma nota igual à independente.** Ela não rebaixa a faixa, porque isso
jogaria toda ficha sem subagente para BAIXA e o rótulo pararia de significar algo. O que ela faz é
**aparecer colada na faixa, sempre**: `MÉDIA (auditoria própria)`. Quem lê decide o peso.

Não aplique desconto numérico: não há base confiável para calibrá-lo. Inventar um desconto seria
fabricar precisão que a evidência não tem.
