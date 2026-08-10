---
name: cass-pesquisa
description: 'Acionar quando precisar de FATO verificado pra post de Instagram de saúde/nutrição — "tem estudo sobre X?", "quantos brasileiros atingem X?", "isso que saiu na notícia é verdade?", "acha um dado pra esse carrossel", "qual a recomendação oficial de X", "isso tem embasamento?", "X previne/causa Y?", "quero postar sobre X, me acha os dados". Cobre evidência científica e checagem de fato noticioso. Entrega a ficha de fatos, não o texto do post.'
---

# cass-pesquisa — pesquisa científica com procedência

Entrega uma **ficha de evidência verificada**: o que os estudos mostram sobre a sua pergunta, com a
frase literal de cada fonte, a qualidade de cada achado e o que os dados não podem dizer. Não
escreve texto para publicação — entrega a evidência.

## Setup

- **Exa** (recomendada, com plano B) — busca e leitura. **Antes de concluir que a Exa está
  indisponível ou cair para a busca nativa, passe pelo portão de descoberta:**
  1. procure ferramentas cujo nome termine em `web_search_exa` e `web_fetch_exa`; prefixos como
     `mcp__codex_apps__web_search_exa` e `mcp__exa__web_fetch_exa` são a própria Exa;
  2. se o ambiente tiver descoberta sob demanda, execute
     `ToolSearch({ query: "exa web_search web_fetch", max_results: 5 })`;
  3. quando encontrar as ferramentas, faça **uma busca Exa de teste**. Resultado não vazio e sem
     erro confirma a Exa para a rodada; leia as URLs encontradas com `web_fetch_exa`.

  A lista inicial de ferramentas não basta para declarar ausência. Só use o plano B quando não
  houver descoberta, nenhuma ferramenta Exa aparecer após a busca, ou a busca de teste falhar.
  Se a Exa cair depois de ter funcionado, siga o limiar contado em "Quando o leitor cai no meio da
  execução".
- **⛔ O freio é a capacidade, não a marca — esta é a regra principal do Setup.** A pergunta não é
  "tenho a Exa?", é **"consigo achar e ler fonte primária?"**.

  | A ferramenta preferida | O plano B | Quando parar |
  |---|---|---|
  | Exa (busca e leitura) | **a busca e a leitura nativas do ambiente onde você está rodando** — seja qual for o nome delas | só quando **nenhum** número da ficha se sustenta (ver abaixo) |

  🚩 **O gatilho de parada é a leitura, nunca a busca — e ele é contado, não sentido.** O que vira
  ficha é o que foi lido; não existe ficha feita de resultados de busca. Mas "não consegui por meio
  nenhum" é frase que nunca fecha sozinha — sempre cabe mais uma tentativa. **Por isso a parada tem
  uma regra só, e é esta: três ângulos vazios encerram UM número** (`fonte não lida`); **quando
  todos os números da ficha fecharem assim, aí sim para e avisa** — não sobrou ficha pra entregar.
  Nenhuma outra condição interrompe a rodada.

  A Exa é o caminho recomendado, não uma exigência. Caiu, **troque e siga a rodada** — e
  **escreva na ficha qual busca você acabou usando**. Troca escondida é pior
  que troca declarada: produz ficha que parece ter o rigor de sempre sem ter.

  🚩 **No plano B, a busca serve pra LOCALIZAR a página; quem sustenta o fato é a leitura** — e é
  justamente a leitura que quebra. Nada de resultado de busca vira fato sem ter sido aberto e lido
  (a regra "ler é obrigatório" vale igual no plano B). Medido em prova real (04/08/2026,
  dado oficial de atividade física): a busca nativa achou as duas fontes primárias de primeira, sem
  dificuldade — mas **a leitura nativa não abriu nenhum dos dois PDFs**, que é justamente o formato
  em que Ministério da Saúde e IBGE publicam quase tudo, e um domínio oficial devolveu bloqueio de
  acesso. A rodada só fechou porque havia um leitor de PDF disponível. Então, no plano B:
  1. PDF que o leitor comum não abre → **se houver um leitor de PDF dedicado, use-o**;
  2. não tiver, ou continuar sem abrir → **vá direto pras portas 1-4 da regra de ângulo**;
  3. três ângulos vazios → `fonte não lida`, e o número não é usado. Como sempre.

  ⚠️ **O alcance desta medição:** foi **uma** consulta, com 34 links devolvidos e **2 documentos
  lidos**. Ela prova que a leitura nativa de PDF falhou naquele caso; **não** prova que a busca
  nativa acerta sempre, nem que as portas 1-4 resolvem o dado brasileiro em geral. Trate como
  hipótese de trabalho, não como lei — e, quando a prática contrariar, ganha a prática.
