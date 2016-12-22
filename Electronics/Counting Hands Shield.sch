EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:Counting Hands Shield-cache
EELAYER 25 0
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
L 74HC595 U1
U 1 1 57CC24AD
P 7350 3250
F 0 "U1" H 7500 3850 50  0000 C CNN
F 1 "74HC595" H 7350 2650 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 7350 3250 50  0001 C CNN
F 3 "" H 7350 3250 50  0000 C CNN
	1    7350 3250
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 57CC24FD
P 6150 3450
F 0 "C1" H 6175 3550 50  0000 L CNN
F 1 "1uF" H 6175 3350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Radial_D5_L11_P2" H 6188 3300 50  0001 C CNN
F 3 "" H 6150 3450 50  0000 C CNN
	1    6150 3450
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 57CC2B4B
P 8400 2800
F 0 "R1" V 8480 2800 50  0000 C CNN
F 1 "470R" V 8400 2800 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 2800 50  0001 C CNN
F 3 "" H 8400 2800 50  0000 C CNN
	1    8400 2800
	0    1    1    0   
$EndComp
$Comp
L R R2
U 1 1 57CC2D31
P 8400 2900
F 0 "R2" V 8480 2900 50  0000 C CNN
F 1 "470R" V 8400 2900 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 2900 50  0001 C CNN
F 3 "" H 8400 2900 50  0000 C CNN
	1    8400 2900
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 57CC2DEB
P 8400 3000
F 0 "R3" V 8480 3000 50  0000 C CNN
F 1 "470R" V 8400 3000 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 3000 50  0001 C CNN
F 3 "" H 8400 3000 50  0000 C CNN
	1    8400 3000
	0    1    1    0   
$EndComp
$Comp
L R R8
U 1 1 57CC2E5C
P 8400 3500
F 0 "R8" V 8480 3500 50  0000 C CNN
F 1 "470R" V 8400 3500 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 3500 50  0001 C CNN
F 3 "" H 8400 3500 50  0000 C CNN
	1    8400 3500
	0    -1   -1   0   
$EndComp
$Comp
L R R7
U 1 1 57CC2E9B
P 8400 3400
F 0 "R7" V 8480 3400 50  0000 C CNN
F 1 "470R" V 8400 3400 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 3400 50  0001 C CNN
F 3 "" H 8400 3400 50  0000 C CNN
	1    8400 3400
	0    -1   -1   0   
$EndComp
$Comp
L R R6
U 1 1 57CC2EEE
P 8400 3300
F 0 "R6" V 8480 3300 50  0000 C CNN
F 1 "470R" V 8400 3300 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 3300 50  0001 C CNN
F 3 "" H 8400 3300 50  0000 C CNN
	1    8400 3300
	0    -1   -1   0   
$EndComp
$Comp
L R R5
U 1 1 57CC2F19
P 8400 3200
F 0 "R5" V 8480 3200 50  0000 C CNN
F 1 "470R" V 8400 3200 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 3200 50  0001 C CNN
F 3 "" H 8400 3200 50  0000 C CNN
	1    8400 3200
	0    -1   -1   0   
$EndComp
$Comp
L R R4
U 1 1 57CC2F64
P 8400 3100
F 0 "R4" V 8480 3100 50  0000 C CNN
F 1 "470R" V 8400 3100 50  0000 C CNN
F 2 "Resistors_ThroughHole:Resistor_Horizontal_RM10mm" V 8330 3100 50  0001 C CNN
F 3 "" H 8400 3100 50  0000 C CNN
	1    8400 3100
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X08 P1
U 1 1 57CD8C6B
P 4300 2650
F 0 "P1" H 4300 3100 50  0000 C CNN
F 1 "Arduino P0-P7" V 4400 2650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 4300 2650 50  0001 C CNN
F 3 "" H 4300 2650 50  0000 C CNN
	1    4300 2650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X10 P2
U 1 1 57CD8CD2
P 4300 3650
F 0 "P2" H 4300 4200 50  0000 C CNN
F 1 "Arduino P8-SCL" V 4400 3650 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10" H 4300 3650 50  0001 C CNN
F 3 "" H 4300 3650 50  0000 C CNN
	1    4300 3650
	-1   0    0    -1  
