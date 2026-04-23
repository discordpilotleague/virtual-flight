---
title: "PilotLeague Primavera 2026 — Classificação Justa MSFS 2024 e VA"
description: "Classificação deslizante de 14 dias que premeia os pilotos ativos, companhias virtuais, perfis públicos e novos alertas de segurança — a maior atualização PilotLeague para MSFS 2024."
lang: 'pt'
pubDate: 'Apr 23 2026'
heroImage: '../../assets/hero-pilotleague-spring-2026-update.webp'
---

A atualização de primavera 2026 do [PilotLeague](https://pilotleague.com/pt/) é, de longe, a maior desde o lançamento público. Trata-se de uma reescrita profunda do sistema de classificação, acompanhada por companhias virtuais nativas, perfis públicos, uma camada de segurança reforçada para deteção de aterragens fora da pista e uma lista significativa de correções aplicadas ao gamebook que alimenta toda a experiência competitiva no Microsoft Flight Simulator 2024.

Para quem voa regularmente, a mudança é imediata: os pilotos ativos sobem naturalmente no topo da tabela, as sequências de voo (streaks) deixam de distorcer o ranking e as aterragens fora da pista são detetadas em tempo real, com impacto direto na pontuação. Para quem gere uma VA ou tenciona criar uma, a novidade é estrutural: o PilotLeague passa a reconhecer oficialmente as companhias virtuais, com logo, código IATA e callsign, e liga cada piloto ao seu grupo nas classificações globais.

![Classificação V2 PilotLeague com chips de companhias virtuais e separadores por categoria](../../assets/hero-pilotleague-spring-2026-update.webp)
*Fonte: [PilotLeague](https://pilotleague.com/pt/rankings/)*

## Classificação V2 — janela deslizante de 14 dias

O coração da atualização chama-se **Leaderboard V2**. A classificação deixou de ser uma acumulação infinita que favorecia os veteranos e passou a funcionar sobre uma janela deslizante de 14 dias, com decaimento exponencial aplicado a cada voo. Por outras palavras: o que o leitor voou ontem pesa mais do que o que voou há duas semanas, e a presença recente volta a ser o critério decisivo.

A fórmula oficial publicada pela equipa é a seguinte:

```
pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier

performance_recent = Σ(flight_score × e^(-0.05 × days_ago))  [últimos 14 dias]
activity_multiplier = min(1.5, 1.0 + 0.05 × flights_in_window)
reliability_multiplier = completion_rate_30d  [0.0 a 1.0]
```

Na prática, três efeitos tornam-se visíveis. Primeiro, um piloto que voe cinco ou seis missões completas por semana sobe rapidamente, mesmo sem pontuações individuais extraordinárias. Segundo, quem desaparece duas semanas vê a sua pontuação esvair-se de forma suave, sem penalizações artificiais. Terceiro, o `reliability_multiplier` protege a qualidade da base: cancelar voos a meio deixa de ser neutro e o rácio de conclusão dos últimos 30 dias multiplica diretamente a performance recente.

Em simultâneo, a atualização inaugura **quatro categorias temáticas** com tabelas independentes no topo 40: Aterragem, SOP (Standard Operating Procedures), Segurança e Eficiência de Combustível. Cada uma tem a sua própria leitura — um piloto pode não estar entre os 40 globais mas liderar em Eficiência, por exemplo, por voar o A320 em cost index baixo com perfis de descida limpos. É uma forma de valorizar os diferentes estilos de pilotagem que convivem no simulador.

## Companhias virtuais no PilotLeague

Esta é, provavelmente, a mudança mais pedida pela comunidade. O PilotLeague passa a suportar **companhias aéreas virtuais** de forma nativa. A criação é simples: abre-se a aplicação companion, vai-se a *Settings → Networks*, escolhe-se *Create Virtual Airline* e preenche-se o nome, o código IATA de três letras, o callsign e o logo. A verificação é manual, feita pela equipa, para evitar nomes duplicados ou abusivos.

Assim que uma VA é aprovada, todos os pilotos que a ela aderirem ficam associados. O nome da companhia aparece em forma de chip na classificação, ao lado do username, e a ficha pública do piloto passa a exibir o logo e o callsign. Para os gestores de VA, o sistema abre caminho a um [classificação interna entre membros](https://pilotleague.com/pt/rankings/) — um formato que até agora dependia de folhas de cálculo e bots externos.

No plano editorial, este passo alinha o PilotLeague com o que a Virtual Flight observa nas comunidades mais ativas: o fenómeno VA, longe de desaparecer com a chegada do MSFS 2024, tem vindo a crescer, e faltava uma camada de infraestrutura neutra que servisse toda a gente.

## Perfis públicos de piloto

O PilotLeague passa a ter uma página pública por piloto, no endereço `pilotleague.com/pilots/<username>`. É uma ficha pensada para ser partilhada em fóruns, no Discord da VA ou junto de uma candidatura a eventos: mostra o nível, o rank mundial, a VA (se existir), os voos recentes e as estatísticas agregadas.

![Perfil público de piloto PilotLeague com rank mundial, nível e voos recentes](/images/pilotleague-spring-2026-update/public-pilot-profile.webp)
*Fonte: [PilotLeague](https://pilotleague.com/pt/)*

A visibilidade é controlada por uma definição chamada `profile_visibility`, acessível no companion. Um bug corrigido nesta versão impedia a página pública de aparecer mesmo quando o piloto marcava o perfil como público — problema resolvido com uma migração automática das preferências, sem necessidade de intervenção manual.

O upload de avatar também entra em cena: aceita JPG ou PNG até 2 MB, com redimensionamento automático para 512×512 píxeis. Um filtro NSFW analisa cada imagem submetida e rejeita conteúdos impróprios antes de serem publicados. É pouco vistoso, mas é o género de detalhe que torna uma plataforma minimamente séria.

## Segurança — deteção de aterragem fora da pista

A camada de segurança recebe um reforço concreto: o PilotLeague passa a detetar, em tempo real, **aterragens fora da pista**. A lógica corre do lado do companion, com uma amostragem de 500 milissegundos, e compara a posição do trem principal com o polígono da pista ativa. Para evitar falsos positivos em aterragens muito perto da borda, existe uma janela de tolerância de 5 frames — o sistema só marca a aterragem como irregular se o contacto fora do asfalto persistir de forma inequívoca.

![Banner vermelho de aterragem fora da pista no topo da página de detalhe do voo](/images/pilotleague-spring-2026-update/off-runway-alert.webp)
*Fonte: [PilotLeague](https://pilotleague.com/pt/)*

A penalização é clara: **−100 pontos** no voo em causa, com um banner vermelho visível no topo da página de detalhe. A informação fica preservada para futuras auditorias e não afeta retroativamente voos anteriores.

O objetivo não é humilhar ninguém — é fechar uma brecha antiga que permitia pousar em *taxiways*, pistas paralelas desativadas ou até em terrenos adjacentes e, ainda assim, receber a pontuação integral de uma aterragem. Com esta regra, uma aterragem só conta a sério quando acontece onde deve acontecer.

## Correção GPS — traçados completos e por fase de voo

Outro ponto dolorosamente técnico, mas muito visível: o traçado GPS dos voos estava incompleto em muitos casos, com lacunas em voos longos e polylines cortadas. A causa era uma falha de ligação entre a variável `profile_visibility` e o endpoint de telemetria — não só bloqueava a ficha pública, como interferia com o upload do traçado.

![Traçado GPS colorido por fase de voo — descolagem, subida, cruzeiro, descida, aproximação, aterragem](/images/pilotleague-spring-2026-update/gps-track-phases.webp)
*Fonte: [PilotLeague](https://pilotleague.com/pt/)*

A reescrita introduz também um **traçado por fase de voo**, com cores distintas para descolagem, subida, cruzeiro, descida, aproximação e aterragem. A amostragem é adaptativa — voos longos ultrapassam com conforto os 1500 pontos, o que permite reconstruir perfis de descida e comparar aproximações entre diferentes tentativas à mesma pista. Para quem treina procedimentos, é um passo qualitativo notável.

## Correções aos streaks — fim de dois bugs antigos

Os streaks (sequências de dias consecutivos com pelo menos um voo) tinham dois bugs de alto impacto. O primeiro: em certas condições, um streak nunca expirava, mesmo com semanas sem voo, porque a tarefa noturna que o devia encerrar tropeçava numa condição de corrida. O segundo: a data `last_flight_date` era reescrita em cada sincronização do companion, mesmo quando não havia voo novo, o que falsificava a contagem.

A solução consiste em duas partes. Foi introduzida uma **varredura noturna** às 00:05 CET, que fecha os streaks expirados de forma determinística, e o campo `last_flight_date` só é atualizado quando um novo voo é efetivamente registado — nunca por sincronização de UI.

Um segundo ponto, igualmente importante, é o desacoplamento explícito entre streaks e ranking. A escada de multiplicadores passa a ter **seis níveis**, de ×1.00 a ×1.25, aplicados **exclusivamente ao XP** (para subida de nível), nunca à pontuação nem ao ranking global. O leitor continua a ser recompensado pela regularidade, mas sem que isso distorça a competição entre quem voa todos os dias e quem voa menos mas com qualidade superior.

## Consistência front office e site público

Por fim, a atualização de primavera alinha a versão web pública com o front office do companion. Os mesmos dados, as mesmas classificações, as mesmas etiquetas — um problema recorrente da versão anterior, em que a página pública mostrava um rank diferente do que o piloto via na sua aplicação. A UI passa também a estar disponível em **sete idiomas**, facto relevante para quem joga em [Português](https://pilotleague.com/pt/) mas faz parte de VAs internacionais.

## FAQ

### O que é o PilotLeague?
O PilotLeague é uma aplicação companion gratuita e uma plataforma web para o Microsoft Flight Simulator 2024, que regista automaticamente os voos, calcula uma pontuação por critérios objetivos (aterragem, SOP, segurança, eficiência) e publica classificações globais e por VA.

### Como é calculada a nova pontuação?
A pontuação resulta de `pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier`, em que `performance_recent` soma os voos dos últimos 14 dias com decaimento exponencial (`e^(-0.05 × days_ago)`), `activity_multiplier` varia entre 1.0 e 1.5 conforme o número de voos e `reliability_multiplier` reflete a taxa de conclusão a 30 dias.

### A sequência afeta o meu ranking?
Não. As sequências apenas aumentam o XP (subida de nível), nunca a pontuação nem o ranking global. A escada tem seis níveis, de ×1.00 a ×1.25, e aplica-se exclusivamente ao progresso de experiência.

### O que é uma companhia virtual no PilotLeague?
Uma companhia virtual (VA) é um grupo de pilotos que voam sob o mesmo callsign, código IATA e logo. Cria-se em *Settings → Networks* no companion, passa por verificação manual e, após aprovação, aparece associada a cada piloto membro nas classificações e no perfil público.

### O PilotLeague é gratuito?
Sim. A aplicação companion e a plataforma web são gratuitas para todos os pilotos MSFS 2024.

## Começar agora

- [Página inicial PilotLeague](https://pilotleague.com/pt/)
- [Explorar as classificações](https://pilotleague.com/pt/rankings/)
- [Top Aterragem](https://pilotleague.com/pt/rankings/)
- [Top Eficiência de Combustível](https://pilotleague.com/pt/rankings/)
- [Descarregar a aplicação companion](https://pilotleague.com/pt/download/)

Até já no circuito.

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "O que é o PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "O PilotLeague é uma aplicação companion gratuita e uma plataforma web para o Microsoft Flight Simulator 2024..." } },
    { "@type": "Question", "name": "Como é calculada a nova pontuação?", "acceptedAnswer": { "@type": "Answer", "text": "pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier..." } },
    { "@type": "Question", "name": "A sequência afeta o meu ranking?", "acceptedAnswer": { "@type": "Answer", "text": "Não. As sequências apenas aumentam o XP (subida de nível), nunca a pontuação nem o ranking..." } },
    { "@type": "Question", "name": "O que é uma companhia virtual no PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "Uma companhia virtual (VA) é um grupo de pilotos que voam sob o mesmo callsign, código IATA e logo..." } },
    { "@type": "Question", "name": "O PilotLeague é gratuito?", "acceptedAnswer": { "@type": "Answer", "text": "Sim. A aplicação companion e a plataforma web são gratuitas para todos os pilotos MSFS 2024." } }
  ]
}
</script>
