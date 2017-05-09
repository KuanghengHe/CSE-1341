class Track {
  float y1=0-height/2;
  float y2=-1600;
  PImage  track1, track2;

  Track () { 
    track1=loadImage("track1.jpg");
    track2=loadImage("track2.jpg");
  }

  void runTrack(){ 
    
    imageMode(CORNERS);
    image(track1, 100, y1);
    image(track2, 100, y2); 


    if (y1>=800)
    y1=-1600;
    
    if (y2>=800)
    y2=-1600;

    y1+=speed;
    y2+=speed;
  }
}