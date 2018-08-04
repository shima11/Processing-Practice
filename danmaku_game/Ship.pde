class Ship{
  int i = 0,j = 0;
  float sx,sy;
  Ship(float x,float y){
   sx = x;
   sy = y;
  }
  void move(){
    sx = mouseX;
    sy = mouseY;
  }
  void display(){
    noFill();
    stroke(255,255,255);
    triangle(sx,sy-7,sx-10,sy+7,sx+10,sy+7);
  }
}

