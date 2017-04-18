class Car {
  
  PImage Car1;
  
  Car() {
   Car1 = loadImage("Car1.jpg"); 
  }
  
  void drawCar() {
    image(Car1,600,400);
  }
}