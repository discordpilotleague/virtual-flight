---
title: 'iniBuilds L-1011 TriStar: el legendario trirreactor llega a MSFS 2024'
description: 'iniBuilds anuncia el Lockheed L-1011 TriStar para MSFS 2024 con puesto de ingeniero de vuelo, autoland CAT IIIB y sistemas de época.'
lang: 'es'
pubDate: 'Feb 14 2026'
heroImage: '../../assets/hero-inibuilds-tristar.jpg'
---

Hay aviones que se diseñan para cumplir una especificación y aviones que se diseñan para cambiar la industria. El **Lockheed L-1011 TriStar** pertenece categóricamente al segundo grupo. Cuando rodó por primera vez en Palmdale, California, en noviembre de 1970, el TriStar era el avión comercial más avanzado que la humanidad había producido: el primero en certificar un sistema de aterrizaje automático CAT IIIB, el primero en integrar un sistema de gestión de vuelo computerizado con controles de empuje automáticos, y uno de los primeros en ofrecer una experiencia de pasajero genuinamente silenciosa gracias a la ubicación del motor central en el fuselaje trasero con un conducto en S que atenuaba el ruido hacia la cabina. Fue un avión adelantado a su tiempo, construido por ingenieros que no aceptaban compromisos.

Ahora, más de medio siglo después, **[iniBuilds](https://inibuilds.com/)** está trayendo el L-1011-500 TriStar a **Microsoft Flight Simulator 2024**. El proyecto se encuentra en las fases finales de desarrollo, y lo que hemos visto hasta ahora sugiere que estamos ante una de las recreaciones de avión clásico más ambiciosas jamás intentadas en el ecosistema de MSFS. No hay fecha de lanzamiento confirmada ni precio anunciado todavía, pero la profundidad técnica que ya se ha revelado merece un análisis exhaustivo.

![Banner de desarrollo del L-1011 TriStar de iniBuilds](/images/tristar/banner.webp)

## Una historia que merece ser recordada

Para entender por qué el TriStar genera tanta pasión entre entusiastas de la aviación, hay que volver a finales de los años sesenta. American Airlines había lanzado una solicitud de propuestas para un avión widebody de alcance medio, y tres fabricantes respondieron: McDonnell Douglas con el DC-10, Lockheed con el L-1011, y Airbus con lo que eventualmente se convertiría en el A300. La especificación exigía tres motores — la filosofía de la época dictaba que los vuelos transoceánicos requerían redundancia más allá del bimotor — y Lockheed eligió un camino que nadie más estaba dispuesto a transitar.

Mientras McDonnell Douglas optó por montar el tercer motor directamente en la cola con una toma de aire recta, Lockheed diseñó un sofisticado conducto en S que alimentaba al motor central Rolls-Royce RB211 desde una toma en la raíz del estabilizador vertical. La solución era aerodinámicamente superior, reducía significativamente el ruido en cabina y mantenía el centro de gravedad más estable, pero añadía complejidad estructural y peso. Esa decisión — priorizar la elegancia técnica sobre la simplicidad de fabricación — definió al TriStar y, en cierto modo, selló su destino comercial.

Porque el TriStar nació bajo una estrella oscura. Rolls-Royce, el único proveedor de motores para el L-1011, entró en **bancarrota** en febrero de 1971, paralizando la línea de producción durante meses críticos. Cuando los motores finalmente estuvieron disponibles y las entregas comenzaron en 1972, el DC-10 ya llevaba un año de ventaja en el mercado. Lockheed nunca recuperó el terreno perdido. Solo se construyeron **aproximadamente 250 unidades** del TriStar en todas sus variantes, frente a las 446 del DC-10/MD-11. Y sin embargo, los pilotos que volaron ambos aviones coinciden casi unánimemente: el TriStar era el mejor avión. Más silencioso, más suave, con sistemas más sofisticados y un manejo en vuelo que generaba una lealtad casi irracional entre sus tripulaciones.

![Modelo exterior del L-1011 TriStar](/images/tristar/exterior.webp)

## Tres Rolls-Royce con lógica EPR realista

El corazón del TriStar son sus tres turbofanes **Rolls-Royce RB211-524**, y la implementación de iniBuilds promete hacer justicia a la complejidad mecánica de estos motores. La simulación incluye **lógica EPR (Engine Pressure Ratio) realista**, lo que significa que el comportamiento de empuje no se modela como una simple curva lineal sino como la relación real entre presiones de entrada y salida del motor, tal como la monitorizaba el ingeniero de vuelo en el avión real.

Además, se ha modelado la **inercia del motor** — el tiempo que tarda el RB211 en responder a un cambio de potencia. Esto es crucial para la experiencia de vuelo en un avión de esta época: no estamos ante la respuesta casi instantánea de un turbofán moderno de alto bypass. Cuando movés las palancas de potencia, hay un retraso tangible mientras los spools aceleran o desaceleran, y eso cambia fundamentalmente la técnica de aproximación y aterrizaje. Los pilotos del TriStar real sabían que había que anticipar las correcciones de potencia con varios segundos de margen, y iniBuilds ha capturado ese comportamiento.

![Sistema de control automático de vuelo](/images/tristar/afcs.webp)

## Autoland CAT IIIB y automatismos avanzados

Uno de los logros técnicos más extraordinarios del TriStar real fue su capacidad de **aterrizaje automático CAT IIIB**, que permitía operar con visibilidades prácticamente nulas — menos de 75 metros de alcance visual en pista. En 1972, esto era tecnología de ciencia ficción. El sistema de iniBuilds replica esta capacidad con un **AFCS (Automatic Flight Control System)** completo, que incluye el auto-throttle integrado con un **Performance Management System (PMS)**.

El PMS del TriStar era el antepasado directo de los FMS modernos: calculaba perfiles de ascenso y descenso óptimos, gestionaba el empuje para maximizar la eficiencia de combustible, y proporcionaba guía lateral y vertical. No tenía la interfaz gráfica de un MCDU moderno — la interacción era a través de selectores rotatorios y displays numéricos — pero la filosofía operativa era revolucionaria para su tiempo. En la versión de iniBuilds, el PMS estará completamente funcional y será una parte integral de la operación del avión.

![Estación del ingeniero de vuelo](/images/tristar/flight-engineer.webp)

## La estación del ingeniero de vuelo

Si hay un elemento que va a distinguir al TriStar de iniBuilds de cualquier otro widebody clásico en MSFS 2024, es el **puesto de ingeniero de vuelo interactivo**. En la era del TriStar, la cabina de vuelo requería tres personas: capitán, primer oficial e ingeniero de vuelo. Este último era responsable de la gestión de los sistemas del avión — combustible, presurización, eléctrico, hidráulico, neumático, motores — desde un panel lateral dedicado repleto de instrumentos analógicos, interruptores y controles rotatorios.

iniBuilds ha modelado esta estación completa con total interactividad. Podés sentarte en el puesto del ingeniero de vuelo, operar cada sistema manualmente y gestionar el avión como lo hacía la tripulación real. Pero, reconociendo que no todos los pilotos virtuales quieren (o pueden) manejar tres puestos simultáneamente, se ha incluido una **opción de automatización por IA** que permite delegar las funciones del ingeniero a un sistema automático. Esto significa que podés disfrutar de la complejidad completa cuando volás con un compañero en multijugador, o simplificar la experiencia cuando volás solo.

## Sistemas modelados en profundidad

La profundidad sistémica del proyecto va mucho más allá de los motores y la aviónica. iniBuilds ha implementado:

- **Triple circuito hidráulico independiente**, replicando la redundancia del sistema real que proporcionaba tres fuentes de presión completamente separadas para superficies de vuelo, tren de aterrizaje y otros sistemas.
- **Sistema neumático completo**, incluyendo el sangrado de aire de los motores (bleed air) para presurización, aire acondicionado y arranque de motores cruzado.
- **Arquitectura eléctrica AC/DC completa**, con generadores, buses, inversores y la lógica de transferencia automática que protegía los sistemas esenciales en caso de fallo.

Cada uno de estos sistemas puede fallar de forma independiente, creando escenarios de operación degradada que exigen conocimiento de los procedimientos reales del avión. Para el simmer que disfruta de la gestión de emergencias y las checklist de procedimientos anormales, el TriStar va a ser un festín.

## Navegación de época con toques modernos

La suite de navegación del TriStar de iniBuilds refleja la era del avión pero incorpora concesiones inteligentes para la jugabilidad en MSFS 2024. El sistema incluye:

- **RADNAV** — radionavegación clásica con VOR, ILS y ADF.
- **INS (Inertial Navigation System)** — el sistema de navegación inercial que fue la columna vertebral de la navegación oceánica antes del GPS. Requiere alineación antes del vuelo, acumula errores con el tiempo y demanda correcciones periódicas.
- **GPS** — como actualización posible en variantes más tardías.
- **INS+GPS** — modo combinado que corrige la deriva del inercial con datos GPS.

En lugar de un EFB (Electronic Flight Bag) moderno con pantalla táctil, iniBuilds ha creado lo que llaman **"Paper Flight Bag"** — una alternativa vintage que mantiene la coherencia estética de la época mientras proporciona las herramientas necesarias para la planificación de vuelo. Y para la carga de rutas, el sistema acepta **importación desde SimBrief**, permitiéndote generar un plan de vuelo completo en la web y cargarlo directamente en el INS del avión. Es un equilibrio elegante entre autenticidad y funcionalidad.

![Interfaz del Paper Flight Bag](/images/tristar/paper-flight-bag.webp)

## Cabina con tres estaciones y atención obsesiva al detalle

El trabajo visual del cockpit merece mención especial. iniBuilds ha recreado las tres estaciones — **capitán, primer oficial e ingeniero de vuelo** — con un nivel de detalle que incluye **aluminio cepillado** en los marcos de los instrumentos, **etiquetas desgastadas** por años de uso, y **polvo acumulado** en las superficies menos accesibles. Es el tipo de detalle que transforma un modelo 3D en una máquina del tiempo: cuando te sentás en el puesto del capitán y mirás al panel de instrumentos, no ves una recreación nueva y brillante sino un cockpit que ha vivido miles de horas de servicio.

Este enfoque en el envejecimiento realista y la texturización artesanal es consistente con el trabajo reciente de iniBuilds, pero la escala del cockpit del TriStar — con sus tres estaciones completas, los enormes paneles superiores y el pedestal central repleto de controles — presenta un desafío de modelado significativamente mayor que un biplaza o incluso un cockpit de dos tripulantes moderno.

## Exterior: alas que flexionan, calor que distorsiona

El modelo exterior del TriStar de iniBuilds no se queda atrás. La simulación incluye **wing flex** (flexión alar), que reproduce la deformación natural de las alas bajo carga aerodinámica — un detalle que transforma las vistas externas durante turbulencia y maniobras. También se ha implementado **heat shimmer** (distorsión por calor) visible detrás de los motores, ese efecto de refracción del aire caliente de escape que cualquiera que haya estado cerca de un reactor en funcionamiento reconoce instantáneamente.

Las **superficies de control** son mecánicamente precisas, con animaciones que reflejan el movimiento real de alerones, elevadores, timón de dirección, spoilers y flaps. Para los aficionados a la fotografía virtual y los creadores de contenido, el TriStar va a ser extraordinariamente fotogénico — la silueta del trirreactor con su motor central integrado en la cola es una de las más distintivas de la historia de la aviación comercial.

![Detalle de la cabina en aluminio cepillado](/images/tristar/cockpit.webp)

![Iluminación nocturna de la cabina](/images/tristar/lighting.webp)

## Seis libreas históricas

El paquete incluirá seis libreas que representan a las aerolíneas más emblemáticas que operaron el TriStar:

- **Delta Air Lines** — el mayor operador del L-1011, con más de 50 unidades en su flota.
- **British Airways** — operó el TriStar en rutas intercontinentales desde Heathrow.
- **Air Transat** — la aerolínea canadiense de vuelos charter que utilizó el L-1011 en rutas transatlánticas.
- **LTU** — la aerolínea alemana especializada en vuelos vacacionales, con su inconfundible librea roja.
- **Pan Am** — el nombre legendario de la aviación mundial, que operó el TriStar en sus últimos años.
- **United Airlines** — otra de las grandes aerolíneas estadounidenses que confió en el L-1011.

Cada librea representa un capítulo diferente de la historia del TriStar y de la aviación comercial del último cuarto del siglo XX. La variedad geográfica — Norteamérica, Europa, operaciones charter — garantiza opciones de rutas diversas y auténticas.

## Lo que todavía no sabemos

A la fecha de publicación, iniBuilds no ha confirmado **fecha de lanzamiento** ni **precio**. Dado el historial de la empresa — que ha demostrado capacidad para entregar productos complejos como el A350 con un nivel de acabado profesional — y la magnitud del proyecto TriStar con sus tres estaciones de tripulación y la profundidad sistémica descrita, es razonable esperar que el lanzamiento se produzca cuando el equipo esté satisfecho con la calidad y no antes.

## Por qué importa el TriStar en 2026

En una era donde la simulación de vuelo está dominada por recreaciones de aviones fly-by-wire modernos con glass cockpits, el TriStar representa algo diferente: la oportunidad de experimentar la aviación comercial en su forma más artesanal. Volar el L-1011 no es cargar un plan de vuelo en el MCDU y mirar cómo el avión se vuela solo. Es alinear el INS manualmente, gestionar el combustible entre tanques con un ingeniero de vuelo atento, monitorizar los EPR de tres Rolls-Royce que responden a su propio ritmo, y ejecutar un autoland con tecnología de los años setenta que, milagrosamente, funcionaba con una precisión que todavía hoy impresiona.

El TriStar fue un avión que merecía más éxito del que tuvo. La bancarrota de Rolls-Royce, las guerras comerciales con McDonnell Douglas y la mala fortuna financiera de Lockheed en el sector civil conspiraron contra una máquina que, en términos puramente técnicos, era superior a su competencia directa. Que iniBuilds haya elegido darle nueva vida en MSFS 2024 no es solo un acto de nostalgia — es un acto de justicia aeronáutica. Y para los pilotos virtuales que buscamos experiencias con profundidad, historia y carácter, el L-1011 TriStar promete ser uno de los lanzamientos más emocionantes del año.

---

*Fuente: [iniBuilds TriStar Airliner — Development Update](https://forum.inibuilds.com/topic/35590-inibuilds-tristar-airliner-development-update/) en el foro de [iniBuilds](https://inibuilds.com/). Imágenes cortesía de iniBuilds.*
