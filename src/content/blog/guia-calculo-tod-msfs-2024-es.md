---
title: "Guía completa: cómo calcular el TOD en MSFS 2024"
description: 'Aprenda a calcular el Top of Descent (TOD) en MSFS 2024 con fórmulas, ajustes por viento y herramientas para un descenso perfecto.'
lang: 'es'
pubDate: 'Apr 01 2026'
heroImage: '../../assets/hero-guide-tod-calculator-msfs-2024.svg'
---

Uno de los momentos más reveladores en la formación de cualquier piloto virtual es comprender cuándo iniciar el descenso. No se trata de intuición ni de adivinar: existe una técnica precisa que los pilotos profesionales aplican en cada vuelo. Ese punto se llama **Top of Descent** (TOD), y dominarlo transforma por completo la experiencia de vuelo en Microsoft Flight Simulator 2024.

Esta guía le enseñará a calcular el TOD de forma manual, a ajustarlo según las condiciones y a utilizar las herramientas disponibles para lograr descensos eficientes y realistas.

## ¿Qué es el Top of Descent?

El Top of Descent es el punto geográfico exacto en el que una aeronave debe abandonar su altitud de crucero para llegar a la altitud deseada en el punto de destino, manteniendo una senda de descenso estable. Iniciar el descenso demasiado tarde obliga a perder altitud de forma agresiva, lo que resulta incómodo, ineficiente y, en situaciones reales, potencialmente peligroso. Hacerlo demasiado pronto implica volar a baja altitud durante más tiempo del necesario, consumiendo más combustible y generando ruido innecesario.

En la aviación comercial, el TOD suele corresponderse con una senda de descenso de aproximadamente 3 grados, un ángulo que permite un descenso cómodo y un consumo de combustible óptimo. En aviación general, el ángulo puede variar, pero el principio es el mismo: planificar con antelación.

## La fórmula básica: la regla del tres

La forma más sencilla de calcular el TOD se conoce como la **regla del tres**. Es fácil de memorizar y se puede aplicar mentalmente en cualquier momento del vuelo:

**Altitud a perder (en miles de pies) × 3 = distancia en millas náuticas (NM)**

Por ejemplo, si está volando a FL350 (35 000 pies) y necesita llegar a 5000 pies para la aproximación:

- Altitud a perder: 35 000 − 5000 = 30 000 pies
- En miles: 30
- 30 × 3 = **90 NM** antes del punto objetivo

Eso significa que debe iniciar el descenso a 90 millas náuticas del punto donde necesita estar a 5000 pies.

### La fórmula exacta para 3 grados

Si prefiere mayor precisión, puede utilizar la fórmula trigonométrica simplificada:

**Distancia (NM) = Altitud a perder (pies) ÷ 318**

El valor 318 proviene de la tangente del ángulo de 3 grados aplicada a la relación pies/millas náuticas. Usando el mismo ejemplo anterior:

- 30 000 ÷ 318 = **94,3 NM**

Como puede observar, la regla del tres ofrece un resultado muy cercano al cálculo exacto. La diferencia de 4 NM es mínima y perfectamente manejable.

### Velocidad vertical de referencia

Una vez que ha determinado dónde iniciar el descenso, necesita saber a qué velocidad vertical (VS) descender. La regla práctica es:

**Velocidad sobre el suelo (GS) × 5 = velocidad vertical en pies por minuto (fpm)**

Si su velocidad sobre el suelo es de 450 nudos:

- 450 × 5 = **2250 fpm** de descenso

Este valor le mantendrá en una senda de 3 grados de forma consistente. Recuerde que la velocidad sobre el suelo — no la indicada — es la que determina el perfil real del descenso.

## Ajustes por viento

Las fórmulas anteriores funcionan perfectamente en condiciones de viento nulo, pero la realidad es distinta. El viento afecta significativamente el momento y la pendiente del descenso.

**Viento de cola (tailwind):** La aeronave recorre más distancia sobre el suelo por unidad de tiempo. Necesita iniciar el descenso **antes**. Añada 1 NM por cada 10 nudos de viento de cola.

**Viento de cara (headwind):** El efecto es el opuesto. Puede iniciar el descenso **más tarde**. Reste 1 NM por cada 10 nudos de viento de cara.

Siguiendo el ejemplo anterior con 90 NM de distancia base y un viento de cola de 40 nudos:

- 90 + 4 = **94 NM**

En MSFS 2024, consulte la velocidad sobre el suelo (GS) en el panel de instrumentos o en el FMS para verificar cómo el viento afecta su perfil de descenso.

## Escenarios prácticos: aviación general vs. aerolíneas

### Aviación general (Cessna 172, Diamond DA62, Bonanza)

En aeronaves de aviación general, las altitudes de crucero suelen estar entre 5000 y 12 000 pies, y las velocidades de descenso son más modestas. La regla del tres sigue siendo válida, pero los números son más pequeños y manejables.

Ejemplo con un Cessna 172 a 8000 pies, descendiendo al patrón de tráfico a 1000 pies AGL de un aeródromo a 500 pies de elevación:

