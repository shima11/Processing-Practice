Danmaku[] danmaku = new Danmaku[50];
Tama[] tama =new Tama[50];
Boss boss;
Ship ship;

int i = 0,j = 0;

void setup(){
  size(500,500);
  frameRate(30);
  noCursor();
  rectMode(CENTER);
  ship = new Ship(mouseX,mouseY);
  boss = new Boss(width/2,50,7);
  for(int i = 0 ; i < 50 ; i++){
    danmaku[i] = new Danmaku(boss.bx,boss.by,10,random(5,15),
      cos(random(2*3.14)),sin(random(2*3.14)),random(255),random(255),random(255)); 
     tama[i] = new Tama(mouseX,mouseY); 
  }  
}  

void draw(){
  background(0);
  for( int i = 0 ; i < 50 ; i++){
 //     tama[i].ty += i*100;
      tama[i].move();
      tama[i].display(); 
  }    
  ship.move();
  ship.display();
  for(int i = 0 ; i < 50 ; i++ ){
    danmaku[i].move();
    danmaku[i].display();
  }  
  boss.move();
  boss.display();
}  





    
