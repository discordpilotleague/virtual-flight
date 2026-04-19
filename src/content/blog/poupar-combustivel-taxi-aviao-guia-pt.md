---
title: "Taxi com um motor, TaxiBot, gate-holding: como os avioes poupam combustivel no solo"
description: "Guia completo das tecnicas de poupanca de combustivel na rodagem: taxi com um motor, TaxiBot, sistemas eletricos, gate-holding. Ate 85 % de poupanca."
lang: 'pt'
pubDate: 'Apr 08 2026'
heroImage: '../../assets/hero-taxi-fuel-saving.webp'
tags: ["tutorial", "MSFS"]
author: "Virtual Flight"
category: "tutorial"
pilotleagueLink: "https://pilotleague.com/pt/"
---

Um Boeing 747 consome aproximadamente **uma tonelada de querosene** em 15 minutos de rodagem. Um A320, entre 100 e 150 kg. A escala mundial, a fase de taxi representa cerca de **1 % do consumo total de combustivel** da aviacao — um numero aparentemente modesto, mas que se traduz em milhoes de toneladas de CO2 e milhares de milhoes de dolares gastos todos os anos simplesmente para deslocar avioes entre as portas de embarque e as pistas. A industria aeronautica desenvolveu solucoes concretas para reduzir este desperdicio, e os pilotos virtuais exigentes na [PilotLeague](https://pilotleague.com/pt/recursos/) sabem-no bem: a gestao do combustivel no solo e um indicador de competencia que a plataforma mede voo apos voo.

![Boeing 737 KLM rebocado por um TaxiBot no aeroporto de Schiphol](/images/taxi-fuel-saving/taxibot-klm.webp)

## Porque e que o taxi consome tanto

Os motores a reacao dos avioes foram concebidos para funcionar a grande altitude, em regimes de impulso elevados. No solo, operam em modo de ralenti — a configuracao menos eficiente possivel. Um motor CFM56 em ralenti no solo consome cerca de **5 a 7 kg de combustivel por minuto**, e um aviao bimotor faz funcionar dois. Para um aviao de fuselagem larga com quatro motores, a fatura e quadruplicada. Acrescentem-se os tempos de espera nos taxiways, as filas diante da pista, as paragens e arranques impostos pelo controlo aereo, e o desperdicio acumula-se rapidamente.

O problema e amplificado nos grandes hubs internacionais. Em Heathrow, Atlanta ou Francoforte, uma rodagem tipica dura 15 a 30 minutos — por vezes mais nas horas de ponta. Cada minuto de motor em ralenti representa combustivel queimado sem produzir qualquer deslocacao util quando o aviao esta parado.

![Avioes KLM no parqueamento no aeroporto de Schiphol — tempo de espera no solo](/images/taxi-fuel-saving/schiphol-gates.webp)

## Tecnica n.o 1: o taxi com um motor (Single-Engine Taxi)

O metodo mais difundido e o mais simples de implementar. Num aviao bimotor, o principio e direto: desligar um motor durante a rodagem e utilizar apenas o outro.

### Como funciona

Em vez de arrancar os dois motores na porta, a tripulacao arranca apenas um e inicia a rodagem. O segundo motor e arrancado durante a rodagem, com antecedencia suficiente antes da pista para que atinja a sua temperatura operacional e para que todos os sistemas hidraulicos estejam alimentados antes da descolagem. A mesma logica aplica-se a chegada: apos libertar a pista, a tripulacao desliga um motor para a rodagem ate a porta.

### As poupancas

O taxi com um motor reduz o consumo de combustivel na rodagem em **20 a 40 %** consoante o tipo de aeronave e as condicoes. Para uma companhia que opera centenas de voos diarios, isto representa poupancas anuais de varios milhoes de litros de querosene.

### As limitacoes

O taxi com um motor nem sempre e possivel. As curvas apertadas do lado do motor desligado podem ser dificeis (o impulso assimetrico complica a manobra). As condicoes meteorologicas degradadas (gelo, chuva forte) podem exigir ambos os motores para manter um controlo direcional adequado. Algumas companhias proibem o SET em taxiways com inclinacao ou em configuracoes aeroportuarias especificas.

## Tecnica n.o 2: o TaxiBot — o reboque pilotado a partir do cockpit

O TaxiBot, desenvolvido pela divisao Lahav da **Israel Aerospace Industries**, representa um avanco importante. E um veiculo semi-robotizado hibrido-eletrico que reboca o aviao do terminal ate a pista com **os motores completamente desligados**.

### O conceito

Ao contrario de um pushback classico, o TaxiBot e **controlado diretamente pelo piloto a partir do cockpit**. O veiculo le o angulo do trem dianteiro e segue a direcao dada pelo piloto. A travagem e gerida pelos travoes normais do aviao — o TaxiBot deteta o abrandamento e adapta-se. O piloto mantem assim um controlo total da trajetoria e da velocidade, exatamente como durante uma rodagem normal.

### As poupancas

Os numeros sao impressionantes: o TaxiBot consome **95 % menos combustivel** do que os motores do aviao durante a rodagem. A **Airbus** anuncia poupancas de combustivel no solo de **50 a 85 %** consoante a distancia de rodagem. O sistema existe em versao de corredor unico (compativel A320, B737) e fuselagem larga (compativel A380, B747).

### Implementacao

O TaxiBot foi certificado em 2014 e realizou o seu primeiro voo comercial com a **Lufthansa** em Francoforte (voo LH140). Em 2024, a **KLM** realizou o primeiro voo de passageiros com TaxiBot em **Schiphol**. A Airbus prossegue ativamente os testes no ambito do projeto HERON.

![Trem de aterragem de um aviao no taxiway — o TaxiBot liga-se ao trem dianteiro](/images/taxi-fuel-saving/airbus-taxibot.webp)

## Tecnica n.o 3: a rodagem eletrica (Electric Green Taxiing)

Em vez de rebocar o aviao, porque nao instalar motores eletricos diretamente nas rodas?

### Os sistemas

A **Safran** e a **Honeywell** desenvolveram o **EGTS** (Electric Green Taxiing System), que integra motores eletricos de 50 kW nas rodas do trem principal. A energia provem da APU (grupo auxiliar de potencia) do aviao. A aeronave pode assim rolar, manobrar e ate recuar sem arrancar os seus reatores e sem pushback tractor.

A **Green Taxi Solutions** desenvolve um sistema semelhante, prometendo poupancas anuais estimadas em **306 000 $ por aviao**.

### A poupanca global

A rodagem eletrica reduz o consumo de combustivel em cerca de **4 % no conjunto do ciclo de voo** — um valor que parece modesto mas que, multiplicado por milhares de voos diarios, representa uma poupanca substancial. A vantagem suplementar e a ausencia total de impulso de reator no solo, reduzindo o ruido e o risco de sopro para o pessoal de terra.

## Tecnica n.o 4: o gate-holding e a otimizacao ATC

As solucoes mais imediatas nao dizem respeito a tecnologia embarcada, mas sim a gestao do trafego no solo.

### Gate-holding

O principio e simples: em vez de empurrar o aviao e faze-lo esperar com os motores a funcionar numa fila no taxiway, a companhia mantem o aviao na porta de embarque ate que um intervalo de rodagem direto esteja disponivel. O aviao permanece ligado a alimentacao eletrica do terminal, com os motores desligados. Quando o controlo da luz verde, a rodagem arranca imediatamente sem tempo de espera intermediario.

### Arranque retardado

Os pilotos atrasam o arranque dos motores o mais tarde possivel antes de abandonar a porta. Cada minuto ganho com os motores desligados e combustivel poupado. Esta tecnica e particularmente eficaz nos aeroportos congestionados onde os tempos de espera no pushback sao frequentes.

### Otimizacao das trajetorias

O controlo aereo pode contribuir minimizando as paragens, otimizando as trajetorias de rodagem (evitar desvios) e coordenando as sequencias de partida para reduzir o tempo de motor em ralenti. Os sistemas A-SMGCS (Advanced Surface Movement Guidance and Control Systems) ajudam a fluidificar o trafego no solo.

![TaxiBot em operacao no solo — ligacao ao trem dianteiro do aviao](/images/taxi-fuel-saving/taxibot-towing.webp)

## E no MSFS? Aplicar estas tecnicas em simulacao

Os pilotos virtuais serios podem reproduzir estas praticas no Microsoft Flight Simulator 2024 para um realismo acrescido:

- **Taxi com um motor** — Nos add-ons de nivel estudo (PMDG 737, Fenix A320), e possivel arrancar apenas um motor para a rodagem e lancar o segundo durante o trajeto ate a pista
- **Arranque retardado** — Esperar estar pronto para rolar antes de arrancar os motores, em vez de os ligar assim que o aviao e alimentado eletricamente
- **Gate-holding** — Preparar o voo (FMS, briefing, ATIS) com os motores desligados na porta antes de solicitar o pushback

Na [PilotLeague](https://pilotleague.com/pt/recursos/), o pilar **Eficiencia de combustivel** da sua pontuacao mede com precisao o seu consumo em kg/nm por fase de voo — incluindo a rodagem. Um taxi bem gerido com um consumo controlado contribui diretamente para uma melhor pontuacao global. A analise pos-voo detalha o seu consumo fase a fase com notas de A a D, permitindo-lhe identificar exatamente onde o combustivel foi desperdicado.

## Sintese das tecnicas

| Tecnica | Poupanca de combustivel no taxi | Complexidade | Disponibilidade |
|-----------|------------------------|------------|---------------|
| Taxi com um motor | 20-40 % | Baixa | Imediata (procedimento) |
| TaxiBot | 50-85 % | Elevada | Francoforte, Schiphol, testes |
| Rodagem eletrica (EGTS) | ~4 % ciclo total | Elevada | Em desenvolvimento |
| Gate-holding | Variavel | Baixa | Imediata (ATC) |
| Arranque retardado | 5-15 % | Baixa | Imediata (procedimento) |

## O que isto significa

A poupanca de combustivel na rodagem nao e um detalhe anedotico — e uma alavanca concreta que a industria ja esta a acionar. O taxi com um motor tornou-se um procedimento padrao na maioria das grandes companhias. O TaxiBot passa da fase experimental para a exploracao comercial. A rodagem eletrica progride. E cada tecnica, da mais simples gate-holding a mais tecnologica EGTS, contribui para reduzir a pegada de carbono de uma industria sob pressao ambiental crescente.

Para os pilotos virtuais, integrar estas praticas na sua rotina de voo acrescenta uma camada de realismo operacional que poucos simmers exploram. E com ferramentas como a [PilotLeague](https://pilotleague.com/pt/recursos/) que medem a eficiencia de combustivel em cada voo, nunca foi tao facil quantificar o impacto destas boas praticas.

Os motores podem esperar. A sua pontuacao, essa, nao espera.

---

*Fontes: [Eurocontrol](https://www.eurocontrol.int/), [OpenAirlines](https://blog.openairlines.com/engine-out-taxi-in-eoti), [Simple Flying](https://simpleflying.com/klm-taxibot-first-passenger-flght-schiphol-airport/), [Airbus](https://www.airbus.com/en/newsroom/stories/2025-07-taxibots-spool-up-as-project-heron-winds-down), [AEON Project](https://www.aeon-project.eu/engine-off-taxiing-operations/). Imagens: Smart Airport Systems / KLM / Airbus.*
