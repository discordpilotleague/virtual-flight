---
title: "Kompletter Leitfaden: TOD-Berechnung in MSFS 2024"
description: "Lernen Sie, den Top of Descent (TOD) in MSFS 2024 präzise zu berechnen — mit Formeln, Windkorrekturen, GA- und Airliner-Szenarien sowie Echtzeit-Tools."
lang: 'de'
pubDate: 'Apr 01 2026'
heroImage: '../../assets/hero-guide-tod-calculator-msfs-2024.svg'
---

Ein sauberer Sinkflug gehört zu den anspruchsvollsten Elementen einer realistischen Flugsimulation. Wer den **Top of Descent (TOD)** korrekt berechnet, vermeidet hektische Korrekturen im Endanflug, spart Treibstoff und fliegt wie ein Profi. Dieser Leitfaden erklärt Ihnen Schritt für Schritt, wie Sie den TOD in Microsoft Flight Simulator 2024 berechnen — ob in einer Cessna 172 oder einem Airbus A320.

## Was ist der Top of Descent?

Der **Top of Descent** bezeichnet den Punkt auf Ihrer Flugroute, an dem Sie den kontrollierten Sinkflug aus der Reiseflughöhe einleiten sollten. Ziel ist es, die Zielflughöhe — typischerweise die Platzrundenhöhe oder eine ATC-Freigabe — in einem gleichmäßigen, effizienten Sinkflugprofil zu erreichen, ohne übermäßig Gas zu geben oder die Geschwindigkeit mit Bremsklappen reduzieren zu müssen.

Ein gut geplanter Sinkflug ist nicht nur realistischer, sondern verbessert auch Ihre Treibstoffbilanz erheblich. Auf Netzwerken wie VATSIM oder IVAO erwarten Lotsen von Ihnen, dass Sie zum richtigen Zeitpunkt sinken — ein verspäteter TOD führt zu Konflikten mit dem Verkehrsfluss und unnötigen Vektoren.

## Die Grundformel: Die Dreierregel

Die einfachste und am häufigsten verwendete Methode zur TOD-Berechnung basiert auf einem Standard-Sinkflugwinkel von **3 Grad**. Diese sogenannte Dreierregel lautet:

> **Zu verlierende Höhe (in Tausend Fuß) × 3 = Distanz zum Ziel in Nautischen Meilen (NM)**

### Beispiel

Sie fliegen auf FL350 (35.000 ft) und müssen auf 3.000 ft sinken. Die zu verlierende Höhe beträgt 32.000 ft, also 32 Tausend Fuß.

**32 × 3 = 96 NM**

Sie sollten den Sinkflug also **96 NM** vor Ihrem Ziel einleiten.

### Die präzisere Variante

Für eine genauere Berechnung, insbesondere bei ungeraden Höhenwerten, verwenden Sie folgende Formel:

> **Zu verlierende Höhe (in Fuß) ÷ 318 = Distanz in NM**

Der Wert 318 ergibt sich aus dem Tangens eines 3-Grad-Sinkwinkels bei einer typischen Groundspeed. Für das gleiche Beispiel:

**32.000 ÷ 318 ≈ 100,6 NM**

Der leichte Unterschied zur Dreierregel entsteht durch Rundungen — beide Methoden sind in der Praxis ausreichend genau. Die Dreierregel ist leichter im Kopf zu rechnen und wird daher von den meisten Piloten bevorzugt.

## Windkorrekturen: Gegen- und Rückenwind

Wind beeinflusst Ihren Sinkflug erheblich. Die Dreierregel geht von einer konstanten Groundspeed aus, aber in der Realität verändert Wind die tatsächliche Entfernung, die Sie im Sinkflug zurücklegen.

### Gegenwind

Bei Gegenwind sinken Sie steiler bezogen auf den Boden, weil Ihre Groundspeed geringer ist. Sie legen weniger Strecke zurück und müssen den Sinkflug **später** einleiten. Faustregel:

> **Ziehen Sie 1 NM pro 10 kt Gegenwind ab.**

### Rückenwind

