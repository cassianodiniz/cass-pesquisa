# Skill cass-pesquisa

Skill para pesquisar evidências científicas com procedência. Ela ajuda a encontrar fontes,
conferir os números no texto original, registrar a qualidade da evidência e deixar explícito o que
os dados não permitem concluir.

Criada por Cassiano Diniz.
Programa de Aceleração de Consultório: [Praxios](https://www.pda.praxios.com.br/)
Instagram: [@cassiano.diniz](https://www.instagram.com/cassiano.diniz/)

## Materiais complementares

Open Evidence: [https://www.openevidence.com/](https://www.openevidence.com/)

GPT Schoolar: [https://chatgpt.com/g/g-kZ0eYXlJe-scholar-gpt](https://chatgpt.com/g/g-kZ0eYXlJe-scholar-gpt)

### Prompt para GPT

```text
BUSCA GUIADA DE ARTIGOS CIENTÍFICOS
Pesquise em bases acadêmicas confiáveis, priorizando artigos publicados em revistas científicas de alto impacto, como:
American Journal of Clinical Nutrition (AJCN); American Gastroenterological Association; American Journal of Gastroenterology; Nutrition Reviews; European Journal of Clinical Nutrition; Journal of Nutrition; Advances in Nutrition; Clinical Nutrition; Journal of the Academy of Nutrition and Dietetics; British Journal of Nutrition; Diabetes Care; The Journal of Clinical Endocrinology & Metabolism (JCEM); Metabolism: Clinical and Experimental; International Journal of Obesity; Obesity Reviews; New England Journal of Medicine (NEJM); The Lancet; JAMA; BMJ; Nature; Cell; Annals of Internal Medicine; PLOS Medicine; American College of Cardiology; European Heart Journal; Cochrane Reviews; Harvard Health Publishing; Harvard T.H. Chan School of Public Health (The Nutrition Source); Mayo Clinic Proceedings; Circulation; Journal of the American College of Cardiology (JACC); JAMA Cardiology; European Journal of Heart Failure; Heart; Lancet Diabetes & Endocrinology; Diabetologia; Endocrine Reviews; Nature Reviews Endocrinology; Progress in Cardiovascular Diseases; Annual Review of Nutrition; Gastroenterology; Gut; Hepatology; Journal of Hepatology; Journal of Clinical Oncology; Lancet Oncology; Cancer Discovery; Clinical Cancer Research; CA: A Cancer Journal for Clinicians; JAMA Internal Medicine; BMJ Open; BMC Medicine; eClinicalMedicine; Science; Nature Medicine; Nature Reviews Drug Discovery; American Journal of Epidemiology; International Journal of Epidemiology; Lancet Public Health; USPSTF; NICE; World Health Organization.
Evite fontes de baixa qualidade ou editoras predatórias (como MDPI, quando aplicável).
Se não houver resultados suficientes nessas fontes, você pode complementar com outras revistas científicas confiáveis.
Use ferramentas de busca acadêmica sempre que possível.
Considere que eu não tenho conhecimento técnico em metodologia científica.
ANTES de iniciar a busca, me faça apenas estas 3 perguntas, nesta ordem e com linguagem simples:
1️⃣ Sobre o que você quer entender melhor?
(Responda com poucas palavras — ex.: “jejum intermitente”, “colesterol”, “diabetes”, etc.)
2️⃣ O que você mais quer saber sobre isso?
Escolha uma opção:
A) Isso funciona?
B) É seguro?
C) Como aplicar na prática?
D) O que a ciência diz no geral?
(se não souber, pode dizer “não sei”)
3️⃣ Para quem isso é mais relevante?
(ex.: população geral, pessoas com diabetes, obesidade, idosos, etc. — ou “não sei”)
Depois das minhas respostas:
Converta minha dúvida em uma pergunta científica clara
Realize a busca em bases acadêmicas
Priorize revisões sistemáticas, meta-análises e grandes estudos clínicos
Apresente os principais artigos encontrados
Para cada artigo, explique em linguagem simples:
o que foi estudado
o que foi encontrado
o que isso significa na prática
Se houver divergência entre estudos, explique de forma clara.
Evite linguagem técnica desnecessária e foque na aplicação prática.
```

## Instalação mais fácil

Copie e envie este prompt ao Claude Code ou ao Codex:

```text
Instale como uma skill pessoal a pasta `cass-pesquisa` deste repositório: https://github.com/cassianodiniz/cass-pesquisa/tree/main/cass-pesquisa. Depois execute `/cass-pesquisa`; antes de cair na busca nativa, procure a Exa.
```

Se preferir, baixe diretamente o arquivo [`cass-pesquisa.skill`](https://github.com/cassianodiniz/cass-pesquisa/releases/latest/download/cass-pesquisa.skill) e peça ao agente para instalá-lo como uma skill pessoal.

Depois da instalação:

- No Claude Code, use `/cass-pesquisa`.
- No Codex, use `$cass-pesquisa` ou escolha a skill pelo menu de skills.

## O que vem no pacote

```text
cass-pesquisa/
├── SKILL.md
└── references/
    ├── auditor.md
    └── ficha.md
```

O pacote não contém fichas de pesquisa, dados pessoais, credenciais ou chaves de API.
