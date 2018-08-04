class Danmakus{
  float cos,sin,x,y;
  
  Danmakus(float ax,float ay,float acos, float asin){
    x = ax;
    y = ay;
    cos = acos;
    sin = asin;
    
  }
  void move(){
    x += cos * 8;
    y += sin * 8;
    if(frameCount % 100 == 0){
      x = boss.bx;
      y = boss.by;
  }
  }
  void display(){
    fill(255,255,255);
    ellipse(x,y,3,5);
  
  } 
}

