PImage Image, B_Image, S_Image, Text;
PImage[] barabara = new PImage[100];
int page = 0;

Top top;
Bara bara;
Check check;
//Animation[] animation = new Animation[5];

void setup(){
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  imageMode(CENTER);
  background(0, 0, 100);
  noStroke();
  
  textSize(30);
  textAlign(CENTER);
  
  top = new Top();
  
  Image = loadImage("./data/2.jpg");
  B_Image = loadImage("./data/B.png");
  S_Image = loadImage("./data/S.png");
  Text = loadImage("./data/text.png");
}

void draw(){
  flesh();
  if(page == 0){
    top.func();
  }
  else if(page == 1){
    bara.func();
  }
  else if(page == 2){
    check.func();
  }
}

void flesh(){
  fill(0, 0, 20);
  rect(0, 0, 500, 500);
}

void mouseReleased() {
  if(page == 0){
    if (mouseX > 30 && mouseX < 220 && mouseY > 150 && mouseY < 320) {
      top.L_box=1;
      top.R_box=0;
    }
    if (mouseX > 280 && mouseX < 470 && mouseY > 150 && mouseY < 320) {
      top.L_box=0;
      top.R_box=1;
    }
    if (mouseX >220 && mouseX < 285 && mouseY > 410 && mouseY < 440) {
      page = 1;
      bara = new Bara();
      bara.bara();
    }
  }
  else if(page == 1){
    page = 2;
    check = new Check();
  }
}

void keyTyped(){
  if(top.L_c < 30 && int(key) != 8 && top.L_box == 1 && page == 0){
    top.L_keydata[top.L_c] = key;
    top.L_data = "";
    for(int i = 0; i <= top.L_c; i++){
      top.L_data = top.L_data + top.L_keydata[i];
    }
    top.L_c++;
  }
  if(top.R_c < 30 && int(key) != 8 && top.R_box == 1 && page == 0){
    top.R_keydata[top.R_c] = key;
    top.R_data = "";
    for(int i = 0; i <= top.R_c; i++){
      top.R_data = top.R_data + top.R_keydata[i];
    }
    top.R_c++;
  }
}

void keyPressed(){
  if(int(key) == 8 && top.L_c > 0 && top.L_box == 1 && page == 0){
    top.L_c -= 1;
    top.L_data = "";
    for(int i = 0; i < top.L_c; i++){
      top.L_data = top.L_data + top.L_keydata[i];
    }
  }
  if(int(key) == 8 && top.R_c > 0 && top.R_box == 1 && page == 0){
    top.R_c -= 1;
    top.R_data = "";
    for(int i = 0; i < top.R_c; i++){
      top.R_data = top.R_data + top.R_keydata[i];
    }
  }
}
