#include <Arduino.h>
#include <TM1637Display.h> // https://github.com/avishorp/TM1637
#include <ClickEncoder.h> // https://github.com/0xPIT/encoder/tree/arduino
#include <TimerOne.h> // http://playground.arduino.cc/Code/Timer1
#include <MsTimer2.h> // https://github.com/PaulStoffregen/MsTimer2
#include <Servo.h>
#include "CountingHands.h"

//#define PRINTSTATE_ON
//#define PRINTENC_ON

// Declare hardware devices
TM1637Display display(DISP_CLK, DISP_DIO);
//OneButton button(ROTARY_SW, false); // Ultimately this should form part of the rotary encoder but for now it's implemented with a standalone button
ClickEncoder *encoder;
Servo servoHand;
Servo servoFinger1;
Servo servoFinger2;
Servo servoFinger3;
Servo servoFinger4;
Servo servoFinger5;

// Global variables for operation
int fingersDirection = 0; // 0 = Count down, 1 = Count up
int machineState = STATE_SET;
int defaultH = 0;
int defaultM = 0;
int defaultS = 0;
int startH = 0;
int startM = 0;
int startS = 0;
int hours = startH;
int minutes = startM;
int seconds = startS;
int ms = 50;
int increment = 1;
int encVal_last, encVal, deltaV;
int fingers;
int _d1, _d2, _d3, _d4; // Display digits

void setup() {
  pinMode(DIR_PIN, INPUT);
  pinMode(DIP_SW1, INPUT);
  pinMode(DIP_SW2, INPUT);
  
  randomSeed(analogRead(0));
  Serial.begin(9600);

  // Instantiate click encoder
  encoder = new ClickEncoder(ROTARY_DT, ROTARY_CLK, ROTARY_SW, 2);
  encVal_last = -1;
  
  // Attach servos
  servoHand.attach(11);
  servoFinger1.attach(10);
  servoFinger2.attach(9);
  servoFinger3.attach(6);
  servoFinger4.attach(5);
  servoFinger5.attach(3);

  // Read direction switch
  fingersDirection = digitalRead(DIR_PIN);
  setFingers(10);

  // Read default interval
  int interval = digitalRead(DIP_SW1) + 2*digitalRead(DIP_SW2);
  switch (interval)
  {
    case 0:
      defaultH = 0;
      defaultM = 1;
      defaultS = 0;
      break;
    case 1:
      defaultH = 0;
      defaultM = 15;
      defaultS = 0;
      break;
    case 2:
      defaultH = 0;
      defaultM = 30;
      defaultS = 0;
      break;
    case 3:
      defaultH = 1;
      defaultM = 0;
      defaultS = 0;
      increment = 60;
      break;
  }
  startH = defaultH;
  startM = defaultM;
  startS = defaultS;

  // Set up timer 2
  MsTimer2::set(1, timerIsr); // 1ms period
  MsTimer2::start();
  
  display.setBrightness(0x08);
}

void loop() {
  ClickEncoder::Button b = encoder->getButton();
  if (b != ClickEncoder::Open) {
    switch (b) {
      case ClickEncoder::Pressed:
        break;
      case ClickEncoder::Held:
        buttonHold();
        break;
      case ClickEncoder::Released:
        break;
      case ClickEncoder::Clicked:
        buttonClick();
        break;
      case ClickEncoder::DoubleClicked:
        buttonDblClick();
        break;
    }
  }
  
  switch(machineState)
  {
    case STATE_SET:
      setting();
      break;
    case STATE_CNT:
      counting();
      fingers = timeToFingers(hours, minutes, seconds);
      setFingers(fingers);
      break;
    case STATE_HOLD:
      holding();
      break;
    case STATE_DONE:
      done();
      fingers = timeToFingers(hours, minutes, seconds);
      setFingers(fingers);
      break;
  }

  showTime(hours, minutes, seconds, ms>=50);
# ifdef PRINTSTATE_ON
    printState();
# endif
  delay(50);
}

void timerIsr() {
  encoder->service();
}

