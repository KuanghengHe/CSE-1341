Car myCar;
Rival[] rival1, rival2, rival3;
Track myTrack;
Button bStart, bRestart, bEasy, bMedium, bHard;

float intialPositionX = 400;
float intialPositionY = 940;
float speed;
boolean crash = false;
boolean startState = true;
float[] dist = new float[3];

void setup() {
  frameRate(60);
  size(800,1000);
  background(15);
  
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
    println(i);
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
    if (rival1[i].y>=myCar.y-40 && rival1[i].x<=myCar.x+50 && rival1[i].x>=myCar.x-50 && rival1[i].y<=height+20) {
      crash=true;
    }
    rival2[i].startCar();
    if (rival2[i].y>=myCar.y-40 && rival2[i].x<=myCar.x+50 && rival2[i].x>=myCar.x-50 && rival2[i].y<=height+20) {
      crash=true;    
    }
    rival3[i].startCar();
    if (rival3[i].y>=myCar.y-40 && rival3[i].x<=myCar.x+50 && rival3[i].x>=myCar.x-50 && rival3[i].y<=height+20) {
      crash=true;
    }
  } //<>// //<>//
  
  if (crash == true) {
    fill(255);
    textAlign(CENTER, CENTER);
    text("GAME OVER", width/2, height/2);
    bRestart.create(400, 400, 250, 50, "RESTART");
    speed=0;
  }
  if (bStart.clicked==false) {
    speed=0; 
    fill(160, 160, 30);
    textAlign(CENTER, CENTER);
    textSize(42);
    text("Select the level:", 400, 100);
    fill(125, 125, 200,200);
    noStroke();  
    bEasy.create(200, 250, 115, 115, "Easy");
    bMedium.create(400, 250, 115, 115, "Medium");
    bHard.create(600, 250, 115, 115, "Hard");
    bStart.create(400, 400, 250, 50, "START GAME");
  }

    if (bEasy.clicked==true || bMedium.clicked==true || bHard.clicked==true) {         
      if (bStart.clicked==true && crash==false) {
        if (bEasy.clicked==true) {           
          speed=8;
        }
        if (bMedium.clicked==true) {
          speed=12;
        }
        if (bHard.clicked==true) {
          speed=15;
        }
        
        myCar.display();
      } 
    } else {
      bStart.clicked = false;
   }
} //<>// //<>//