- Calcular a data de hoje explicitamente antes de qualquer busca com recorte de tempo.

---

## Antes de buscar — entender o escopo (sem internet)

Quem usa esta skill costuma não ter prática em pesquisa científica: o pedido chega como
"quero um estudo sobre colágeno", sem público, sem efeito, sem comparação. Buscar assim devolve
mil artigos e nenhum serve. O escopo é levantado em **três tempos**, e cada tempo é **um turno**:
mostre o que é daquele tempo, **encerre o turno e espere a resposta**. Não busque no meio.

**São sempre as mesmas perguntas, na mesma ordem — não escolha quais mostrar, não adapte ao
tema.** Um formulário que muda a cada assunto tira de quem pergunta a única coisa que ele estava
aprendendo: qual é o formulário.

⛔ **Mostre a pergunta e os exemplos. Nada além disso.** Não escreva por que a pergunta importa,
não comente o tema, não adiante palpite sobre a resposta ("imagino que no seu caso seja X"), não
acrescente aviso nem observação. Medido em uso real (10/08/2026): com um "por quê" em cada
pergunta, a skill **fabricou justificativas** — escreveu que o que vale para atleta de 25 anos
"costuma não valer" para uma paciente de 60, afirmação que nenhuma fonte sustenta, e passou a
adaptar os comentários ao tema de quem perguntava. Uma skill cujo trabalho é exigir frase literal
de fonte não pode abrir a conversa inventando fato. **Os exemplos entre parênteses existem para
mostrar o formato da resposta, não para ensinar.**

**Exceção única:** se o pedido já trouxer as respostas, não pergunte de novo — repita em uma linha
como você entendeu o escopo e siga.

### Tempo 1 — sozinha, sem mais nada junto

> Sobre o que você gostaria de pesquisar hoje?

Só isso. Não adiante as outras perguntas, não explique o método, não peça detalhe. Quem chega com
"colágeno" na cabeça trava se a primeira tela tiver oito perguntas.

### Tempo 2 — o escopo

> Perfeito. Agora seis perguntas pra eu achar o estudo certo, e não mil errados. Responda só o que
> quiser — todas aceitam "tanto faz" e nenhuma trava a pesquisa.
>
> **1.** Quer estudos em células, animais, humanos, algum outro — ou posso fazer uma procura ampla?
>
> **2.** Gostaria de pesquisar em algum público específico, ou tanto faz? *(ex.: mulher acima de 50,
> criança, quem tem diabetes, atleta)*
>
> **3.** Qual efeito você gostaria de observar? *(ex.: perda de peso, pressão, glicemia, ruga,
> mortalidade, dor)*
>
> **4.** Gostaria de comparar com alguma coisa, ou tanto faz? *(ex.: placebo, outra dose, outro
> tratamento, não usar nada)*
>
> **5.** Tem alguma forma ou dose específica que te interessa, ou tanto faz? *(ex.: suplemento,
> alimento, medicamento, injetável, dose alta)*
>
> **6.** Gostaria de estudos com uma duração específica, ou tanto faz? *(ex.: até 12 semanas, pelo
> menos 1 ano, uso crônico)*

### Tempo 3 — afinar (opcional, e diga que é)

> Últimas duas, e **estas são opcionais** — se não souber, é só dizer "pode ir" que eu busco amplo.
>
> **7. Prefere algum desenho de estudo** (meta-análise, revisão sistemática, ensaio clínico
> randomizado, coorte, revisão narrativa) **ou posso fazer uma procura ampla?**
>
> **8. Tem alguma revista científica que você gostaria que eu preferisse ou evitasse?**

Estas duas são as mais técnicas do formulário, e quem está começando não tem como respondê-las.
**A linha "são opcionais" não é gentileza: sem ela, quem não sabe trava aqui, no último passo,
depois de já ter respondido tudo.** Se vier "pode ir", siga — e nunca insista.

### As regras dos três tempos

⛔ **Resposta vazia não interrompe nada.** Campo respondido vira filtro da busca; campo em
"não sei", "pode ir" ou pulado fica em aberto, e a busca sai ampla naquele eixo. Nunca preencha de
cabeça o que a pessoa não respondeu — é o mesmo erro do campo preenchido com o vizinho, uma etapa
adiante. O que ficou em aberto reaparece **uma única vez**, no Portão 1, como escolha.

