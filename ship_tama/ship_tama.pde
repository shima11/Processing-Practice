float[] X = new float[30];
float[] Y = new float[30];
int i = 0,j = 0;

void setup(){
  size(500,500);
  colorMode(HSB, 360, 100, 100);
  frameRate(30);
  smooth();
  noCursor();
  ellipseMode(CENTER);  
}  

void draw(){
  background(0); 
  stroke(0,0,99);
  noFill();  
  triangle(mouseX,mouseY-7,mouseX-10,mouseY+7,mouseX+10,mouseY+7);
  fill(0, 0, 99);
  for(j = 0 ; j <= 29 ; j++){
    if(Y[j] > 0){
      ellipse(X[j],Y[j]-20,6,6);
      ellipse(X[j]+20,Y[j]-10,3,3);
      ellipse(X[j]-20,Y[j]-10,3,3);
    }
    else if(Y[j] < 0){
      ellipse(mouseX,mouseY-20,6,6);
      ellipse(mouseX+20,mouseY-10,3,3);
      ellipse(mouseX-20,mouseY-10,3,3);
    }
  } 
  for(j=0;j<=29;j++){
    Y[j] -= 15;
  }    
  X[i] = mouseX; 
  Y[i] = mouseY;
  if(frameCount % 3 == 0){
    i += 1;
    if(i == 19){
      i = 0;
    }
  }
}





