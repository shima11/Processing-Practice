class Tama{
 float tx,tv,tu = random(350);
 int ty,tr; 
 
 Tama(float x,int y,int r,float v){
    tx = x;
    ty = y;
    tr = r;
    tv = v;
  }  
  void move(){
    if(ty >= tu){
      tr += 3;
    }
    else{
      ty += tv;
    }
    if(tr >= 350){
      ty = 0;
      tr = 4;
    }
  }
  void display(){
    stroke(255,0,0);
    noFill();
    ellipse(tx,ty,tr,tr);
  } 
}


