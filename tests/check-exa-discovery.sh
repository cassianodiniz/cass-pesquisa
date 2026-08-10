#!/bin/sh
set -eu

skill='cass-pesquisa/SKILL.md'
readme='README.md'

grep -Fq 'Antes de concluir que a Exa está' "$skill"
grep -Fq 'indisponível ou cair para a busca nativa, passe pelo portão de descoberta:' "$skill"
grep -Fq 'mcp__codex_apps__web_search_exa' "$skill"
grep -Fq 'mcp__exa__web_fetch_exa' "$skill"
grep -Fq 'ToolSearch({ query: "exa web_search web_fetch", max_results: 5 })' "$skill"
grep -Fq 'uma busca Exa de teste' "$skill"

! grep -Fq 'Nada de Python, Node, npm, `npx` ou Firecrawl é necessário.' "$readme"
! grep -Fq '## O que precisa estar instalado' "$readme"

unzip -p cass-pesquisa.skill cass-pesquisa/SKILL.md | grep -Fq 'Antes de concluir que a Exa está'
! unzip -Z1 cass-pesquisa.skill | grep -q '^__MACOSX/'
