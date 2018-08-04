class Tama{
  float tx,ty;
  Tama(float x,float y){
    tx = x;
    ty = y;
  }
  void move(){
    ty -= 20;
    if(ty < 0){
      tx = mouseX;
      ty = mouseY-20;
    }
  }
  void display(){
    ellipse(tx,ty,6,12);
    ellipse(tx+25,ty+10,3,6);
    ellipse(tx-25,ty+10,3,6);
  }
  
}
