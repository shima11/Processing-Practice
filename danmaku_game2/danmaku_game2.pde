Danmaku[] danmaku = new Danmaku[50];
Effect[] effect = new Effect[20];
Danmakus[] danmakus = new Danmakus[360];
Circle[] circle; 
Shield shield;
Boss boss;
Ship ship;
float[] X = new float[50];
float[] Y = new float[50];
int N = 10;
int count = 0;
int i = 0,j = 1,k=0,p=1;
int shp = 2,bhp = 80;

void setup(){
  size(500,700);
  frameRate(30);
  noCursor();
  smooth();
  rectMode(CENTER);
  ship = new Ship(mouseX,mouseY);
  boss = new Boss(width/2,50,6);
  shield = new Shield();
  for(int i = 0 ; i < 50 ; i++){
    danmaku[i] = new Danmaku(boss.bx,boss.by,10,random(5,15),
      cos(random(2*3.14)),sin(random(2*3.14)),random(255),random(255),random(255));  
  }  
  for(int i = 0; i < 360;i ++ ){
    danmakus[i] = new Danmakus(boss.bx,boss.by,cos(i/2/3.14),sin(i/2/3.14));
  }
  for(int i = 0;i < 20; i++){
    effect[i] = new Effect(cos(random(2*3.14)),sin(random(2*3.14)));
  }
  circle = new Circle [ N ];
  for(int i = 0; i < N; i++){ 
     float x = random(width);
     float y = random(height/8);
     float rad = 80;
     circle[i] = new Circle(x, y, rad);
  }
}  

void draw(){
  background(0);
  fill(255,255,255);
  time();
  ship.move();
  ship.display();
  if(keyPressed == true){
    shield.display();
  }
  if(bhp < 30){
  for(int i = 0 ; i < 50 ; i++ ){
    danmaku[i].move();
    danmaku[i].display();
  }
  }
  if(bhp < 80){
    for(int i = 0;i < 360;i++){
      danmakus[i].move();
      danmakus[i].display();
    }
   if(frameCount % 3 == 0){
     for(int j = 0;j < 240;j++){
      danmakus[j].move();
      danmakus[j].display();
    }
   }  
  if(frameCount % 4 == 0){
     for(int n = 0;n < 180;n++){
      danmakus[n].move();
      danmakus[n].display();
    }
   }
  if(frameCount % 5 == 0){
     for(int j = 0;j < 120;j++){
      danmakus[j].move();
      danmakus[j].display();
    }
   }      
   if(frameCount % 2 == 0){
     for(int j = 0;j < 80;j++){
      danmakus[j].move();
      danmakus[j].display();
    }
   } 
   if(frameCount % 6 == 0){
     for(int j = 0;j < 60;j++){
      danmakus[j].move();
      danmakus[j].display();
    }
   }
  }   
 if(bhp <  60){
  for(int i = 0; i < count; i++){
     circle[i].paint(); //メソッドを呼び出す
  }
  if(frameCount % 20 == 0){
    count++;
  }
  if(count == N){
    count--;
  }
 }
  
  boss.move();
  boss.display();
 
 tama();
 
  if(k > 0){
    for(int j = 0;j < 20;j++){
      effect[j].move();
      effect[j].display();
    }
    k-- ;
  }
  if(bhp < 0){
    textSize(40);
    text("You Win !!!!!",300,200);
    shp = 10;
//    bhp++;
  }
  if(shp < 0){
    textSize(40);
    text("You Lose !!!!",300,300);
    text("Do you Continue ?",400,400);
    if(mousePressed == true){
      textSize(20);
      text("Nothing I do not happen when you press",400,500);
    } 
  }
}  

void time(){
  float ft = millis()/1000;
  textAlign(RIGHT);
  textSize(15);
  text(nf(ft,2,2),width,24);
}
void tama(){
   fill(255, 255, 255);
  for(j = 0 ; j < 50 ; j++){
    if(Y[j] > 0){
      ellipse(X[j],Y[j]-20,8,16);
      ellipse(X[j]+25,Y[j]-10,4,8);
      ellipse(X[j]-25,Y[j]-10,4,8);
    }
    else if(Y[j] < 0){
      ellipse(mouseX,mouseY-20,8,12);
      ellipse(mouseX+25,mouseY-10,4,6);
      ellipse(mouseX-25,mouseY-10,4,6);
   }
  } 
  for(j=0;j < 50;j++){
    Y[j] -= 30;
  }    
  X[i] = mouseX; 
  Y[i] = mouseY;
  if(frameCount % 4 == 0){
    i += 1;
    if(i == 50){
      i = 0;
    }
  }
   for(int i = 0 ; i < 50 ; i++){
    if(dist(danmaku[i].dx,danmaku[i].dy,ship.sx,ship.sy) < danmaku[i].dr){
      danmaku[i].dx = boss.bx;
      danmaku[i].dy = boss.by;
      shp -= 1;
    }
    if(dist(boss.bx,boss.by,X[i],Y[i]) < 25){
      X[i] = mouseX;
      Y[i] = mouseY;
      k = 15;
      bhp -= 1;
    }
  }
  
}
  





    