# ifdef PRINTSTATE_ON
void printState()
{  
  Serial.print(machineState); Serial.print(": ");
  Serial.print(defaultH); Serial.print("H ");
  Serial.print(defaultM); Serial.print("M ");
  Serial.print(defaultS); Serial.print("S | ");
  Serial.print(startH); Serial.print("H ");
  Serial.print(startM); Serial.print("M ");
  Serial.print(startS); Serial.print("S | ");
  Serial.print(hours); Serial.print("H ");
  Serial.print(minutes); Serial.print("M ");
  Serial.print(seconds); Serial.print("S ");
  Serial.print(ms); Serial.print("ms | Fingers = ");
  Serial.print(fingers);
  Serial.print(" | Encoder Val = "); Serial.print(encVal);
  Serial.println();
}
#endif

#ifdef PRINTENC_ON
void printEncoder()
{
  Serial.print("encVal="); Serial.print(encVal);
  Serial.print(", deltaV="); Serial.print(deltaV);
  Serial.print(", increment="); Serial.print(increment);
  Serial.println();
}
#endif

void setting()
{
  // Read direction switch
  fingersDirection = digitalRead(DIR_PIN);

  deltaV = encoder->getValue() * increment;
  encVal += deltaV;

  if (encVal != encVal_last) {
#   ifdef PRINTENC_ON
      printEncoder();
#   endif
    encVal_last = encVal;
    int totalS = startH*60*60+startM*60+startS + encVal;
    while(totalS < 0)
    {
      totalS += increment;
      encVal += increment;
    }
    while(totalS > 32400)
    {
      totalS -= increment;
      encVal -= increment;
    }
    hours = totalS/3600;
    minutes = (totalS-hours*3600)/60;
    seconds = (totalS-hours*3600-minutes*60);
    ms = 50;
  }
}

void counting()
{
  ms -= 5;
  while (ms<0)
  {
    ms += 100;
    seconds -= 1;
  }

  while (seconds<0)
  {
    seconds += 60;
    minutes -= 1;
  }

  while (minutes<0)
  {
    minutes += 60;
    hours -= 1;
  }

  while (hours<0)
  {
    hours = 0;
    minutes = 0;
    seconds = 0;
    machineState = STATE_DONE;
  }
}

void holding()
{
  ms -= 5;
  while (ms<0)
  {
    ms += 100;
  }
}

void done()
{
  ms -= 5;
  while (ms<0)
  {
    ms += 100;
  }
}

void buttonClick()
{
  switch (machineState)
  {
    case STATE_CNT:
      machineState = STATE_HOLD;
      break;
    case STATE_HOLD:
      machineState = STATE_CNT;
      break;
    case STATE_DONE:
      hours = startH;
      minutes = startM;
      seconds = startS;
      ms = 50;
      machineState = STATE_SET;
      encVal = 0;
      fingers = timeToFingers(hours, minutes, seconds);
      setFingers(fingers);
      break;
    case STATE_SET:
      startH = hours;
      startM = minutes;
      startS = seconds;
      machineState = STATE_CNT;
      encVal = 0;
      break;
  }
}

void buttonDblClick()
{
  switch (machineState)
  {
    case STATE_CNT:
      break;
    case STATE_HOLD:
      break;
    case STATE_DONE:
      break;
    case STATE_SET:
      increment = -1*increment+61; // Set increment to 1 or 60
      if (increment == 1)
        flashDigits(false, false, true, true, 4, 50);
      else
        flashDigits(true, true, false, false, 4, 50);
      break;
  }
}

void buttonHold()
{
  hours = startH;
  minutes = startM;
  seconds = startS;
  ms = 50;
  machineState = STATE_SET;
  encVal = 0;
}

