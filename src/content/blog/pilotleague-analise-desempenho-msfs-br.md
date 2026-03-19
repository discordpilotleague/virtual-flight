---
title: "PilotLeague: o Strava dos pilotos virtuais chega ao MSFS 2024"
description: "PilotLeague analisa seus voos no MSFS 2024 em tempo real: nota de 0 a 100, pousos, SOP, combustível, ranking mundial, 47 conquistas e desafios diários. Gratuito."
lang: 'br'
pubDate: 'Mar 19 2026'
heroImage: '../../assets/hero-pilotleague-msfs.webp'
---

E se cada voo no MSFS 2024 realmente contasse? Essa é a proposta da **PilotLeague**, uma plataforma de análise de desempenho criada por **Rodolphe**, instrutor de Airbus A320/A330 na vida real. A ideia é simples e extremamente eficaz: um aplicativo desktop leve captura **79 variáveis SimConnect** durante o seu voo, transmite para um servidor de cálculo e depois entrega uma nota detalhada de 0 a 100 pontos com análises fase por fase. Tudo isso é gratuito, compatível com **MSFS 2024**, e acessível em [pilotleague.com](https://pilotleague.com/pt/recursos/). Se o Strava transformou a corrida medindo cada passada, a PilotLeague quer fazer o mesmo pela simulação de voo.

![Overlay PilotLeague em aproximação no MSFS 2024 — METAR, TOD, vento e alertas de segurança](/images/pilotleague-msfs/overlay-approach.webp)

## Uma nota de 0 a 100 em quatro pilares

O sistema de pontuação da PilotLeague se baseia em quatro pilares ponderados que cobrem todas as habilidades de um piloto virtual:

- **Pouso (40%)** — Velocidade vertical no toque, força G, desvio em relação ao eixo da pista e posicionamento na zona de toque (TDZ), com limites adaptativos conforme o tipo de aeronave
- **Segurança (25%)** — Violações dos limites estruturais e operacionais: excesso de velocidade, inclinação excessiva, stall, overspeed de flaps
- **Conformidade SOP (20%)** — Validação das sequências de iluminação, configuração trem/flaps, verificação de aproximação estabilizada C.A.N.P.A. (gate a 500 ft AGL em VMC, 1.000 ft em IMC)
- **Eficiência de combustível (15%)** — Consumo em kg/nm comparado à mediana da comunidade por tipo de aeronave

Essa distribuição reflete as prioridades do voo real: pouso e segurança representam 65% da nota, enquanto procedimentos e eficiência completam o quadro. Cada pilar é detalhado na análise pós-voo, com um sistema de notas por letras (A a D) para combustível e penalidades calculadas para violações de segurança.

![Dashboard PilotLeague — radar de domínio, notas recentes, XP e desafios diários](/images/pilotleague-msfs/dashboard.webp)

## O overlay em voo: um copiloto silencioso

Durante o voo, a PilotLeague exibe um overlay discreto mas rico em informações que transforma a experiência sem atrapalhar a pilotagem:

### METAR em tempo real

As condições meteorológicas da partida e da chegada aparecem ao vivo: vento (direção e intensidade), temperatura, QNH, visibilidade, teto e status VFR/IFR. Você não precisa mais alternar para um site de meteorologia externo — a informação essencial está ali, no cockpit.

### Calculador de TOD

O calculador de Top of Descent integrado calcula em tempo real o ponto de descida ideal para um plano de descida a 3°. A altitude atual, a altitude alvo e a distância restante ficam sempre visíveis — uma ferramenta especialmente útil para pilotos que voam sem FMS ou em aeronaves de aviação geral.

### Decomposição do vento e combustível

As componentes do vento (proa/cauda e través esquerda/direita) são calculadas e exibidas, assim como a porcentagem de combustível restante, o consumo total, o fluxo instantâneo e a estimativa de combustível remanescente. Os alertas de segurança aparecem em vermelho com as penalidades de pontos associadas — um lembrete imediato quando um limite é ultrapassado.

### Mapas aeroportuários interativos

Os botões DEP MAP e ARR MAP abrem mapas de satélite interativos dos aeroportos de partida e chegada, com as frequências ATC (ATIS, TWR, GND, APP, DEP) extraídas de uma base de **83.798 aeroportos**, **15.423 pistas** e **30.168 frequências de rádio**.

## A análise pós-voo: onde a PilotLeague se destaca

É depois do pouso que a plataforma mostra todo o seu potencial. O painel web em [pilots.pilotleague.com](https://pilots.pilotleague.com) decompõe cada voo com uma precisão cirúrgica.

![Análise de pouso PilotLeague — zona de toque por satélite, TDZ e Golden Zone](/images/pilotleague-msfs/landing-detail.webp)

### Mapa de satélite da zona de toque

A análise de pouso exibe a posição exata do toque em uma vista de satélite da pista, com a distância em relação ao limiar e a zona TDZ. A **Golden Zone** (1.000–2.000 ft) é destacada — é a zona de toque ideal usada como referência pelas companhias aéreas. A velocidade vertical, a força G e o desvio lateral são detalhados com suas respectivas notas.

### Análise de combustível fase por fase

Cada fase de voo — do táxi ao estacionamento final — recebe uma nota de consumo de combustível (A a D). Essa granularidade permite identificar com precisão onde o combustível foi desperdiçado: um cruzeiro em altitude muito baixa, uma descida tardia, um táxi com motores em marcha lenta por tempo demais.

![Análise de combustível fase por fase — PilotLeague MSFS 2024](/images/pilotleague-msfs/fuel-analysis.webp)

### Detalhe do voo e cronologia

A página de detalhe do voo apresenta a nota global, a decomposição por pilar, a rota, a aeronave, a duração e o FPM no toque. Uma linha do tempo visual reconstitui cada evento do voo: partida dos motores, entrada na pista, decolagem, trem recolhido, cada fase detectada entre as 11 fases identificadas automaticamente pelo aplicativo.

![Detalhe de um voo PilotLeague — notas por categoria e XP ganho](/images/pilotleague-msfs/flight-detail.webp)

## Gamificação: XP, ranks e conquistas

A PilotLeague não se limita a analisar — ela motiva. O sistema de progressão se baseia em um mecanismo de XP multiplicativo:

- **XP base** calculado a partir da nota e da duração do voo
- **Multiplicador de qualidade** (0,3x a 3,0x) — boas notas rendem exponencialmente mais
- **Bônus de streak** — voar regularmente aumenta os ganhos
- **Bônus de diversidade** — explorar novas rotas é recompensado

O ranking mundial conta com **16 ranks competitivos**, de Bronze III a Champion, baseados na qualidade e não na quantidade. **50 níveis de progressão** e **47 conquistas** distribuídas em quatro raridades (Comum, Raro, Épico, Lendário) completam o sistema. Três **desafios diários** renovados a cada dia (nota mínima, duração, distância) oferecem bônus de XP extras.

![Mural de conquistas PilotLeague — 47 achievements em 4 raridades](/images/pilotleague-msfs/achievements.webp)

## Detecção automática das fases de voo

Nos bastidores, a PilotLeague detecta automaticamente **11 fases de voo** com amostragem adaptativa: 0,2 Hz em cruzeiro (uma medição a cada 5 segundos é suficiente) e até **10 Hz no pouso** (uma medição a cada 100 ms para capturar o toque com precisão). A detecção automática de arremetida reinicia a sequência de captura — um detalhe que mostra o cuidado com os casos especiais.

As 79 variáveis SimConnect capturadas cobrem posição, atitude, motores, superfícies de controle, trem, flaps, combustível, meteorologia e sistemas de navegação. Essa riqueza de dados é o que permite a análise detalhada dos procedimentos e da segurança.

## Instalação e uso

A instalação é intencionalmente simples:

1. Baixar o executável em [pilotleague.com](https://pilotleague.com/pt/)
2. Abrir o MSFS 2024 com uma aeronave carregada no estacionamento
3. Iniciar a PilotLeague — os LEDs de diagnóstico confirmam a conexão SimConnect
4. Soltar o freio de estacionamento — a gravação começa automaticamente

O aplicativo roda em segundo plano com **zero impacto nos FPS**, não exige direitos de administrador e funciona no Windows 10/11 64-bit. A transmissão de dados é feita em HTTPS seguro.

![Aplicativo desktop PilotLeague — interface de conexão SimConnect](/images/pilotleague-msfs/desktop-app.webp)

## O que a PilotLeague muda para a comunidade

A PilotLeague preenche uma lacuna surpreendente no ecossistema MSFS. Até agora, pilotos virtuais podiam voar centenas de horas sem nunca receber um retorno estruturado sobre a qualidade dos seus voos. Redes como VATSIM e IVAO fornecem o ambiente ATC, os add-ons de nível estudo fornecem os sistemas — mas ninguém media o desempenho global do piloto com essa granularidade.

O fato de a plataforma ter sido criada por um instrutor profissional da Airbus se reflete na escolha das métricas: a verificação de aproximação estabilizada com gate a 500/1.000 ft, os limites adaptativos por tipo de aeronave, a decomposição C.A.N.P.A. — são critérios usados na aviação real, transpostos com inteligência para o mundo virtual.

Para pilotos que buscam evoluir de forma metódica, a PilotLeague transforma cada voo em sessão de treinamento mensurável. Para quem gosta de competição, o ranking mundial e os desafios diários acrescentam uma dimensão social que fazia muita falta na experiência solo do MSFS. E para todos, o simples fato de saber que uma nota vai ser calculada muda sutilmente a forma de pilotar — você cuida mais dos seus procedimentos, monitora sua velocidade na final e busca a Golden Zone.

O cockpit nunca foi tão exigente — e isso é ótimo.

---

*Fonte: [PilotLeague Features](https://pilotleague.com/pt/recursos/). Imagens: PilotLeague. Comunidade: [Discord PilotLeague](https://discord.gg/pilotleague).*
