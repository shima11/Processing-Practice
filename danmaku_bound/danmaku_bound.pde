int num = 50;
Danmaku[] danmaku = new Danmaku[num];

void setup(){
  size(500,500);
  frameRate(30);
  noCursor();
//  colorMode(HSB,0,0,99);
  for(int i = 0 ; i < num ; i++){
    danmaku[i] = new Danmaku(width/2,height/2,random(3,40),random(10,15),
      cos(random(2*3.14)),sin(random(2*3.14)),random(255),random(255),random(255));  
  }  
}  

void draw(){
  background(0);
  for(int i = 0 ; i < num ; i++ ){
    danmaku[i].move();
    danmaku[i].display();
  }  
}  







    
