class Top{
  
  String L_data = "";
  char[] L_keydata = new char[30];
  String R_data = "";
  char[] R_keydata = new char[30];
  int x = -50;
  int L_c, R_c, L_box, R_box;
  
  Top(){
  }
  
  void func(){
    fill(51, 27, 96);
    rect(x, 5, 80, 50);
    x+=2;
    image(Text, 250, 250, 500, 500);
    if(x>500){
      x=-50;
    }
    fill(43, 60, 50);
    if (L_box == 1 || mouseX > 30 && mouseX < 220 && mouseY > 150 && mouseY < 320) {
      fill(43, 60, 99);
    }
    rect(30, 150, 190, 170);
    fill(2, 58, 50);
    if (R_box == 1 || mouseX > 280 && mouseX < 470 && mouseY > 150 && mouseY < 320) {
      fill(2, 58, 93);
    }
    rect(280, 150, 190, 170);
    fill(51, 27, 50);
    if (mouseX >220 && mouseX < 285 && mouseY > 410 && mouseY < 440) {
      fill(51, 27, 93);
    }
    text("Go!!", 250, 425 + 7);
    fill(0, 0, 20);
    rect(35, 155, 180, 160);
    rect(285, 155, 180, 160);
    fill(43, 60, 99);
    text(L_data, 125, 240 + 7);
    fill(2, 58, 93);
    text(R_data, 375, 240 + 7);
    image(B_Image, 75, 375, 50, 50);
    image(S_Image, 425, 375, 50, 50);
  }
}
