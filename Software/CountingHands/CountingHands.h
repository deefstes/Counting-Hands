#define TEST_DELAY 500
//#define POTPIN A0
#define DISP_CLK 15
#define DISP_DIO 16
#define DIR_PIN 4
#define ROTARY_CLK A5
#define ROTARY_DT A4
#define ROTARY_SW A3
#define DIP_SW1 7
#define DIP_SW2 8

// Define state machine states
#define STATE_SET 0
#define STATE_CNT 1
#define STATE_HOLD 2
#define STATE_DONE 3

// Calibrate servos
#define SERVO_H_MIN 0
#define SERVO_H_MAX 180
#define SERVO_1_MIN 0
#define SERVO_1_MAX 150
#define SERVO_2_MIN 0
#define SERVO_2_MAX 150
#define SERVO_3_MIN 0
#define SERVO_3_MAX 160
#define SERVO_4_MIN 0
#define SERVO_4_MAX 150
#define SERVO_5_MIN 0
#define SERVO_5_MAX 150

// Define font for 7 segment displays
const uint8_t digits[] = {
 // XGFEDCBA
  0b00111111,    // 0
  0b00000110,    // 1
  0b01011011,    // 2
  0b01001111,    // 3
  0b01100110,    // 4
  0b01101101,    // 5
  0b01111101,    // 6
  0b00000111,    // 7
  0b01111111,    // 8
  0b01101111,    // 9
  0b00000000,    // blank
  0b01110110,    // H
  };
