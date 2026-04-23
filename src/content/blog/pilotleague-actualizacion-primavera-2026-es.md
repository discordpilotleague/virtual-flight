---
title: "PilotLeague Primavera 2026 — Clasificación justa MSFS 2024 y VA"
description: "Clasificación móvil de 14 días que premia a los pilotos activos, aerolíneas virtuales, perfiles públicos y nuevas alertas de seguridad — la mayor actualización PilotLeague para MSFS 2024."
lang: 'es'
pubDate: 'Apr 23 2026'
heroImage: '../../assets/hero-pilotleague-spring-2026-update.webp'
---

La actualización de Primavera 2026 de [PilotLeague](https://pilotleague.com/es/) es, sin lugar a dudas, la más ambiciosa desde el lanzamiento de la plataforma. No se trata de un simple parche cosmético: la lógica que clasifica a los pilotos de Microsoft Flight Simulator 2024 ha sido reescrita desde cero para recompensar la actividad reciente y la constancia, en lugar de premiar a quienes acumularon puntos hace meses y ya no vuelan. A ello se suma la llegada de las aerolíneas virtuales, los perfiles públicos de piloto, un nuevo sistema de alertas de seguridad y la corrección de dos bugs que afectaban de forma silenciosa al seguimiento de vuelo.

Esta entrega repasa, con detalle técnico pero sin perder de vista al piloto virtual, todo lo que cambia en la [Clasificación Global V2](https://pilotleague.com/es/clasificaciones/), cómo crear una VA en minutos, qué implica tener un perfil público visible en la web, y por qué esta versión marca un antes y un después en la coherencia entre la aplicación compañera y la plataforma online.

![Clasificación V2 PilotLeague con chips de aerolíneas virtuales y pestañas por categoría](../../assets/hero-pilotleague-spring-2026-update.webp)
*Crédito: [PilotLeague — Clasificación global V2](https://pilotleague.com/es/clasificaciones/)*

## Clasificación V2: ventana deslizante de 14 días

El núcleo de la actualización es la nueva **Clasificación V2**. El antiguo modelo acumulativo dejaba de ser justo con el paso del tiempo: un piloto que había acumulado 20 000 puntos hace seis meses podía mantener su posición sin volar ni una hora, mientras que un recién llegado con vuelos excelentes tardaba semanas en aparecer en los primeros puestos. La nueva fórmula corrige este sesgo con una ventana deslizante de **14 días** y un **decay exponencial** que reduce progresivamente el peso de los vuelos más antiguos.

La fórmula es transparente y está documentada en la página de [Clasificaciones](https://pilotleague.com/es/clasificaciones/):

```
pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier
```

- **performance_recent** pondera la calidad técnica de los últimos vuelos (aterrizajes, gestión de combustible, cumplimiento de SOP, seguridad).
- **activity_multiplier** premia a quienes vuelan con regularidad dentro de la ventana.
- **reliability_multiplier** penaliza los vuelos abandonados o con incidentes graves.

El cálculo se refresca **cada 15 minutos**, de modo que un buen vuelo se refleja en el ranking casi al instante. Las puntuaciones por categoría ya **no tienen tope de 100**: un piloto puede superar ese valor si su rendimiento es sostenidamente superior a la media. Esto introduce una dinámica competitiva real, algo que la comunidad pedía desde hace meses.

## Cuatro categorías, Top 40 y chip VA

La Clasificación V2 se organiza en **cuatro categorías independientes**: Aterrizaje, SOP (Standard Operating Procedures), Seguridad y Eficiencia de combustible. Cada una muestra el **Top 40 mundial**, con su propia pestaña, filtro por simulador y, cuando procede, un pequeño **chip** junto al nombre del piloto que indica a qué aerolínea virtual pertenece. Hacer clic en ese chip lleva directamente a la ficha pública de la VA.

Este diseño permite que pilotos especializados — por ejemplo, un virtuoso del aterrizaje de corto alcance — brillen en su disciplina sin verse eclipsados por pilotos polivalentes. A su vez, la página del ranking combina las cuatro categorías en una puntuación global ponderada, que es la que aparece en la pestaña principal.

## Aerolíneas virtuales nativas

Por primera vez, [PilotLeague](https://pilotleague.com/es/caracteristicas/) integra las **aerolíneas virtuales (VA)** como un objeto de primer nivel. Hasta ahora, la única manera de mostrar la pertenencia a una compañía era escribirla manualmente en la biografía. A partir de esta actualización, una VA dispone de:

- **slug** (URL única),
- **nombre completo**,
- **callsign radio** (por ejemplo, *Iberia Virtual*),
- **código IATA ficticio** de tres letras,
- **logo** subido desde el panel de administración.

Crear una aerolínea lleva menos de dos minutos: basta con acceder a **Settings → Networks → Virtual Airlines** en la aplicación compañera, rellenar el formulario y validar. A partir de ese momento, cualquier miembro puede unirse introduciendo el código. El nombre y el logo de la VA aparecen en la clasificación, en los perfiles públicos y en las fichas de vuelo.

Las VA con **actividad orgánica real** — es decir, con miembros que vuelan de forma regular y variada — pueden solicitar una **verificación manual** que añade una marca azul junto al nombre. Este distintivo pretende proteger a las comunidades consolidadas de intentos de *squatting* de callsigns históricos y ayudar a los nuevos pilotos a identificar grupos activos.

## Perfiles públicos de piloto

Otro gran paso adelante es la llegada de los **perfiles públicos**, accesibles desde una URL limpia del tipo `pilotleague.com/pilots/<username>`. Cada piloto puede ahora compartir su actividad en redes sociales, foros o con su VA, sin necesidad de capturas de pantalla.

![Perfil público de piloto PilotLeague con rango mundial, nivel, estadísticas y vuelos recientes](/images/pilotleague-spring-2026-update/public-pilot-profile.webp)
*Crédito: [PilotLeague — Perfil público](https://pilotleague.com/es/)*

Un perfil público se estructura en cuatro bloques:

1. **Cabecera de identidad**: avatar, nombre de usuario, país, aerolínea virtual (si procede) y fecha de registro.
2. **World Rank y nivel**: posición mundial actual, barra de progresión con XP y nivel numérico.
3. **Estadísticas**: horas totales, número de vuelos, aterrizajes, distancia acumulada, aeronave favorita.
4. **Actividad reciente**: gráfico de los últimos 30 días y lista de los **10 últimos vuelos**, cada uno con aeronave, ruta y puntuación.

La **visibilidad es configurable**: pública, solo VA, o privada. Por defecto, los perfiles existentes permanecen privados hasta que su propietario decide abrirlos — una decisión alineada con el principio de privacidad por diseño.

## Avatares: recorte circular y moderación

Para acompañar los perfiles públicos, se ha activado la **subida de avatares**. El flujo acepta ficheros **JPG y PNG** de hasta **2 MB**, aplica un **recorte circular** en el cliente y normaliza la imagen a **512×512 píxeles**. Cada avatar pasa además por una **verificación NSFW** automática antes de publicarse, con el fin de mantener un entorno adecuado para todos los pilotos, incluidos los menores que vuelan en familia.

## Seguridad en pista: banner rojo y −100 puntos

La Primavera 2026 refuerza de forma notable la detección de situaciones de riesgo. El motor interno revisa la posición de la aeronave **cada 500 ms**, y basta con un **período de gracia de 5 frames** para evitar falsos positivos al cruzar marcas de pista. La regla es estricta: si la aeronave aterriza **fuera de CUALQUIER pista publicada** — taxiway, hierba, carretera — se dispara una alerta.

![Banner rojo de aterrizaje fuera de pista en la parte superior de una página de detalle de vuelo PilotLeague](/images/pilotleague-spring-2026-update/off-runway-alert.webp)
*Crédito: [PilotLeague — Alerta de seguridad fuera de pista](https://pilotleague.com/es/)*

La consecuencia es doble. Primero, una **penalización de −100 puntos** se aplica a la categoría Seguridad del vuelo. Segundo, la ficha de vuelo se corona con un **banner rojo** muy visible, tanto en la aplicación compañera como en la web pública. Este banner está localizado en **siete idiomas** (EN, FR, DE, ES, BR, JA, ZH), de modo que cualquier visitante comprende al instante lo ocurrido, sin necesidad de leer la descripción.

La filosofía es didáctica: no se trata de estigmatizar al piloto, sino de hacer visible el error para fomentar el aprendizaje. Los usuarios que lo deseen pueden consultar los consejos publicados en [PilotLeague Safety](https://pilotleague.com/es/safety/) para evitar la próxima salida de pista.

## Corrección del seguimiento GPS: del error 500 a la polilínea por fase

Varios pilotos habían reportado que, en ciertas condiciones, el mapa de un vuelo aparecía como una **línea recta** entre el aeropuerto de origen y el de destino, ignorando la ruta real. Tras una auditoría del equipo de PilotLeague, el bug se localizó: la consulta encargada de recuperar la traza apuntaba a una **tabla equivocada** debido a una migración incompleta de la columna `profile_visibility`. El resultado era un **HTTP 500** silencioso, tras el cual la interfaz caía en un *fallback* que dibujaba la ruta ortodrómica aproximada.

![Traza GPS coloreada por fase de vuelo — despegue, ascenso, crucero, descenso, aproximación, aterrizaje](/images/pilotleague-spring-2026-update/gps-track-phases.webp)
*Crédito: [PilotLeague — Traza GPS por fase](https://pilotleague.com/es/)*

El fallo está corregido. Además, se ha aprovechado la intervención para introducir una **polilínea coloreada por fase de vuelo**: despegue, ascenso inicial, ascenso, crucero, descenso, aproximación, aterrizaje y rodaje reciben cada uno un color distinto. Esta visualización permite detectar de un vistazo anomalías como un descenso tardío o una aproximación inestable.

El sistema utiliza un **muestreo adaptativo** capaz de mostrar hasta **1 500+ puntos** por vuelo sin ralentizar el navegador, incluso en trayectos transoceánicos.

## Rachas: dos bugs corregidos y escalera de seis niveles

El sistema de **rachas (streaks)** sufría dos problemas bien conocidos por los usuarios asiduos. El primero: una racha **nunca expiraba** aunque el piloto dejara de volar durante semanas. El segundo: cuando se reanudaba la actividad, una escritura errónea **reescribía `last_flight_date`** y hacía perder el histórico real. Ambos fallos han sido corregidos en esta versión.

La nueva lógica incluye un **barrido nocturno a las 00:05 CET** que cierra las rachas caducadas de forma consistente. La escalera de recompensas se estructura en **seis niveles**, aplicados exclusivamente al XP — **nunca a la puntuación de clasificación** —, lo que evita que la actividad forzada infle artificialmente el ranking:

| Racha | Multiplicador XP |
|-------|------------------|
| 1–2 días | ×1.00 |
| 3 días + | ×1.05 |
| 7 días + | ×1.10 |
| 14 días + | ×1.15 |
| 30 días + | ×1.20 |
| 60 días + | ×1.25 |

Este equilibrio mantiene la motivación de volar con regularidad sin convertir la racha en un factor decisivo para el ranking mundial.

## Un único backend: sitio público y front office privado

Uno de los cambios menos visibles pero más estructurantes es la unificación de las fuentes de datos. El **sitio público** (`pilotleague.com`) y el **front office privado** (`pilots.pilotleague.com`) consumen ahora **las mismas vistas materializadas V2**. Esto garantiza que un piloto vea la misma puntuación, el mismo ranking y la misma actividad tanto si consulta su propio panel como si un amigo visita su perfil público. Se acabaron las discrepancias entre ambas interfaces.

## Interfaz disponible en siete idiomas

La aplicación compañera y la web han sido completamente localizadas en **siete idiomas**: inglés, francés, alemán, español, portugués de Brasil, japonés y chino simplificado. La detección es automática a partir de la configuración del navegador o del sistema operativo, con posibilidad de forzar manualmente el idioma desde el menú de preferencias. La versión en español utiliza una terminología neutra, adecuada tanto para pilotos de España como de Latinoamérica.

## Cómo empezar

Si aún no es usuario de PilotLeague, el flujo es sencillo. Descargue la aplicación compañera desde [la página de descarga](https://pilotleague.com/es/download/), inicie sesión con su cuenta Microsoft Flight Simulator 2024 y realice un primer vuelo. En pocos minutos aparecerá su ficha, su nivel inicial y su posición en el ranking. A partir de ahí, puede unirse a una aerolínea virtual existente, crear la suya o simplemente seguir volando para escalar en las cuatro categorías.

## Preguntas frecuentes

**¿Qué es PilotLeague?**
PilotLeague es una aplicación compañera gratuita y plataforma web para Microsoft Flight Simulator 2024 que analiza sus vuelos, le otorga una puntuación y le clasifica a escala mundial, con soporte para aerolíneas virtuales y perfiles públicos.

**¿Cómo se calcula la nueva puntuación?**
Mediante la fórmula `pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier`, aplicada sobre una ventana deslizante de 14 días con decay exponencial y refresco cada 15 minutos.

**¿La racha afecta a mi clasificación?**
No. Las rachas solo aumentan el XP (nivel), nunca la puntuación ni el ranking. El objetivo es recompensar la constancia sin distorsionar la competición mundial.

**¿Qué es una aerolínea virtual en PilotLeague?**
Una aerolínea virtual (VA) es un grupo de pilotos que vuelan bajo un callsign, código IATA y logo compartidos. Se crea desde Settings → Networks, y puede obtener una marca azul si demuestra actividad orgánica.

**¿Es PilotLeague gratis?**
Sí. La aplicación compañera y la plataforma web son gratuitas para todos los pilotos MSFS 2024.

## Para ir más lejos

- [Clasificaciones globales V2](https://pilotleague.com/es/clasificaciones/)
- [Ranking de aterrizaje](https://pilotleague.com/es/clasificaciones/landing/)
- [Ranking de eficiencia de combustible](https://pilotleague.com/es/clasificaciones/fuel/)
- [Ranking de seguridad](https://pilotleague.com/es/clasificaciones/safety/)
- [Descargar la aplicación compañera](https://pilotleague.com/es/download/)

Nos vemos en el tráfico.

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "¿Qué es PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "PilotLeague es una aplicación compañera gratuita y plataforma web para Microsoft Flight Simulator 2024 que analiza sus vuelos, le otorga una puntuación y le clasifica a escala mundial, con soporte para aerolíneas virtuales y perfiles públicos." } },
    { "@type": "Question", "name": "¿Cómo se calcula la nueva puntuación?", "acceptedAnswer": { "@type": "Answer", "text": "pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier, aplicada sobre una ventana deslizante de 14 días con decay exponencial y refresco cada 15 minutos." } },
    { "@type": "Question", "name": "¿La racha afecta a mi clasificación?", "acceptedAnswer": { "@type": "Answer", "text": "No. Las rachas solo aumentan el XP (nivel), nunca la puntuación ni el ranking. El objetivo es recompensar la constancia sin distorsionar la competición mundial." } },
    { "@type": "Question", "name": "¿Qué es una aerolínea virtual en PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "Una aerolínea virtual (VA) es un grupo de pilotos que vuelan bajo un callsign, código IATA y logo compartidos. Se crea desde Settings → Networks y puede obtener una marca azul si demuestra actividad orgánica." } },
    { "@type": "Question", "name": "¿Es PilotLeague gratis?", "acceptedAnswer": { "@type": "Answer", "text": "Sí. La aplicación compañera y la plataforma web son gratuitas para todos los pilotos MSFS 2024." } }
  ]
}
</script>
