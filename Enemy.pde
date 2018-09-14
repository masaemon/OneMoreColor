class Enemy extends Object {
  float x;
  float y;
  float spdX;
  float spdY;
  int ballSize = 10;

  Enemy() {
    x = 850 + random(0, 100);
    y = 20 + random(0, height-20);
    spdX = random(2, 5);
  }
  
  void move() {
    if (x < 0) {
      x = 850;
      y = 20 + random(0, height-20);
      spdX = random(2, 5);
    }
    x -= spdX;
  }
  
  void display(){
    fill(255, 0, 0);
    ellipse(x, y, ballSize, ballSize);
  }
}
