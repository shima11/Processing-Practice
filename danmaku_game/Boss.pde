class Boss{
  float bx,by,bv,bw,bh;
  int i = 1;
  Boss(float x,float y,float v){
    bx = x;
    by = y;
    bv = v;
    bw = 50;    //width
    bh = 30;    //height
  }
  void move(){
    bx += bv*i;
    if(bx > width-100 || bx <  100){
      i *= -1;
    }
  }
  void display(){
    fill(255,255,255);
    rect(bx,by,bw,bh);
  }
  
}

