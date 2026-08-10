#!/bin/sh
set -eu

skill='cass-pesquisa/SKILL.md'
auditor='cass-pesquisa/references/auditor.md'
readme='README.md'

grep -Fq 'Antes de concluir que a Exa está' "$skill"
grep -Fq 'indisponível ou cair para a busca nativa, passe pelo portão de descoberta:' "$skill"
grep -Fq 'mcp__codex_apps__web_search_exa' "$skill"
grep -Fq 'mcp__exa__web_fetch_exa' "$skill"
grep -Fq 'ToolSearch({ query: "exa web_search web_fetch", max_results: 5 })' "$skill"
grep -Fq 'uma busca Exa de teste' "$skill"

! grep -Fq 'Nada de Python, Node, npm, `npx` ou Firecrawl é necessário.' "$readme"
! grep -Fq '## O que precisa estar instalado' "$readme"
grep -Fq '# Skill cass-pesquisa' "$readme"
grep -Fq 'Criada por Cassiano Diniz.' "$readme"
grep -Fq 'Programa de Aceleração de Consultório: [Praxios](https://www.pda.praxios.com.br/)' "$readme"
grep -Fq 'Instagram: [@cassiano.diniz](https://www.instagram.com/cassiano.diniz/)' "$readme"
! grep -Fq '## Instalação manual' "$readme"
! grep -Fq '~/.claude/skills/cass-pesquisa/' "$readme"
! grep -Fq '~/.agents/skills/cass-pesquisa/' "$readme"

! grep -Fq 'Medido em prova real' "$skill"
! grep -Fq 'Medido em uso real' "$skill"
! grep -Fq 'Caso real:' "$skill"
! grep -Fq 'Já aconteceu em 5 rodadas reais' "$skill"
! grep -Fq '400-800 mil tokens' "$skill"
! grep -Fq 'como na `/search`' "$skill"
! grep -Fq '37.448 avaliações' "$auditor"

unzip -p cass-pesquisa.skill cass-pesquisa/SKILL.md | grep -Fq 'Antes de concluir que a Exa está'
! unzip -Z1 cass-pesquisa.skill | grep -q '^__MACOSX/'
! unzip -p cass-pesquisa.skill cass-pesquisa/SKILL.md | grep -Fq 'Medido em prova real'
! unzip -p cass-pesquisa.skill cass-pesquisa/SKILL.md | grep -Fq 'Caso real:'
! unzip -p cass-pesquisa.skill cass-pesquisa/SKILL.md | grep -Fq '400-800 mil tokens'
! unzip -p cass-pesquisa.skill cass-pesquisa/references/auditor.md | grep -Fq '37.448 avaliações'