$EndComp
$Comp
L CONN_01X06 P3
U 1 1 57CD8D33
P 3250 2550
F 0 "P3" H 3250 2900 50  0000 C CNN
F 1 "Arduino A5-A0" V 3350 2550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06" H 3250 2550 50  0001 C CNN
F 3 "" H 3250 2550 50  0000 C CNN
	1    3250 2550
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P4
U 1 1 57CD8D7C
P 3250 3350
F 0 "P4" H 3250 3800 50  0000 C CNN
F 1 "Arduino Vin-Blank" V 3350 3350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 3250 3350 50  0001 C CNN
F 3 "" H 3250 3350 50  0000 C CNN
	1    3250 3350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 P7
U 1 1 57CDA10A
P 4750 5400
F 0 "P7" H 4750 5600 50  0000 C CNN
F 1 "Servo_H" V 4850 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 4750 5400 50  0001 C CNN
F 3 "" H 4750 5400 50  0000 C CNN
	1    4750 5400
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P8
U 1 1 57CDA267
P 5250 5400
F 0 "P8" H 5250 5600 50  0000 C CNN
F 1 "Servo_1" V 5350 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5250 5400 50  0001 C CNN
F 3 "" H 5250 5400 50  0000 C CNN
	1    5250 5400
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P9
U 1 1 57CDA2CC
P 5650 5400
F 0 "P9" H 5650 5600 50  0000 C CNN
F 1 "Servo_2" V 5750 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 5650 5400 50  0001 C CNN
F 3 "" H 5650 5400 50  0000 C CNN
	1    5650 5400
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P10
U 1 1 57CDA325
P 6050 5400
F 0 "P10" H 6050 5600 50  0000 C CNN
F 1 "Servo_3" V 6150 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6050 5400 50  0001 C CNN
F 3 "" H 6050 5400 50  0000 C CNN
	1    6050 5400
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P11
U 1 1 57CDA382
P 6450 5400
F 0 "P11" H 6450 5600 50  0000 C CNN
F 1 "Servo_4" V 6550 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6450 5400 50  0001 C CNN
F 3 "" H 6450 5400 50  0000 C CNN
	1    6450 5400
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X03 P12
U 1 1 57CDA3D3
P 6850 5400
F 0 "P12" H 6850 5600 50  0000 C CNN
F 1 "Servo_5" V 6950 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 6850 5400 50  0001 C CNN
F 3 "" H 6850 5400 50  0000 C CNN
	1    6850 5400
	0    -1   1    0   
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 57CD8A80
P 9150 3850
F 0 "P6" H 9150 3950 50  0000 C CNN
F 1 "LEDs Cat" H 9250 3850 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01" H 9150 3850 50  0001 C CNN
F 3 "" H 9150 3850 50  0000 C CNN
	1    9150 3850
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X08 P5
U 1 1 57CDBF40
P 9150 3150
F 0 "P5" H 9150 3600 50  0000 C CNN
F 1 "LEDs Anodes" V 9250 3150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08" H 9150 3150 50  0001 C CNN
F 3 "" H 9150 3150 50  0000 C CNN
	1    9150 3150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X03 VR1
U 1 1 57CDC305
P 3850 5400
F 0 "VR1" H 3850 5600 50  0000 C CNN
F 1 "100K" V 3950 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3850 5400 50  0001 C CNN
F 3 "" H 3850 5400 50  0000 C CNN
	1    3850 5400
	0    1    1    0   
$EndComp
$Comp
L CONN_01X03 SW1
U 1 1 57CDC364
P 3350 5400
F 0 "SW1" H 3350 5600 50  0000 C CNN
F 1 "SPDT" V 3450 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3350 5400 50  0001 C CNN
F 3 "" H 3350 5400 50  0000 C CNN
	1    3350 5400
	0    1    1    0   
