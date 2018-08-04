class Danmaku{
  float dx,dy,dr,dv,dcos,dsin,dcol,da,db,dc;
  float i = 9.8;

  Danmaku(float x,float y,float r,float v,float cos,float sin,float a,float b,float c){
    dx = x;
    dy = y;
    dr = r;
    dv = v;
    dcos = cos;
    dsin = sin;
    da = a;
    db = b;
    dc = c;
  } 
  
  void move(){
    dx += dcos * dv/2;
    dy += dsin * dv + i/3;
   i ++;
    if(frameCount % 100 == 0){
      dx = boss.bx;
      dy = boss.by;
      i = 0;
    }
  }
  
  void display(){
    noStroke();
    fill(da,db,dc);
    ellipse(dx,dy,dr,dr);
  }
}

