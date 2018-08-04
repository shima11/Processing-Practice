int i;
int number = 15;
Tama[] tama = new Tama[number];

void setup(){
  size(500,500);
  frameRate(30);
  noCursor();
  
   for(i = 0 ; i < number ; i++){
     tama[i] = new Tama(random(width),0,4,random(8));
   }
}

void draw(){
  background(0);  
  for(i = 0 ; i < number ; i++){
    tama[i].move();
    tama[i].display();
  }
}

