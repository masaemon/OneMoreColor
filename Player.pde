class Player {
  int theta = 45;
  float spd = 2;
  float x = 20;
  float y = 20;
  int ballSize = 30;
  
  void move() {
    x += spd*cos(radians(theta));
    y += spd*sin(radians(theta));
  }
  
  void addRadius() {
    theta += 1;
    if(theta >= 360) theta = 0;
  }
  
  void display() {
    fill(0, 255, 255);
    ellipse(x, y, ballSize, ballSize);
  }
}
