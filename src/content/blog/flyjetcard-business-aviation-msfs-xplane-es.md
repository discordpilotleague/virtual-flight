---
title: "FlyJetCard: sim de aviación de negocios para MSFS y X-Plane"
description: "FlyJetCard convierte MSFS y X-Plane 12 en una operación charter Part 91/135 con más de 5 000 misiones IA y una economía owner-operator completa."
lang: "es"
pubDate: "2026-05-10"
heroImage: "../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp"
---

Una nueva aplicación complementaria llamada **FlyJetCard** (a menudo abreviada como JetCard) se posiciona como el primer ecosistema dedicado a la aviación de negocios para **Microsoft Flight Simulator** y **X-Plane 12** en Windows. En lugar de un sistema genérico de carga o de routing de aerolínea, JetCard simula operaciones charter Part 91 y Part 135 — vuelos corporativos, misiones médicas, charters deportivos y trips owner-operator — con sus propios briefings, ventanas horarias y estructura de pago.

![Interfaz de dispatch de FlyJetCard para MSFS y X-Plane 12](../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp)

## Qué hace realmente FlyJetCard

JetCard se ejecuta junto al simulador y le suministra trabajo. La aplicación genera de forma continua más de **5 000 charters IA** repartidos en **50 categorías de misión** — evacuaciones médicas, logística de equipos deportivos, transporte ejecutivo, vuelos de ocio, movimientos gubernamentales y más — desde una red de **más de 960 aeropuertos** orientados a aviación de negocios en seis continentes. Los charters expiran con temporizadores realistas: una urgencia médica dura cuatro horas, una reserva de ocio cinco días, y el board se renueva según el tipo de misión.

Por debajo, la plataforma modela la realidad financiera de un negocio charter. El piloto empieza como **freelance** ganando el 10 % del valor del charter para operadores ficticios, puede pasar a **empleado** de una compañía creada por otro jugador y, finalmente, alcanzar el estatus **owner-operator** con su propia flota, nómina, reservas de mantenimiento y un sistema bancario con préstamos por niveles. La elección de avión está controlada: un light jet no puede aceptar legalmente una misión transatlántica, y los costes operativos siguen una economía realista en lugar de una simplificación arcade.

## Contexto de vuelo escrito, no routing aleatorio

Lo que diferencia a JetCard de un simple tracker de carrera es el **relato escrito por IA** asociado a cada vuelo. Cada charter llega con un dossier de misión — quién va a bordo, por qué deben llegar al destino, qué horario importa — y los trips multi-etapa encadenan esos dossiers en una historia continua. La sincronización con el mundo real forma parte del diseño: el board responde a calendarios deportivos reales, carreras de F1 y eventos culturales, así que un sábado en Mónaco aparecen charters de F1, y un fin de semana de playoffs NBA produce traslados de equipos.

El sistema **jPhone** gestiona la comunicación contextual entre dispatcher, FBO y clientes, lo que convierte el vuelo en una operación en lugar de una etapa aislada. El seguimiento es en directo con visualización de telemetría, y la plataforma integra **SimBrief** para la planificación de vuelo y meteorología live para las decisiones de dispatch.

![Charter board de FlyJetCard con dossiers de misión y briefings IA](https://flyjetcard.io/assets/about/charter-board.png)
*Crédito: [JetCard](https://flyjetcard.io/)*

## Qué cambia para los pilotos virtuales

Si ya registras tus horas en un logbook externo o vuelas online con una compañía virtual, JetCard ocupa otro hueco — más cercano a un **modo carrera en solitario** que a VATSIM o PilotEdge. Está pensado para simmers que quieren que cada vuelo tenga propósito, papeleo y nómina, sin comprometerse con el calendario de una virtual airline. Para situar la herramienta en el panorama de carrera más amplio, nuestra [guía del logbook de carrera para piloto virtual](/es/blog/carrera-piloto-virtual-logbook) compara SimToolkitPro, Volanta y FSEconomy.

El modelo de conexión refleja el doble soporte de simulador: **MSFS** usa SimConnect o FSUIPC, mientras que **X-Plane 12** requiere configurar un puerto UDP. Eso significa que cualquier persona con ambos sims puede tirar del mismo pool de charters, alternar flotas entre plataformas y mantener una única carrera en los dos. Si todavía estás decidiendo qué simulador usar, nuestra [comparativa MSFS 2024 vs X-Plane 12](/es/blog/msfs-2024-vs-xplane-12-comparativa) detalla las diferencias que más importan para el biz-jet.

## Aviones, aeropuertos y progresión

La plataforma soporta **97 aviones** desde turbohélices monomotores hasta un Boeing Business Jet, y la lógica de elegibilidad usa especificaciones reales — longitud de pista, alcance, carga útil, presurización — para filtrar lo que cada operador puede aceptar. Un King Air 350 atrae un set de misiones distinto al de un Citation Latitude o un Global 7500.

Los más de 960 aeropuertos se han escogido por su relevancia biz-aviation, no por el tráfico de aerolínea. Eso pone el foco en pistas con FBO como **Teterboro (KTEB)**, **Van Nuys (KVNY)**, **París-Le Bourget (LFPB)**, **Farnborough (EGLF)**, **Ginebra (LSGG)** o **Aspen (KASE)** — destinos donde los jets corporativos operan de verdad, en lugar de los grandes hubs que dominan la simulación de aerolínea. La progresión de carrera se superpone: la reputación condiciona los niveles de préstamo, comprar flota desbloquea misiones owner-operator y contratar pilotos permite a los operadores grandes mantener un calendario multi-aeronave.

![Tracker de vuelo en directo de FlyJetCard con telemetría](https://flyjetcard.io/assets/about/flight-tracker.png)
*Crédito: [JetCard](https://flyjetcard.io/)*

## Cómo empezar y acceso

JetCard está actualmente en **alpha** con invitaciones beta progresivas. Los usuarios interesados solicitan acceso anticipado a través del [sitio oficial](https://flyjetcard.io/), y el modelo de licencia integrado gestiona la activación. El flujo de instalación descrito en el [manual de piloto JetCard](https://manual.flyjetcard.io/) es corto: crear una cuenta, instalar la aplicación de escritorio con la clave de licencia, conectar el simulador (SimConnect/FSUIPC para MSFS, UDP para X-Plane), revisar el board, aceptar una misión, volar, y cobrar cuando JetCard detecta que el vuelo ha terminado correctamente.

Una buena primera salida es un contrato freelance en un **light jet** desde Teterboro, en un trayecto corto — un traslado de equipo deportivo a Boston, una etapa médica a Buffalo, un vuelo corporativo a Dulles — para asimilar la dispatch UI, las notificaciones jPhone y el cálculo de cobro antes de pasar a trips de largo radio en aviones más pesados.

## Conclusión

FlyJetCard es un producto de nicho, y precisamente ese es su valor. Al centrarse exclusivamente en la aviación de negocios en lugar de cubrir todas las carreras de pilotaje a la vez, construye una profundidad operativa que ningún tracker de carrera generalista puede igualar. La combinación de relato IA, sincronización con eventos del mundo real y economía charter funcional convierte cada vuelo en un trabajo en lugar de una sesión free-flight. Para los pilotos virtuales centrados en operaciones biz-jet en MSFS o X-Plane 12, es uno de los proyectos de terceros más ambiciosos del género — pendiente del [sitio JetCard](https://flyjetcard.io/) para la ventana de salida pública.
