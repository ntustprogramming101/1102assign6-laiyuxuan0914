class Cabbage extends Item{
	// Requirement #1: Complete Cabbage Class
Cabbage(float x, float y){
      super(x, y);
    }
    void display(){
    if(isAlive) image(cabbage, x, y);  
  }
  
  void checkCollision(Player player){
      if(player.health < player.PLAYER_MAX_HEALTH && isHit(x, y, w, h, player.x, player.y, player.w, player.h) && isAlive){

      player.health++;
      isAlive=false;

    }
  }
}
