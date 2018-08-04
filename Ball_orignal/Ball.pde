class Ball{
  float bx,by,ba,bb,clh,cls,clb,bj;
  
  Ball(float x,float y,float ch,float cs,float cb,float j){
    bx = 10;
    by = 10;
    clh = ch;
    cls = cs;
    clb = cb;  
    bj = j;
    
  }  
    
  void move(){
    cls -= 2;
 //   bx += 3;
 //   by += 3;
  }
  void display(){
    noStroke();
    fill(clh,cls,clb);
    ellipse(width/2,height-bj*10,bx+j*2,by+j*2);
  }
}

