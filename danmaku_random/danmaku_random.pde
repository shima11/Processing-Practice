Danmaku[] danmaku = new Danmaku[50];

void setup(){
  size(500,500);
  frameRate(30);
  noCursor();
//  colorMode(HSB,0,0,99);
  for(int i = 0 ; i < 50 ; i++){
    danmaku[i] = new Danmaku(width/2,height/2,10,random(15),cos(random(2*3.14)),sin(random(2*3.14)),random(255),random(255),random(255));  
  }  
}  

void draw(){
  background(0);
  ship(mouseX,mouseY);
  for(int i = 0 ; i < 50 ; i++ ){
    danmaku[i].move();
    danmaku[i].display();
  }  
}  

void ship(int x,int y){
  stroke(255,255,255);
  noFill();
  triangle(x,y-7,x-10,y+7,x+10,y+7);
  if(mousePressed){
    line(x,y-7,x,0);
  }  
}






    
