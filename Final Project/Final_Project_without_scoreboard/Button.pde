class Button {
  float posX, posY, sizeX, sizeY;
  color cButton;
  color cNormal = color(185);
  color cCover = color(125, 180, 200);
  color cPressed = color(125, 125, 255);
  boolean clicked = false;

  void update() {
    if(mousePressed){
       if(mouseX>=posX-sizeX/2 && mouseX<=posX+sizeX/2 && mouseY>=posY-sizeY/2 && mouseY<=posY+sizeY/2){
         cButton = cPressed;
         clicked=true;
       }else{
         cButton = cNormal;
       }
    }else if(!clicked){
       if (mouseX>=posX-sizeX/2 && mouseX<=posX+sizeX/2 && mouseY>=posY-sizeY/2 && mouseY<=posY+sizeY/2){
         cButton = cCover;
       }else{
         cButton = cNormal;
       }
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
    fill(120, 120, 60);
    text(label, x, y);
  }


  void create(int x, int y, int xs, int ys, String label) {
    this.display(x, y, xs, ys, label);
    this.update();
  }
}