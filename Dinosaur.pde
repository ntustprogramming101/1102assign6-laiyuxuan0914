class Dinosaur extends Enemy {
  // Requirement #4: Complete Dinosaur Class

  final float TRIGGERED_SPEED_MULTIPLIER = 5;

  float currentSpeed = 1f;
  int direction;
  boolean right=true;
  void display() {

    direction=(currentSpeed>0)?RIGHT:LEFT;
    pushMatrix();
    translate(x, y);
    if (direction==RIGHT) {
      scale(1.1);
      right=true;
      image(dinosaur, 0, 0, w, h);
    } else {
      right=false;
      scale(-1, 1);
      image(dinosaur, -w, 0, w, h);
    }
    popMatrix();
  }

  void update() {
    x+=currentSpeed;
    if (x<0||x>width-w) {
      currentSpeed*=-1;
    }
   
  }
  void update(Player player) {
    if (currentSpeed>0&&player.x>x &&
      player.y==y) { 
      currentSpeed= 5;
      if(player.y>y){
        currentSpeed=1;
         }}

    if (currentSpeed< 0&&player.x<x
      &&
      player.y==y ) {currentSpeed=-5;}
      else if(player.y>y){
        currentSpeed=-1;
         }
  }
