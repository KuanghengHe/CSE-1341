class block {
  float x = 0;
  float y = 0;
  float blockSize = 10;
  
  block(float newX, float newY, float newSize) {
    x = newX;
    y = newY;
    blockSize = newSize;
  }  
    void drawBlock() {
    stroke(0);
    strokeWeight(3);
    rect(x,y,blockSize,blockSize);
  }
}