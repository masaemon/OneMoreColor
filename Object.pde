class Object {
  float x;
  float y;
  float spdX;
  float spdY;
  float ballSize = 10;

  void move() {
    if (x < 0) x = 850;
    x -= spdX;
  }

  void display() {
    fill(0, 255, 255);
    ellipse(x, y, ballSize, ballSize);
  }
}
