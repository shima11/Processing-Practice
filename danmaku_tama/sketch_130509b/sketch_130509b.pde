float[] X = new float[20];
float[] Y = new float[20];
int i = 0,j = 0;

void setup(){
  size(500,500);
  colorMode(HSB, 360, 100, 100);
  frameRate(30);
  noCursor();
  ellipseMode(CENTER);  
}  

void draw(){
  background(0); 
  stroke(0,0,99);
  noFill();  
  triangle(mouseX,mouseY-7,mouseX-10,mouseY+7,mouseX+10,mouseY+7);
  fill(0, 0, 99);
  for(j = 0 ; j <= 19 ; j++){
    if(Y[j] > 0){
      ellipse(X[j],Y[j]-20,3,6);
    }
    else if(Y[j] < 0){
      ellipse(mouseX,mouseY-20,3,6);
    }
  } 
  for(j=0;j<=19;j++){
    Y[j] -= 5;
  }    
  if(mousePressed){
     X[i] = mouseX;
     Y[i] = mouseY;
  } 
}

void mouseReleased(){
  i += 1;  
  if(i==19){
    i-=19;
  }  
}


