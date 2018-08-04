class Danmaku{
  float tx,ty,tr,tv;
  Danmaku(float x,float y,float r,float v){
    tx = x;
    ty = y;
    tr = r;
    tv = v;
  } 
  
  void move(){
    ty += tv;
    if(ty >= height){
      ty = 0;
      tx = random(width);
    }
  }
  
  void display(){
    stroke(255,0,0);
    ellipse(tx,ty,tr,tr);
  }
}