🚩 **Pediu célula ou animal? Entregue — e marque.** A pergunta 1 deixa a pessoa escolher, e a
escolha é legítima: mecanismo é uma pergunta científica válida. Mas a regra da hierarquia continua valendo
inteira — estudo em animal ou in vitro **nunca** é o achado principal de uma recomendação para
gente. Nesse caso a ficha traz o achado com o rótulo `evidência pré-clínica — não sustenta
recomendação para humanos`, e a pergunta ⑤ diz isso com todas as letras. Entregar sem marcar é o
caminho mais curto para alguém afirmar em pessoa o que só aconteceu numa placa de vidro.

🚩 **Não julgue o pedido nem corrija o vocabulário — aqui, nestes três tempos.** "Colágeno faz bem
pra pele?" é pergunta legítima, e transformar isso em aula é o que faz a pessoa parar de usar. Esta
linha vale só para o tom do formulário: as regras de rigor do resto da skill — indicador literal,
estico, a pergunta ⑤ — continuam valendo inteiras.

## As cinco perguntas que a ficha responde (sem internet)

A ficha não tem formato fixo de assunto. Ela responde sempre **as mesmas cinco perguntas**, seja o
tema um suplemento, um remédio, uma prevalência ou uma manchete para checar.

| | A pergunta | O que entra |
|---|---|---|
| **①** | **O que exatamente foi perguntado?** | o escopo dos três tempos, escrito em uma linha: população, intervenção/exposição, comparação, desfecho, forma/dose, duração — e o que ficou em aberto |
| **②** | **O que a melhor evidência mostra?** | o achado, com número, `n`, duração e população coladas |
| **③** | **Qual a qualidade dessa evidência?** | desenho do estudo, tamanho, quantas origens independentes, e onde ela é frágil |
| **④** | **Onde a evidência falta ou discorda?** | literatura dividida, lacuna declarada, ou `ninguém mediu isso` |
| **⑤** | **O que este dado NÃO pode dizer?** | **obrigatório sempre** |

⛔ **Pergunta sem resposta fica escrita como sem resposta.** Não preencha ② com o número mais
parecido, não invente ③ a partir do abstract, não deixe ④ vazio quando a literatura é dividida.

Caso real do erro que isso evita: numa pesquisa sobre vitamina D e câncer, não existia dado de
"quantos atingem a recomendação" — nenhum órgão recomenda vitamina D para prevenir câncer. O campo
foi preenchido com "≥90% dos brasileiros consomem abaixo do recomendado", que é verdade e responde
**outra pergunta** (adequação nutricional). Os dois números lado a lado insinuam uma relação que a
ciência não sustenta. **Campo vazio é honesto; campo preenchido com o vizinho é ficha errada.**

🚩 **A pergunta ④ é conteúdo, não sobra.** "Ninguém mediu isso no Brasil" e "os estudos discordam"
são achados de pleno direito — muitas vezes o mais útil da ficha. Uma ficha que só mostra o que
confirma é uma ficha que escondeu metade do que encontrou.

### Buraco tem três tipos — e a diferença muda a conclusão

| Escreva | Quando | O que vale |
|---|---|---|
| **`não existe`** | procurei a fundo e **ninguém mediu isso** | **é achado**, e entra na pergunta ④ |
| **`medido, não publicado assim`** | mediram, mas só existe **em outro recorte** (por faixa de renda, por região, por quintil — não no número único que você queria) | use o recorte que existe **dizendo que é recorte**, ou a faixa ("de 37% a 73%, dependendo do grupo"). Nunca faça média dos recortes pra inventar o número único |
| **`fonte não lida`** | o dado existe, **eu é que não consegui abrir** | é limitação minha. O número **não é usado**, e isso vai escrito |

Confundir os três é grave nos dois sentidos: transformar limitação sua em "a ciência não sabe" é
mentira; e jogar fora um "ninguém mediu" é jogar fora o achado mais forte do tema.

---

## Como pesquisar — em paralelo, não em fila

Cada pergunta da ficha que precisa de busca vira uma **sub-pergunta independente**. Dispare todas **no mesmo
turno**, não uma depois da outra.

**O que veio dos três tempos vira filtro; o que ficou em aberto vira amplitude.** Campo
respondido entra na query da sub-pergunta ("mulheres pós-menopausa" vira termo, não suposição).
Campo em aberto **não vira suposição**: a sub-pergunta sai sem ele, com `numResults` de descoberta
ampla (15, nunca acima de 25), e o que voltar é oferecido como escolha no Portão 1.

