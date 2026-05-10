---
title: "FlyJetCard: A Business Aviation Sim for MSFS and X-Plane"
description: "FlyJetCard turns Microsoft Flight Simulator and X-Plane 12 into a Part 91/135 charter operation, with 5,000+ AI missions and a full economy."
lang: "en"
pubDate: "2026-05-10"
heroImage: "../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp"
---

A new third-party companion app called **FlyJetCard** (often shortened to JetCard) is positioning itself as the first dedicated business aviation ecosystem for **Microsoft Flight Simulator** and **X-Plane 12** on Windows. Instead of generic cargo or airline routing, JetCard simulates Part 91 and Part 135 charter operations — corporate flights, medical missions, sports charters, and owner-operator trips that come with their own briefings, deadlines, and pay structure.

![FlyJetCard charter dispatch interface for MSFS and X-Plane 12](../../assets/hero-flyjetcard-business-aviation-msfs-xplane.webp)

## What FlyJetCard actually does

JetCard runs alongside the simulator and feeds it work. The app continuously generates more than **5,000 AI charters** across **50 trip categories** — medical evacuations, sports team logistics, executive transport, leisure runs, government movements, and more — pulling from a network of **960+ business-aviation airports** across six continents. Charters expire on realistic timers: a medical emergency may last four hours, a leisure booking five days, and they roll over according to the type of mission.

Underneath, the platform models the financial reality of a charter business. Pilots start as **freelancers** earning 10% of charter value from fictional operators, can move into **employed positions** for player-owned companies, and eventually reach **owner-operator status** with their own fleet, payroll, maintenance reserves, and tiered loans from a built-in banking system. Aircraft selection is enforced: a light jet cannot legally accept a transatlantic mission, and operating costs follow real-world economics rather than arcade simplifications.

## Custom flight context, not random routing

What separates JetCard from a basic career tracker is the **AI-written narrative** attached to every flight. Each charter ships with a mission dossier — who is on board, why they need to be at the destination, what time matters — and multi-leg trips chain those dossiers into a continuous story. Real-world synchronization is part of the design: the charter board responds to actual sports schedules, F1 race calendars, and cultural events, so a Saturday in Monaco surfaces F1 charters, and an NBA playoff weekend produces team transfers.

The **jPhone** system handles in-context communication between the dispatcher, FBOs, and clients, making the flight feel like an operation rather than a single leg. Flight tracking is live, with real-time telemetry display, and the platform integrates **SimBrief** for flight planning plus live weather for dispatch decisions.

![FlyJetCard charter board with dispatch dossiers and AI mission briefings](https://flyjetcard.io/assets/about/charter-board.png)
*Credit: [JetCard](https://flyjetcard.io/)*

## What it changes for virtual pilots

If you already track your hours in a third-party logbook or fly online with a virtual airline, JetCard fits in a different slot — closer to a **single-player career mode** than to VATSIM or PilotEdge. It is built for simmers who want every flight to come with purpose, paperwork, and a paycheck, without committing to a virtual airline schedule. For pilots looking at the wider career-mode landscape, our [virtual pilot career logbook guide](/blog/virtual-pilot-career-logbook) walks through how tools like SimToolkitPro, Volanta, and FSEconomy compare.

The connection model reflects the dual-simulator support: **MSFS** uses SimConnect or FSUIPC, while **X-Plane 12** requires a UDP port configuration. That means anyone running both sims can pull from the same charter pool, switch fleets between platforms, and keep a single career across both. If you are still deciding which simulator to build a career on, our [MSFS 2024 vs X-Plane 12 comparison](/blog/msfs-2024-vs-xplane-12-comparison) lays out the differences that matter most for business aviation work.

## Aircraft, airports and progression

The platform supports **97 aircraft** ranging from single-engine turboprops to a Boeing Business Jet, and the charter eligibility logic uses real specifications — runway length, range, payload, pressurization — to filter what each operator can accept. A King Air 350 will draw a different mission set than a Citation Latitude or a Global 7500.

The 960+ airports were selected for business aviation relevance, not airline traffic. That puts the spotlight on FBO-friendly fields like **Teterboro (KTEB)**, **Van Nuys (KVNY)**, **Le Bourget (LFPB)**, **Farnborough (EGLF)**, **Geneva (LSGG)**, and **Aspen (KASE)** — destinations where corporate jets actually operate, rather than the major hubs that dominate airline simulation. Career progression layers on top: reputation gates loan tiers, fleet acquisition unlocks owner-operator missions, and pilot hiring lets larger operators run multi-aircraft schedules.

![FlyJetCard live flight tracker with telemetry display](https://flyjetcard.io/assets/about/flight-tracker.png)
*Credit: [JetCard](https://flyjetcard.io/)*

## Getting started and access

JetCard is currently in **alpha development** with rolling beta invitations. Prospective users request early access through the [official site](https://flyjetcard.io/), and the in-app license model handles activation. The setup flow described in the [JetCard pilot manual](https://manual.flyjetcard.io/) is short: create an account, install the desktop app with your license key, connect your simulator (SimConnect/FSUIPC for MSFS, UDP for X-Plane), browse the charter board, accept a mission, fly it, and collect payment when JetCard detects the flight has ended cleanly.

A reasonable first run is a freelance contract on a **light jet** out of Teterboro, somewhere short — a sports-team transfer to Boston, a medical leg to Buffalo, a corporate run to Dulles — to learn how the dispatch UI, jPhone notifications, and end-of-flight payouts behave before scaling up to long-range trips on heavier metal.

## Conclusion

FlyJetCard is a niche product, and that is the point. By focusing exclusively on business aviation rather than trying to cover every flying career at once, it builds operational depth that generic career trackers cannot match. The combination of AI-generated narrative, real-world event synchronization, and a working charter economy makes every flight feel like a job rather than a free-flight session. For virtual pilots whose interest is biz-jet operations on MSFS or X-Plane 12, it is one of the most ambitious third-party projects to land in the genre — keep an eye on the [JetCard site](https://flyjetcard.io/) for the public release window.