Bei Rückenwind ist es umgekehrt — Sie gleiten weiter über Grund und müssen **früher** sinken:

> **Addieren Sie 1 NM pro 10 kt Rückenwind.**

### Beispiel mit Wind

Gleiche Situation wie oben (96 NM Grunddistanz), aber mit 30 kt Gegenwind:

**96 − 3 = 93 NM** vor dem Ziel den Sinkflug einleiten.

Bei 30 kt Rückenwind hingegen:

**96 + 3 = 99 NM** vor dem Ziel.

Diese Korrekturen mögen gering erscheinen, machen aber auf langen Sinkflügen aus Reiseflughöhe einen spürbaren Unterschied — besonders bei starkem Jetstream auf Langstreckenflügen.

## GA vs. Airliner: Unterschiedliche Szenarien

### Allgemeine Luftfahrt (GA)

In einer Cessna 172 oder Beechcraft Bonanza fliegen Sie typischerweise auf 5.000–10.000 ft. Die Sinkflugplanung ist weniger komplex, aber keineswegs unwichtig. Eine übliche Sinkrate für GA-Flugzeuge liegt bei 500 ft/min.

**Beispiel:** Sie fliegen auf 8.000 ft und möchten die Platzrunde auf 1.000 ft erreichen. Zu verlierende Höhe: 7.000 ft.

- **7 × 3 = 21 NM** vor dem Flugplatz
- Bei 500 ft/min und 120 kt Groundspeed benötigen Sie ca. 14 Minuten für den Sinkflug

In der GA ist der TOD oft weniger kritisch, weil die Geschwindigkeiten niedriger sind und Sie mehr Spielraum für Korrekturen haben. Dennoch sieht ein sauber geplanter Sinkflug professioneller aus und spart Treibstoff.

### Verkehrsflugzeuge (Airliner)

Im Airbus A320, Boeing 737 oder größeren Langstreckenflugzeugen wird die TOD-Berechnung deutlich relevanter. Hier sinken Sie aus FL350–FL410, die Geschwindigkeiten sind höher, und die Energieverwaltung ist komplex.

Typische Parameter für einen Airliner-Sinkflug:

- **Sinkrate:** 1.500–2.500 ft/min (abhängig von der Phase)
- **Sinkgeschwindigkeit:** Mach 0.78 bis 250 kt IAS (unter FL100)
- **Idle Descent:** Schub auf Leerlauf, Geschwindigkeit durch Pitch gesteuert

Verkehrsflugzeuge in MSFS 2024 profitieren besonders von einer präzisen TOD-Berechnung, weil ein zu steiler Sinkflug zu Geschwindigkeitsüberschreitungen führt und ein zu flacher Sinkflug unnötig Treibstoff verbraucht.

## Tools zur TOD-Berechnung in MSFS 2024

### Das integrierte FMS

Viele Payware-Add-ons wie der Fenix A320, die PMDG 737 oder der iniBuilds A310 berechnen den TOD automatisch im Flight Management System (FMS). Der TOD erscheint als grüner Bogen auf dem ND (Navigation Display) und wird basierend auf der eingegebenen Route, der Zielflughöhe und den aktuellen Winddaten berechnet.

Verlassen Sie sich jedoch nicht blind auf das FMS. Überprüfen Sie die berechnete Distanz stets mit der Dreierregel — insbesondere bei fehlerhaften oder unvollständigen Wetterdaten kann die FMS-Berechnung abweichen.

### Standardflugzeuge in MSFS 2024

Die Standardflugzeuge in MSFS 2024 bieten kein vollwertiges FMS. Hier sind Sie auf manuelle Berechnung angewiesen — oder nutzen externe Tools.

### Externe Overlay-Tools

Es gibt verschiedene Community-Tools und Overlays, die Ihnen den optimalen TOD in Echtzeit anzeigen, während Sie in MSFS 2024 fliegen. Diese Overlays berechnen den Sinkflugpunkt basierend auf Ihrer aktuellen Flughöhe, Geschwindigkeit, der Zielflughöhe und den Windbedingungen — und aktualisieren die Anzeige kontinuierlich.

