EESchema Schematic File Version 4
LIBS:Funk-Schaltsteckdose-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L My_Library:ArduinoProMini U1
U 1 1 5C8E91BB
P 4750 3700
F 0 "U1" H 4450 6265 50  0000 C CNN
F 1 "ArduinoProMini" H 4450 6174 50  0000 C CNN
F 2 "Arduino:ArduinoProMini_modif." H 4750 3650 50  0001 C CNN
F 3 "" H 4750 3650 50  0001 C CNN
	1    4750 3700
	1    0    0    -1  
$EndComp
$Comp
L My_Library:CC1101 U3
U 1 1 5C8E8AD9
P 8650 1850
F 0 "U3" H 8900 2687 60  0000 C CNN
F 1 "CC1101" H 8900 2581 60  0000 C CNN
F 2 "Arduino:CC1101" H 8650 1850 60  0001 C CNN
F 3 "" H 8650 1850 60  0001 C CNN
	1    8650 1850
	1    0    0    -1  
$EndComp
$Comp
L My_Library:E07_868MS10 U4
U 1 1 5C8E8B8A
P 9100 3100
F 0 "U4" H 8900 4015 50  0000 C CNN
F 1 "E07_868MS10" H 8900 3924 50  0000 C CNN
F 2 "Arduino:E07_868MS10" H 9100 3100 50  0001 C CNN
F 3 "" H 9100 3100 50  0001 C CNN
	1    9100 3100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_DIP_x01 SW1
U 1 1 5C8E9D74
P 6100 2800
F 0 "SW1" H 6100 3067 50  0000 C CNN
F 1 "SW_DIP_x01" H 6100 2976 50  0000 C CNN
F 2 "Arduino:Schaltkontakt" H 6100 2800 50  0001 C CNN
F 3 "" H 6100 2800 50  0001 C CNN
	1    6100 2800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5C8E9E5B
P 5950 3300
F 0 "R2" V 5743 3300 50  0000 C CNN
F 1 "470" V 5834 3300 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 3300 50  0001 C CNN
F 3 "~" H 5950 3300 50  0001 C CNN
	1    5950 3300
	0    1    1    0   
$EndComp
$Comp
L Device:CP C1
U 1 1 5C8EA392
P 3300 2000
F 0 "C1" H 3418 2046 50  0000 L CNN
F 1 "100µF 16V" H 3418 1955 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D8.0mm_P2.50mm" H 3338 1850 50  0001 C CNN
F 3 "~" H 3300 2000 50  0001 C CNN
	1    3300 2000
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J1
U 1 1 5C8EE2E7
P 800 6450
F 0 "J1" H 720 6225 50  0000 C CNN
F 1 "L" H 720 6316 50  0000 C CNN
F 2 "Arduino:Kontaktstreifen" H 800 6450 50  0001 C CNN
F 3 "~" H 800 6450 50  0001 C CNN
	1    800  6450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J2
U 1 1 5C8EE395
P 800 6950
F 0 "J2" H 720 6725 50  0000 C CNN
F 1 "L'" H 720 6816 50  0000 C CNN
F 2 "Arduino:Kontaktstreifen" H 800 6950 50  0001 C CNN
F 3 "~" H 800 6950 50  0001 C CNN
	1    800  6950
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x01 J3
U 1 1 5C8EE42D
P 800 7450
F 0 "J3" H 720 7225 50  0000 C CNN
F 1 "N" H 720 7316 50  0000 C CNN
F 2 "Arduino:Kontaktstreifen" H 800 7450 50  0001 C CNN
F 3 "~" H 800 7450 50  0001 C CNN
	1    800  7450
	-1   0    0    1   
$EndComp
Wire Wire Line
	1350 5100 1100 5100
Wire Wire Line
	1100 5100 1100 5400
Wire Wire Line
	5200 3300 5800 3300
Wire Wire Line
	5200 2800 5800 2800