- **Com subagente disponível:** um por sub-pergunta. Texto cru de página **nunca** entra no seu
  contexto. Diga a cada um, literalmente:
  > *Antes de usar a busca nativa, passe pelo portão de descoberta da Exa: procure
  > `web_search_exa` e `web_fetch_exa` inclusive quando vierem com prefixo `mcp__...__`; se houver
  > descoberta sob demanda, rode `ToolSearch({ query: "exa web_search web_fetch", max_results: 5 })`.
  > Achou? Faça uma busca Exa de teste e, se ela responder, use a Exa para buscar e ler. Só se ela
  > não aparecer ou o teste falhar, use a busca e a leitura nativas do seu ambiente e diga no
  > relato qual você usou.
  > Devolva, por número: o valor, a **frase literal** onde ele aparece, a URL, e n/duração/população.
  > Sem frase literal, escreva `não lido` — não parafraseie a conclusão da fonte.
  > No fim do relato, dois contadores: quantos resultados as buscas devolveram × quantas páginas
  > você abriu de fato.*
- **Confira que TODOS voltaram.** Leva grande pode ser recusada por limite de simultaneidade.
  Sub-pergunta sem resposta = campo vazio silencioso. Reenvie o que faltou antes de escrever.
- **Confira os contadores.** Relato que diz "abri 0 páginas" é campo vazio com cara de resposta —
  trate como sub-pergunta sem resposta e reenvie.
- **Sem subagente:** rode em sequência, destilando cada leitura em 3-5 linhas antes de seguir.

### ⛔ Conferência antes de fechar a ficha

**Nenhum fato entra na ficha sem a frase literal da fonte colada nele.** Se um ajudante devolveu
uma conclusão sem a frase ("os ensaios não acharam aumento"), você **não sabe se ele leu** — e
conclusão plausível de segunda mão é o jeito mais fácil de a ficha sair errada com cara de certa.
Sem frase literal: ou você mesmo vai ler, ou o campo vira `fonte não lida` e o número não é usado.

**Escrever a query:** descreva *a página que você quer achar*, não o fato que quer saber.
"relatório do Ministério da Saúde com o percentual de adultos que praticam atividade física" ganha
de "atividade física Brasil percentual". Frase natural, não palavras soltas.

**Quantos resultados:** 5 pra entidade nomeada · 10 pra busca filtrada · 15 pra descoberta ampla.
Nunca acima de 25 — mais cobertura se consegue com **mais ângulos**, não com n maior.

**Ler é obrigatório.** Snippet de busca não vira fato. Sem ter lido o texto, o campo é `fonte não lida`.

### Quando não abre — regra de ângulo (não de ferramenta)

Página que volta menu de navegação, índice, ou muro de login **não é a fonte** — é a casca dela.
Quando isso acontece, **não fique trocando de ferramenta na mesma porta. Procure outra porta pro
mesmo número:**

1. A **base de dados** em vez do relatório (o IBGE publica no SIDRA as mesmas tabelas do PDF).
2. O **artigo científico que usou aquele dado** — costuma citar o número com a frase e a tabela.
3. Quem **reproduziu a tabela**: secretaria estadual, nota técnica, painel oficial.
4. O **PDF direto do periódico** em vez do HTML do portal; espelho de acesso aberto (PMC).
5. **Qualquer leitor de PDF ou extrator que o seu ambiente tenha**, se houver — mas PDF de
   centenas de páginas costuma voltar vazio e queimar tempo; peça a faixa de páginas se a
   ferramenta aceitar, e não insista mais de uma vez.

**Três ângulos vazios → escreva `fonte não lida` e não use o número.** Não invente, não estime.

### Quando o leitor cai no meio da execução (não é a página — é a ferramenta)

**Sinais de queda — cada um com o seu limiar próprio.** Não é impressão, é contagem:

| Sinal | Quantas vezes basta |
|---|---|
| **HTTP 402** (sem crédito) | **1** — crédito não volta sozinho no meio da rodada |
| **Timeout** | **2** chamadas seguidas estourando o tempo |
| **Resposta vazia**, sem mensagem de erro | **2** seguidas |

Já aconteceu em 5 rodadas reais — e numa delas um PDF de 213 páginas consumiu 217 créditos de um
extrator e devolveu vazio. O sinal de crédito (402) está aqui porque **crédito não volta sozinho no
meio da rodada**: insistir só queima o que sobrou.

