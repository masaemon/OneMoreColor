Enemy [] enemy;
Player player;

void setup() {
  player = new Player();
  enemy = new Enemy[10];
  for (int i = 0; i < enemy.length; i++) {
    enemy[i] = new Enemy();
  }
  size(800, 600);
}

void draw() {
  background(255);
  player.move();
  player.display();
  enemyMoveDisp();
  if ((keyPressed == true) && (key == ' ')) {
    player.addRadius();
  }
  println(player.theta);
}

void enemyMoveDisp() {
  for (int i = 0; i < enemy.length; i++) {
    enemy[i].move();
    enemy[i].display();
  }
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == SHIFT) {
      player.addRadius();
    }
  }
}

void mousePressed() {
  player.addRadius();
}