Wire Wire Line
	6400 2800 6950 2800
$Comp
L power:GND #PWR03
U 1 1 5C8F81F3
P 4250 6800
F 0 "#PWR03" H 4250 6550 50  0001 C CNN
F 1 "GND" H 4255 6627 50  0000 C CNN
F 2 "" H 4250 6800 50  0001 C CNN
F 3 "" H 4250 6800 50  0001 C CNN
	1    4250 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5C8F8607
P 5750 4500
F 0 "R1" H 5820 4546 50  0000 L CNN
F 1 "10k" H 5820 4455 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5680 4500 50  0001 C CNN
F 3 "~" H 5750 4500 50  0001 C CNN
	1    5750 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3200 5750 3200
Wire Wire Line
	5750 5350 5900 5350
Wire Wire Line
	4250 6450 4050 6450
Wire Wire Line
	5750 4650 5750 5350
Wire Wire Line
	4050 6650 4250 6650
Wire Wire Line
	4250 6650 4250 6800
Wire Wire Line
	4250 6650 4650 6650
Wire Wire Line
	6200 6650 6200 5750
Connection ~ 4250 6650
Wire Wire Line
	6950 5750 6200 5750
Connection ~ 6200 5750
Wire Wire Line
	6200 5750 6200 5550
Wire Wire Line
	5750 3200 5750 3600
Connection ~ 5200 6650
Wire Wire Line
	5200 6650 5800 6650
Wire Wire Line
	4900 6150 4650 6150
Wire Wire Line
	4250 6150 4250 6450
$Comp
L power:+3.3V #PWR01
U 1 1 5C8FDECF
P 3300 1500
F 0 "#PWR01" H 3300 1350 50  0001 C CNN
F 1 "+3.3V" H 3315 1673 50  0000 C CNN
F 2 "" H 3300 1500 50  0001 C CNN
F 3 "" H 3300 1500 50  0001 C CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR04
U 1 1 5C8FDFF0
P 5800 5950
F 0 "#PWR04" H 5800 5800 50  0001 C CNN
F 1 "+3.3V" H 5815 6123 50  0000 C CNN
F 2 "" H 5800 5950 50  0001 C CNN
F 3 "" H 5800 5950 50  0001 C CNN
	1    5800 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 6150 5800 6150
Wire Wire Line
	5800 6150 5800 5950
Wire Wire Line
	3300 1500 3300 1700
Wire Wire Line
	3300 1700 3700 1700
Wire Wire Line
	3300 1700 3300 1850
Connection ~ 3300 1700
$Comp
L power:GND #PWR02
U 1 1 5C8FFBF5
P 3300 2350
F 0 "#PWR02" H 3300 2100 50  0001 C CNN
F 1 "GND" H 3305 2177 50  0000 C CNN
F 2 "" H 3300 2350 50  0001 C CNN
F 3 "" H 3300 2350 50  0001 C CNN
	1    3300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 2350 3300 2250
$Comp
L Device:Fuse F1
U 1 1 5C900638
P 2350 6450
F 0 "F1" V 2153 6450 50  0000 C CNN
F 1 "0,63AT" V 2244 6450 50  0000 C CNN
F 2 "Fuse:Fuseholder_TR5_Littelfuse_No560_No460" V 2280 6450 50  0001 C CNN
F 3 "~" H 2350 6450 50  0001 C CNN
	1    2350 6450
	0    1    1    0   
$EndComp
$Comp
L Device:Varistor RV1
U 1 1 5C9038E0
P 2600 6950
F 0 "RV1" H 2703 6996 50  0000 L CNN
F 1 "VDR 275V 250mW" H 2703 6905 50  0000 L CNN
F 2 "Varistor:RV_Disc_D9mm_W5.2mm_P5mm" V 2530 6950 50  0001 C CNN
F 3 "~" H 2600 6950 50  0001 C CNN
	1    2600 6950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 4000 3700 2250
