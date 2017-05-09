Car myCar;
Rival[] rival1, rival2, rival3;
Track myTrack;
Button bStart, bRestart, bEasy, bMedium, bHard;

float intialPositionX = 400;
float intialPositionY = 940;
float speed;
int score;
boolean crash = false;
float[] dist = new float[3];

void setup() {
  frameRate(60);
  size(800,1000);
  background(15);
  
  intialPositionX = 400;
  intialPositionY = 940;
  crash = false;
  dist = new float[3];
  
  myCar = new Car(intialPositionX,intialPositionY);
  myTrack = new Track();
  bStart = new Button(); 
  bRestart = new Button();
  bEasy = new Button(); 
  bMedium = new Button(); 
  bHard = new Button();
  
  rival1 = new Rival[256];
  rival2 = new Rival[256];
  rival3 = new Rival[256];

  for (int i=1; i<=255; i++) {
    dist[0]=random(800, 1500);
    rival1[i] = new Rival(1, 0-(i*dist[0]));
    dist[1]=random(800, 1500);
    if (dist[1]<=dist[0]+200 || dist[1]<=dist[2]+200) {
      dist[1]+=500;   
    }
    rival2[i] = new Rival(2, 0-(i*dist[1]));
    dist[2]=random(800, 1500);
    rival3[i] = new Rival(3, 0-(i*dist[2]));
  }
}

void draw() {

  background(15);
  myTrack.runTrack();
  
  for (int i=1; i<=255; i++) {
    rival1[i].startCar();
    if (rival1[i].y>=myCar.y-40 && rival1[i].x<=myCar.x+60 && rival1[i].x>=myCar.x-60 && rival1[i].y<=height+20) {
      crash=true;
    }
    rival2[i].startCar();
    if (rival2[i].y>=myCar.y-40 && rival2[i].x<=myCar.x+60 && rival2[i].x>=myCar.x-60 && rival2[i].y<=height+20) {
      crash=true;    
    }
    rival3[i].startCar();
    if (rival3[i].y>=myCar.y-40 && rival3[i].x<=myCar.x+60 && rival3[i].x>=myCar.x-60 && rival3[i].y<=height+20) {
      crash=true;
    }
  } //<>//
  
  if (crash == true) {
    fill(255,0,0);
    textAlign(CENTER, CENTER);
    textSize(72);
    text("GAME OVER", 400, 300);
    textSize(48);
    fill(160, 160, 30);
    text("Your Score:",400,500);
    text(score,400,550);
    fill(255);
    bRestart.create(400, 700, 400, 50, "RESTART");
    speed=0;
    if(bRestart.clicked)setup();
  }
  if (bStart.clicked==false) {
    speed = 0;
    score = 0;
    textAlign(CENTER, CENTER);
    textSize(72);
    fill(225, 70, 30);
    text("Pixel Race", 400, 100);
    textSize(36);
     fill(120, 120, 60,200);
    text("Press WASD to control your race car", 400, 300);
    fill(160, 160, 30);
    text("Select the level:", 400, 400);
    fill(125, 125, 200,200);
    noStroke();  
    bEasy.create(200, 500, 128, 50, "Easy");
    bMedium.create(400, 500, 128, 50, "Medium");
    bHard.create(600, 500, 128, 50, "Hard");
    bStart.create(400, 700, 400, 50, "START GAME");
  }

    if (bEasy.clicked==true || bMedium.clicked==true || bHard.clicked==true) {         
      if (bStart.clicked==true && crash==false) {
        if (bEasy.clicked==true) {           
          speed=8;
          score = score + 1;
        }
        if (bMedium.clicked==true) {
          speed=12;
          score = score + 2;
        }
        if (bHard.clicked==true) {
          speed=15;
          score = score + 3;
        }
        textAlign(CORNER, CENTER);
        textSize(24);
        fill(225);
        text("Score:",20,40);
        text(score,110,40);
        myCar.display();
      } 
    } else {
      bStart.clicked = false;
   }
} //<>//