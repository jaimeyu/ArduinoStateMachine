/*
    State Machine Tutorial
    Copyright (C) 2011 Jaime Yu
    www.jaimeyu.com || ask.jaimeyu.com 
    Built for my tutorial on State Machines: http://s.jaimeyu.com/yaS7 

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

//use the TimerOne library to use the timer
#include "TimerOne.h"

const int baudRate = 9600;

//enumerate our LED pins
enum LEDS {
  LED0,
  LED1,
  LED2,
  LED3
};

struct 
{
  byte pin;
  bool isOn;  
}manageLed;

struct process
{
  char *name;
  int *function = (void*);
};

struct
{
  int *cur;
  int q[8]; //limit of 8 process in queue
} manageProcess; 

int cmdLoop [] = {
  
  
};

void blinkblink();

process blinkLed; 
blinkLed.name = "Blink LED";
blinkLed.function = (void*)blinkblink;



const int MAX_LEDS = 4;

manageLed leds[MAX_LEDS];


void blinkLeds()
{
}

void sayHappyBirthday()
{
}

void checkButton()
{
}

struct 
{
  long cur;
  
} timer;

/*
Function: ISR_CLOCK
DESCRIPTION: This function is our base timer for the project.

We will be setting the timer interrupt to every 100 uS.
Note that the Arduino already uses TIMER0 of the Atmega for its own clock.
*/
void ISR_CLOCK()
{
  timer.cur++;
}

void setup()
{
  for(int i=0; i < MAX_LEDS; i++)
  {
    leds[i].pin = i + 2;
    leds[i].isOn = false;
  }
  
  //Setup done, activate the timer one interrupt
  Timer1.initialize(100); //100uS clock 
  Timer1.attachInterrupt(ISR_Clock);
}



void loop()
{
}
