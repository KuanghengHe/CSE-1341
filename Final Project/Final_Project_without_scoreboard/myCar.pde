class Car {
  float x;
  float y;
  PImage car;

  Car (float positionX, float positionY) {
    x = positionX;
    y = positionY;
    car=loadImage("mycar.png");
  }

  void display() {
    imageMode(CENTER);
    image(car, x, y);

    if ( key == 'A' || key == 'a' && x > 120)
      x = x - 5;
    if ( key == 'D' || key == 'd' && x < width - 120)
      x = x + 5;
    if ( key == 'S' || key == 's' && y < height - 120)
      y = y + 5;
    if ( key == 'W' || key == 'w' && y > height/2)
      y = y - 5;
  }

}