Wire Wire Line
	3700 2250 3300 2250
Connection ~ 3300 2250
Wire Wire Line
	3300 2250 3300 2150
Wire Wire Line
	5200 2600 5450 2600
Wire Wire Line
	5200 2500 5450 2500
Wire Wire Line
	5200 2400 5450 2400
Wire Wire Line
	5200 2300 5450 2300
Wire Wire Line
	5200 3500 5500 3500
Text Label 5500 3500 2    50   ~ 0
D2
Text Label 5450 2600 2    50   ~ 0
SS
Text Label 5450 2500 2    50   ~ 0
MOSI
Text Label 5450 2400 2    50   ~ 0
MISO
Text Label 5450 2300 2    50   ~ 0
SCK
Wire Wire Line
	9450 1300 9700 1300
Wire Wire Line
	9450 1400 9700 1400
Wire Wire Line
	9450 1500 9700 1500
Wire Wire Line
	9450 1700 9700 1700
Wire Wire Line
	9450 1800 9700 1800
Wire Wire Line
	9350 2450 9700 2450
Wire Wire Line
	9350 2550 9700 2550
Wire Wire Line
	9350 2650 9700 2650
Wire Wire Line
	9350 2750 9700 2750
Wire Wire Line
	9350 2850 9700 2850
Text Label 9700 1300 2    50   ~ 0
MOSI
Text Label 9700 1400 2    50   ~ 0
SCK
Text Label 9700 1500 2    50   ~ 0
MISO
Text Label 9700 1700 2    50   ~ 0
D2
Text Label 9700 1800 2    50   ~ 0
SS
Text Label 9700 2450 2    50   ~ 0
D2
Text Label 9700 2550 2    50   ~ 0
SS
Text Label 9700 2650 2    50   ~ 0
SCK
Text Label 9700 2750 2    50   ~ 0
MOSI
Text Label 9700 2850 2    50   ~ 0
MISO
NoConn ~ 9350 2950
NoConn ~ 9450 1600
$Comp
L power:GND #PWR0101
U 1 1 5C923165
P 8250 3150
F 0 "#PWR0101" H 8250 2900 50  0001 C CNN
F 1 "GND" H 8255 2977 50  0000 C CNN
F 2 "" H 8250 3150 50  0001 C CNN
F 3 "" H 8250 3150 50  0001 C CNN
	1    8250 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8250 3150 8250 2950
Wire Wire Line
	8250 2950 8450 2950
Wire Wire Line
	8250 2950 8250 2750
Wire Wire Line
	8250 2750 8450 2750
Connection ~ 8250 2950
Wire Wire Line
	8250 2750 8250 1850
Wire Wire Line
	8250 1850 8350 1850
Connection ~ 8250 2750
$Comp
L power:+3.3V #PWR0102
U 1 1 5C92766B
P 8100 1150
F 0 "#PWR0102" H 8100 1000 50  0001 C CNN
F 1 "+3.3V" H 8115 1323 50  0000 C CNN
F 2 "" H 8100 1150 50  0001 C CNN
F 3 "" H 8100 1150 50  0001 C CNN
	1    8100 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1150 8100 1300
Wire Wire Line
	8100 1300 8350 1300
Wire Wire Line
	8100 1300 8100 2450
Wire Wire Line
	8100 2450 8450 2450
Connection ~ 8100 1300
NoConn ~ 8450 2850
NoConn ~ 5200 1400
NoConn ~ 5200 1500
NoConn ~ 5200 1600
NoConn ~ 5200 1700
NoConn ~ 5200 1800
NoConn ~ 5200 2000
NoConn ~ 5200 2100
NoConn ~ 5200 2700
NoConn ~ 5200 3000
NoConn ~ 5200 3100
NoConn ~ 5200 3400
NoConn ~ 5200 3600
NoConn ~ 5200 3700
NoConn ~ 5200 4000
NoConn ~ 3700 1500
NoConn ~ 5200 1900
Wire Wire Line
	1000 7450 1100 7450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5C951527
