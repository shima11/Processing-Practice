public class  Circle {
  
  float x;
  float y;
  float rad; 
  int m = 0;
  
  Circle(float tx, float ty, float trad){
    x = tx;
    y = ty;
    rad = trad;
  }
  void paint(){
   if(y > height + 50){
     if(frameCount % 10 == 0){
      y = random(height/8);
     }
      m = 0;
   }
 //    stroke(80,80,90);
 //    strokeWeight(20);
     fill(150, 10 , 10);
     ellipse(x, y, rad, rad);
     m ++;
    if(m == 30){ 
      y += 12;
      m --; 
    }
    for(int i = 0 ; i < N ; i++){
      if(dist(ship.sx,ship.sy,x,y) < rad/2){
        x = random(width);
        y = random(height/8);
        shp -= 1;
      }
    }
  }
 }

