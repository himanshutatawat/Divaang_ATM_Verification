// Library: Adafruit_Fingerprint
#include <Adafruit_Fingerprint.h> //Adafruit_Fingerprint Sensor Library
#include <SoftwareSerial.h>

int getFingerprintIDez();
int GreenLed = 9;
int RedLed = 8;
int Buzzer = 7;

SoftwareSerial mySerial(2, 3);  //activates serial communication on pin 2 & 3

Adafruit_Fingerprint finger = Adafruit_Fingerprint(&mySerial);

void setup()
{
  Serial.begin(9600);  // initialize the serial communications:
  pinMode(GreenLed, OUTPUT);  
  pinMode(RedLed, OUTPUT);  
  pinMode(Buzzer, OUTPUT);  
  finger.begin(57600);  
  digitalWrite(RedLed, LOW);
  digitalWrite(GreenLed, LOW);
  digitalWrite(Buzzer, LOW);
}

void loop()  // run over and over again
{
  getFingerprintID();
  delay(100);

  if (Serial.available() > 0) {
    int message = Serial.parseInt();
    if (message == 1) {
      tone(Buzzer, 1000, 5000); // play a 1kHz tone for 5s
    }
  }

}

uint8_t getFingerprintID()
{
  uint8_t p = finger.getImage();

  switch (p)
  {
    case FINGERPRINT_OK:
      break;
    case FINGERPRINT_NOFINGER:
      return p;
    case FINGERPRINT_PACKETRECIEVEERR:
      return p;
    case FINGERPRINT_IMAGEFAIL:
      return p;
    default:
      return p;
  }

  p = finger.image2Tz();
  switch (p)
  {
    case FINGERPRINT_OK:
      break;
    case FINGERPRINT_IMAGEMESS:
      return p;
    case FINGERPRINT_PACKETRECIEVEERR:
      return p;
    case FINGERPRINT_FEATUREFAIL:
      return p;
    case FINGERPRINT_INVALIDIMAGE:
      return p;
    default:
      return p;
  }

  // match finger with stored ID#
  p = finger.fingerFastSearch();
  if (p == FINGERPRINT_OK)
  {
    Serial.println(1);
    digitalWrite(Buzzer, HIGH);  
    digitalWrite(RedLed, LOW);
    digitalWrite(GreenLed, HIGH); 
    delay(150);
    digitalWrite(Buzzer, LOW);  
    delay(5000);
    digitalWrite(GreenLed, LOW);    
  }
  
  else if (p == FINGERPRINT_NOTFOUND)
  {
    Serial.println(0);
    digitalWrite(GreenLed, LOW); 
    
    for (int i=0; i<=2; i++)
    {
     digitalWrite(RedLed, HIGH);  
     digitalWrite(Buzzer, HIGH);  
     delay(200);
     digitalWrite(RedLed, LOW); 
     digitalWrite(Buzzer, LOW);  
     delay(200);
    }
        
    return p;
  }
  else
  {
    return p;
  }

}

// returns ID#
int getFingerprintIDez() {
  uint8_t p = finger.getImage();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.image2Tz();
  if (p != FINGERPRINT_OK)  return -1;

  p = finger.fingerFastSearch();
  if (p != FINGERPRINT_OK)  return -1;

}