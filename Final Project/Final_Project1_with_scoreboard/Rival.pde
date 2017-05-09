class Rival {
  float x;
  float y;
  PImage Rival;


    Rival(float rPosX, float rPosY) {

    Rival=loadImage("rival"+int(random(1, 4))+".png");


    if (rPosX == 1) x = 180;
    if (rPosX == 2) x = 400;
    if (rPosX == 3) x = 620;

    y=rPosY;
  }

  void startCar() {

    imageMode(CENTER);
    image(Rival, x, y);
    y = y + speed;
  }
}