$EndComp
NoConn ~ 3050 2400
NoConn ~ 3050 2500
NoConn ~ 3050 2600
NoConn ~ 3050 2700
NoConn ~ 3050 2800
NoConn ~ 3050 3000
NoConn ~ 4500 2300
NoConn ~ 4500 2400
NoConn ~ 4500 3000
NoConn ~ 3050 3400
NoConn ~ 3050 3500
NoConn ~ 3050 3600
NoConn ~ 3050 3700
NoConn ~ 4500 3700
NoConn ~ 4500 3800
NoConn ~ 4500 3900
NoConn ~ 4500 4000
NoConn ~ 4500 4100
NoConn ~ 8050 3700
Wire Wire Line
	6150 3600 6650 3600
Connection ~ 6150 3300
Wire Wire Line
	8050 2800 8250 2800
Wire Wire Line
	8050 2900 8250 2900
Wire Wire Line
	8050 3000 8250 3000
Wire Wire Line
	8050 3100 8250 3100
Wire Wire Line
	8050 3200 8250 3200
Wire Wire Line
	8050 3300 8250 3300
Wire Wire Line
	8050 3400 8250 3400
Wire Wire Line
	8050 3500 8250 3500
Wire Wire Line
	8550 2800 8950 2800
Wire Wire Line
	8550 2900 8950 2900
Wire Wire Line
	8550 3000 8950 3000
Wire Wire Line
	8550 3100 8950 3100
Wire Wire Line
	8550 3200 8950 3200
Wire Wire Line
	8550 3300 8950 3300
Wire Wire Line
	8550 3400 8950 3400
Wire Wire Line
	8550 3500 8950 3500
Wire Wire Line
	5250 3600 4500 3600
Connection ~ 5150 4500
Connection ~ 5550 4500
Connection ~ 5950 4500
Connection ~ 6350 4500
Connection ~ 6750 4500
Wire Wire Line
	5950 2300 5950 4400
Connection ~ 5950 4400
Connection ~ 5250 4400
Connection ~ 5650 4400
Connection ~ 6050 4400
Connection ~ 6450 4400
Wire Wire Line
	4850 2600 4500 2600
Wire Wire Line
	4500 2800 5350 2800
Wire Wire Line
	4500 2500 6650 2500
Wire Wire Line
	6650 2500 6650 2800
Wire Wire Line
	4500 2900 5750 2900
Wire Wire Line
	5150 3300 5150 3750
Wire Wire Line
	5150 3750 6150 3750
Connection ~ 6650 3600
Wire Wire Line
	5150 3300 4500 3300
Wire Wire Line
	4500 3400 5050 3400
Wire Wire Line
	5050 3400 5050 3850
Wire Wire Line
	5050 3850 6550 3850
Wire Wire Line
	6950 3950 4950 3950
Wire Wire Line
	4950 3950 4950 3500
Wire Wire Line
	4950 3500 4500 3500
Wire Wire Line
	6650 3400 6650 3900
Wire Wire Line
	8850 4500 8850 3850
Wire Wire Line
	8850 3850 8950 3850
Wire Wire Line
	3350 5200 3350 4300
Wire Wire Line
	3350 4300 4750 4300
Wire Wire Line
	4750 4300 4750 2700
Wire Wire Line
	4750 2700 4500 2700
Connection ~ 4750 4400
Connection ~ 4650 4500
Connection ~ 3750 4400
Connection ~ 3950 4500
Wire Wire Line
	3850 5200 3850 4200
Wire Wire Line
	3850 4200 2950 4200
Wire Wire Line
	2950 4200 2950 2300
Wire Wire Line
	2950 2300 3050 2300
Connection ~ 3450 4500
Wire Wire Line
	2850 3300 2850 4400
Connection ~ 3250 4400
Wire Wire Line
	2750 4500 8850 4500
Wire Wire Line
	2750 4500 2750 3100
Wire Wire Line
	7050 3800 7050 4500
Wire Wire Line
	6650 3900 7050 3900
Wire Wire Line
	7050 2300 7050 2700
Connection ~ 5950 3100
Connection ~ 7050 4500
Connection ~ 7050 3900
Wire Wire Line
	2850 3300 3050 3300
