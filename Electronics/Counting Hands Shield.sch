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
LIBS:MaximIntegrated
LIBS:Custom
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
L CONN_01X03 SW1
U 1 1 57CDC364
P 3350 5400
F 0 "SW1" H 3350 5600 50  0000 C CNN
F 1 "Direction" V 3450 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03" H 3350 5400 50  0001 C CNN
F 3 "" H 3350 5400 50  0000 C CNN
	1    3350 5400
	0    1    1    0   
$EndComp
NoConn ~ 3050 2600
NoConn ~ 3050 2700
NoConn ~ 3050 2800
NoConn ~ 4500 2300
NoConn ~ 4500 2400
NoConn ~ 3050 3400
NoConn ~ 3050 3500
NoConn ~ 3050 3600
NoConn ~ 3050 3700
NoConn ~ 4500 3800
NoConn ~ 4500 3900
NoConn ~ 4500 4000
NoConn ~ 4500 4100
$Comp
L CONN_01X05 P6
U 1 1 57DFE266
P 3900 5400
F 0 "P6" H 3900 5700 50  0000 C CNN
F 1 "Rotary" V 4000 5400 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x05" H 3900 5400 50  0001 C CNN
F 3 "" H 3900 5400 50  0000 C CNN
	1    3900 5400
	0    1    1    0   
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
L DIP_Switch_2 SW2
U 1 1 57E00F78
P 5850 1550
F 0 "SW2" H 5775 1400 60  0000 C CNN
F 1 "Default Interval" H 5850 1700 60  0000 C CNN
F 2 "Buttons_Switches_ThroughHole:SW_DIP_x2_Slide" H 5850 1400 60  0001 C CNN
F 3 "" H 5850 1400 60  0001 C CNN
	1    5850 1550
	1    0    0    -1  
$EndComp
Connection ~ 5150 4500
Connection ~ 5550 4500
Connection ~ 5950 4500
Connection ~ 6350 4500
Connection ~ 6750 4500
Connection ~ 5250 4400
Connection ~ 5650 4400
Connection ~ 6050 4400
Connection ~ 6450 4400
Wire Wire Line
	4850 2600 4500 2600
Wire Wire Line
	4500 2800 5350 2800
Wire Wire Line
	4500 2900 5750 2900
Wire Wire Line
	5150 3300 5150 3750
Wire Wire Line
	5150 3750 6150 3750
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
	3350 5200 3350 4300
Wire Wire Line
	3350 4300 4750 4300
Wire Wire Line
	4750 4300 4750 2700
Wire Wire Line
	4750 2700 4500 2700
Connection ~ 4750 4400
Connection ~ 4650 4500
Connection ~ 3450 4500
Wire Wire Line
	2850 1900 2850 4400
Connection ~ 3250 4400
Wire Wire Line
	2750 4500 2750 3100
Wire Wire Line
	2850 3300 3050 3300
Wire Wire Line
	2750 3100 3050 3100
Wire Wire Line
	3450 5200 3450 4500
Wire Wire Line
	3250 5200 3250 4400
Wire Wire Line
	5350 2800 5350 5200
Wire Wire Line
	4850 2600 4850 5200
Wire Wire Line
	4750 4400 4750 5200
Wire Wire Line
	4650 4500 4650 5200
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
Wire Wire Line
	6950 3950 6950 5200
Wire Wire Line
	3050 3100 3050 3200
Wire Wire Line
	6550 3850 6550 5200
Wire Wire Line
	8000 1900 2850 1900
Connection ~ 2850 3300
Connection ~ 6600 1900
Wire Wire Line
	4100 5200 4100 4500
Connection ~ 4100 4500
Wire Wire Line
	4000 5200 4000 4400
Connection ~ 4000 4400
Wire Wire Line
	3050 2500 2650 2500
Wire Wire Line
	2650 2500 2650 4600
Wire Wire Line
	2650 4600 3900 4600
Wire Wire Line
	3900 4600 3900 5200
Wire Wire Line
	3800 5200 3800 4700
Wire Wire Line
	3800 4700 2550 4700
Wire Wire Line
	2550 4700 2550 2400
Wire Wire Line
	2550 2400 3050 2400
Wire Wire Line
	3050 2300 2450 2300
Wire Wire Line
	2450 2300 2450 4800
Wire Wire Line
	2450 4800 3700 4800
Wire Wire Line
	3700 4800 3700 5200
Wire Wire Line
	4500 3700 5250 3700
Wire Wire Line
	5250 3700 5250 1600
Wire Wire Line
	5250 1600 5500 1600
Wire Wire Line
	5500 1500 5150 1500
Wire Wire Line
	5150 1500 5150 3000
Wire Wire Line
	5150 3000 4500 3000
Wire Wire Line
	6200 1600 6600 1600
Wire Wire Line
	6200 1500 6600 1500
Connection ~ 6600 1600
Wire Wire Line
	6150 3750 6150 5200
Wire Wire Line
	5750 2900 5750 5200
Wire Wire Line
	2850 4400 6850 4400
Text Label 3400 3000 0    60   ~ 0
Vin
Text Label 3400 3100 0    60   ~ 0
GND
Text Label 3400 3200 0    60   ~ 0
GND
Text Label 3400 3300 0    60   ~ 0
5V
Text Label 3400 3400 0    60   ~ 0
3.3V
Text Label 3400 3500 0    60   ~ 0
Reset
Text Label 3400 3600 0    60   ~ 0
5V
Text Label 3400 3700 0    60   ~ 0
NC
$Comp
L Battery BT1
U 1 1 57E7F8C9
P 1700 3150
F 0 "BT1" H 1800 3200 50  0000 L CNN
F 1 "7-12V" H 1800 3100 50  0000 L CNN
F 2 "Terminal_Blocks:TerminalBlock_Pheonix_MKDS1.5-2pol" V 1700 3190 50  0001 C CNN
F 3 "" V 1700 3190 50  0000 C CNN
	1    1700 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 3000 1700 3000
Wire Wire Line
	1700 3300 2750 3300
Connection ~ 2750 3300
Text Label 1700 3300 0    60   ~ 0
GND
Text Label 1700 3000 0    60   ~ 0
Vin
Text Label 2850 3300 0    60   ~ 0
5V
Wire Wire Line
	6600 1500 6600 1900
Wire Wire Line
	2750 4500 8100 4500
$Comp
L CONN_01X04 P?
U 1 1 57EFA040
P 8600 2450
F 0 "P?" H 8600 2700 50  0000 C CNN
F 1 "CONN_01X04" V 8700 2450 50  0000 C CNN
F 2 "" H 8600 2450 50  0000 C CNN
F 3 "" H 8600 2450 50  0000 C CNN
	1    8600 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 2400 8400 2400
Wire Wire Line
	8000 1900 8000 2400
Wire Wire Line
	8400 2300 8100 2300
Wire Wire Line
	8100 2300 8100 4500
$EndSCHEMATC
