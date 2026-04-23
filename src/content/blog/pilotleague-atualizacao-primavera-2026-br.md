---
title: "PilotLeague Primavera 2026 — Ranking Justo MSFS 2024 e VAs"
description: "Ranking móvel de 14 dias que premia pilotos ativos, companhias virtuais, perfis públicos e novos alertas de segurança — a maior atualização PilotLeague para MSFS 2024."
lang: 'br'
pubDate: 'Apr 23 2026'
heroImage: '../../assets/hero-pilotleague-spring-2026-update.webp'
---

![Ranking V2 do PilotLeague com chips de companhias virtuais e abas de categoria](../../assets/hero-pilotleague-spring-2026-update.webp)
*Créditos: [PilotLeague Rankings](https://pilotleague.com/pt/rankings/)*

Se você voa no **Microsoft Flight Simulator 2024** e curte aquela rivalidade saudável com outros pilotos, já deve ter esbarrado no [PilotLeague](https://pilotleague.com/pt/). O app companion gratuito ganhou nesta primavera a sua maior atualização desde o lançamento — e a gente precisa conversar sobre isso, porque a mudança no ranking muda o jogo de vez.

A entrega oficial de abril de 2026 traz um pacote completo: ranking totalmente redesenhado com janela rolante de 14 dias, suporte nativo a companhias virtuais (VAs), perfis públicos compartilháveis, novos alertas de segurança em voo e uma penca de correções no rastreamento GPS e nas sequências diárias. Tudo isso em sete idiomas, incluindo português.

Bora destrinchar peça por peça, porque tem detalhe técnico importante aqui.

## Ranking V2: o fim da ditadura dos veteranos

O problema do ranking antigo era clássico: quem começava cedo acumulava vantagem eterna. Qualquer piloto novo chegando em 2026 olhava a leaderboard, via nomes com meses de vantagem acumulada e desanimava. Não rolava mais competição real.

A nova fórmula do **PilotLeague Score** corrige isso de forma elegante:

```
pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier
```

Cada componente tem um papel específico. O `performance_recent` olha só seus voos dos **últimos 14 dias** — tudo antes disso some do cálculo. O `activity_multiplier` premia quem voa com regularidade (sem exageros que viram grinding). E o `reliability_multiplier` leva em conta consistência: pousos limpos, procedimentos seguidos, combustível gerenciado direito.

O refresh acontece a cada **15 minutos**. Então se você fechou um voo perfeito agora, daqui a pouquinho já aparece refletido no seu score. E o que saiu da janela de 14 dias some sem choro nem vela.

### As quatro categorias de ranking

Além do ranking geral, a V2 traz quatro categorias especializadas, cada uma com seu **top 40**:

- **Pouso** — suavidade e precisão no touchdown
- **SOP** — aderência aos procedimentos operacionais padrão
- **Segurança** — voos sem incidentes, sem pouso fora da pista, sem violação de airspace
- **Eficiência de Combustível** — quem chega com a reserva certinha

No topo de cada categoria você vê o chip da companhia virtual do piloto, se ele tiver uma. E isso nos leva direto pro próximo grande lançamento.

## Companhias virtuais nativas

![Perfil público de piloto no PilotLeague com rank mundial, nível e últimos voos](/images/pilotleague-spring-2026-update/public-pilot-profile.webp)
*Créditos: [PilotLeague](https://pilotleague.com/pt/)*

Até então, se você queria voar em grupo com amigos sob uma identidade comum, tinha que apelar para planilhas externas, Discord e combinados informais. Agora o PilotLeague oferece suporte **first-class** a companhias virtuais.

Cada VA tem:

- **Slug único** (o identificador curto, tipo `tam-virtual`)
- **Nome oficial** (o que aparece nos rankings)
- **Callsign** de três letras (aquele código de rádio)
- **Código IATA** opcional de duas letras
- **Logo** para aparecer nos chips da leaderboard

Para criar uma, é só entrar em **Settings → Networks** na sua conta web e preencher o formulário. A identidade fica disponível na hora para todos os pilotos que você convidar. O **selo azul** de verificação é concedido manualmente pela equipe PilotLeague depois de checagem — nada de comprar checkmark, a gente aprendeu com os erros dos outros.

Nos rankings, o chip da VA aparece ao lado do nome do piloto. Isso significa que um pouso impecável seu não só conta pro seu score pessoal, como também leva visibilidade pra sua companhia. É uma ferramenta de branding poderosa pra VAs sérias que querem recrutar pilotos ativos.

## Perfis públicos: sua carteira de piloto virtual

Outro pedido antigo da comunidade: poder mostrar seu histórico de voo sem obrigar ninguém a instalar o app. Resolvido.

Cada piloto agora tem uma URL pública no formato:

```
pilotleague.com/pilots/<username>
```

A página pública traz:

- **Identidade** — nome, avatar, VA, país
- **World Rank** — posição global no ranking V2
- **Nível e XP** — progresso total acumulado
- **Stats** — total de voos, horas, pousos perfeitos, distância percorrida
- **Gráfico de 30 dias** — evolução do score ao longo do mês
- **10 voos recentes** — com rota, aeronave e qualidade do pouso

Três níveis de visibilidade são configuráveis em **Settings → Privacy**: **público** (todo mundo vê), **apenas logados** (só quem tem conta) e **privado** (só você). Dá pra compartilhar o link no seu Discord, no Twitch, embutir no canal do YouTube — o que quiser. É a sua carteira de piloto virtual, pronta pra ostentar.

### Avatar redondinho

Junto com os perfis, chegou o upload de avatar. Aceita **JPG ou PNG** até **2 MB**, faz o crop circular automático em **512×512** e passa por um check de conteúdo NSFW antes de publicar. Nada de zoeira inapropriada no feed geral.

## Alertas de segurança: pouso fora da pista detectado

![Banner vermelho de pouso fora da pista no topo da página de detalhe do voo](/images/pilotleague-spring-2026-update/off-runway-alert.webp)
*Créditos: [PilotLeague](https://pilotleague.com/pt/)*

Essa aqui é pros puristas da segurança operacional. A nova detecção de **landing off runway** pega o instante do touchdown (queda do weight-on-wheels por mais de **500 ms**, confirmada por **5 frames** consecutivos) e checa a simvar `ON ANY RUNWAY` do MSFS 2024.

Se a variável retorna `false` no momento do contato, o sistema registra um pouso fora da pista. O impacto é direto:

- **−100 pontos** na componente de Segurança do seu score
- **Banner vermelho** bem chamativo no topo da página de detalhe do voo
- Registro permanente no histórico (ninguém apaga)

Disponível em todos os **sete idiomas** da UI (en, fr, es, pt, br, de, id, ja — sim, contamos ambos português), então o alerta chega na sua língua sem depender de tradução automática esquisita.

Isso não serve pra humilhar ninguém — serve pra calibrar expectativas. Se você tá caçando pontos na categoria Segurança, aquele "atalho" cortando pela grama pro taxiway pode custar caro. E é assim que deve ser.

## Rastreamento GPS corrigido de vez

![Traçado GPS colorido por fase de voo — decolagem, subida, cruzeiro, descida, aproximação, pouso](/images/pilotleague-spring-2026-update/gps-track-phases.webp)
*Créditos: [PilotLeague](https://pilotleague.com/pt/)*

O bug do rastreamento GPS era constrangedor. O backend consultava a tabela errada (`profile_visibility` no lugar da tabela de pontos de voo), devolvia HTTP 500 e o frontend caía pra um traçado em linha reta do decolagem ao pouso — o que, convenhamos, não é exatamente útil.

Na V2 o fix veio redondo:

- **Query correta** na tabela certa
- **Fallback** para linha reta só quando realmente não há dados
- **Polyline colorida por fase de voo**: decolagem, subida, cruzeiro, descida, aproximação, pouso, cada uma em uma cor distinta
- **Amostragem adaptativa** para voos com mais de **1500 pontos** (reduz ruído sem perder curvas importantes)

Agora você abre a página de detalhe de um voo longo e vê um traçado legível, com contexto visual imediato de onde começou a descida, onde passou pro approach, onde tocou a pista. Pra quem gosta de revisar voos (ou de postar screenshots bonitos), é um salto de qualidade enorme.

## Sequências (streaks) reescritas do zero

As streaks eram outro bug antigo incomodando. Tinha gente com sequência de 200+ dias que simplesmente não expirava mais — mesmo depois de semanas sem voar. O sistema nunca reescrevia `last_flight_date` corretamente, então a lógica de expiração falhava silenciosamente.

A reescrita trouxe:

- **Sweep diário às 00:05 CET** — cron que verifica todas as streaks e expira as que perderam o dia anterior
- **Reescrita correta de `last_flight_date`** em cada voo registrado
- **6 tiers de multiplicador XP**: de **×1.00** (dia 1-2) até **×1.25** (30+ dias consecutivos)
- **Impacto apenas em XP** — streaks NUNCA afetam ranking ou pontuação

Esse último ponto é importante e merece destaque: streak é mecânica de engajamento, não de competição. Se você viajou duas semanas e perdeu a sequência, tudo bem — seu score no ranking V2 continua igual, porque ele olha performance dos últimos 14 dias de voo efetivo, não presença diária.

## Consistência entre o site público e o front office

Um detalhe que pode passar despercebido mas é crucial: as estatísticas exibidas no perfil público agora são **idênticas** às que você vê logado no front office. Antes, pequenas divergências apareciam por causa de caches e queries diferentes entre as duas interfaces.

A partir da V2, o backend usa a mesma fonte canônica pras duas pontas. Então o que seu amigo vê no seu perfil público é exatamente o que você vê no seu dashboard. Isso fecha um vetor inteiro de relatos de bug e confusão da comunidade.

## Sete idiomas, um produto

A UI inteira do PilotLeague agora está localizada em **sete idiomas**: inglês, francês, espanhol, português (Portugal), português brasileiro, alemão, indonésio e japonês. Todos os novos componentes — banner de off-runway, tooltips do ranking V2, formulários de VA, configurações de privacidade — chegaram traduzidos no dia do lançamento.

Para a comunidade brasileira, que já é uma das mais ativas do MSFS 2024, isso significa zero compromisso linguístico pra usar o app no máximo do potencial.

## Por que essa atualização importa

Se você entrou no MSFS 2024 há pouco tempo e olhava os rankings achando que nunca teria chance contra os veteranos, a V2 é o seu momento. A janela de 14 dias democratiza a competição — o que conta é o quanto você voa bem **agora**, não o quanto voou no verão passado.

Se você já coordena uma VA no Discord, agora tem uma identidade oficial, chips nos rankings e uma ferramenta de recrutamento visual. Se você é streamer ou criador de conteúdo, o perfil público é a sua nova landing page de piloto virtual.

E pra todo mundo, os fixes de GPS e streak significam menos tempo reportando bugs no suporte e mais tempo voando.

## FAQ

**O que é o PilotLeague?**
O PilotLeague é um app companion gratuito e uma plataforma web para o Microsoft Flight Simulator 2024. Ele rastreia seus voos, calcula a qualidade do pilotagem, alimenta rankings globais e por categoria, e conecta você com outros pilotos e companhias virtuais.

**Como a nova pontuação do ranking é calculada?**
A fórmula é `pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier`, considerando apenas os seus voos dos últimos 14 dias. O refresh acontece a cada 15 minutos e existem quatro categorias especializadas (Pouso, SOP, Segurança, Eficiência de Combustível), cada uma com top 40.

**A sequência afeta meu ranking?**
Não. As sequências só aumentam o XP (nível), nunca a pontuação nem o ranking. Elas são uma mecânica de engajamento com 6 tiers de multiplicador (×1.00 até ×1.25) e expiram todo dia às 00:05 CET se você não voou no dia anterior.

**O que é uma companhia virtual no PilotLeague?**
Uma companhia virtual (VA) é um grupo de pilotos voando sob o mesmo callsign, código IATA e logo. Cada VA tem slug único, nome, callsign de três letras e opcionalmente código IATA. Você cria a sua em Settings → Networks e o selo azul de verificação é concedido manualmente pela equipe.

**O PilotLeague é grátis?**
Sim. O app companion e a plataforma web são gratuitos para todos os pilotos de MSFS 2024.

## Pronto pra voar?

A atualização de primavera 2026 já está no ar. Se você ainda não instalou o companion, bora começar:

- [Baixe o app companion PilotLeague](https://pilotleague.com/pt/download/)
- [Ranking geral V2](https://pilotleague.com/pt/rankings/)
- [Top pousos](https://pilotleague.com/pt/rankings/landing/)
- [Top SOP](https://pilotleague.com/pt/rankings/sop/)
- [Top segurança](https://pilotleague.com/pt/rankings/safety/)

A gente se vê no circuito.

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "O que é o PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "O PilotLeague é um app companion gratuito e uma plataforma web para o Microsoft Flight Simulator 2024. Ele rastreia seus voos, calcula a qualidade do pilotagem, alimenta rankings globais e por categoria, e conecta você com outros pilotos e companhias virtuais." } },
    { "@type": "Question", "name": "Como a nova pontuação do ranking é calculada?", "acceptedAnswer": { "@type": "Answer", "text": "pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier, considerando apenas os seus voos dos últimos 14 dias. O refresh acontece a cada 15 minutos e existem quatro categorias especializadas (Pouso, SOP, Segurança, Eficiência de Combustível), cada uma com top 40." } },
    { "@type": "Question", "name": "A sequência afeta meu ranking?", "acceptedAnswer": { "@type": "Answer", "text": "Não. As sequências só aumentam o XP (nível), nunca a pontuação nem o ranking. Elas são uma mecânica de engajamento com 6 tiers de multiplicador (×1.00 até ×1.25) e expiram todo dia às 00:05 CET se você não voou no dia anterior." } },
    { "@type": "Question", "name": "O que é uma companhia virtual no PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "Uma companhia virtual (VA) é um grupo de pilotos voando sob o mesmo callsign, código IATA e logo. Cada VA tem slug único, nome, callsign de três letras e opcionalmente código IATA. Você cria a sua em Settings → Networks e o selo azul de verificação é concedido manualmente pela equipe." } },
    { "@type": "Question", "name": "O PilotLeague é grátis?", "acceptedAnswer": { "@type": "Answer", "text": "Sim. O app companion e a plataforma web são gratuitos para todos os pilotos de MSFS 2024." } }
  ]
}
</script>
