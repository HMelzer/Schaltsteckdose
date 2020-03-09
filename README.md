# Funkschaltsteckdose für HomeMatic/RaspberryMatik

## Gehäuse
Auf der Basis der [ELV-Gehäuse OM54](https://de.elv.com/elv-design-stecker-steckdosen-gehaeuse-om-54-c-mit-tasterstoessel-und-led-leuchtfeld-083421)
und des dazugehörigen [Steckdoseneinsatzes](https://de.elv.com/schutzkontakt-stecker-steckdosen-einsatz-ohne-sicherungshalter-083422) wird hier eine Funk-Schaltsteckdose vorgestellt,
die auf der Basis von AsksinPP arbeitet und voll in das HomeMatic/RaspberryMatik-Programm integriert werden kann.

## Platine
Die Platine wurde mit KICAD entwickelt, die KICAD-Daten sind hier beigefügt.
Das nachfolgende Bild zeigt Vorder- und Rückseite der Leiterplatte, hier noch im Leiterplattenrahmen,
aus dem man die Leiterplatten spätestens dann trennen muss, wenn man den Steckdoseneinsatz montieren will.
![Leiterplatte](https://github.com/HMelzer/Schaltsteckdose/blob/master/Bilder/Platine.jpg).

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
Beim Zusammenfügen des Gehäuses und des Steckdoseneinsatz hat es sich gezeigt, dass die Öffnung im Gehäusedeckel geringfügig nachgearbeitet werden muss, um den Steckdoseneinsatz passfähig montieren zu können.
Mit dem Gehäuse lose mitgeliefert werden der Tastereinsatz, ein Lichtleiter und ein "Knackfrosch" der als Taster dient. Beim Einsetzen des Lichtleiters in den Tastereinsatz ist ein wenig Fingerspitzengefühl erforderlich
und man solte vorsichtig zu Werke gehen, um nichts abzubrechen.
Das Bild zeigt die ![Oberschale](https://github.com/HMelzer/Schaltsteckdose/blob/master/Bilder/Oberschale.jpg) Oberschale mit montiertem Taster und Lichtleiter.<br/>
Der "Knackfrosch" wird dann einfach in die dafür vorgesehen Löcher auf der Vorderseite der Leiterplatte eingesetzt und die Laschen auf der Rückseite leicht umgebogen.
**Er darf nicht verlötet werden**.
Vor den eigentlichen Lötarbeiten empfiehlt es sich, die Leiterplatte aus dem Rahmen zu lösen und den Leiterplattenrand an den ehemaligen Verbindungsstellen zu glätten. Die Passfähigkeit im Gehäuse sollte anschließend geprüft werden.
Das sollte auch im Zusammenwirken mit dem Steckdoseneinsatz erfolgen und hierbei sollten auch gleich die Kontaktstreifen des Steckdoseneinsatzes an den Stellen gekennzeichnet werden, an denen diese gekürzt werden müssen.
Alle verwendeten Bauelemente sind als THT ausgeführt, sodass sich die Lötarbeiten einfach gestalten sollten. Die Verteilung auf Vorder- und Rückseite ist den engen Platzverhältnis geschuldet, welches durch den integrierten Taster
bedingt ist.
Eine Besonderheit stellt die LED dar, da es sich um eine Bauform handelt, die zwei LED, rot und grün, in einem Gehäus vereinigt.
Es handelt sich hierbei um eine 3 mm Diode, die von der Leiterplattenrückseite montiert werden muss, wobei diese nicht mehr als 1 mm auf der Vorderseite hervorstehen darf, da sich ansonsten der Taster nicht tief genug drücken lässt.
Die Anschlussdrähte der Diode sind dabei nahe am Gehäuse zu biegen. Auf die richtige Verschaltung der beiden Dioden ist zu achten. Im Projekt zum Einsatz kam eine **EVL 209SURSYGW** (Reichelt Elektronik).
Dafür gilt auch der Aufdruck auf der Platine.<br/>
Der ArduinoProMini wird nur mit allen dafür vorgesehenen Stiften mit der Leiterplatte verlötet. Das muss vor dem Aufsetzen des E07_868MS10 erfolgen, da man ansonsten die Stifte nicht mehr ordentlich verlöten kann.
Die Anschlusstifte für den ArduinoProMini sollten in dem Bereich, wo diese vom E07_868MS10 überdeckt werden nicht so lang ausfallen, damit es keine Kurzschlüsse gibt. Der E07_868MS10 selbst wird dann mittels einer Stiftleiste 8 x 1,27 mm
und einem einzelnen Stift für den Masseanschluss auf der Leiterplatte verlötet. Dadurch erhält der E07_868MS10 auch gleich den nötigen Abstand zur Leiterplatte.
Die erforderliche Antenne wird durch einen Schaltdraht der Länge 83 mm gebildet, welcher von oben durch das vorhandene Loch rechts neben dem "Knackfrosch" gesteckt und mit dem verbliebenen Anschluss am E07_868MS10 verlötet wird.
Das freie Ende des Schaltdrahtes wird dann wechselseitig durch die vorhandenen Löcher neben und oberhalb des ArduinoProMini geführt.<p/>
Zum Schluss wird der Steckdoseneinsatz mit der Leiterplatte verlötet. Um die spätere Passfähigkeit zu erhalten ist es empfehlenswert, Leiterplatte und Steckdoseneinsatz in das Gehäuse einzusetzen und die Laschen oberseitig mit wenig
Lötzinn zu fixieren. Nach der Entnahme aus dem Gehäuse müssen die Laschen großflächig, sowohl auf der Ober-, wie auch auf der Unterseite mit der Leiterplatte verlötet werden.


## Programmierung
Die Datei [HM-LC-Sw1-Pl-DN-R1.ino](https://github.com/HMelzer/Schaltsteckdose/blob/master/HM-LC-Sw1-Pl-DN-R1/HM-LC-Sw1-Pl-DN-R1.ino) enthält das entsprechende Programm, welches in den ArduinoProMini eingespielt werden muss.
Im Bereich ab Zeile 43 sind wie immer die entsprechenden Anpassungen für "Device ID" und "Device Serial" vorzunehmen.<br/>
Die eigentliche Programmierung erfolgt dann mittels der Programmiersoftware für den Arduino in der entsprechend neusten Version und einen FTDI Adapter FT232RL USB zu TTL.
Bei Verwendung eines solchen, beispielsweise der Fa. AZ-Delivery, kann man die daran vorhandene Stiftleiste gleich in die dafür vorgesehenen Löcher am ArduinoProMini stecken und so die Programmierung auf einfache Weise vornehmen.

## Anlernen
Nachdem man die Programmierung abgeschlossen und das Gehäuse mittels der mitgelieferten Schrauben geschlossen hat, kann man die erste Funktionsprobe vornehmen. Hat man die Schaltsteckdose mittels der Steckerstifte mit dem Stromnetz verbunden,
sollte zunächst das Ein- und wieder Ausschalten über den Taster möglich sein. Im Aus-Zustand sollte die LED rot leuten, im Ein-Zustand grün.<br/>
Das Anlernen erfolgt nun in der bekannten Weise, dass man in der Zentrale die Anlernfunktion für Geräte startet und an der Schaltsteckdose den Taster kurz betätigt, wobei dadurch die Schaltsteckdose ebenfalls in den Anlernmodus
versetzt wird und nach kurzer Zeit die blinkende LED das Blinken einstellen sollte. Nachdem der Anlernmodus in der Zentrale abgelaufen ist, sollte sich das neue Gerät im Posteingang der Zentrale wiederfinden,
woraus es dann übernommen, eingestellt und programmiert werden kann. 