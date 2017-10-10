import processing.serial.*;

Serial myPort;

int diameter;

void setup(){
  size(255, 255);
// Serial.list() will show you the device name in the console  
//println(Serial.list());
//check portName against port Arduino is using
String portName = "/dev/tty.usbmodem1411";
myPort = new Serial(this, portName, 9600);
}

void draw() {
  background(0);
  fill(255);
  ellipse(width/2, height/2, diameter, diameter);
}

void serialEvent(Serial myPort){
  diameter = myPort.read();
  
}