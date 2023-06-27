#include <Servo.h>

Servo myservo;
int pos=0;
void setup() {
  Serial.begin(9600);
  myservo.attach(11);
}

void loop() {
  if (Serial.available() > 0) {
    int angle = Serial.parseInt();
    for(pos=0;pos<angle;pos+=1){
      myservo.write(pos);
      delay(15);
    }

    for(pos=angle;pos>=0;pos-=1){
      myservo.write(pos);
      delay(15);
    }
      
//    myservo.write(angle);
  }
}
