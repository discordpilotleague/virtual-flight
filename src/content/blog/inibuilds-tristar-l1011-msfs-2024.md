---
title: 'iniBuilds L-1011 TriStar: The Legendary Trijet is Coming to MSFS 2024'
description: 'iniBuilds announces the Lockheed L-1011 TriStar for MSFS 2024 with full flight engineer station, CAT IIIB autoland, and period-correct systems.'
lang: 'en'
pubDate: 'Feb 14 2026'
heroImage: '../../assets/hero-inibuilds-tristar.jpg'
---

There are aircraft that defined their era, and then there are aircraft that arrived ahead of it. The Lockheed L-1011 TriStar belongs firmly in the second category. When it entered service in 1972, it carried technology that would not become standard on commercial airliners for another decade: a direct-lift control system for buttery smooth landings, a fully automated landing capability down to CAT IIIA on day one, and a level of structural and aerodynamic refinement that made pilots speak of it in terms usually reserved for fighter jets. Only around 250 were ever built, the victim of a financial catastrophe that had nothing to do with the quality of the airframe itself. Now, more than half a century after the first TriStar rolled off the Palmdale assembly line, [iniBuilds](https://inibuilds.com/) is bringing the L-1011-500 to Microsoft Flight Simulator 2024 -- and the level of ambition on display suggests this will be one of the defining add-ons of the platform.

![iniBuilds L-1011 TriStar development banner](/images/tristar/banner.webp)

## A Brief History of a Troubled Masterpiece

To understand why the TriStar matters, you have to understand the crisis that shaped it. In the late 1960s, Lockheed designed the L-1011 to compete directly with the McDonnell Douglas DC-10 for the emerging widebody market. Where Douglas chose a conventional approach, Lockheed aimed higher. The TriStar's S-duct -- feeding the number two engine through a curved inlet integrated into the tail -- was more complex to engineer than the DC-10's straight-through center engine mounting, but it produced a cleaner, more aerodynamically efficient design with lower drag and significantly less asymmetric handling in an engine-out scenario.

Lockheed chose Rolls-Royce and their revolutionary RB211 turbofan as the exclusive powerplant. The RB211 promised unprecedented fuel efficiency through its three-spool architecture, but development costs spiralled catastrophically. In February 1971, Rolls-Royce went bankrupt. Production of the L-1011 ground to a halt with airframes sitting engineless on the Palmdale floor. The British government eventually nationalized Rolls-Royce and production resumed, but the delay proved fatal to the TriStar's commercial prospects. Airlines that had been waiting for the L-1011 placed orders with Douglas instead. Lockheed never recovered the lost ground.

None of this diminished the aircraft itself. Pilots adored the TriStar for its handling qualities -- the direct-lift control spoilers allowed precise glidepath corrections without pitch changes, the autoland system worked flawlessly down to zero-zero conditions, and the aircraft possessed a gentle, forgiving nature in all flight regimes. Passengers loved the wide cabin and the remarkably quiet ride, a consequence of the S-duct isolating much of the center engine noise from the fuselage. The L-1011-500, the variant iniBuilds has chosen to model, was the long-range development: a shortened fuselage with increased fuel capacity and more powerful RB211-524 engines, designed to compete on transatlantic and intercontinental routes.

![L-1011 TriStar exterior model](/images/tristar/exterior.webp)

## What iniBuilds Is Building

iniBuilds has established itself as one of the most technically ambitious developers in the MSFS ecosystem. Their A350 set a high standard for systems depth and visual fidelity, and the TriStar project appears to carry that same philosophy into very different territory. Where the A350 is glass cockpit and fly-by-wire, the L-1011 is steam gauges, cable-driven controls, and a flight engineer station that was essential to normal operations.

### The Powerplant: RB211-524 Turbofans

The three Rolls-Royce RB211-524 engines are modeled with realistic Engine Pressure Ratio logic and accurate engine inertia characteristics. The RB211 was a three-spool engine -- low-pressure, intermediate-pressure, and high-pressure compressors each spinning at different speeds -- and simulating this correctly means capturing the spool-up delays, the temperature relationships between stages, and the thrust response curves that gave the TriStar its distinctive power delivery. Pilots who flew the real aircraft describe the RB211 as smooth but not instant; there was a perceptible lag between throttle input and thrust output that required anticipation, particularly during approach. Getting this right in the sim will be essential to an authentic experience.

### Systems Architecture: Three of Everything

The real L-1011 was designed with redundancy as a core philosophy. iniBuilds is modeling three independent hydraulic circuits, a complete pneumatic system, and a full AC/DC electrical architecture. In practical terms, this means that failures cascade realistically -- losing a hydraulic system does not simply reduce capability by a third; it affects specific flight controls, landing gear functions, and utility systems in ways that require the crew to reference procedures and manage resources.

The pneumatic system handles engine starts, cabin pressurization, air conditioning, and anti-ice functions. The electrical system spans engine-driven generators, an APU generator, transformer-rectifier units for DC power, and battery backup. Every bus, every relay, every transfer logic is there for the flight engineer to manage.

![Flight Engineer station](/images/tristar/flight-engineer.webp)

### The Flight Engineer Station

This is perhaps the most significant feature of the iniBuilds TriStar. The flight engineer's station was the nerve center of the L-1011's systems management. From this position, the third crew member monitored and controlled engines, fuel, hydraulics, pneumatics, electrics, and pressurization. In the real aircraft, a competent flight engineer was the difference between a routine operation and a developing situation.

iniBuilds is implementing a fully interactive flight engineer station, meaning that every panel, every gauge, every control is clickable and functional. For simmers who want to experience the full three-crew operation -- perhaps flying on an online network with a friend handling the engineer's duties -- this opens up a dimension of crew resource management that simply does not exist in modern glass-cockpit aircraft.

Recognizing that not everyone wants to manage three crew stations simultaneously, iniBuilds is also including an AI automation option for the flight engineer position. The AI engineer will handle routine monitoring and system management, allowing solo pilots to focus on flying while still having the systems operate correctly in the background. The balance between manual and automated operation will be key to making the aircraft accessible without diluting its character.

![Automatic Flight Control System](/images/tristar/afcs.webp)

### Autoland and Autoflight: Ahead of Its Time

The L-1011 was the first widebody certified for CAT IIIA automatic landings, and later versions achieved CAT IIIB -- essentially zero-visibility operations with only enough visual reference to taxi clear of the runway after touchdown. iniBuilds is modeling the full CAT IIIB autoland capability along with the advanced Automatic Flight Control System and auto-throttle.

The AFCS of the real TriStar was remarkably sophisticated for its era. It included turbulence penetration modes, altitude pre-select, and speed control functions that were considered advanced even a decade after the aircraft entered service. The auto-throttle integrates with a Performance Management System, which was Lockheed's answer to the fuel management problem: given the cost of jet fuel after the 1973 oil crisis, airlines demanded that aircraft fly as efficiently as possible, and the PMS allowed crews to optimize climb, cruise, and descent profiles for minimum fuel burn.

### Navigation: Paper Charts Meet Digital Planning

The navigation suite reflects the TriStar's position at the intersection of analog and early digital aviation. iniBuilds is implementing RADNAV (VOR, DME, ADF), Inertial Navigation Systems, GPS, and a combined INS+GPS mode. The INS was the primary long-range navigation tool for the TriStar in the real world; crews would align the inertial platforms at the gate, enter waypoints manually, and then monitor drift over the course of the flight.

A particularly charming touch is the "Paper Flight Bag" -- a vintage alternative to the modern Electronic Flight Bag. Instead of a tablet interface, pilots will reference paper-style charts and documentation, period-correct to the TriStar era. For practical convenience, SimBrief route import is supported for INS waypoint loading, bridging the gap between historical authenticity and modern flight sim workflow.

![Paper Flight Bag interface](/images/tristar/paper-flight-bag.webp)

### Visual Fidelity and Cockpit Detail

iniBuilds describes the cockpit environment with particular emphasis on materiality: brushed aluminium panels, worn labels, and visible dust. This is an aircraft that lived in the real world, flown by thousands of crews over millions of miles, and the cockpit should reflect that history. The Captain, First Officer, and Flight Engineer stations are all fully rendered, meaning you can move freely between positions to manage different aspects of the flight.

Externally, the model features wing flex, heat shimmer from the engines, and mechanically accurate control surfaces. The wing flex is noteworthy because the L-1011's wing was a particularly refined design -- Lockheed's experience with military aircraft meant the TriStar's wing achieved excellent lift-to-drag ratios, and seeing it flex realistically under aerodynamic load will add meaningfully to the visual experience.

![Cockpit detail with brushed aluminium panels](/images/tristar/cockpit.webp)

![Cockpit lighting at night](/images/tristar/lighting.webp)

### Liveries

The announced livery set covers six operators that represent key chapters in the TriStar's commercial story: **Delta Air Lines** (the largest TriStar operator and the airline most closely associated with the type in the United States), **British Airways** (which operated TriStars on European and Middle Eastern routes), **Air Transat** (the Canadian leisure carrier), **LTU** (the German charter airline that used TriStars on long-haul holiday routes), **Pan Am** (which operated a small TriStar fleet in its final years), and **United Airlines**. Each livery represents a different era and operating philosophy, giving pilots considerable variety in the routes and scenarios they can fly.

## What This Means for the Sim Community

The L-1011 TriStar fills a gap in the MSFS 2024 aircraft library that no other add-on currently addresses. There are plenty of modern glass-cockpit widebodies, and the classic narrowbody niche is served by aircraft like the Leonardo MD-80 and the Just Flight BAe 146. But the classic widebody trijet -- the aircraft that defined long-haul air travel in the 1970s and 1980s -- has been absent. The TriStar, with its three-crew operation, its analog systems, and its legendary flying qualities, offers an experience fundamentally different from anything else in the simulator.

The flight engineer station alone sets it apart. In an era where single-pilot automation is the norm in flight simulation, the prospect of managing a three-crew cockpit -- whether solo with AI assistance or with human crew members online -- represents a genuine expansion of what is possible in MSFS 2024.

iniBuilds has not announced a release date or price. Given the complexity of the project -- triple redundant systems, a full flight engineer station, period-correct avionics, and the level of visual detail the screenshots suggest -- this is clearly still in active development with significant work remaining. What has been shown so far, however, indicates that iniBuilds is treating the TriStar with the same ambition and technical rigor that defined their A350, applied to an aircraft that demands even deeper systems modeling.

For those of us who have been waiting decades for a proper TriStar simulation, the wait appears to be nearing its end. The L-1011 deserved better than the fate Rolls-Royce's bankruptcy dealt it. Perhaps, in the virtual skies, it will finally get the recognition it earned.

---

*Source: [iniBuilds TriStar Airliner — Development Update](https://forum.inibuilds.com/topic/35590-inibuilds-tristar-airliner-development-update/) on the [iniBuilds](https://inibuilds.com/) forum. Images courtesy of iniBuilds.*
