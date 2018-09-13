Enemy [] enemy;
Player player;

void setup() {
  enemy = new Enemy[10];
  for (int i = 0; i < enemy.length; i++) {
    enemy[i] = new Enemy();
  }
  size(800, 600);
}

void draw() {
  background(255);
  enemyMove();
}

void enemyMove() {
  for (int i = 0; i < enemy.length; i++) {
    enemy[i].move();
    enemy[i].display();
  }
}
