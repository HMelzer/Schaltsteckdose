# Funkschaltsteckdose für HomeMatic/RaspberryMatik

## Gehäuse
Auf der Basis der [ELV-Gehäuse OM54](https://de.elv.com/elv-design-stecker-steckdosen-gehaeuse-om-54-c-mit-tasterstoessel-und-led-leuchtfeld-083421)
und des dazugehörigen [Steckdose](https://de.elv.com/schutzkontakt-stecker-steckdosen-einsatz-ohne-sicherungshalter-083422) wird hier eine Funk-Schaltsteckdoese vorgestellt,
die auf der Basis von AsksinPP arbeitet und voll in das HomeMatic/RaspberryMatik-Programm integriert werden kann.

## Platine
Die Platine wurde mit KICAD entwickelt, die KICAD-Daten sind hier beigefügt.
Das nachfolgende Bild zeigt Vorder- und Rückseite der Leiterplatte, hier noch im Leiterplattenrahmen,
aus dem man die Leiterplatten spätestens dann trennen muss, wenn man den Steckdoseneinsatz montieren will.
![Leiterplatte](https://github.com/HMelzer/Schaltsteckdose/blob/master/Bilder/Platine.jpg).

## Schaltung
Für die Stromversorgung wurde ein Baustein von Hi-Link verwendet, der primärseitig mit 100 - 240 V gespeist werden und sekundärseitig 12 V DC bei 0,25 A liefern kann.
[HMK-PM12](https://de.aliexpress.com/item/32960181700.html?spm=a2g0s.9042311.0.0.19304c4d0xYQv4).
Wegen der engen Platzverhältnisse kam ein Relais G6B-2214P der Fa. Omron mit 12 V Spulenspannung zum Einsatz, dass 5 A schalten kann.<p/>
Herzstück ist, wie in den meisten HomeMatic/RaspberryMatik-Projekten, ein ArduinoProMini in der 3,3 V-Variante, der eine große Verbreitung erlangt hat und bei vielen Anbietern zu bekommen ist.
Die erforderliche Spannung für diesen und den Sendebaustein erzeugt ein LDO.
Der ArduinoPro Mini wird nur mit den notwendigen Stiften mit der Leiterplatte verlötet.
Im Schaltplan sind alternativ zwei Sendebausteine aufgeführt.
Das ist zum einen der klassische CC1101, der in vielen Projekten zur Anwendung kommt.
Da es damit in der Vergangenheit immer wieder zu Problemen mit der Sende-/Empfangsfrequenz gekommen ist, vergleiche [Fehlerhafte CC1101 Module](https://asksinpp.de/Grundlagen/FAQ/Fehlerhafte_CC1101.html)
wurde hier in der praktische Ausführung ein anderes Modul, welches ebenfalls den CC1101 verwendet eingesetzt.
Das Modul ist ein [E07_868MS10 der Fa. Ebyte](http://www.ebyte.com/en/product-view-news.aspx?id=180).

 

