class Car {
  
  PImage Car1;
  float x = width/2 - 40;
  float y = height - 100;
  float w = 0;
  float h = 0;
  color tColor = color(255,0,0);
  
  Car() {
   Car1 = toARGB(loadImage("Car1.jpg")); 
    setTransparency(tColor, Car1);
    w = Car1.width;
    h = Car1.height;
  }
  
  void setLocation() {  
    image(Car1,x,y);
  }

  PImage toARGB(PImage orig) {
    PImage newImg = createImage(orig.width, orig.height, ARGB);
    for (int i=0; i<orig.pixels.length; i++) {
      newImg.pixels[i] = orig.pixels[i];
    }
    return newImg;
  }
  
    void setTransparency(color c, PImage x) {
    for (int i=0; i<x.pixels.length; i++) {
      if (x.pixels[i] == c) {
        x.pixels[i] = color(0,0);
      }
    }
  }
}