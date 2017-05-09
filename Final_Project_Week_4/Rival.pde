class Rival {
  float x;
  float y;
  PImage Rival;


    Rival(float rPosX, float rPosY) {

    Rival=loadImage("rival"+int(random(1, 4))+".png");


    if (rPosX == 1) x = 200;
    if (rPosX == 2) x = 400;
    if (rPosX == 3) x = 600;

    y=rPosY;
  }

  void startCar() {

    imageMode(CENTER);
    image(Rival, x, y);
    y = y + speed;
  }
}