void flashDigits(bool d1, bool d2, bool d3, bool d4, int cnt, int interval)
{
  int d1_alt, d2_alt, d3_alt, d4_alt;
  d1_alt = d1 ? 10 : _d1;
  d2_alt = d2 ? 10 : _d2;
  d3_alt = d3 ? 10 : _d3;
  d4_alt = d4 ? 10 : _d4;
  uint8_t digitsStd[] = { digits[_d1], digits[_d2]|(0x80), digits[_d3], digits[_d4] };
  uint8_t digitsAlt[] = { digits[d1_alt], digits[d2_alt]|(0x80), digits[d3_alt], digits[d4_alt] };

  for (int i=0; i<cnt; i++)
  {
    display.setSegments(digitsAlt);
    delay(interval);
    display.setSegments(digitsStd);
    delay(interval);
  }
}

void showDigits(int d1, int d2, int d3, int d4, bool colon)
{
  _d1 = d1;
  _d2 = d2;
  _d3 = d3;
  _d4 = d4;
  uint8_t data[] = { digits[d1], digits[d2]|(colon * 0x80), digits[d3], digits[d4] };
  display.setSegments(data);
}

void showDigits(int num, bool colon)
{
  int d1 = num/1000;
  int d2 = (num-d1*1000)/100;
  int d3 = (num-d1*1000-d2*100)/10;
  int d4 = (num-d1*1000-d2*100-d3*10);

  showDigits(d1, d2, d3, d4, colon);
}

void showTime(int h, int m, int s, bool colon)
{
  int d1, d2, d3, d4;
  
  if (h>0)
  {
    d1 = 11; // H
    d2 = h%10;
    d3 = m/10;
    d4 = m%10;
  }
  else
  {
    d1 = m/10;
    d2 = m%10;
    d3 = s/10;
    d4 = s%10;
  }

  showDigits(d1, d2, d3, d4, colon);
}

int timeToFingers(int h, int m, int s)
{
  // Read direction switch
  fingersDirection = digitalRead(DIR_PIN);
  
  int totalS = h*60*60+m*60+s;
  int totalS_start = startH*60*60+startM*60+startS;
  int fingers;
  if (fingersDirection == 0) // Count down
    fingers = min(min(map(totalS-1, 0, totalS_start, 1, 11), 10), totalS);
  else
  {
    if (totalS == 0)
      fingers = 10;
    else
      fingers = max(map(totalS-1, 0, totalS_start, 9, -1), 0);
  }
  return fingers;
}

void setServos(bool hand, bool finger1, bool finger2, bool finger3, bool finger4, bool finger5)
{
  int servoPosHand = SERVO_H_MIN;
  int servoPosFinger1 = SERVO_1_MIN;
  int servoPosFinger2 = SERVO_2_MIN;
  int servoPosFinger3 = SERVO_3_MIN;
  int servoPosFinger4 = SERVO_4_MIN;
  int servoPosFinger5 = SERVO_5_MIN;
  
  if (hand)
    servoPosHand = SERVO_H_MAX;
  if (finger1)
    servoPosFinger1 = SERVO_1_MAX;
  if (finger2)
    servoPosFinger2 = SERVO_2_MAX;
  if (finger3)
    servoPosFinger3 = SERVO_3_MAX;
  if (finger4)
    servoPosFinger4 = SERVO_4_MAX;
  if (finger5)
    servoPosFinger5 = SERVO_5_MAX;
  
  servoHand.write(servoPosHand);
  servoFinger1.write(servoPosFinger1);
  servoFinger2.write(servoPosFinger2);
  servoFinger3.write(servoPosFinger3);
  servoFinger4.write(servoPosFinger4);
  servoFinger5.write(servoPosFinger5);
}

void setFingers(int value)
{
  bool fullHand = value > 5;
  if (fullHand)
    value -= 5;
  
  switch(value)
  {
    case 0: setServos(fullHand, false, false, false, false, false); break;
    case 1: setServos(fullHand, false, true, false, false, false); break;
    case 2: setServos(fullHand, false, true, true, false, false); break;
    case 3: setServos(fullHand, false, false, true, true, true); break;
    case 4: setServos(fullHand, false, true, true, true, true); break;
    case 5: setServos(fullHand, true, true, true, true, true); break;
  }
}
