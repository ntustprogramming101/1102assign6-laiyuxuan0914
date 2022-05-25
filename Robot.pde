class Robot extends Enemy {
  // Requirement #5: Complete Dinosaur Class

  final int PLAYER_DETECT_RANGE_ROW = 2;
  final int LASER_COOLDOWN = 180;
  final int HAND_OFFSET_Y = 37;
  final int HAND_OFFSET_X_FORWARD = 64;
  final int HAND_OFFSET_X_BACKWARD = 16;
  float speed = 2f;

  void display() {

    int direction=(speed>0)?RIGHT:LEFT;
    pushMatrix();
    translate(x, y);
    if (direction==RIGHT) {
      scale(1.1);
      image(robot, 0, 0, w, h);
    } else {
      scale(-1, 1);
      image(robot, -w, 0, w, h);
    }
    popMatrix();
  }

  void update() {
    x+=speed;
    if (x<0||x>width-w) {
      speed*=-1;
    }
  }
  void update(Player player) {
    if (player.y+160>y) {
      speed=0;
    }
  }

  Robot(float x, float y) {
    super(x, y);
  }
}
