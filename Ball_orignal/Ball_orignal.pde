Ball[] ball = new Ball[100];
float x = width/2 ,y = height,ch = 200,cs = 90,cb = 99; 
int i=0,j=0;
 
void setup(){
  size(500,500);
  colorMode(HSB,ch,cs,cb);
  background(0,0,99);
  frameRate(50);
  smooth();
  ellipseMode(CENTER);
  for(j = 0;j < 100;j++){
    ball[j] = new Ball(x,y,ch,cs,cb,j);
  }
}

void draw(){
  for(j = 0 ; j < i ; j++){
    ball[j].move();
    ball[j].display();
  }
  if(frameCount % 1 == 0){
    i++;
   }
   if(i > 98){
     i = 0;
   }
   
}

/*void mouseReleased(){
  i += 1;  
  if(i == 19){
    i = 0;
  }  
}
*/



