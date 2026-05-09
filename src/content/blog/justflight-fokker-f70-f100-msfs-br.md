---
title: "Just Flight Fokker F70/F100 Professional para MSFS"
description: "A Just Flight está fechando os testes finais do Fokker F70/F100 Professional para MSFS 2020 e 2024. Veja o que esperar do bundle no lançamento."
lang: "br"
pubDate: "2026-05-09"
heroImage: "../../assets/hero-justflight-fokker-f70-f100-msfs.webp"
---

Depois de mais de dois anos de desenvolvimento interno, a **Just Flight** está dando os retoques finais no seu **Fokker F70/F100 Professional Bundle** para Microsoft Flight Simulator 2020 e 2024. O development update de maio de 2026 confirma que a lógica do modo Profile do AFCAS foi reescrita, o modelo de frenagem refinado, e o time entrou na última fase de bug fixing antes do release.

![Vista externa do Fokker F100 Professional no Microsoft Flight Simulator](../../assets/hero-justflight-fokker-f70-f100-msfs.webp)

## Um Fokker à altura do simulador moderno

O Fokker F100 foi um avião regional discreto mas onipresente desde o fim dos anos oitenta: levou milhões de passageiros pela Europa, Ásia e Austrália, e em 1995 ganhou um irmão mais curto, o F70. KLM Cityhopper, Austrian Airlines, Air France Régional, American Airlines, TAM, QantasLink e Alliance Airlines operaram frotas grandes, e a família continua voando hoje em empresas como a Alliance Airlines e a Carpatair. Mesmo com toda essa pegada real, a família Fokker nunca tinha ganhado uma versão de alta fidelidade no MSFS — o bundle da Just Flight é o primeiro projeto sério a fechar essa lacuna.

O pacote cobre **cinco subvariantes**: um F70 com escada integral e porta de carga grande, mais quatro configurações de F100 que combinam escada integral ou porta deslizante, porta de carga pequena ou grande, e a opção da porta L2. Os dois aviões usam turbofans Rolls-Royce Tay — o **Tay 620-15** no F70 e o **Tay 650** no F100, mais pesado. A Just Flight gravou os motores num avião real na Holanda e integrou as gravações num pacote sonoro Wwise que, segundo o estúdio, traz mais de 500 amostras individuais.

## Sistemas codados na unha, nada de MSFS de série

O que separa esse projeto de um payware MSFS comum é a quantidade de código próprio escrito do zero. O **FMS** é uma implementação custom com duplo CDU, LNAV/VNAV reais, alinhamento IRS com tempo crível, importação de plano de voo e toda a hierarquia de páginas do Fokker (DIR, MODE, TACT MODE, INIT, REF, F-PLN, TO/APPR, PROG). Em cima dele roda um **Automated Flight Control and Augmentation System (AFCAS)** também 100% custom, comandando os modos lateral e vertical, com uma descida Profile que respeita as restrições de altitude e velocidade, e um autoland muito bem ajustado.

Por baixo da aviônica, a simulação vai até o miolo da célula. Cada circuito hidráulico é modelado de forma independente, com bombas elétricas; a rede elétrica separa motor, APU, fonte externa e emergência com gerenciamento dos TRU; pressurização, demanda de bleed air, antigelo e a lógica de transferência de combustível se comportam como no avião real. O famoso **aerofreio de cauda e os lift dumpers**, o gust lock, os comandos alternativos de stab e flap, e a cinemática do trem dependente de pressão estão todos reproduzidos individualmente, sem se esconderem atrás de animações genéricas.

![Cockpit do Fokker F100 com telas CRT e CDU duplos](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_COCKPIT_010526_1_s0BFOYFCr.png)
*Crédito: [Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

## O que muda pro piloto virtual

Pra quem já voa um FlyByWire A320, um iniBuilds A310 ou um PMDG 737, o F70/F100 vai parecer uma volta a uma geração anterior de cockpit — instrumentos analógicos de standby, telas CRT curvas, switches clássicos — mas com a profundidade de sistemas que esses add-ons modernos popularizaram. Comandante, primeiro oficial e observador estão totalmente modelados, com switches e disjuntores animados; e a Just Flight ainda colocou clickspots escondidos (TOGA, ajuste STD do altímetro) pra manter a usabilidade boa em voo.

Os Tay têm personalidade própria. Respondem rápido em baixa altitude, mas sobem devagar com o F100 pesado: o development blog cita uns trinta minutos e 156 milhas náuticas pra alcançar o FL350 no MTOW, em condições ISA. É justamente esse tipo de restrição que transforma um curto trecho regional — Guarulhos-Brasília, ou os equivalentes europeus Amsterdã-Munique, Viena-Bucareste — num voo procedural completo em vez de um exercício de avanço rápido. Com um alcance máximo de cerca de 1 500 milhas náuticas, o bundle foi feito pras malhas regionais onde o Fokker brilhou de verdade.

## Cabine, EFB e os detalhes

A cabine de passageiros é completa, acessível e interativa. Iluminação, portas, interfones e galleys são operáveis; os anúncios de bordo, o player de música digital e a lógica Auto Cabin Crew estão inclusos; e os LODs foram calibrados pra que andar pelo avião não derrube o FPS. Cada pintura traz texturas de cabine personalizadas, e as **30 pinturas inclusas** — 11 pro F70 e 19 pro F100, indo da KLM Cityhopper e Austrian até American Airlines, TAM ou Serviço Aéreo do Governo Eslovaco — cobrem praticamente todas as cores que um piloto virtual ia querer voar.

![Cabine de passageiros do Fokker F100 no MSFS](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_CABIN_010526_1_L2gHiqeFA.png)
*Crédito: [Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

O EFB cobre todo o lado operacional: estados cold-and-dark ou turnaround, gerenciador de combustível e payload com controle por tanque, boarding e abastecimento em ritmos realistas, GPU e calços, calculadoras de takeoff e landing, **import de OFP do SimBrief**, METAR, tracking em tempo real e **cartas Navigraph** via assinatura separada. A compatibilidade com GSX, o walkaround do MSFS 2024 e o sistema de checklist interativa nativo — quase 300 itens, mais de 250 antes do takeoff — fecham o conjunto.

## Como tirar o máximo

O melhor jeito de pegar o avião é começar com **um trecho curto regional** — uma KLM Cityhopper Amsterdã-London City, ou uma Austrian Viena-Frankfurt — com peso moderado, pra ter margem de subida até um FL razoável. Depois que as páginas do FMS, os modos AFCAS e a lógica do aerofreio e lift dumpers já estiverem na ponta dos dedos, etapas mais longas na malha australiana da Alliance Airlines ou QantasLink vão colocar o modo Profile e o autoland à prova. A compatibilidade com a checklist interativa do MSFS já tá confirmada: quem curte a UI nativa pega o fluxo completo de quase 300 itens sem add-on de terceiro.

A [página do produto em desenvolvimento na Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle) é o melhor lugar pra acompanhar o próximo update — a entrada de maio de 2026 fala em testes finais em voo e bug fixing, o que normalmente sinaliza janela de lançamento em semanas.

## Conclusão

Se o projeto entregar o que os blogs de desenvolvimento prometem, o Fokker F70/F100 Professional Bundle pode virar o bijato regional de referência no MSFS — o avião que preenche o vazio entre os turboélices e as grandes simulações de A320 e 737. A gente publica uma review completa no Virtual Flight assim que pegar a versão final. Até lá, a [página de notícias da Just Flight](https://www.justflight.com/) é o lugar pra ficar de olho no anúncio.
