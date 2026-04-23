---
title: "PilotLeague Frühjahr 2026 — Faires MSFS 2024 Ranking & VAs"
description: "Ein 14-Tage-Rolling-Ranking, das aktive Piloten belohnt, virtuelle Airlines, öffentliche Profile und neue Sicherheitswarnungen — das größte PilotLeague-Update für MSFS 2024."
lang: 'de'
pubDate: 'Apr 23 2026'
heroImage: '../../assets/hero-pilotleague-spring-2026-update.webp'
---

![PilotLeague Ranking V2 mit Chips virtueller Airlines und Kategorie-Tabs](../../assets/hero-pilotleague-spring-2026-update.webp)
*Bild: [PilotLeague Rankings V2](https://pilotleague.com/de/rankings/)*

Das Frühjahrs-Update 2026 von [PilotLeague](https://pilotleague.com/de/) ist kein kosmetischer Refresh. Es ist ein tiefer Umbau der Säulen, auf denen die Plattform steht: wie ein Pilot gerankt wird, wie sich eine Gemeinschaft organisiert und was nach der Landung wirklich auf dem Bildschirm erscheint. Für jeden, der den Microsoft Flight Simulator 2024 ernsthaft fliegt und einen objektiven Maßstab für seine eigene Präzision sucht, ist dies der Moment, die Companion-App zu aktualisieren und das neue Gleichgewicht zu entdecken.

Der Kern der Änderung lässt sich in einem Satz zusammenfassen: Das Ranking bestraft keine Piloten mehr dafür, dass sie ein paar Tage pausieren, und belohnt diejenigen, die regelmäßig und zuverlässig fliegen. Gleichzeitig bringen virtuelle Airlines die Struktur einer Staffel zu einem Hobby, das allzu oft solitär blieb, während öffentliche Profile aus einem privaten Cockpit eine digitale Logbuchseite machen, die man mit Stolz teilt. Dieses Frühjahr markiert einen klaren Wendepunkt. Lassen Sie uns Ebene für Ebene vorgehen.

## Leaderboard V2 — Ein 14-Tage-Fenster, das die Gegenwart bewertet

Das alte Leaderboard akkumulierte lebenslang. Ein Pilot, der 2024 viel geflogen hatte und dann seltener, blieb künstlich an der Spitze, während ein neuer, präziser und fleißiger Pilot kaum aufzuholen vermochte. Das V2 kehrt die Perspektive um: Was aktuell zählt, ist die letzte Leistung, nicht die Addition eines ganzen Lebens.

Das Fenster beträgt **14 Tage**, rollierend und mit **exponentiellem Decay** gewichtet. Ein Flug, der heute abgeschlossen wurde, wiegt deutlich mehr als einer von vor zehn Tagen, ohne dass ältere Flüge abrupt aus der Berechnung herausfallen. Der Übergang ist kontinuierlich, weich, vorhersehbar — genau das, was ein technisches Ranking bieten muss.

Die zentrale Formel lautet:

`pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier`

Drei Komponenten, drei Signale. `performance_recent` bewertet die rohe Qualität der letzten Flüge (Landung, Profiltreue, Treibstoffmanagement). `activity_multiplier` belohnt Konstanz — mehrere Sessions pro Woche werden bevorzugt gegenüber einem sporadischen 10-Stunden-Flug. `reliability_multiplier` berücksichtigt das Fehlen schwerwiegender Zwischenfälle: keine Landung neben der Bahn, keine Überschreitung des strukturellen Limits, keine abgebrochenen Flüge. Das Ranking aktualisiert sich alle **15 Minuten**, gerade genug, um nach einer gelungenen Landung einen klaren Zeitvorsprung zu spüren, ohne die Liste jede Sekunde in eine Flackershow zu verwandeln.

## Vier spezialisierte Kategorien — und der VA-Chip

Das allgemeine Ranking beschreibt den Piloten als Ganzes, doch alle Stärken sind nicht identisch. PilotLeague bricht es daher in **vier spezialisierte Kategorien** auf, die jeweils **Top 40** anzeigen:

- **Landung** — Sinkrate beim Aufsetzen, seitliche Ausrichtung auf der Mittellinie, Weichheit.
- **SOP** — Einhaltung der Standard Operating Procedures: Klappen, Fahrwerk, Lichter, Geschwindigkeit bei jeder Phase.
- **Sicherheit** — Abwesenheit harter Zwischenfälle: Landung neben der Bahn, Überlastung, unterbrochener Flug.
- **Treibstoffeffizienz** — Verhältnis zwischen verbrauchtem und optimalem Treibstoff für die Route.

Die klarste visuelle Neuheit ist der **Chip der virtuellen Airline**, der neben dem Pilotennamen in jeder Rangliste angezeigt wird. Ein kurzer IATA-Code, ein Logo, und man weiß sofort, mit welchen Farben dieser Pilot fliegt. Ein Klick führt direkt zur Seite der Airline. Das Leaderboard wird so von einer trockenen Liste zu einem Navigationsorgan zwischen Communitys.

## Virtual Airlines — Endlich Struktur fürs Online-Fliegen

Die Einführung der **Virtual Airlines (VAs)** ist wahrscheinlich das funktional tiefgreifendste Feature dieses Updates. Eine VA ist eine Gruppe von Piloten, die sich unter einer gemeinsamen Identität versammeln: ein **Slug** (technische URL), ein **Name**, ein **Callsign** (das die ATC auf VATSIM oder IVAO verwendet), ein **IATA-Code** (zwei Zeichen) und ein **Logo**.

Die Erstellung ist einfach. Navigieren Sie in der Companion-App zu **Einstellungen → Netzwerke**, dann zum Reiter Virtual Airlines. Füllen Sie die fünf Felder aus, laden Sie das Logo hoch, und die VA wird sofort aktiv. Piloten können sie über das Verzeichnis suchen oder direktem Einladungslink beitreten. Jedes Profil zeigt anschließend den VA-Chip im Leaderboard und auf der öffentlichen Seite an.

Der **manuelle blaue Haken** ist das offizielle Authentizitätszeichen, das vom PilotLeague-Team vergeben wird, nachdem die Existenz einer realen oder fiktiv-historisch verankerten Airline überprüft wurde. Die Anfrage läuft über das Support-Formular; die Bearbeitungszeit beträgt im Allgemeinen wenige Tage. Dieser Haken ist weder Dekoration noch Geschäftsmodell: Er garantiert, dass die "Lufthansa Virtual Group" tatsächlich die ist, die sie zu sein vorgibt, und nicht eine Homonym-Gruppe, die sich die Identität angeeignet hat.

## Öffentliche Profile — Ihr digitales Logbuch

![Öffentliches Pilotenprofil bei PilotLeague mit World-Rank, Level und letzten Flügen](/images/pilotleague-spring-2026-update/public-pilot-profile.webp)
*Bild: [PilotLeague](https://pilotleague.com/de/)*

Das zweite große Feature der Version ist die Ankunft der **öffentlichen Profile**, zugänglich unter der kanonischen URL `pilotleague.com/pilots/<username>`. Diese Seite — die teilbar ist, wenn der Pilot sie aktiviert — fasst zusammen, was früher in der privaten Oberfläche verborgen lag:

- **Identität**: Avatar, Benutzername, Anzeigename, optional Land.
- **World Rank**: Globale Position mit Kategorie-Rängen.
- **Level + XP**: Fortschrittsleiste zum nächsten Rang.
- **Aggregierte Statistiken**: Gesamtflüge, geflogene Stunden, durchschnittliche Sinkrate bei der Landung, bevorzugter Flugzeugtyp.
- **30-Tage-Chart**: Kurve der aktivitätsreichen Sessions und Score-Entwicklung.
- **Letzte 10 Flüge**: Strecke, Flugzeug, Dauer, Landungsbewertung. Jeder Eintrag führt zu einer öffentlichen Detailseite, wenn der Pilot es akzeptiert.

Alles ist **konfigurierbar**. In den Datenschutzeinstellungen schalten Sie um, was sichtbar ist: gesamtes Profil öffentlich oder versteckt, Statistiken, Charts, Flugliste. So kann ein Pilot sein Profil als digitale Visitenkarte teilen, während er ungünstige Sessions privat hält, wenn er es wünscht.

### Avatar-Upload — Schnell, sauber, gefiltert

Der dedizierte Avatar-Upload akzeptiert **JPG** oder **PNG**. Der Zuschnitt erfolgt kreisförmig im Vorschau-Modus, mit Ausgabe in **512×512**. Die maximale Größe beträgt **2 MB**. Und um die Ernsthaftigkeit der Plattform zu erhalten, durchläuft jedes hochgeladene Bild einen automatischen **NSFW-Check**, bevor es gespeichert wird. Die Bearbeitungszeit liegt meist unter einer Sekunde; Ablehnungen sind selten, aber klar: eine explizite Fehlermeldung und Einladung, ein anderes Bild einzureichen.

## Sicherheits-UI — Das Banner, das Ihre Aufmerksamkeit verdient

![Rotes Banner für Landung neben der Bahn oben auf einer PilotLeague-Flugdetailseite](/images/pilotleague-spring-2026-update/off-runway-alert.webp)
*Bild: [PilotLeague](https://pilotleague.com/de/)*

Eine Landung neben der Bahn ist in der realen Welt ein meldepflichtiges Ereignis. In der Simulation war sie lange ein unbedeutender Datenpunkt. Das Update ändert das. Die Engine erkennt jetzt diese Abweichung mit einer Verzögerung von **500 ms** — schnell genug, um die Dauer zwischen Aufsetzen und Erkennung präzise zu erfassen, langsam genug, um falsche Positive zu vermeiden, wenn das Flugzeug die Piste verlassen soll (Rollen zum Gate, zum Beispiel).

Die Regel des Systems lautet einfach: Es werden **fünf aufeinanderfolgende Frames** `ON ANY RUNWAY` beim Aufsetzen toleriert. Liegen die Räder zum Zeitpunkt des Aufsetzens außerhalb der Piste oder verlassen sie diese unmittelbar nach dem Aufsetzen auf abnormale Weise, wird ein Sicherheits-Malus von **−100 Punkten** angewendet, und ein **rotes Banner** erscheint ganz oben auf der öffentlichen Flugdetailseite. Nicht versteckt, nicht optional: Es ist das Erste, was jeder Besucher sieht.

Dieses Banner ist in den **sieben UI-Sprachen** verfügbar, die von PilotLeague unterstützt werden. Der Ton ist technisch und höflich — weder beschämend noch beleidigend. Das Ziel besteht nicht darin, zu stigmatisieren, sondern den Piloten einzuladen, seine Annäherungen zu verfeinern. Und da Sicherheit eine der vier Kategorien-Rangliste ist, spiegelt sich die Wiederholung dieser Malus direkt im spezialisierten Score wider.

## GPS-Fix — Die Spur erzählt wieder die Geschichte

![Phasenfarbige GPS-Spur — Start, Steigflug, Reiseflug, Sinkflug, Anflug, Landung](/images/pilotleague-spring-2026-update/gps-track-phases.webp)
*Bild: [PilotLeague](https://pilotleague.com/de/)*

Die GPS-Karte der Flugdetailseite wurde wegen eines kritischen Bugs überarbeitet. Das Problem: Das Feld `profile_visibility` befand sich in der **falschen Tabelle** in der Datenbank. Bei jeder Abfrage der Spur gab der Server eine **HTTP 500** zurück, und die Oberfläche zeigte stillschweigend eine einfache Gerade zwischen Start- und Zielflughafen an — der Fallback. Die Benutzer sahen kein Fehler; sie sahen nur eine belanglose Linie, die den Reichtum ihres Fluges nicht widerspiegelte.

Der Fix verschiebt das Feld in das korrekte Schema, stellt die Vollspur wieder her und führt eine **nach Flugphase gefärbte Polylinie** ein. Acht unterscheidbare Phasen werden gerendert: **Start, initialer Steigflug, Steigflug, Reiseflug, Sinkflug, Anflug, Landung, Rollen**. Jede Phase hat ihre Farbe und ihre Legende. Mit einem Blick erkennen Sie, ob der Sinkflug vor dem Anflug stabilisiert war, ob die Reiseflugphase die angekündigte Höhe einhielt, ob der Anflug länger dauerte als die Flugvorbereitung vorsah.

Für lange Flüge wurde ein **adaptives Sampling** integriert. Eine Rohspur einer 10-Stunden-Route, die alle 200 ms aufgezeichnet wurde, würde Zehntausende von Punkten ergeben — ein Karten-Rendering-Desaster. Der Algorithmus komprimiert die Sequenz intelligent, behält eine höhere Dichte in den kritischen Phasen (Steigflug, Sinkflug, Anflug, Landung) und eine niedrigere im Reiseflug, um schließlich eine Gesamtheit von **mehr als 1500 Punkten** für einen ultra-langen Flug zu rendern. Das Ergebnis: schnelles Anzeigen, flüssiges Scrollen, kein Detailverlust dort, wo es zählt.

## Streak-Bugs — Zwei Fehler korrigiert, eine klare Regel

Der **Streak** ist eine Serie aufeinanderfolgender Flugtage. PilotLeague belohnt die Konstanz mit XP-Bonus-Multiplikatoren. Doch die Umsetzung litt unter zwei Bugs, die parallel auftraten.

Erster Bug: Die Streak **lief nie ab**. Ein Pilot, der eine dreitägige Serie erreichte und danach zwei Monate pausierte, fand seine "3"-Streak unversehrt bei der Rückkehr. Die Regel lautet: Ein Streak wird gebrochen, wenn zwischen zwei Flugtagen ein vollständiger Tag vergeht.

Zweiter Bug: `last_flight_date` wurde manchmal **versehentlich überschrieben**, wenn ein altes Synchronisierungsevent verspätet ankam. Die App glaubte, der Pilot habe gerade geflogen, während er seit Tagen keinen Flug mehr gemacht hatte.

Die Korrektur führt eine **nächtliche Bereinigung um 00:05 MEZ** ein, die jedes Konto prüft, veraltete Streaks neu berechnet und `last_flight_date` mit dem tatsächlichen letzten Flug neu synchronisiert. Die Leiter hat jetzt **sechs Stufen**, von einem Multiplikator **×1.00 bis ×1.25** auf den gewonnenen XP, je nach Länge der Serie. Und der entscheidende Punkt, der einen fairen Wettbewerb gewährleistet: Der Streak beeinflusst **NUR den XP-Bonus**, **niemals das Ranking** oder den Score. Ein Pilot, der ins Krankenhaus muss und zwei Wochen pausiert, fällt nicht im Leaderboard zurück — er verliert nur seinen XP-Multiplikator, der nach einer normalen Flugsitzung beim Wiedereinstieg schnell neu aufgebaut wird.

## Konsistenz und Internationalisierung

Ein durchgängiges Prinzip des Updates: Was im privaten Profil angezeigt wird, muss dem öffentlichen Profil entsprechen. Keine Diskrepanz mehr zwischen der App und dem Web. Jede in einem Bereich vorgenommene Änderung (Sichtbarkeit, Avatar, VA-Zugehörigkeit) spiegelt sich unmittelbar im anderen wider. Die Quelle der Wahrheit ist einzigartig, die Daten sind kohärent, die Erfahrung ist vorhersehbar.

Die Oberfläche ist vollständig in **sieben Sprachen** übersetzt, einschließlich des Deutschen. Die fliegerische Terminologie wurde mit realen Piloten validiert, um "Übersetzungsabsurditäten" zu vermeiden, die oft die Software-Lokalisierung plagen. Neue Meldungen — Off-Runway-Banner, Bestätigung der Avatarzertifizierung, VA-Erstellungs-Tipps — sind von Anfang an in die Translationspipeline integriert.

## FAQ — Ihre Fragen zu Frühjahr 2026

**Warum ein 14-Tage-Fenster und nicht 7 oder 30?**
Sieben Tage wären zu kurz: Ein Arbeitsschub oder eine Krankheit würden einen Piloten zu schnell aus dem Ranking werfen. Dreißig Tage wären zu lang: Alte Flüge würden aktuelle Leistungen verwässern. Vierzehn Tage bieten den besten Kompromiss zwischen Reaktionsfähigkeit und Stabilität — genug, um eine Inaktivitätswoche auszugleichen, ohne das aktuelle Spielgeschehen zu verlieren.

**Was passiert mit meinem bisherigen lebenslangen Ranking?**
Es ist nicht verloren. Es wird als historischer Wert auf Ihrem Profil ("Total Career Score") angezeigt, ist jedoch nicht mehr der maßgebliche Vergleichswert. Das aktive Ranking ist der V2-Score über 14 Tage. Alle historischen Flüge bleiben in Ihrem Logbuch und Ihren aggregierten Statistiken erhalten.

**Kann ich einen Piloten aus einer VA ausschließen, die ich erstellt habe?**
Ja. Der VA-Administrator hat Moderations-Tools, mit denen er Mitglieder einladen, verwarnen oder entfernen kann. Eine VA ist eine verwaltete Gemeinschaft; die Regeln werden vom Gründer festgelegt.

**Wie beantrage ich den blauen Haken für meine VA?**
Über das Kontaktformular auf der PilotLeague-Website. Fügen Sie einen Link zu Ihrer offiziellen Website, Ihren Social-Media-Kanälen und jeder Ressource bei, die die Legitimität der VA belegt. Das Team antwortet innerhalb weniger Tage.

**Wirkt sich das Off-Runway-Banner rückwirkend auf frühere Flüge aus?**
Nein. Der −100-Punkte-Malus und das Banner gelten nur für Flüge, die nach der Bereitstellung des Updates abgeschlossen wurden. Vor diesem Datum aufgezeichnete Off-Runway-Landungen werden ohne Wertung oder visuelle Markierung beibehalten.

## Zum Mitmachen

Die [PilotLeague](https://pilotleague.com/de/) Frühjahr 2026 ist **kostenlos** und steht allen MSFS-2024-Piloten zur Verfügung. Die Companion-App wird automatisch aktualisiert; Sie können die neue Version auch manuell über die Download-Seite beziehen. Dann genügt ein Flug, damit sich Ihr Leaderboard V2 neu kalibriert, Ihre Kategorien-Ränge aufbauen und Ihre Streak mit der korrekten nächtlichen Regel startet.

- Entdecken Sie das neue Ranking: [Rangliste Landung](https://pilotleague.com/de/rankings/landing/)
- Verfolgen Sie Ihren SOP-Score: [Rangliste SOP](https://pilotleague.com/de/rankings/sop/)
- Sicherheit ohne Kompromisse: [Rangliste Sicherheit](https://pilotleague.com/de/rankings/safety/)
- Treibstoffeffizienz: [Rangliste Treibstoffeffizienz](https://pilotleague.com/de/rankings/fuel-efficiency/)
- Installieren Sie die aktualisierte App: [PilotLeague herunterladen](https://pilotleague.com/de/download/)

Wir sehen uns im Platzrunden.

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "FAQPage",
  "mainEntity": [
    { "@type": "Question", "name": "Was ist PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "PilotLeague ist eine kostenlose Companion-App und Web-Plattform für den Microsoft Flight Simulator 2024. Sie misst die Präzision jedes Fluges, vergibt einen Score in vier Kategorien (Landung, SOP, Sicherheit, Treibstoffeffizienz), verwaltet virtuelle Airlines und öffentliche Pilotenprofile." } },
    { "@type": "Question", "name": "Wie wird der neue Ranking-Score berechnet?", "acceptedAnswer": { "@type": "Answer", "text": "pilotleague_score = performance_recent × activity_multiplier × reliability_multiplier. Die Berechnung nutzt ein rollierendes 14-Tage-Fenster mit exponentiellem Decay und wird alle 15 Minuten aktualisiert. Die drei Komponenten bewerten die jüngste Qualität, die Flugkonstanz und das Fehlen von Zwischenfällen." } },
    { "@type": "Question", "name": "Beeinflusst der Streak mein Ranking?", "acceptedAnswer": { "@type": "Answer", "text": "Nein. Streaks erhöhen nur den XP (Level-Aufstieg), niemals Score oder Ranking. Eine 6-Stufen-Leiter multipliziert die pro Flug gewonnenen XP (×1.00 bis ×1.25), wirkt sich aber nie auf die Leaderboard-Position aus. Die Bereinigung erfolgt nächtlich um 00:05 MEZ." } },
    { "@type": "Question", "name": "Was ist eine Virtual Airline bei PilotLeague?", "acceptedAnswer": { "@type": "Answer", "text": "Eine Virtual Airline (VA) ist eine Gruppe von Piloten, die unter einem gemeinsamen Callsign, IATA-Code und Logo fliegen. Sie wird über Einstellungen → Netzwerke erstellt. Ein manueller blauer Haken, der nach Prüfung durch das PilotLeague-Team vergeben wird, bestätigt die Authentizität einer realen oder historischen Airline." } },
    { "@type": "Question", "name": "Ist PilotLeague kostenlos?", "acceptedAnswer": { "@type": "Answer", "text": "Ja. Die Companion-App und die Web-Plattform sind für alle MSFS-2024-Piloten kostenlos. Virtual Airlines, öffentliche Profile, 14-Tage-V2-Ranking, Kategorien und Sicherheits-UI sind ohne Abonnement oder Kauf inkludiert." } }
  ]
}
</script>