Solche Tools sind besonders nützlich, wenn Sie Standardflugzeuge ohne FMS fliegen oder wenn Sie die FMS-Berechnung Ihres Add-ons verifizieren möchten. Bekannte Beispiele finden Sie in den einschlägigen Flight-Sim-Foren und auf Plattformen wie flightsim.to.

## Häufige Fehler bei der Sinkflugplanung

### 1. Den TOD vergessen

Der klassische Anfängerfehler: Sie fliegen in Reiseflughöhe, schauen auf die Karte und stellen fest, dass Sie bereits über dem Zielflughafen sind. Setzen Sie sich einen Reminder — entweder mental oder über ein Tool — damit Sie den TOD nicht verpassen.

### 2. Geschwindigkeitsbeschränkungen ignorieren

Unterhalb von FL100 gilt in den meisten Ländern eine Geschwindigkeitsbeschränkung von 250 kt IAS. Wenn Sie diesen Punkt in Ihre Planung nicht einbeziehen, geraten Sie in einen Konflikt zwischen Sinkrate und Geschwindigkeit. Planen Sie eine Verlangsamungsphase beim Durchsinken von FL100 ein.

### 3. Keine Windkorrektur

Wie oben beschrieben, kann ein starker Rückenwind dazu führen, dass Sie viel zu hoch am Ziel ankommen. Prüfen Sie die Winddaten auf Ihrer Reiseflughöhe und passen Sie den TOD entsprechend an.

### 4. Zu spät und zu steil sinken

Ein Sinkflug mit 4.000 ft/min und Bremsklappen mag funktionieren, ist aber weder realistisch noch treibstoffeffizient. Passagiere würden sich beschweren, und auf VATSIM erhalten Sie möglicherweise unfreundliche Kommentare vom Lotsen. Planen Sie lieber großzügig und beginnen Sie etwas früher.

### 5. Die Höhe des Zielflughafens nicht berücksichtigen

Ein häufig übersehener Punkt: Die Platzhöhe (Elevation) des Zielflughafens fließt direkt in die Berechnung ein. Wenn der Flughafen auf 5.000 ft liegt, müssen Sie entsprechend weniger Höhe verlieren.

## Treibstoffeffizienz im Sinkflug

Ein gut geplanter Sinkflug spart nicht nur Kerosin, sondern verbessert die gesamte Flugqualität spürbar. Ein **Idle Descent** — also ein Sinkflug bei Leerlaufschub — ist dabei die effizienteste Methode und wird auch von virtuellen Airlines und Bewertungsplattformen als Best Practice angesehen.

Das bedeutet konkret: Wer den TOD korrekt berechnet und einen sauberen, kontinuierlichen Sinkflug durchführt, verbraucht deutlich weniger Treibstoff. Hektische Korrekturen, Zwischenplateau-Phasen mit erhöhtem Schub oder der Einsatz von Bremsklappen verschlechtern hingegen die Treibstoffbilanz erheblich.

## Zusammenfassung: Checkliste für den perfekten Sinkflug

1. **Zu verlierende Höhe berechnen** — Reiseflughöhe minus Zielflughöhe (Platzhöhe beachten)
2. **Dreierregel anwenden** — Höhendifferenz in Tausend × 3 = Distanz in NM
3. **Wind prüfen** — ±1 NM pro 10 kt Gegen-/Rückenwind
4. **FL100-Beschränkung einplanen** — Verlangsamung auf 250 kt berücksichtigen
5. **Idle Descent anstreben** — Leerlaufschub, Geschwindigkeit über Pitch steuern
6. **FMS-Wert überprüfen** — Manuelle Gegenrechnung mit der Dreierregel
7. **Rechtzeitig beginnen** — Lieber 2 NM zu früh als 10 NM zu spät

Mit etwas Übung wird die TOD-Berechnung zur Routine. Sie werden feststellen, dass ein sauber geplanter Sinkflug nicht nur effizienter ist, sondern auch deutlich mehr Zufriedenheit beim Fliegen bringt — egal ob in der kleinen Cessna oder im vollausgestatteten Airliner.