P 2950 6350
F 0 "#FLG0101" H 2950 6425 50  0001 C CNN
F 1 "PWR_FLAG" H 2950 6524 50  0000 C CNN
F 2 "" H 2950 6350 50  0001 C CNN
F 3 "~" H 2950 6350 50  0001 C CNN
	1    2950 6350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 5C95156B
P 1100 7350
F 0 "#FLG0102" H 1100 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 7524 50  0000 C CNN
F 2 "" H 1100 7350 50  0001 C CNN
F 3 "~" H 1100 7350 50  0001 C CNN
	1    1100 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 7350 1100 7450
Connection ~ 1100 7450
Wire Wire Line
	2250 4300 2250 4200
Wire Wire Line
	2250 4600 2250 4700
$Comp
L Diode:1N4148 D2
U 1 1 5C965705
P 2250 4450
F 0 "D2" V 2296 4371 50  0000 R CNN
F 1 "1N4148" V 2100 4800 50  0000 R CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2250 4275 50  0001 C CNN
F 3 "http://www.nxp.com/documents/data_sheet/1N4148_1N4448.pdf" H 2250 4450 50  0001 C CNN
	1    2250 4450
	0    -1   -1   0   
$EndComp
$Comp
L My_Library:HI-Link PS1
U 1 1 5C9682F8
P 3650 6550
F 0 "PS1" H 3650 6875 50  0000 C CNN
F 1 "HI-Link" H 3650 6784 50  0000 C CNN
F 2 "Arduino:HI-Link" H 3650 6250 50  0001 C CNN
F 3 "" H 3650 6150 50  0001 C CNN
	1    3650 6550
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LP2950-3.3_TO92 U2
U 1 1 5C96968A
P 5200 6150
F 0 "U2" H 5200 6392 50  0000 C CNN
F 1 "LP2950-3.3_TO92" H 5200 6301 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline_Horizontal1" H 5200 6375 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/lp2950-n.pdf" H 5200 6100 50  0001 C CNN
	1    5200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 6450 5200 6650
Wire Wire Line
	6950 2800 6950 3450
$Comp
L My_Library:3.0_Multi-Colo_LED D1
U 1 1 5C9254DC
P 6300 3300
F 0 "D1" H 6500 2932 50  0000 C CNN
F 1 "3.0_Multi-Colo_LED" H 6500 3023 50  0000 C CNN
F 2 "Arduino:Durchsteck_LED_THT_3,0" H 5950 3450 50  0001 C CNN
F 3 "" H 5950 3450 50  0001 C CNN
	1    6300 3300
	1    0    0    1   
$EndComp
Wire Wire Line
	6900 3450 6950 3450
Connection ~ 6950 3450
Wire Wire Line
	6950 3450 6950 5750
$Comp
L Device:R R3
U 1 1 5C9294AB
P 5950 3600
F 0 "R3" V 5743 3600 50  0000 C CNN
F 1 "470" V 5834 3600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" V 5880 3600 50  0001 C CNN
F 3 "~" H 5950 3600 50  0001 C CNN
	1    5950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 3600 5750 3600
Connection ~ 5750 3600
Wire Wire Line
	5750 3600 5750 4350
$Comp
L Device:CP C2
U 1 1 5C92BCA4
P 4650 6400
F 0 "C2" H 4768 6446 50  0000 L CNN
F 1 "10µF 16V" H 4768 6355 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D5.0mm_P2.50mm" H 4688 6250 50  0001 C CNN
F 3 "~" H 4650 6400 50  0001 C CNN
	1    4650 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 6250 4650 6150
Connection ~ 4650 6150
Wire Wire Line
	4650 6150 4250 6150
Wire Wire Line
	4650 6550 4650 6650
