class Danmaku{
  float dx,dy,dr,dv,dcos,dsin,dcol,da,db,dc;
  int i = 1,j = 1;

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
    dx += dcos * dv*i;
    dy += dsin * dv*j;

    if(dx > width || dx < 0){
      i *= -1;
      da = random(255);
      db = random(255);
      dc = random(255);
    }
    if(dy > height || dy < 0){
      j *= -1;
      da = random(255);
      db = random(255);
      dc = random(255);
    }
  }
  
  void display(){
    noStroke();
    fill(da,db,dc);
    ellipse(dx,dy,dr,dr);
  }
}