1. **Declare a queda uma vez e pare de insistir naquela ferramenta pela rodada inteira.** Tentar
   de novo não muda o resultado, só queima crédito e tempo.
2. **O leitor de PDF caiu → a rodada continua.** Todo alvo que era caso dele vai direto pras
   portas 1-4 da regra de ângulo, pulando a tentativa nele. Subagente ainda por disparar recebe no
   prompt: *"o leitor de PDF está fora — não o use."*
3. **Exa caiu no meio → NÃO pare. Troque pela busca nativa do ambiente e siga a rodada.** Declare
   a troca uma vez, use a busca e a leitura que o seu ambiente oferece (seja qual for o nome delas)
   e continue de onde parou. Subagente ainda por disparar recebe no prompt: *"a Exa está fora —
   use a busca e a leitura nativas do seu ambiente, e diga no relato qual você usou."*
   **A parada é a mesma regra do Setup, e só ela:** três ângulos vazios encerram um número; todos
   os números fechados assim, para e avisa. Ferramenta caída não é motivo de parada — é motivo de
   troca.
   ⚠️ A troca não rebaixa o selo por si só: o selo mede **o que você leu**, não com que ferramenta
   achou a página. Um `texto sustenta` obtido pela busca nativa continua sendo `texto sustenta`.
4. **A ficha registra a queda:** qual ferramenta, em que ponto da rodada, e quais números ficaram
   `fonte não lida` por causa dela (na Quarentena, detalhe "leitor caiu no meio"). Queda escondida
   vira ficha que parece completa sem ser.

---

## ⛔ Portão 1 — confirmar o rumo

Com as primeiras respostas na mão, **parar e mostrar** antes de gastar o resto: o que já achou, de
que qualidade é, e para onde a busca está indo. Opções: seguir / trocar o eixo / trocar o tema.