Wire Wire Line
	2750 3100 3050 3100
Wire Wire Line
	5250 3000 5250 3600
Wire Wire Line
	5250 3000 6650 3000
Wire Wire Line
	3950 5200 3950 4500
Wire Wire Line
	3750 5200 3750 4400
Wire Wire Line
	3450 5200 3450 4500
Wire Wire Line
	3250 5200 3250 4400
Wire Wire Line
	5350 2800 5350 5200
Wire Wire Line
	4850 2600 4850 5200
Wire Wire Line
	6650 3300 6050 3300
Wire Wire Line
	6050 3300 6050 3200
Wire Wire Line
	6050 3200 4500 3200
Wire Wire Line
	4750 4400 4750 5200
Wire Wire Line
	4650 4500 4650 5200
Wire Wire Line
	2850 4400 6850 4400
Wire Wire Line
	5150 5200 5150 4500
Wire Wire Line
	5250 5200 5250 4400
Wire Wire Line
	5550 5200 5550 4500
Wire Wire Line
	5650 5200 5650 4400
Wire Wire Line
	5950 5200 5950 4500
Wire Wire Line
	6050 5200 6050 4400
Wire Wire Line
	6350 5200 6350 4500
Wire Wire Line
	6450 4400 6450 5200
Wire Wire Line
	6750 5200 6750 4500
Wire Wire Line
	6850 4400 6850 5200
$Comp
L JUMPER JP1
U 1 1 57CF5A4B
P 5750 4850
F 0 "JP1" H 5750 5000 50  0000 C CNN
F 1 "JUMPER" H 5750 4770 50  0000 C CNN
F 2 "Personal:Jumper" H 5750 4850 50  0001 C CNN
F 3 "" H 5750 4850 50  0000 C CNN
	1    5750 4850
	0    1    1    0   
$EndComp
$Comp
L JUMPER JP2
U 1 1 57CF5A98
P 6950 4850
F 0 "JP2" H 6950 5000 50  0000 C CNN
F 1 "JUMPER" H 6950 4770 50  0000 C CNN
F 2 "Personal:Jumper" H 6950 4850 50  0001 C CNN
F 3 "" H 6950 4850 50  0000 C CNN
	1    6950 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 5200 5750 5150
Wire Wire Line
	6950 5200 6950 5150
Wire Wire Line
	6950 4550 6950 3950
Wire Wire Line
	5750 2900 5750 4550
$Comp
L JUMPER JP3
U 1 1 57CF66D8
P 6150 4850
F 0 "JP3" H 6150 5000 50  0000 C CNN
F 1 "JUMPER" H 6150 4770 50  0000 C CNN
F 2 "Personal:Jumper" H 6150 4850 50  0001 C CNN
F 3 "" H 6150 4850 50  0000 C CNN
	1    6150 4850
	0    1    1    0   
$EndComp
$Comp
L JUMPER JP4
U 1 1 57CF6729
P 6550 4850
F 0 "JP4" H 6550 5000 50  0000 C CNN
F 1 "JUMPER" H 6550 4770 50  0000 C CNN
F 2 "Personal:Jumper" H 6550 4850 50  0001 C CNN
F 3 "" H 6550 4850 50  0000 C CNN
	1    6550 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 5200 6150 5150
Wire Wire Line
	6550 5200 6550 5150
Wire Wire Line
	6150 3750 6150 4550
Wire Wire Line
	6550 3850 6550 4550
Wire Wire Line
	5950 2300 7050 2300
$Comp
L JUMPER JP5
U 1 1 57CF8BA9
P 6300 3100
F 0 "JP5" H 6300 3250 50  0000 C CNN
F 1 "JUMPER" H 6300 3020 50  0000 C CNN
F 2 "Personal:Jumper" H 6300 3100 50  0001 C CNN
F 3 "" H 6300 3100 50  0000 C CNN
	1    6300 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 3100 6600 3100
Wire Wire Line
	6000 3100 5950 3100
Wire Wire Line
	3050 3100 3050 3200
$EndSCHEMATC