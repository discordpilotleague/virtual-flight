---
title: "Taxi com um motor, TaxiBot, gate-holding: como os avioes economizam combustivel no solo"
description: "Guia completo das tecnicas de economia de combustivel no taxi: taxi com um motor, TaxiBot, sistemas eletricos, gate-holding. Ate 85 % de economia."
lang: 'br'
pubDate: 'Apr 08 2026'
heroImage: '../../assets/hero-taxi-fuel-saving.webp'
tags: ["tutorial", "MSFS"]
author: "Virtual Flight"
category: "tutorial"
pilotleagueLink: "https://pilotleague.com/pt/"
---

Um Boeing 747 consome cerca de **uma tonelada de querosene** em 15 minutos de taxi. Um A320, entre 100 e 150 kg. Em escala mundial, a fase de taxi representa quase **1 % do consumo total de combustivel** da aviacao — um numero aparentemente modesto, mas que se traduz em milhoes de toneladas de CO2 e bilhoes de dolares gastos todos os anos apenas para mover avioes entre os portoes de embarque e as pistas. A industria aeronautica desenvolveu solucoes concretas para reduzir esse desperdicio, e os pilotos virtuais exigentes no [PilotLeague](https://pilotleague.com/pt/funcionalidades/) sabem bem disso: a gestao de combustivel no solo e um indicador de competencia que a plataforma mede voo apos voo.

![Boeing 737 KLM rebocado por um TaxiBot no aeroporto de Schiphol](/images/taxi-fuel-saving/taxibot-klm.webp)

## Por que o taxi consome tanto

Os motores a jato sao projetados para funcionar em alta altitude, em regimes de empuxo elevados. No solo, operam em marcha lenta — a configuracao menos eficiente possivel. Um motor CFM56 em marcha lenta no solo consome cerca de **5 a 7 kg de combustivel por minuto**, e um aviao bimotor aciona dois deles. Para um widebody quadrimotor, a conta e quadruplicada. Some os tempos de espera nos taxiways, as filas diante da pista, as paradas impostas pelo controle de trafego aereo, e o desperdicio se acumula rapidamente.

O problema e amplificado nos grandes hubs internacionais. Em Heathrow, Atlanta ou Frankfurt, um taxi tipico dura de 15 a 30 minutos — as vezes mais nos horarios de pico. Cada minuto de motor em marcha lenta representa combustivel queimado sem produzir nenhum deslocamento util quando o aviao esta parado.

![Avioes KLM no estacionamento no aeroporto de Schiphol — tempo de espera no solo](/images/taxi-fuel-saving/schiphol-gates.webp)

## Tecnica n.1: taxi com um motor (Single-Engine Taxi)

O metodo mais difundido e mais simples de implementar. Em um aviao bimotor, o principio e direto: desligar um motor durante o taxi e usar apenas o outro.

### Como funciona

Em vez de ligar os dois motores no portao, a tripulacao liga apenas um e comeca o taxi. O segundo motor e ligado durante o taxi, com antecedencia suficiente antes da pista para que atinja sua temperatura operacional e todos os sistemas hidraulicos estejam alimentados antes da decolagem. A mesma logica se aplica na chegada: apos liberar a pista, a tripulacao desliga um motor para o taxi ate o portao.

### A economia

O taxi com um motor reduz o consumo de combustivel no taxi de **20 a 40 %** dependendo do tipo de aeronave e das condicoes. Para uma companhia que opera centenas de voos diarios, isso representa economias anuais de milhoes de litros de querosene.

### As limitacoes

O taxi com um motor nem sempre e possivel. Curvas fechadas do lado do motor desligado podem ser dificeis (o empuxo assimetrico complica a manobra). Condicoes meteorologicas adversas (gelo, chuva forte) podem exigir os dois motores para manter controle direcional adequado. Algumas companhias proibem o SET em taxiways com inclinacao ou em configuracoes aeroportuarias especificas.

## Tecnica n.2: TaxiBot — o reboque pilotado a partir do cockpit

O TaxiBot, desenvolvido pela divisao Lahav da **Israel Aerospace Industries**, representa um avanco importante. E um veiculo semi-robotizado hibrido-eletrico que reboca o aviao do terminal ate a pista com **os motores completamente desligados**.

### O conceito

Diferentemente de um pushback classico, o TaxiBot e **controlado diretamente pelo piloto a partir do cockpit**. O veiculo le o angulo do trem de nariz e segue a direcao dada pelo piloto. A frenagem e gerenciada pelos freios normais do aviao — o TaxiBot detecta a desaceleracao e se adapta. O piloto mantem, portanto, controle total da trajetoria e da velocidade, exatamente como em um taxi normal.

### A economia

Os numeros sao impressionantes: o TaxiBot consome **95 % menos combustivel** que os motores do aviao durante o taxi. A **Airbus** anuncia economias de combustivel no solo de **50 a 85 %** dependendo da distancia de taxi. O sistema existe em versao narrowbody (compativel A320, B737) e widebody (compativel A380, B747).

### Implantacao

O TaxiBot foi certificado em 2014 e realizou seu primeiro voo comercial com a **Lufthansa** em Frankfurt (voo LH140). Em 2024, a **KLM** realizou o primeiro voo de passageiros com TaxiBot em **Schiphol**. A Airbus continua ativamente os testes no ambito do projeto HERON.

![Trem de pouso de um aviao no taxiway — o TaxiBot se conecta ao trem de nariz](/images/taxi-fuel-saving/airbus-taxibot.webp)

## Tecnica n.3: taxi eletrico (Electric Green Taxiing)

Em vez de rebocar o aviao, por que nao instalar motores eletricos diretamente nas rodas?

### Os sistemas

A **Safran** e a **Honeywell** desenvolveram o **EGTS** (Electric Green Taxiing System), que integra motores eletricos de 50 kW nas rodas do trem principal. A energia vem da APU (unidade de potencia auxiliar) do aviao. A aeronave pode assim taxiar, manobrar e ate dar re sem ligar seus motores a jato e sem trator de pushback.

A **Green Taxi Solutions** desenvolve um sistema similar, prometendo economias anuais estimadas em **US$ 306.000 por aviao**.

### A economia global

O taxi eletrico reduz o consumo de combustivel em cerca de **4 % no conjunto do ciclo de voo** — um numero que parece modesto, mas que, multiplicado por milhares de voos diarios, representa uma economia substancial. A vantagem adicional e a ausencia total de empuxo de jato no solo, reduzindo o ruido e o risco de sopro para o pessoal em solo.

## Tecnica n.4: gate-holding e otimizacao ATC

As solucoes mais imediatas nao envolvem tecnologia embarcada, mas sim a gestao do trafego no solo.

### Gate-holding

O principio e simples: em vez de empurrar o aviao e deixa-lo esperando com os motores ligados em uma fila no taxiway, a companhia mantem o aviao no portao de embarque ate que um slot de taxi direto esteja disponivel. O aviao permanece conectado a energia eletrica do terminal, com os motores desligados. Quando o controle da sinal verde, o taxi comeca imediatamente sem tempo de espera intermediario.

### Partida atrasada dos motores

Os pilotos atrasam a partida dos motores o maximo possivel antes de sair do portao. Cada minuto ganho com os motores desligados e combustivel economizado. Essa tecnica e particularmente eficaz em aeroportos congestionados onde os tempos de espera no pushback sao frequentes.

### Otimizacao das trajetorias

O controle de trafego aereo pode contribuir minimizando as paradas, otimizando as trajetorias de taxi (evitando desvios) e coordenando as sequencias de partida para reduzir o tempo de motor em marcha lenta. Os sistemas A-SMGCS (Advanced Surface Movement Guidance and Control Systems) ajudam a fluidificar o trafego no solo.

![TaxiBot em operacao no solo — conexao ao trem de nariz do aviao](/images/taxi-fuel-saving/taxibot-towing.webp)

## E no MSFS? Aplicando essas tecnicas na simulacao

Os pilotos virtuais dedicados podem reproduzir essas praticas no Microsoft Flight Simulator 2024 para maior realismo:

- **Taxi com um motor** — Nos add-ons de nivel estudo (PMDG 737, Fenix A320), e possivel ligar apenas um motor para o taxi e acionar o segundo durante o trajeto ate a pista
- **Partida atrasada** — Esperar estar pronto para taxiar antes de ligar os motores, em vez de liga-los assim que o aviao e energizado
- **Gate-holding** — Preparar seu voo (FMS, briefing, ATIS) com os motores desligados no portao antes de solicitar o pushback

No [PilotLeague](https://pilotleague.com/pt/funcionalidades/), o pilar **Eficiencia de combustivel** da sua pontuacao mede exatamente seu consumo em kg/nm por fase de voo — incluindo o taxi. Um taxi bem gerenciado com consumo controlado contribui diretamente para uma pontuacao global melhor. A analise pos-voo detalha seu consumo fase por fase com notas de A a D, permitindo identificar exatamente onde o combustivel foi desperdicado.

## Sintese das tecnicas

| Tecnica | Economia de combustivel no taxi | Complexidade | Disponibilidade |
|---------|--------------------------------|--------------|-----------------|
| Taxi com um motor | 20-40 % | Baixa | Imediata (procedimento) |
| TaxiBot | 50-85 % | Alta | Frankfurt, Schiphol, testes |
| Taxi eletrico (EGTS) | ~4 % ciclo total | Alta | Em desenvolvimento |
| Gate-holding | Variavel | Baixa | Imediata (ATC) |
| Partida atrasada dos motores | 5-15 % | Baixa | Imediata (procedimento) |

## O que isso significa

A economia de combustivel no taxi nao e um detalhe irrelevante — e uma alavanca concreta que a industria ja aciona. O taxi com um motor se tornou um procedimento padrao na maioria das grandes companhias. O TaxiBot esta passando do estagio experimental para a operacao comercial. O taxi eletrico avanca. E cada tecnica, do mais simples gate-holding ao mais tecnologico EGTS, contribui para reduzir a pegada de carbono de uma industria sob pressao ambiental crescente.

Para os pilotos virtuais, integrar essas praticas em sua rotina de voo adiciona uma camada de realismo operacional que poucos simmers exploram. E com ferramentas como o [PilotLeague](https://pilotleague.com/pt/funcionalidades/) que medem a eficiencia de combustivel em cada voo, nunca foi tao facil quantificar o impacto dessas boas praticas.

Os motores podem esperar. Sua pontuacao, nao.

---

*Fontes: [Eurocontrol](https://www.eurocontrol.int/), [OpenAirlines](https://blog.openairlines.com/engine-out-taxi-in-eoti), [Simple Flying](https://simpleflying.com/klm-taxibot-first-passenger-flght-schiphol-airport/), [Airbus](https://www.airbus.com/en/newsroom/stories/2025-07-taxibots-spool-up-as-project-heron-winds-down), [AEON Project](https://www.aeon-project.eu/engine-off-taxiing-operations/). Imagens: Smart Airport Systems / KLM / Airbus.*