**Se algum campo do escopo ficou em aberto, o estreitamento acontece aqui — e é a única
vez.** Mostre o que a busca ampla devolveu naquele eixo, em opções concretas ("achei estudo em
idoso e em atleta jovem — qual te interessa?"), nunca repetindo a pergunta original: no começo a
pessoa não tinha como saber, agora ela escolhe entre coisas que existem. **Diga o custo junto** —
o eixo descartado já foi pesquisado, então trocar de eixo agora custa uma segunda rodada de
sub-perguntas.

## ⛔ Portão 2 — aprovar a ficha

Ficha pronta → mostrar antes de considerar entregue. Nada sai da skill sem esse aval.

---

## Regras que valem em toda pesquisa

**Risco absoluto é obrigatório junto do relativo.** "Dobra o risco" em cima de um risco que vai de
0,1% para 0,2% engana. Achou os dois → põe os dois. Só o relativo → escrever
`só risco relativo — sem base absoluta` e repetir na pergunta ⑤.

**Corroboração só conta se as fontes medem a mesma coisa.** Antes de chamar algo de 2ª fonte,
checar quatro equivalências: **população, exposição, período, desfecho**. Falhou uma → não é 2ª
fonte; entra como `contexto, não corrobora o número`, e o fato fica como **fonte primária oficial
única** — que é honesto e suficiente. Colapsar pra 1 também quando: mesmo DOI, notícia de agência
republicada, release reescrito, folha informativa + o paper que ela divulga.
**Conte origens, não páginas:** registre quem cada página credita pelo número; duas páginas
creditando o mesmo estudo são **uma** origem. **Dois artigos diferentes sobre a mesma coorte também
são uma origem** — inclusive quando um é a versão ampliada do outro, com mais gente e mais anos de
seguimento. É o caso mais fácil de contar errado, porque são dois papers, dois DOIs e dois anos
diferentes: parecem confirmação e são a mesma medição, atualizada.
**Diretriz oficial é fonte única por natureza** — não existe "segunda OMS"; a regra não se aplica a ela.

**Quatro selos, nunca "verificado" genérico:**
`texto sustenta` (li o texto) > `abstract sustenta` (só o resumo) > `metadado confere` (existe, não
li) > `não sustenta` (não existe, retratado, ou diz outra coisa).

🚩 **Nem toda "fonte primária" tem o mesmo peso.** Carta ao editor, resumo de congresso, preprint e
comunicado à imprensa **não passaram por revisão por pares** — são a origem de boa parte dos
números virais de saúde. Achou o número numa dessas? Escreva o tipo ao lado
(`carta ao editor, sem revisão por pares`) e trate como **o mais fraco da ficha**. Nunca apresente
como "um estudo mostrou". Caso real: o número-manchete de um tema saiu de uma carta ao editor e a
ficha o atribuiu a um artigo — o auditor pegou.

**Hierarquia de evidência:** meta-análise > revisão sistemática > ensaio randomizado > coorte >
transversal. Estudo em animal ou in vitro nunca é evidência principal de conclusão para gente.

**Contexto colado no número:** n amostral, duração, população. Sem isso o número não entra.

**Dado conflitante não se esconde.** Literatura dividida é a resposta da pergunta ④, não um problema a resolver.

### Dado brasileiro — as três réguas não são intercambiáveis

| Fonte | Cobre | Como mede |
|---|---|---|
| **Vigitel** (Min. Saúde) | 26 capitais + DF | telefone, autorrelato |
| **PNS** (IBGE) | país inteiro, urbano e rural | presencial, domiciliar |
| **POF/INA** (IBGE) | país inteiro | o que foi ao prato, recordatório alimentar |

Também: SISVAN, DATASUS, ENANI, PNAD Contínua, ELSA-Brasil.
**Brasil primeiro; só cai pro mundo (OMS, GBD, NCD-RisC, OECD) se não existir dado BR — e declara qual foi, com o ano.**

🚩 **Um indicador nunca vira o outro.** "% que pratica no lazer" e "% com prática insuficiente" são
coisas diferentes; o complemento de um não é o outro. Copiar o nome do indicador literal do
documento e nunca derivar por subtração.

🚩 **Checar mudança de metodologia antes de comparar anos.** Órgão público muda definição de
indicador, amostra e forma de coleta entre edições, e avisa em nota de rodapé. Houve mudança → o
ano isolado serve, **a comparação não** — e isso vai na pergunta ⑤.

🚩 **Fonte certa, contexto errado.** Órgão de referência falando do assunto **vizinho** não vale
como fonte do seu assunto. Caso real: a frase mais forte em português sobre vitamina D era de uma
nota da SBEM sobre **covid-19**, não sobre câncer. A frase serve como contexto; a ficha **não pode**
dizer "a SBEM disse isso sobre câncer". Antes de citar, confira sobre **o que** o documento fala.

---

## Auditor e entrega

Antes de fechar, rodar o auditor independente — procedimento em `references/auditor.md`.
Formato da ficha em `references/ficha.md`. Salvar em `fichas/<tema>-<AAAA-MM-DD>.md`.

## Custo e parada

**Conte o TOTAL — o seu mais o de todos os ajudantes.** Contar só o seu contexto engana: medido em
4 rodadas, o orquestrador fica em 35-65 mil enquanto o total vai a **400-800 mil**. É o preço da
paralelização: sai do contexto, não some da conta.

- **Referência de custo (não é trava):** uma ficha costuma dar 400-800 mil tokens no total. Serve
  pra você reconhecer "isto está muito acima do normal", não pra abandonar a pesquisa no número.
- **O tamanho do esforço acompanha o tamanho da pergunta** — como na `/search`, que não põe teto,
  põe julgamento. **O piso, porém, é fixo: nunca menos de três ângulos.** Achar o que a evidência
  mostra, procurar quem discorda dela, e procurar o que ninguém mediu são três buscas diferentes —
  a segunda e a terceira não saem de graça da primeira, porque quem procura confirmação acha
  confirmação. Tema que exige cruzar muita fonte → abre mais que três.
  **Não existe número que force parada por custo:**
  pesquisa que estoura o esperado é sinal de pergunta mal dimensionada (ou de tema que é grande
  mesmo), não motivo pra largar no meio uma ficha que importa.
- **Quer mais barato?** A alavanca é **menos páginas por ângulo**, não menos ângulos e nunca menos
  leitura. Os três ângulos do piso são o que impede a ficha de virar só a confirmação do que já se
  esperava; cortá-los é economizar exatamente na parte que dá valor à pesquisa.

**Todos os números fecharam em `fonte não lida` (três ângulos vazios cada) → parar e avisar.**
É o mesmo gatilho da regra do freio, no Setup: a parada se conta, não se sente. Nunca produzir ficha
de cabeça: ficha inventada é pior que ficha nenhuma, porque passa pelo portão sem levantar suspeita.
Trocou de ferramenta no meio do caminho? Funciona — só escreva na ficha qual você usou.

## Autossuficiência

Não depende de nenhuma outra skill. Tudo está nesta pasta: sem script, sem caminho de máquina,
sem arquivo externo. Copiar a pasta basta.
