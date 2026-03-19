---
title: "PilotLeague: das Strava der virtuellen Piloten für MSFS 2024"
description: "PilotLeague analysiert Ihre MSFS-2024-Flüge in Echtzeit: Score von 100, Landungen, SOP, Treibstoff, Weltrangliste, 47 Erfolge und tägliche Herausforderungen. Kostenlos."
lang: 'de'
pubDate: 'Mar 19 2026'
heroImage: '../../assets/hero-pilotleague-msfs.webp'
---

Was wäre, wenn jeder Flug in MSFS 2024 wirklich zählen würde? Genau das verspricht **PilotLeague**, eine Plattform zur Leistungsanalyse, entwickelt von **Rodolphe**, einem Airbus-A320/A330-Fluglehrer im echten Leben. Die Idee ist einfach und äußerst wirkungsvoll: Eine schlanke Desktop-Anwendung erfasst **79 SimConnect-Variablen** während Ihres Fluges, übermittelt sie an einen Berechnungsserver und liefert anschließend einen detaillierten Score von 100 Punkten mit phasenweiser Analyse. Das Ganze ist kostenlos, kompatibel mit **MSFS 2024** und zugänglich auf [pilotleague.com](https://pilotleague.com/features/). Wenn Strava das Laufen revolutioniert hat, indem es jeden Schritt misst, will PilotLeague dasselbe für die Flugsimulation erreichen.

![PilotLeague-Overlay im Anflug auf MSFS 2024 — METAR, TOD, Wind und Sicherheitswarnungen](/images/pilotleague-msfs/overlay-approach.webp)

## Ein Score von 100 in vier Säulen

Das Bewertungssystem von PilotLeague basiert auf vier gewichteten Säulen, die das gesamte Kompetenzspektrum eines virtuellen Piloten abdecken:

- **Landung (40 %)** — Sinkrate beim Aufsetzen, G-Kräfte, Abweichung von der Pistenmitte und Positionierung in der Aufsetzzone (TDZ), mit adaptiven Schwellenwerten je nach Flugzeugtyp
- **Sicherheit (25 %)** — Verstöße gegen strukturelle und betriebliche Grenzen: Überschreitung der Höchstgeschwindigkeit, übermäßige Schräglage, Strömungsabriss, Klappenüberschreitung
- **SOP-Konformität (20 %)** — Überprüfung der Beleuchtungssequenzen, Fahrwerk-/Klappenkonfiguration, Prüfung der stabilisierten Anflugkriterien C.A.N.P.A. (Gate bei 500 ft AGL im VMC, 1.000 ft im IMC)
- **Treibstoffeffizienz (15 %)** — Verbrauch in kg/nm im Vergleich zum Community-Median pro Flugzeugtyp

Diese Gewichtung spiegelt die Prioritäten des realen Flugbetriebs wider: Landung und Sicherheit machen 65 % des Scores aus, während Verfahren und Effizienz das Bild vervollständigen. Jede Säule wird in der Nachfluganalyse detailliert aufgeschlüsselt, mit einem Buchstaben-Bewertungssystem (A bis D) für den Treibstoff und bezifferten Abzügen bei Sicherheitsverstößen.

![PilotLeague-Dashboard — Kompetenzradar, letzte Scores, XP und tägliche Herausforderungen](/images/pilotleague-msfs/dashboard.webp)

## Das Overlay im Flug: ein stiller Copilot

Während des Fluges zeigt PilotLeague ein dezentes, aber informationsreiches Overlay an, das das Erlebnis bereichert, ohne das Fliegen zu stören:

### METAR in Echtzeit

Die Wetterbedingungen von Abflug- und Zielflughafen werden live angezeigt: Wind (Richtung und Stärke), Temperatur, QNH, Sicht, Wolkenuntergrenze und VFR/IFR-Status. Sie müssen nicht mehr zu einer externen Wetterseite wechseln — die wesentlichen Informationen befinden sich direkt im Cockpit.

### TOD-Rechner

Der integrierte Top-of-Descent-Rechner berechnet in Echtzeit den optimalen Sinkflugpunkt für einen 3°-Sinkflugpfad. Aktuelle Höhe, Zielhöhe und Restentfernung werden permanent angezeigt — ein besonders nützliches Werkzeug für Piloten, die ohne FMS fliegen oder Flugzeuge der Allgemeinen Luftfahrt nutzen.

### Windaufschlüsselung und Treibstoff

Die Windkomponenten (Gegen-/Rückenwind und Seitenwind links/rechts) werden berechnet und angezeigt, ebenso der prozentuale Resttreibstoff, der Gesamtverbrauch, der momentane Durchfluss und die geschätzte Restmenge. Sicherheitswarnungen erscheinen rot mit den zugehörigen Punktabzügen — eine sofortige Erinnerung, wenn eine Grenze überschritten wird.

### Interaktive Flughafenkarten

Die Schaltflächen DEP MAP und ARR MAP öffnen interaktive Satellitenkarten der Abflug- und Ankunftsflughäfen mit ATC-Frequenzen (ATIS, TWR, GND, APP, DEP) aus einer Datenbank von **83.798 Flughäfen**, **15.423 Pisten** und **30.168 Funkfrequenzen**.

## Die Nachfluganalyse: hier glänzt PilotLeague

Nach der Landung entfaltet die Plattform ihr volles Potenzial. Das Web-Dashboard auf [pilots.pilotleague.com](https://pilots.pilotleague.com) schlüsselt jeden Flug mit chirurgischer Präzision auf.

![PilotLeague-Landeanalyse — Satelliten-Aufsetzzone, TDZ und Golden Zone](/images/pilotleague-msfs/landing-detail.webp)

### Satellitenkarte der Aufsetzzone

Die Landeanalyse zeigt die exakte Aufsetzposition auf einer Satellitenansicht der Piste, mit der Entfernung zur Schwelle und der TDZ-Zone. Die **Golden Zone** (1.000–2.000 ft) wird hervorgehoben — das ist die optimale Aufsetzzone, die von Fluggesellschaften als Referenz verwendet wird. Sinkrate, G-Kräfte und seitliche Abweichung werden mit ihren jeweiligen Bewertungen detailliert dargestellt.

### Treibstoffanalyse pro Flugphase

Jede Flugphase — vom Rollen bis zum endgültigen Parken — erhält eine Treibstoffverbrauchsnote (A bis D). Diese Detailtiefe ermöglicht es, genau zu erkennen, wo Treibstoff verschwendet wurde: eine zu niedrige Reiseflughöhe, ein zu später Sinkflug, ein zu langes Rollen im Leerlauf.

![Treibstoffanalyse pro Flugphase — PilotLeague MSFS 2024](/images/pilotleague-msfs/fuel-analysis.webp)

### Flugdetails und Zeitachse

Die Flugdetailseite zeigt den Gesamtscore, die Aufschlüsselung nach Säulen, die Route, das Flugzeug, die Dauer und die FPM beim Aufsetzen. Eine visuelle Zeitachse zeichnet jedes Flugereignis nach: Triebwerkstart, Einrollen auf die Piste, Start, Fahrwerk eingefahren — jede der 11 automatisch erkannten Flugphasen wird erfasst.

![PilotLeague-Flugdetail — Scores nach Kategorie und verdiente XP](/images/pilotleague-msfs/flight-detail.webp)

## Gamification: XP, Ränge und Erfolge

PilotLeague analysiert nicht nur — es motiviert. Das Fortschrittssystem basiert auf einem multiplikativen XP-Mechanismus:

- **Basis-XP** berechnet aus Score und Flugdauer
- **Qualitätsmultiplikator** (0,3x bis 3,0x) — gute Scores bringen exponentiell mehr
- **Streak-Bonus** — regelmäßiges Fliegen steigert die Erträge
- **Diversitäts-Bonus** — das Erkunden neuer Routen wird belohnt

Die Weltrangliste umfasst **16 kompetitive Ränge**, von Bronze III bis Champion, basierend auf Qualität statt Quantität. **50 Fortschrittsstufen** und **47 Erfolge** in vier Seltenheitsgraden (Gewöhnlich, Selten, Episch, Legendär) vervollständigen das System. Drei **tägliche Herausforderungen**, die sich jeden Tag erneuern (Mindestscore, Dauer, Distanz), bieten zusätzliche XP-Boni.

![PilotLeague-Erfolgswand — 47 Achievements in 4 Seltenheitsgraden](/images/pilotleague-msfs/achievements.webp)

## Automatische Erkennung der Flugphasen

Unter der Haube erkennt PilotLeague automatisch **11 Flugphasen** mit adaptiver Abtastrate: 0,2 Hz im Reiseflug (eine Messung alle 5 Sekunden genügt) und bis zu **10 Hz bei der Landung** (eine Messung alle 100 ms, um den Aufsetzmoment präzise zu erfassen). Die automatische Durchstarterkennung startet die Aufnahmesequenz neu — ein Detail, das die Sorgfalt bei Sonderfällen zeigt.

Die 79 erfassten SimConnect-Variablen umfassen Position, Fluglage, Triebwerke, Steuerflächen, Fahrwerk, Klappen, Treibstoff, Wetter und Navigationssysteme. Dieser Datenreichtum ermöglicht die präzise Analyse von Verfahren und Sicherheit.

## Installation und Nutzung

Die Installation ist bewusst einfach gehalten:

1. Laden Sie die Anwendung von [pilotleague.com](https://pilotleague.com) herunter
2. Starten Sie MSFS 2024 mit einem Flugzeug am Parkplatz
3. Starten Sie PilotLeague — die Diagnose-LEDs bestätigen die SimConnect-Verbindung
4. Lösen Sie die Parkbremse — die Aufzeichnung beginnt automatisch

Die Anwendung läuft im Hintergrund mit **null Auswirkung auf die FPS**, benötigt keine Administratorrechte und funktioniert unter Windows 10/11 64-Bit. Die Datenübertragung erfolgt über HTTPS.

![PilotLeague-Desktop-Anwendung — SimConnect-Verbindungsoberfläche](/images/pilotleague-msfs/desktop-app.webp)

## Was PilotLeague für die Community verändert

PilotLeague füllt eine erstaunliche Lücke im MSFS-Ökosystem. Bisher konnten virtuelle Piloten Hunderte von Stunden fliegen, ohne jemals ein strukturiertes Feedback zur Qualität ihrer Flüge zu erhalten. Netzwerke wie VATSIM und IVAO liefern den ATC-Rahmen, Study-Level-Add-ons liefern die Systeme — aber niemand hat die Gesamtleistung des Piloten mit dieser Detailtiefe gemessen.

Dass die Plattform von einem professionellen Airbus-Fluglehrer entwickelt wurde, zeigt sich in der Wahl der Metriken: die Überprüfung des stabilisierten Anflugs mit Gate bei 500/1.000 ft, die adaptiven Schwellenwerte pro Flugzeugtyp, die C.A.N.P.A.-Aufschlüsselung — das sind Kriterien aus der realen Luftfahrt, die intelligent in die virtuelle Welt übertragen wurden.

Für Piloten, die methodisch Fortschritte machen möchten, verwandelt PilotLeague jeden Flug in eine messbare Trainingseinheit. Für diejenigen, die den Wettbewerb lieben, fügen die Weltrangliste und die täglichen Herausforderungen eine soziale Dimension hinzu, die dem Solo-Erlebnis in MSFS schmerzlich fehlte. Und für alle verändert allein das Wissen, dass ein Score berechnet wird, auf subtile Weise die Art des Fliegens — man achtet mehr auf seine Verfahren, überwacht die Geschwindigkeit im Endanflug und sucht die Golden Zone.

Das Cockpit war noch nie so anspruchsvoll — und das ist gut so.

---

*Quelle: [PilotLeague Features](https://pilotleague.com/features/). Bilder: PilotLeague. Community: [Discord PilotLeague](https://discord.gg/pilotleague).*
