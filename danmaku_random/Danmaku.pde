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
//    dcol = col;
  } 
  
  void move(){
    dx += dcos * dv/2;
    dy += dsin * dv+i/3;
 //   dy += i;
    i ++;
    if(frameCount % 60 == 0){
      dx = width/2;
      dy = height/2;
      i = 0;
      dcos = cos(random(2*3.14));
      dsin = sin(random(2*3.14));
    }
  }
  
  void display(){
 //   stroke(random(255),random(255),random(255));
    noStroke();
    fill(da,db,dc);
    ellipse(dx,dy,dr,dr);
  }
}

