int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
PImage photo;

void setup() {
  size(300,400);
  background(0);
  photo = loadImage("cartoon-cloud-hi.png");
}
  
void draw() {
 image(photo,-150,-425);
}

void mousePressed() {
  stroke(random(255),random(255),random(255));
  
  while (endY <= 400) {
    line(startX,startY, endX, endY);
  
    startX = endX;
    startY = endY;
  
    endY = startY + (int)(Math.random() * 10);
    endX = startX + (int)(Math.random() * 19) - 9;
  }
  
  if (endY >= 400) {
    startX = 150;
    startY = 0;
    endX = 150;
    endY = 0;
  }
}

void keyPressed() {
  background(0);
}
