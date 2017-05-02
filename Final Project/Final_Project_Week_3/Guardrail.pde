class Guardrail {
  float grWidth = 30;
  float grLength = 60;
  float x1 = 0;
  float x2 = width - grWidth;
  float y = 0;
  float ySpeed = 2 * grLength;
  color c1;
  color c2;
  boolean exist = true;
  
  Guardrail() {
    c1 = color(240);
    c2 = color(225,0,0);
  }
  
  void drawShape() {
    stroke(1);
    fill(c1);
    rect(x1,y,grWidth,grLength);
    rect(x2,y,grWidth,grLength);
    fill(c2);
    rect(x1,y + grLength,grWidth,grLength);
    rect(x2,y + grLength,grWidth,grLength);
  }
  
  void move() {
    y = y + ySpeed;
    if (y > height) {
      exist = false;
    }
  }
  
}