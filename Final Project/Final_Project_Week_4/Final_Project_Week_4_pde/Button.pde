class Button {
  float posX, posY, sizeX, sizeY;
  color cButton;
  color cNormal = color(255);
  color cCover = color(125, 180, 200);
  color cPressed = color(125, 125, 200);
  boolean clicked = false;

  void update() {
    
    if (mouseX<=posX-sizeX/2 && mouseX>=posX+sizeX/2 && mouseY<=posY-sizeY/2 && mouseY>=posY+sizeY/2 && mousePressed==true) {
      cButton=cNormal;
    }
    if (mouseX>=posX-sizeX/2 && mouseX<=posX+sizeX/2 && mouseY>=posY-sizeY/2 && mouseY<=posY+sizeY/2) {
      cButton = cCover;
      if (mousePressed==true) {
        cButton=cPressed;
        clicked=true;
      }
    } else if(mousePressed==false && clicked==false) {
      cButton=cNormal;
    }
  }


  void display(int x, int y, float xs, float ys, String label) {    
    posX=x; 
    posY=y; 
    sizeX=xs; 
    sizeY=ys;
    fill(cButton);
    rectMode(CENTER);
    rect(x, y, xs, ys);
    
    fill(0);
    textAlign(CENTER, CENTER);
    textSize(26);
    text(label, x, y);
  }


  void create(int x, int y, int xs, int ys, String label) {
    this.display(x, y, xs, ys, label);
    this.update();
  }
}