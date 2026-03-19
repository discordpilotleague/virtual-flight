---
title: "PilotLeague: the Strava of Virtual Pilots Lands on MSFS 2024"
description: "PilotLeague analyzes your MSFS 2024 flights in real time: score out of 100, landings, SOP compliance, fuel efficiency, global leaderboard, 47 achievements and daily challenges. Free."
lang: 'en'
pubDate: 'Mar 19 2026'
heroImage: '../../assets/hero-pilotleague-msfs.webp'
---

What if every flight in MSFS 2024 actually mattered? That is the promise of **PilotLeague**, a performance analytics platform created by **Rodolphe**, a real-world Airbus A320/A330 instructor. The concept is simple yet powerful: a lightweight desktop application captures **79 SimConnect variables** during your flight, sends them to a computation server, then delivers a detailed score out of 100 points with phase-by-phase analysis. It is free, compatible with **MSFS 2024**, and accessible at [pilotleague.com](https://pilotleague.com/en/features/). If Strava transformed running by measuring every stride, PilotLeague aims to do the same for flight simulation.

![PilotLeague overlay on approach in MSFS 2024 — METAR, TOD, wind and safety alerts](/images/pilotleague-msfs/overlay-approach.webp)

## A Score Out of 100 Built on Four Pillars

PilotLeague's scoring system rests on four weighted pillars that cover the full range of virtual pilot skills:

- **Landing (40%)** — Vertical speed at touchdown, G-force, runway centerline deviation and touchdown zone (TDZ) positioning, with adaptive thresholds based on aircraft type
- **Safety (25%)** — Structural and operational limit violations: overspeed, excessive bank, stall, flap overspeed
- **SOP Compliance (20%)** — Lighting sequence validation, gear/flap configuration, stabilized approach check per C.A.N.P.A. (gate at 500 ft AGL in VMC, 1,000 ft in IMC)
- **Fuel Efficiency (15%)** — Consumption in kg/nm compared to the community median for each aircraft type

This breakdown mirrors real-world flight priorities: landing and safety account for 65% of the score, while procedures and efficiency round out the picture. Each pillar is detailed in the post-flight analysis, with a letter-grade system (A through D) for fuel and quantified penalties for safety violations.

![PilotLeague dashboard — mastery radar, recent scores, XP and daily challenges](/images/pilotleague-msfs/dashboard.webp)

## The In-Flight Overlay: a Silent Copilot

During the flight, PilotLeague displays a discreet yet information-rich overlay that enhances the experience without interfering with piloting:

### Real-Time METAR

Live weather conditions for departure and arrival airports appear on screen: wind (direction and strength), temperature, QNH, visibility, ceiling and VFR/IFR status. No need to switch to an external weather site — the essential information is right there in the cockpit.

### TOD Calculator

The built-in Top of Descent calculator computes the optimal descent point for a 3° descent path in real time. Current altitude, target altitude and remaining distance are displayed continuously — a particularly useful tool for pilots flying without an FMS or in general aviation aircraft.

### Wind Breakdown and Fuel

Wind components (headwind/tailwind and left/right crosswind) are calculated and displayed, along with remaining fuel percentage, total consumption, instantaneous flow rate and estimated fuel remaining. Safety alerts appear in red with their associated point penalties — an immediate reminder when a limit is exceeded.

### Interactive Airport Charts

The DEP MAP and ARR MAP buttons open interactive satellite maps of the departure and arrival airports, complete with ATC frequencies (ATIS, TWR, GND, APP, DEP) drawn from a database of **83,798 airports**, **15,423 runways** and **30,168 radio frequencies**.

## Post-Flight Analysis: Where PilotLeague Excels

The platform truly comes into its own after landing. The web dashboard at [pilots.pilotleague.com](https://pilots.pilotleague.com) breaks down each flight with surgical precision.

![PilotLeague landing analysis — satellite touchdown zone, TDZ and Golden Zone](/images/pilotleague-msfs/landing-detail.webp)

### Satellite Touchdown Zone Map

The landing analysis displays the exact touchdown position on a satellite view of the runway, with distance from the threshold and the TDZ. The **Golden Zone** (1,000–2,000 ft) is highlighted — this is the optimal touchdown area used as a reference by airlines. Vertical speed, G-force and lateral deviation are detailed with their respective scores.

### Phase-by-Phase Fuel Analysis

Every flight phase — from taxi-out to final parking — receives a fuel consumption grade (A through D). This granularity pinpoints exactly where fuel was wasted: a cruise altitude too low, a late descent, an excessively long idle-power taxi.

![Phase-by-phase fuel analysis — PilotLeague MSFS 2024](/images/pilotleague-msfs/fuel-analysis.webp)

### Flight Detail and Timeline

The flight detail page presents the overall score, pillar breakdown, route, aircraft, duration and FPM at touchdown. A visual timeline traces every flight event: engine start, runway entry, takeoff, gear up, each phase detected among the 11 phases automatically identified by the application.

![PilotLeague flight detail — category scores and XP earned](/images/pilotleague-msfs/flight-detail.webp)

## Gamification: XP, Ranks and Achievements

PilotLeague does more than analyze — it motivates. The progression system relies on a multiplicative XP mechanism:

- **Base XP** calculated from the score and flight duration
- **Quality multiplier** (0.3x to 3.0x) — good scores earn exponentially more
- **Streak bonus** — flying regularly increases gains
- **Diversity bonus** — exploring new routes is rewarded

The global leaderboard features **16 competitive ranks**, from Bronze III to Champion, based on quality rather than quantity. **50 progression levels** and **47 achievements** spread across four rarities (Common, Rare, Epic, Legendary) complete the system. Three **daily challenges** refreshed every day (minimum score, duration, distance) offer additional XP bonuses.

![PilotLeague achievement wall — 47 achievements in 4 rarities](/images/pilotleague-msfs/achievements.webp)

## Automatic Flight Phase Detection

Under the hood, PilotLeague automatically detects **11 flight phases** with adaptive sampling: 0.2 Hz during cruise (one reading every 5 seconds is sufficient) and up to **10 Hz at landing** (one reading every 100 ms to capture the touchdown precisely). Automatic go-around detection restarts the capture sequence — a detail that shows the care given to edge cases.

The 79 SimConnect variables captured cover position, attitude, engines, control surfaces, gear, flaps, fuel, weather and navigation systems. This data richness is what enables the fine-grained analysis of procedures and safety.

## Installation and Usage

Setup is deliberately straightforward:

1. Download the executable from [pilotleague.com](https://pilotleague.com/en/)
2. Launch MSFS 2024 with an aircraft loaded at the gate
3. Start PilotLeague — the diagnostic LEDs confirm the SimConnect connection
4. Release the parking brake — recording starts automatically

The application runs in the background with **zero FPS impact**, requires no administrator rights, and works on Windows 10/11 64-bit. Data transmission uses secure HTTPS.

![PilotLeague desktop application — SimConnect connection interface](/images/pilotleague-msfs/desktop-app.webp)

## What PilotLeague Changes for the Community

PilotLeague fills a surprising gap in the MSFS ecosystem. Until now, virtual pilots could fly hundreds of hours without ever receiving structured feedback on the quality of their flights. Networks like VATSIM and IVAO provide the ATC framework, study-level add-ons provide the systems — but nobody measured overall pilot performance with this level of granularity.

The fact that the platform was created by a professional Airbus instructor shows in the choice of metrics: the stabilized approach check with 500/1,000 ft gates, adaptive thresholds per aircraft type, the C.A.N.P.A. breakdown — these are criteria used in real aviation, intelligently transposed into the virtual world.

For pilots seeking methodical improvement, PilotLeague turns every flight into a measurable training session. For those who enjoy competition, the global leaderboard and daily challenges add a social dimension that was sorely missing from the solo MSFS experience. And for everyone, simply knowing that a score will be calculated subtly changes the way you fly — you take more care with procedures, watch your speed on final, and aim for the Golden Zone.

The cockpit has never been this demanding — and that is a good thing.

---

*Source: [PilotLeague Features](https://pilotleague.com/en/features/). Images: PilotLeague. Community: [Discord PilotLeague](https://discord.gg/pilotleague).*
