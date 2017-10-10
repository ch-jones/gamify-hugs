void setup() {
  Serial.begin(9600);

}

void loop() {
 int sensor = analogRead(A0);
 Serial.write(sensor/4);
 // delay is used to keep the data flow going smoothly
 delay(10);
  
}
