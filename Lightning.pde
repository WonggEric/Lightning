int startX = 0;  
int startY = 150; 
int endX = 0;    
int endY = 150;  

void setup() {
  size(800, 800); 
  strokeWeight(4); 
  background(20, 20, 50);
}

void draw() {
  cloud(100, 100);
  cloud(260, 150);
  cloud(425, 125);
  cloud(570, 75);
  cloud(600, 175);
  
  stroke(200, 150, 255);
}

void mousePressed() {
  startX = 100;
  startY = 425;
  endX = 100; 
  endY = 425; 
  drawLightning();
}

void drawLightning() {
  while (endX <= width) { 
    endX = startX + (int)(Math.random() * 10); 
    endY = startY + (int)(Math.random() * 19) - 9; 
    line(startY, startX, endY, endX); 
    startX = endX; 
    startY = endY;
  }
}

void cloud(float x, float y) {
  fill(80, 80, 90, 200);
  noStroke();
  
  ellipse(x, y, 100, 60);
  ellipse(x - 40, y + 10, 80, 50);
  ellipse(x + 40, y + 10, 80, 50);
  ellipse(x - 20, y - 20, 60, 40);
  ellipse(x + 20, y - 20, 60, 40);
  fill(50, 50, 100, 150);
  ellipse(x, y + 10, 100, 60);
  
}
