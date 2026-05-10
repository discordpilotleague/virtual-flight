---
title: "FlyJetCard: sim de aviação executiva para MSFS e X-Plane"
description: "O FlyJetCard transforma MSFS e X-Plane 12 em uma operação charter Part 91/135 com mais de 5 000 missões IA e economia owner-operator completa."
lang: "br"
pubDate: "2026-05-10"
heroImage: "../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp"
---

Um novo aplicativo companion chamado **FlyJetCard** (frequentemente abreviado para JetCard) se posiciona como o primeiro ecossistema dedicado à aviação executiva para **Microsoft Flight Simulator** e **X-Plane 12** no Windows. Em vez de um sistema genérico de carga ou de routing de companhia aérea, o JetCard simula operações charter Part 91 e Part 135 — voos corporativos, missões médicas, charters esportivos e trips owner-operator — com seus próprios briefings, janelas de horário e estrutura de pagamento.

![Interface de dispatch do FlyJetCard para MSFS e X-Plane 12](../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp)

## O que o FlyJetCard faz na prática

O JetCard roda em paralelo ao simulador e fornece trabalho a ele. O app gera continuamente mais de **5 000 charters IA** distribuídos em **50 categorias de missão** — evacuações médicas, logística de equipes esportivas, transporte executivo, voos de lazer, movimentos governamentais e mais — a partir de uma rede de **mais de 960 aeroportos** voltados para aviação executiva em seis continentes. Os charters expiram com timers realistas: uma emergência médica dura quatro horas, uma reserva de lazer cinco dias, e o board se renova de acordo com o tipo de missão.

Por baixo, a plataforma modela a realidade financeira de uma operação charter. O piloto começa **freelance** ganhando 10% do valor do charter junto a operadores fictícios, pode passar a **funcionário** de uma empresa criada por outro jogador e, no fim, alcança o status **owner-operator** com sua própria frota, folha de pagamento, reservas de manutenção e um sistema bancário com empréstimos por níveis. A escolha de aeronave é controlada: um light jet não pode aceitar legalmente uma missão transatlântica, e os custos operacionais seguem economia realista, sem simplificação arcade.

## Contexto de voo escrito, não routing aleatório

O que diferencia o JetCard de um simples tracker de carreira é o **enredo escrito por IA** ligado a cada voo. Cada charter chega com um dossier de missão — quem está a bordo, por que precisam chegar ao destino, qual horário importa — e os trips multi-pernas encadeiam esses dossiers numa narrativa contínua. A sincronização com o mundo real faz parte do conceito: o board responde a calendários esportivos reais, corridas de F1 e eventos culturais, então um sábado em Mônaco faz aparecer charters de F1, e um fim de semana de playoffs da NBA gera transferências de equipes.

O sistema **jPhone** cuida da comunicação contextual entre dispatcher, FBO e clientes, transformando o voo numa operação em vez de uma simples perna. O tracking é ao vivo com telemetria visível, e a plataforma integra **SimBrief** para o flight planning e meteorologia ao vivo para as decisões de dispatch.

![Charter board do FlyJetCard com dossiers de missão e briefings IA](https://flyjetcard.io/assets/about/charter-board.png)
*Crédito: [JetCard](https://flyjetcard.io/)*

## O que muda para os pilotos virtuais

Se você já registra suas horas num logbook externo ou voa online em uma companhia virtual, o JetCard ocupa outro espaço — mais próximo de um **modo carreira solo** do que do VATSIM ou PilotEdge. Foi feito para simmers que querem que cada voo traga propósito, papelada e pagamento, sem precisar se comprometer com a escala de uma virtual airline. Para situar a ferramenta no cenário de carreira mais amplo, nosso [guia do logbook de carreira para piloto virtual](/br/blog/carreira-piloto-virtual-logbook-br) compara SimToolkitPro, Volanta e FSEconomy.

O modelo de conexão reflete o suporte duplo de simulador: o **MSFS** usa SimConnect ou FSUIPC, enquanto o **X-Plane 12** exige configuração de porta UDP. Isso significa que quem tem os dois sims pode usar o mesmo pool de charters, alternar frota entre plataformas e manter uma carreira única em ambos. Se você ainda está decidindo qual simulador usar, nosso [comparativo MSFS 2024 vs X-Plane 12](/br/blog/msfs-2024-vs-xplane-12-comparativo-br) detalha as diferenças que mais pesam para o biz-jet.

## Aeronaves, aeroportos e progressão

A plataforma suporta **97 aeronaves** que vão de turbo-hélices monomotores até um Boeing Business Jet, e a lógica de elegibilidade usa especificações reais — comprimento de pista, alcance, carga útil, pressurização — para filtrar o que cada operador pode aceitar. Um King Air 350 atrai um conjunto de missões diferente do de um Citation Latitude ou de um Global 7500.

Os mais de 960 aeroportos foram escolhidos pela relevância biz-aviation, não pelo tráfego de companhia. Isso destaca pistas com FBO como **Teterboro (KTEB)**, **Van Nuys (KVNY)**, **Paris-Le Bourget (LFPB)**, **Farnborough (EGLF)**, **Genebra (LSGG)** e **Aspen (KASE)** — destinos onde os jatos corporativos operam de verdade, em vez dos grandes hubs que dominam a simulação de companhia aérea. A progressão de carreira vem por cima: a reputação determina os níveis de empréstimo, comprar frota libera missões owner-operator e contratar pilotos permite que operadoras maiores mantenham calendário multi-aeronave.

![Tracker de voo ao vivo do FlyJetCard com telemetria](https://flyjetcard.io/assets/about/flight-tracker.png)
*Crédito: [JetCard](https://flyjetcard.io/)*

## Como começar e acesso

O JetCard está atualmente em **alpha** com convites beta progressivos. Os usuários interessados pedem acesso antecipado pelo [site oficial](https://flyjetcard.io/), e o modelo de licença integrado cuida da ativação. O fluxo de instalação descrito no [manual do piloto JetCard](https://manual.flyjetcard.io/) é curto: criar uma conta, instalar o aplicativo desktop com a chave de licença, conectar o simulador (SimConnect/FSUIPC para MSFS, UDP para X-Plane), abrir o board, aceitar uma missão, voar, e receber quando o JetCard detectar que o voo terminou corretamente.

Um bom primeiro voo é um contrato freelance num **light jet** a partir de Teterboro, num trecho curto — uma transferência de equipe esportiva para Boston, uma perna médica para Buffalo, um voo corporativo para Dulles — para se acostumar com a dispatch UI, as notificações jPhone e o cálculo de pagamento antes de partir para trips de longo curso em aeronaves mais pesadas.

## Conclusão

O FlyJetCard é um produto de nicho, e é justamente esse o seu trunfo. Ao focar exclusivamente em aviação executiva em vez de cobrir todas as carreiras de pilotagem ao mesmo tempo, constrói uma profundidade operacional que nenhum tracker de carreira generalista consegue igualar. A combinação de enredo IA, sincronização com eventos reais e economia charter funcional transforma cada voo numa missão em vez de uma sessão de free-flight. Para os pilotos virtuais focados em operações biz-jet no MSFS ou X-Plane 12, é um dos projetos de terceiros mais ambiciosos do gênero — vale acompanhar o [site JetCard](https://flyjetcard.io/) para a janela de lançamento público.
