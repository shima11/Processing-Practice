class Shield{
    float x = mouseX,y = mouseY;
  Shield(){
     
  }
  void display(){
   x = mouseX;
   y = mouseY;
   stroke(255,255,255);
   fill(255,255,255,80);
   ellipse(x,y,120,120); 
  }
}

