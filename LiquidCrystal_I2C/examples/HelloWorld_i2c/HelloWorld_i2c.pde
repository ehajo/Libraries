// eHaJo.de
// Democode for I2C-Display-Adapter
// www.eHaJo.de


#include <Wire.h>  // Comes with Arduino IDE
#include <LiquidCrystal_I2C.h>

// Pin-Definition for I2C-Adapter
//                    addr, en,rw,rs,d4,d5,d6,d7,bl,backligh-polarity
LiquidCrystal_I2C lcd(0x3f, 2, 1, 0, 3, 4, 5, 6, 7, POSITIVE);

void setup()
{
  lcd.begin(16,2);  // Setup the Display

  // Backlight-Blink:
  for(int i = 0; i< 3; i++)
  {
    lcd.backlight();
    delay(150);
    lcd.noBacklight();
    delay(150);
  }

  // Backlight on:
  lcd.backlight();

  lcd.setCursor(0,0);   // Cursor position
  lcd.print("I2C-LCD-Adapter");
  lcd.setCursor(0,1);
  lcd.print("www.eHaJo.de"); 
}

void loop()
{
  // Nothing to do here...
}