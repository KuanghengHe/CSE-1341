class Track {
  float y1=0;
  float y2=-1200;
  PImage  track1, track2;

  Track () { 
    track1=loadImage("track1.png");
    track2=loadImage("track2.png");
  }

  void runTrack(){ 
    
    imageMode(CORNERS);
    image(track1, 100, y1);
    image(track2, 100, y2); 


    if (y1>=1200)
    y1=-1200;
    
    if (y2>=1200)
    y2=-1200;

    y1+=speed;
    y2+=speed;
  }
}