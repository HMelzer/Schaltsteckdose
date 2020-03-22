# Funkschaltsteckdose für HomeMatic/RaspberryMatik

## Gehäuse
Auf der Basis des [ELV-Gehäuses OM54](https://de.elv.com/elv-design-stecker-steckdosen-gehaeuse-om-54-c-mit-tasterstoessel-und-led-leuchtfeld-083421)
und des dazugehörigen [Steckdoseneinsatzes](https://de.elv.com/schutzkontakt-stecker-steckdosen-einsatz-ohne-sicherungshalter-083422) wird hier eine Funk-Schaltsteckdose vorgestellt,
die auf der Grundlage von AsksinPP arbeitet und voll in das HomeMatic/RaspberryMatik-Programm integriert werden kann.

## Platine
Die Platine wurde mit KICAD entwickelt, die KICAD-Daten sind hier beigefügt.
Das nachfolgende Bild zeigt Vorder- und Rückseite der Leiterplatte, hier noch im Leiterplattenrahmen,
aus dem man die Leiterplatten spätestens dann trennen muss, wenn man den Steckdoseneinsatz montieren will.
![Leiterplatte](https://github.com/HMelzer/Schaltsteckdose/blob/master/Bilder/Platine.jpg)

## Schaltung
Für die Stromversorgung wurde ein Baustein von Hi-Link verwendet, der primärseitig mit 100 - 240 V gespeist werden und sekundärseitig 12 V DC bei 0,25 A liefern kann.
[HMK-PM12](https://de.aliexpress.com/item/32960181700.html?spm=a2g0s.9042311.0.0.19304c4d0xYQv4).
Wegen der engen Platzverhältnisse kam ein Relais G6B-2214P der Fa. Omron mit 12 V Spulenspannung zum Einsatz, dass 5 A schalten kann.<br/>
Herzstück ist, wie in den meisten HomeMatic/RaspberryMatic-Projekten, ein ArduinoProMini in der 3,3 V - Variante, der eine große Verbreitung erlangt hat und bei vielen Anbietern zu bekommen ist.
Die erforderliche Spannung für diesen und den Sendebaustein erzeugt ein LDO aus der 12 V - Spannung.<br/>
Im Schaltplan sind alternativ zwei Sendebausteine aufgeführt.
Das ist zum einen der klassische CC1101, der in vielen Projekten zur Anwendung kommt.
Da es damit in der Vergangenheit immer wieder zu Problemen mit der Sende-/Empfangsfrequenz gekommen ist, vergleiche [Fehlerhafte CC1101 Module](https://asksinpp.de/Grundlagen/FAQ/Fehlerhafte_CC1101.html),
wurde hier in der praktische Ausführung ein anderes Modul, welches ebenfalls den CC1101 verwendet, eingesetzt.
Das Modul ist ein [E07_868MS10](http://www.ebyte.com/en/product-view-news.aspx?id=180) der Fa. Ebyte.

## Ausführung/Montage
Beim Zusammenfügen des Gehäuses und des Steckdoseneinsatzes hat es sich gezeigt, dass die Öffnung im Gehäusedeckel geringfügig nachgearbeitet werden muss, um den Steckdoseneinsatz passfähig montieren zu können.
Mit dem Gehäuse lose mitgeliefert werden der Tastereinsatz, ein Lichtleiter und ein "Knackfrosch", der als Taster dient. Beim Einsetzen des Lichtleiters in den Tastereinsatz ist ein wenig Fingerspitzengefühl erforderlich
und man sollte vorsichtig zu Werke gehen, um nichts abzubrechen.
Das Bild zeigt die Oberschale mit montiertem Taster und Lichtleiter.<p/> ![Oberschale](https://github.com/HMelzer/Schaltsteckdose/blob/master/Bilder/Oberschale.jpg)<p/>
Im nachfolgenden Bild sieht man die Unterschale mit der bereits montierten Leiterplatte.<p/> ![Unterschale](https://github.com/HMelzer/Schaltsteckdose/blob/master/Bilder/Unterschale.jpg)<p/>
Der "Knackfrosch" wurde einfach in die dafür vorgesehenen Löcher auf der Vorderseite der Leiterplatte eingesetzt und die Laschen auf der Rückseite leicht umgebogen.
**Er darf nicht verlötet werden**.
Vor den eigentlichen Lötarbeiten empfiehlt es sich, die Leiterplatte aus dem Rahmen zu lösen und den Leiterplattenrand an den ehemaligen Verbindungsstellen zu glätten. Die Passfähigkeit im Gehäuse sollte anschließend geprüft werden.
Das sollte auch im Zusammenwirken mit dem Steckdoseneinsatz erfolgen und hierbei sollten auch gleich die Kontaktstreifen des Steckdoseneinsatzes an den Stellen gekennzeichnet werden, an denen diese gekürzt werden müssen.
Alle verwendeten Bauelemente sind als THT ausgeführt, sodass sich die Lötarbeiten einfach gestalten sollten. Die Verteilung auf Vorder- und Rückseite ist dem engen Platzverhältnis geschuldet, welches durch den integrierten Taster
bedingt ist.
Eine Besonderheit stellt die LED dar, da es sich um eine Bauform handelt, die zwei LED, rot und grün, in einem Gehäuse vereinigt.
Es handelt sich hierbei um eine 3 mm Diode, die von der Leiterplattenrückseite montiert werden muss, wobei diese nicht mehr als 1 mm auf der Vorderseite hervorstehen darf, da sich ansonsten der Taster nicht tief genug drücken lässt.
Alternativ kann man allerdings auch den Lichtleiter, beispielsweise mittels Dremel, um ca. 2 mm kürzen. Die Anschlussdrähte der Diode sind dabei nahe am Gehäuse zu biegen. Auf die richtige Verschaltung der beiden Dioden ist zu achten. Im Projekt zum Einsatz kam eine **EVL 209SURSYGW** (Reichelt Elektronik).
Dafür gilt auch der Aufdruck auf der Platine.<br/>
Bevor der ArduinoProMini mit allen dafür vorgesehenen Stiften mit der Leiterplatte verlötet wird, muss man die Stiftleiste (8 x 1,27 mm) für den E07_868MS10 aufsetzen und verlöten, da die Lötpunkte unter dem Arduino zu liegen kommen.
Die Anschlussstifte für den ArduinoProMini sollten in dem Bereich, wo diese vom E07_868MS10 überdeckt werden, nicht so lang ausfallen, damit es keine Kurzschlüsse gibt. Der E07_868MS10 selbst wird dann mittels der Stiftleiste 8 x 1,27 mm
und einem einzelnen Stift für den Masseanschluss auf der Leiterplatte verlötet. Dadurch erhält der E07_868MS10 auch gleich den nötigen Abstand zur Leiterplatte.
Die erforderliche Antenne wird durch einen Schaltdraht der Länge 83 mm gebildet, welcher von oben durch das vorhandene Loch rechts neben dem "Knackfrosch" gesteckt und an dem verbliebenen Anschluss am E07_868MS10 angelötet wird.
Das freie Ende des Schaltdrahtes wird dann wechselseitig durch die vorhandenen Löcher neben und oberhalb des ArduinoProMini geführt.<p/>
Das folgende Bild zeigt die bestückte Rückseite mit bereits montiertem Steckdoseneinsatz. Die montierte LED ist gut zu erkennen, ebenso das Funkmodul und die verlegte Antenne.
Das geänderte Leiterplattenlayout oben links ist in den Daten bereits korrigiert.<p/>
![Leiterplattenrückseite](https://github.com/HMelzer/Schaltsteckdose/blob/master/Bilder/Leiterplattenrückseite.jpg)<p/>
Zum Schluss wird der Steckdoseneinsatz mit der Leiterplatte verlötet. Um die spätere Passfähigkeit zu erhalten, ist es empfehlenswert, Leiterplatte und Steckdoseneinsatz in das Gehäuse einzusetzen und die Laschen oberseitig mit wenig
Lötzinn zu fixieren. Nach der Entnahme aus dem Gehäuse müssen die Laschen großflächig, sowohl auf der Ober- wie auch auf der Unterseite mit der Leiterplatte verlötet werden.


## Programmierung
Die Datei [HM-LC-Sw1-Pl-DN-R1.ino](https://github.com/HMelzer/Schaltsteckdose/blob/master/HM-LC-Sw1-Pl-DN-R1/HM-LC-Sw1-Pl-DN-R1.ino) enthält das entsprechende Programm, welches in den ArduinoProMini eingespielt werden muss.
Im Bereich ab Zeile 43 sind wie immer die entsprechenden Anpassungen für "Device ID" und "Device Serial" vorzunehmen.<br/>
Die eigentliche Programmierung erfolgt dann mittels der Programmiersoftware für den Arduino in der entsprechend neusten Version und einem FTDI Adapter FT232RL USB zu TTL.
Bei Verwendung eines solchen, beispielsweise der Fa. AZ-Delivery, kann man die daran vorhandene Stiftleiste gleich in die dafür vorgesehenen Löcher am ArduinoProMini stecken und so die Programmierung auf einfache Weise vornehmen.

## Anlernen
Nachdem man die Programmierung abgeschlossen und das Gehäuse mittels der mitgelieferten Schrauben geschlossen hat, kann man die erste Funktionsprobe vornehmen. Hat man die Schaltsteckdose mittels der Steckerstifte mit dem Stromnetz verbunden,
sollte zunächst das Ein- und wieder Ausschalten über den Taster möglich sein. Im Aus-Zustand sollte keine LED leuchten, im Ein-Zustand die grüne LED.<br/>
Das Anlernen erfolgt nun in der bekannten Weise, dass man in der Zentrale die Anlernfunktion für Geräte startet und an der Schaltsteckdose den Taster kurz betätigt (rote LED blinkt), wobei dadurch die Schaltsteckdose ebenfalls in den Anlernmodus
versetzt wird und nach kurzer Zeit die blinkende LED das Blinken einstellen sollte. Nachdem der Anlernmodus in der Zentrale abgelaufen ist, sollte sich das neue Gerät im Posteingang der Zentrale wiederfinden,
woraus es dann übernommen, eingestellt und programmiert werden kann.

## Lizenz
Der Inhalt dieses Repository unterliegt der aktuellen Lizenz nach Creative Commons - [https://creativecommons.org/licenses/by-nc-sa/4.0/deed.de](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.de).