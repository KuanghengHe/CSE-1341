int cols = 7;
int rows = 7;
float blockSize = 100;
Car myCar;

block[][] board = new block[rows][cols];

void setup() {
  size(700,800);
  for (int i=0; i<rows; i++) {
    for (int j = 0; j<cols; j++) {
      board[i][j] = new block(j*blockSize, i*blockSize, blockSize);
      board[i][j].drawBlock();
    }
  }
  myCar = new Car();
}

void draw() {
  myCar.drawCar();
}