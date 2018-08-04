class Check{
  
  char now = 'L';
  int me=0, you=1, load_me = 0;
  int num = bara.num_;
  color[] col_1 = new color[20];
  color[] col_2 = new color[20];
  int[] col_me_r = new int[20];
  int[] col_you_r = new int[20];
  int[] col_me_g = new int[20];
  int[] col_you_g = new int[20];
  int[] col_me_b = new int[20];
  int[] col_you_b = new int[20];
  int[][] check_you = new int[100][100];
  int[] check_max = new int[100];
  int[] check_num = new int[100];
  int R_Pixel_Position, R_Pixel_Position_;
  int L_Pixel_Position;
  float[] percent_ = new float[20];
  float percent, per;
  int ani, ani_, col_alert;
  
  Check(){
    R_check();
  }
  
  void func(){
    if(you == me && you < num - 1){
      you++;
      R_check();
    }
    else if(you < num - 1){
      if(per < percent){
        per+=5;
      }

      if(per >= percent){
        if(you < num - 2){
          per = 0;
        }
        you++;
        R_check();
      }
    }
    else if(you == num - 1 && me < num - 1){
      me++;
      you = 0;
      load_me = 0;
      R_check();
    }else{
     image_Bond(); 
    }
    /*
    fill(0, 0, 50);
    text(now + "_Check", 250, 50);
    image(barabara[me], 125, 200, 200, 200);
    image(barabara[you], 375, 200, 200, 200);
    fill(0, map(per, 0, 300, 0, 100), 70);
    text(per + "%", 250, 400);
    rect(50, 430, 400, 30);
    fill(#FFA200);
    rect(50, 430, map(per, 0, 100, 0, 400), 30);
    */
  }
  
  void R_check(){
    if(load_me == 0){
      R_Pixel_Position = barabara[me].width * int(barabara[me].height / 20);
      R_Pixel_Position_ = barabara[me].width - 1;
      barabara[me].loadPixels();
      for(int i = 0; i < 20; i++){
        col_me_r[i] = abs(int(red(barabara[me].pixels[R_Pixel_Position_ + i * R_Pixel_Position])));
        col_me_g[i] = abs(int(green(barabara[me].pixels[R_Pixel_Position_ + i * R_Pixel_Position])));
        col_me_b[i] = abs(int(blue(barabara[me].pixels[R_Pixel_Position_ + i * R_Pixel_Position])));
      }
      load_me = 1;
    }
    L_Pixel_Position = barabara[you].width * int(barabara[you].height / 20);
    barabara[you].loadPixels();
    for(int i = 0; i < 20; i++){
      col_you_r[i] = abs(int(red(barabara[you].pixels[L_Pixel_Position * i])));
      col_you_g[i] = abs(int(green(barabara[you].pixels[L_Pixel_Position * i])));
      col_you_b[i] = abs(int(blue(barabara[you].pixels[L_Pixel_Position * i])));
    }
    percent = 1000;
    for(int i = 0; i < 20; i++){
      percent_[i] = abs(col_you_r[i] - col_me_r[i]) + abs(col_you_g[i] - col_me_g[i]) + abs(col_you_b[i] - col_me_b[i]);
      percent -= percent_[i];
    }
    
    check_you[me][you] = (int)percent;
    println("check"+"["+me+"]"+"["+you+"]"+check_you[me][you]);
    if(percent < 0){
      //percent = 0;
    }
  }
  
  void image_Bond(){
    for(int i=0;i<9;i++){
      for(int j=0;j<9;j++){
        /*        
         if(check_you[i][j] > check_max[i*3+j]){
            check_max[i*3+j] = check_you[i][j];
            check_num[i*3+j] = i*3+j;
            println("check_max["+(i*3+j)+"]"+check_max[i*3+j]);
         }*/
         
         if(check_max[i] < check_you[i][j]){
           check_max[i] = check_you[i][j];
           check_num[i] = j;
         }
      }
      println("check_max["+i+"]:"+check_max[i]);
      println("num:"+check_num[i]);
      
    }
  }
  
  
}
