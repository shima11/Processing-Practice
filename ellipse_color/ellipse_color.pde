float ch = 350,cs = 90,cb = 99;

void setup(){
  size(500,500);
  colorMode(HSB,ch,cs,cb);  
  frameRate(30);
  smooth();
  ellipseMode(CENTER);
}
void draw(){
  background(0,0,99);
  noStroke();
  fill(ch,cs,cb);
  ellipse(width/2,height/2,200,200);
  cs -= 2;
  if(cs < 0){
    cs = 99;
  }
}

