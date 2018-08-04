float[] X = new float[50];
float[] Y = new float[50];
int i = 0,j = 0;

void setup(){
  size(500,500);
  colorMode(HSB, 360, 100, 100);
  frameRate(60);
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
  for(j = 0 ; j < 50 ; j++){
    if(Y[j] > 0){
      ellipse(X[j],Y[j]-20,6,12);
      ellipse(X[j]+25,Y[j]-10,3,6);
      ellipse(X[j]-25,Y[j]-10,3,6);
    }
    else if(Y[j] < 0){
      ellipse(mouseX,mouseY-20,6,12);
      ellipse(mouseX+25,mouseY-10,3,6);
      ellipse(mouseX-25,mouseY-10,3,6);
    }
  } 
  for(j=0;j < 50;j++){
    Y[j] -= 10;
  }    
  X[i] = mouseX; 
  Y[i] = mouseY;
  if(frameCount % 1 == 0){
    i += 1;
    if(i == 50){
      i = 0;
    }
  }
}





