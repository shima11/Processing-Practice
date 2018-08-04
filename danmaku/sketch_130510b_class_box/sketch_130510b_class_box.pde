Danmaku[] danmaku = new Danmaku[20];

void setup(){
  size(500,500);
  frameRate(30);
  noCursor();
  for(int i = 0 ; i < 20 ; i+=1){
    danmaku[i] = new Danmaku(random(width),random(height),8,5);  
  }  
}  

void draw(){
  background(0);
  ship(mouseX,mouseY);
  for(int i = 0 ; i < 20 ; i++ ){
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






    
