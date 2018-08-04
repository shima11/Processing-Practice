int seed;
 
void setup() {
  size(800, 800, P3D);
  frameRate(24);
  background(0xffffff);
  noFill();
  stroke(0x000000, 100);
 
  seed = getSeed();
}
 
void draw() {
  background(0xffffff);
 
  camera(0, 0, 600,
         150, 150, 150,
         0.0, 1.0, 0.0);
  if (frameCount%90 == 0) {
    seed = getSeed();
  }
  for (int j = 0; j < 100; j++) {
    randomSeed(seed);
    pushMatrix();
    beginShape();
    translate(150, 150, 150);
    rotateY(j/TWO_PI/2);
    rotateZ(j/TWO_PI/2);
    rotateZ(frameCount/TWO_PI);
    for (int i = 0; i < 20; i+=2) {
      curveVertex(random(-i*10, i*10), random(-i*10, i*10), random(-i*10, i*10));
    }
    endShape();
    popMatrix();
  }
}
 
int getSeed() {
  return second() + minute()*60 + hour()*60*60;
}
 
void mousePressed() {
  saveFrame("capture.png");
}