Connection ~ 4650 6650
Wire Wire Line
	4650 6650 5200 6650
$Comp
L Device:C C3
U 1 1 5C9306F4
P 5800 6400
F 0 "C3" H 5915 6446 50  0000 L CNN
F 1 "100n" H 5915 6355 50  0000 L CNN
F 2 "Capacitor_THT:C_Rect_L7.0mm_W6.0mm_P5.00mm" H 5838 6250 50  0001 C CNN
F 3 "~" H 5800 6400 50  0001 C CNN
	1    5800 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 6250 5800 6150
Connection ~ 5800 6150
Wire Wire Line
	5800 6550 5800 6650
Connection ~ 5800 6650
Wire Wire Line
	5800 6650 6200 6650
$Comp
L Transistor_BJT:BC337 Q1
U 1 1 5C96527D
P 6100 5350
F 0 "Q1" H 6291 5396 50  0000 L CNN
F 1 "BC337" H 6291 5305 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 6300 5275 50  0001 L CIN
F 3 "http://www.nxp.com/documents/data_sheet/BC817_BC817W_BC337.pdf" H 6100 5350 50  0001 L CNN
	1    6100 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 7450 2900 6650
Wire Wire Line
	2900 6650 3250 6650
Wire Wire Line
	2950 6450 3250 6450
Wire Wire Line
	2950 6450 2950 6350
Wire Wire Line
	1000 6950 1100 6950
$Comp
L Relay:G6B-2214P K1
U 1 1 5C97D81C
P 1650 5000
F 0 "K1" V 983 5000 50  0000 C CNN
F 1 "G6B-2214P" V 1074 5000 50  0000 C CNN
F 2 "Relay_THT:Relay_DPST_Omron_G6B-2214" H 2150 4950 50  0001 L CNN
F 3 "https://www.google.de/url?sa=t&rct=j&q=&esrc=s&source=web&cd=1&ved=2ahUKEwihifaE5ZrhAhULmbQKHbfRBMoQFjAAegQIAhAC&url=https%3A%2F%2Fomronfs.omron.com%2Fen_US%2Fecb%2Fproducts%2Fpdf%2Fen-g6b.pdf&usg=AOvVaw02wmGURHzVx2kTFTmpAmEI" H 1550 5000 50  0001 C CNN
	1    1650 5000
	0    -1   1    0   
$EndComp
Wire Wire Line
	1000 6450 2100 6450
Wire Wire Line
	2100 5100 1950 5100
Wire Wire Line
	2100 5100 2100 5400
Wire Wire Line
	2100 5400 1950 5400
Wire Wire Line
	1350 5400 1100 5400
Connection ~ 1100 5400
Wire Wire Line
	1100 5400 1100 6950
Wire Wire Line
	2100 5400 2100 6450
Connection ~ 2100 5400
Wire Wire Line
	6200 5150 6200 4200
Wire Wire Line
	6200 4200 2250 4200
Wire Wire Line
	1100 4200 1100 4700
Wire Wire Line
	1100 4700 1350 4700
Connection ~ 2250 4200
Wire Wire Line
	2250 4200 1100 4200
Wire Wire Line
	4250 6150 4250 4700
Wire Wire Line
	4250 4700 2250 4700
Connection ~ 4250 6150
Connection ~ 2250 4700
Wire Wire Line
	2250 4700 1950 4700
Wire Wire Line
	1100 7450 2600 7450
Connection ~ 2950 6450
Wire Wire Line
	2500 6450 2600 6450
Connection ~ 2100 6450
Wire Wire Line
	2100 6450 2200 6450
Connection ~ 2600 6450
Wire Wire Line
	2600 6450 2950 6450
Wire Wire Line
	2600 7100 2600 7450
Connection ~ 2600 7450
Wire Wire Line
	2600 7450 2900 7450
Wire Wire Line
	2600 6800 2600 6450
$EndSCHEMATC