- Altitud objetivo: 1500 pies MSL
- Altitud a perder: 8000 − 1500 = 6500 pies → 6,5 en miles
- 6,5 × 3 = **19,5 NM**
- VS recomendada: 100 kts GS × 5 = **500 fpm**

En aviación general es frecuente utilizar ángulos más pronunciados (3-5 grados), especialmente en aeronaves lentas, lo que acorta la distancia necesaria.

### Aerolínea (Boeing 737, Airbus A320, Boeing 787)

En los aviones de línea, el cálculo del TOD es más crítico porque las altitudes son mayores, las velocidades más altas y el ATC espera un perfil específico.

Ejemplo con un Boeing 787 a FL390 descendiendo a 3000 pies para la aproximación:

- Altitud a perder: 39 000 − 3000 = 36 000 pies → 36 en miles
- 36 × 3 = **108 NM**
- VS recomendada a Mach 0,78 (≈ 460 kts GS): 460 × 5 = **2300 fpm**

En este escenario, un descenso tardío significa llegar al punto de aproximación con exceso de altitud, lo que obligaría a maniobras agresivas o incluso a un circuito de espera.

## Herramientas para calcular el TOD

### El FMS integrado en MSFS 2024

Los aviones de línea incluidos en MSFS 2024 disponen de un sistema de gestión de vuelo (FMS) que calcula automáticamente el TOD cuando se programa una ruta completa con restricciones de altitud. El marcador T/D (Top of Descent) aparece en el ND (Navigation Display) y le indica el punto exacto de descenso.

Sin embargo, es fundamental entender el cálculo manual: el FMS puede no estar disponible en todas las aeronaves, las condiciones pueden cambiar en vuelo y algunos add-on no implementan esta función correctamente.

### PilotLeague: TOD en tiempo real con overlay

[PilotLeague](https://pilotleague.com/es/caracteristicas/) ofrece un overlay en tiempo real que, entre otras funciones, proporciona información de descenso directamente sobre la pantalla del simulador. Esto resulta especialmente útil en aeronaves de aviación general que no disponen de FMS, o cuando desea una referencia visual adicional que complemente los instrumentos de cabina.

La herramienta analiza su posición, altitud, velocidad y ruta para ofrecer indicaciones de descenso contextualizadas. Puede registrarse y comenzar a utilizarla en [pilots.pilotleague.com](https://pilots.pilotleague.com).

### Calculadoras externas y EFB

Aplicaciones EFB como Navigraph Charts o SimBrief también incluyen el cálculo del TOD. SimBrief genera un OFP (Operational Flight Plan) con el punto de TOD y la distancia exacta al destino.

## Errores frecuentes en el descenso

**Olvidar la diferencia entre altitud MSL y AGL.** Si el aeropuerto está a 5000 pies de elevación y su objetivo es 2000 pies AGL, la altitud real es 7000 pies MSL. Calcule siempre con MSL.

**Ignorar las restricciones STAR.** Muchas STAR imponen restricciones de altitud intermedias. No basta con calcular el TOD hacia la altitud final; debe verificar cada restricción en el camino.

**No ajustar por peso.** Una aeronave pesada desciende de forma diferente a una ligera. Con carga máxima, la inercia es mayor y puede requerir iniciar el descenso antes.

**Descender demasiado rápido.** Superar los 3000 fpm en un avión de línea no es realista. Si necesita más de 3000 fpm, probablemente inició el descenso tarde.

**No monitorizar la velocidad.** Al descender, la aeronave tiende a acelerar. Si no reduce potencia adecuadamente, puede exceder los límites — especialmente por debajo de FL100 (250 KIAS).

## El TOD y la eficiencia de combustible

Un descenso bien planificado tiene un impacto directo en la eficiencia del vuelo. Descender en ralentí a lo largo de una senda de 3 grados consume significativamente menos combustible que nivelar a baja altitud durante decenas de millas.

[PilotLeague](https://pilotleague.com/es/caracteristicas/) incorpora un sistema de puntuación de eficiencia de combustible que representa el 15 % de la calificación total de cada vuelo. Un descenso óptimo contribuye directamente a mejorar esta puntuación, incentivando prácticas realistas y eficientes.

## Resumen práctico

Para aplicar todo lo aprendido, siga este procedimiento en su próximo vuelo:

1. Antes de alcanzar el crucero, consulte la altitud del aeropuerto de destino y las restricciones de la STAR.
2. Calcule la altitud a perder en miles de pies.
3. Multiplique por 3 para obtener la distancia en NM.
4. Ajuste por viento: sume 1 NM por cada 10 nudos de cola, reste por viento de cara.
5. Establezca un recordatorio o marque el punto en su mapa.
6. Al llegar al TOD, reduzca potencia y mantenga GS × 5 como referencia de velocidad vertical.
7. Monitorice la velocidad y las restricciones de altitud durante todo el descenso.

Con práctica, este proceso se convierte en algo natural. Domine esta técnica y notará la diferencia en cada aproximación.
