class Check{
  
  char now = 'L';
  int me=0, you=0, load_me = 0;
  int num = bara.num_;
  int[] col_me_r = new int[bara.wid];
  int[] col_you_r = new int[bara.wid];
  int[] col_me_g = new int[bara.wid];
  int[] col_you_g = new int[bara.wid];
  int[] col_me_b = new int[bara.wid];
  int[] col_you_b = new int[bara.wid];
  int Me_Pixel_Position, Me_Pixel_Position_;
  int You_Pixel_Position, You_Pixel_Position_;
  float[] percent_ = new float[bara.wid];
  float percent, per;
  int miss;
  int[] MostLeft = new int[int(top.L_data) + 100];
  int ML_ = 0, step, count = 0, count_ = 0;
  int Most, Most_ = 9999999;
  int[] narabu = new int[num];
  float life = 40;
  int mid = 0, mid_num = 0;
  //int conRates = 0;
  int[] sort_conRate2_num = new int[int(top.L_data)*int(top.R_data)];
  
  
  Check(){
    R_check(3);
    if(miss == num){
      MostLeft[ML_] = me;
      ML_++;
    }
  }
  
  void func(){
    switch(step){
      case 0:
        check0();
        break;
      case 1:
        check1();
        break;
      case 2:
        check2();
        break;
      case 3:
        check3();
        break;
    }
    
    fill(0, 0, 50);
    text(now + "_Check", 250, 50);
    image(barabara[me], 125, 200, 200, 200);
    image(barabara[you], 375, 200, 200, 200);
    fill(0, map(per, 0, 300, 0, 100), 70);
    text(per + "%", 250, 400);
    rect(50, 430, 400, 30);
    fill(#FFA200);
    rect(50, 430, map(per, 0, 100, 0, 400), 30);
    text(ML_, 250, 300);
  }
  
  void check0(){
    for(;;){
    if(you == me && you < num - 1){
      you++;
      R_check(3);
     if(miss == num){
        //MostLeft[ML_] = me;
        ML_++;
      }
    }
    else if(you < num - 1){
        if(you < num - 2){
          per = 0;
        }
        you++;
        R_check(3);
        if(miss == num){
          //MostLeft[ML_] = me;
          ML_++;
        }
    }
    else if(you == num - 1 && me < num - 1){
      me++;
      miss = 0;
      you = 0;
      load_me = 0;
      R_check(3);
      if(miss == num){
        //MostLeft[ML_] = me;
        ML_++;
      }
    }
    else{
      //check();//display
      sortDown();//sort
      //checkSort();//sort display
      sortDown2();
      //checkSort2();
      assignment();
      
      me = MostLeft[count];
      you = 0;
      ML_ = int(top.L_data);
      R_check(0);
      step = 1;
      break;
    }
    }
  }
//------------------------------------------------------------------------
  void check(){
   for(int i=0;i<int(top.L_data)*int(top.R_data);i++){
    for(int j=0;j<int(top.R_data)*int(top.L_data);j++){
     println(i+" "+j+" "+conRate2[i][j]);
    }
   }
  }
  
  void sortDown(){
    for(int i=0;i<int(top.L_data)*int(top.R_data);i++){
      int hoge = conRate2[i][0];
      for(int j=1;j<int(top.R_data)*int(top.L_data);j++){
        if(conRate2[i][j] < hoge){
          hoge = conRate2[i][j]; 
        }
      }
      sort_conRate2[i] = hoge;
      sort_conRate2_num[i] = i;
   }
  }
  
  void checkSort(){
     for(int i=0;i<int(top.L_data)*int(top.R_data);i++){
        println(i+" "+sort_conRate2[i]);
     } 
  }
  
  void sortDown2(){
    for(int i=0;i<int(top.L_data)*int(top.R_data);i++){
        for(int j=i+1;j<int(top.R_data)*int(top.L_data);j++){
            if(sort_conRate2[i] < sort_conRate2[j]){
              mid = sort_conRate2[i];
              mid_num = sort_conRate2_num[i];
              sort_conRate2[i] = sort_conRate2[j];
              sort_conRate2_num[i] = sort_conRate2_num[j];
              sort_conRate2[j] = mid;
              sort_conRate2_num[j] = mid_num;
            }
        }
     }
  }
  
  void checkSort2(){
    for(int i=0;i<int(top.L_data)*int(top.R_data);i++){
        println(i+" "+sort_conRate2[i]);
     } 
     for(int i=0;i<int(top.L_data)*int(top.R_data);i++){
        println(sort_conRate2_num[i]);
     }
  }
  
  void assignment(){
   for(int i=0;i<int(top.L_data); i++){
      MostLeft[i] = sort_conRate2_num[i];
      println(MostLeft[i]);
   }
  }
//-------------------------------------------------------------------------
  
  void check1(){
    for(;;){
    if(you == me && you < num - 1){
      you++;
      R_check(0);
     if(miss == num){
        narabu[0] = me;
      }
    }
    else if(you < num - 1){
        if(you < num - 2){
          per = 0;
        }
        you++;
        R_check(0);
        if(miss == num){
          narabu[0] = me;
        }
    }
    else if(you == num - 1 && count < ML_){
      println("MostLeft:"+MostLeft[count]);
      count++;
      me = MostLeft[count];
      miss = 0;
      you = 0;
      //count_ = 0;
      load_me = 0;
      R_check(0);
      if(miss == num){
        narabu[0] = me;
      }
    }
    else{
      check_2();//display
      //sortDown_2();//sort
      //checkSort2_2();//sort display
      //sortDown2_2();
      //checkSort2_2();
      //assignment_2();
      
      //narabu[0] = 3;
      me = narabu[0];
      println("narabu[0]:"+narabu[0]);
      count = 0;
      count_ = 0;
      you = narabu[int(top.R_data)];
      L_check(2);
      step = 2;
      break;
    }
    }
  }
  
  
  void check_2(){
    for(int i=0;i<count;i++){
    for(int j=0;j<num;j++){
     println(i+" "+j+" "+conRate3[i][j]);
    }
   }
  }
  
  
  void check2(){
    for(;;){
    if(count < ML_ && count_ < ML_){
        if(you < num - 2){
          per = 0;
        }
        count++;
        you = MostLeft[count];
        L_check(2);
    }
    else if(count == ML_ && count_ < ML_){
      narabu[count_ * int(top.R_data)] = Most;
      if(count_ == 0) narabu[0] = me;
      count_++;
      count = 0;
      you = 0;
      me = Most;
      Most_ = 999999;
      load_me = 0;
      L_check(2);
    }
    else{
      me = narabu[0];
      you = 0;
      count = 0;
      count_ = 0;
      load_me = 0;
      L_check(1);
      step = 3;
      break;
    }
    }
  }
  
  void check3(){
    for(;;){
    if(you < num - 1 && count*int(top.R_data)+count_ < num - 1){
      you++;
      L_check(1);
    }
    else if(you == num - 1 && count < int(top.L_data)){
      count_++;
      narabu[count * int(top.R_data) + count_] = Most;
      me = Most;
      if(count_ == int(top.R_data) - 1 && count < int(top.L_data) - 1){
        count_ = 0;
        count++;
        //println("count:"+count);
        me = narabu[count * int(top.R_data)];
      }
      
      you = 0;
      Most_ = 999999;
      load_me = 0;
      L_check(1);
    }
    else{
      set = new Set();
      page = 3;
      break;
    }
    }
  }
  
  void R_check(int vector){
    if(load_me == 0){
      barabara[me].loadPixels();
      switch(vector){
        case 0:
          Me_Pixel_Position = 1;
          Me_Pixel_Position_ = 0;
          break;
        case 1:
          Me_Pixel_Position = barabara[me].width;
          Me_Pixel_Position_ = barabara[me].width - 1;
          break;
        case 2:
          Me_Pixel_Position = 1;
          Me_Pixel_Position_ = (barabara[me].height - 1) * barabara[me].width;
          break;
        case 3:
          Me_Pixel_Position = barabara[me].width;
          Me_Pixel_Position_ = 0;
          break;
      }
      if(vector == 0 || vector == 2){
        for(int i = 0; i < barabara[me].width; i++){
          col_me_r[i] = abs(int(red(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_g[i] = abs(int(blue(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_b[i] = abs(int(green(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
        }
      }
      if(vector == 1 || vector == 3){
        for(int i = 0; i < barabara[me].height; i++){
          col_me_r[i] = abs(int(red(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_g[i] = abs(int(blue(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_b[i] = abs(int(green(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
        }
      }
      load_me = 1;
    }
    barabara[you].loadPixels();
    switch(vector){
      case 0:
        You_Pixel_Position = 1;
        You_Pixel_Position_ = (barabara[you].height - 1) * barabara[you].width;
        break;
      case 1:
        You_Pixel_Position = barabara[you].width;
        You_Pixel_Position_ = 0;
        break;
      case 2:
        You_Pixel_Position = 1;
        You_Pixel_Position_ = 0;
        break;
      case 3:
        You_Pixel_Position = barabara[you].width;
        You_Pixel_Position_ = barabara[you].width - 1;
        break;
    }
    if(vector == 0 || vector == 2){
      for(int i = 0; i < barabara[you].width; i++){
        col_you_r[i] = abs(int(red(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_g[i] = abs(int(blue(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_b[i] = abs(int(green(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        percent = life * barabara[me].width;
      }
      for(int i = 0; i < barabara[me].width; i++){
        percent_[i] = abs(col_you_r[i] - col_me_r[i]) + abs(col_you_g[i] - col_me_g[i]) + abs(col_you_b[i] - col_me_b[i]);
        percent -= percent_[i];
        conRates3 += percent_[i];
      }
      conRate3[count][you] = conRates3;
      conRates3 = 0;
    }
    if(vector == 1 || vector == 3){
      for(int i = 0; i < barabara[you].height; i++){
        col_you_r[i] = abs(int(red(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_g[i] = abs(int(blue(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_b[i] = abs(int(green(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        percent = life * barabara[me].height;
      }
      
      for(int i = 0; i < barabara[me].height; i++){
        percent_[i] = abs(col_you_r[i] - col_me_r[i]) + abs(col_you_g[i] - col_me_g[i]) + abs(col_you_b[i] - col_me_b[i]);
        percent -= percent_[i];
        conRates += percent_[i];
      }
      conRate2[me][you] = conRates;
      conRates = 0;
    }
    if(percent > 100){
      percent = 100;
    }
    if(percent < 0){
      percent = 0;
      miss++;
    }
    if(miss == num){
      narabu[0] = me;
    }
  }
  
  
  void L_check(int vector){
    if(load_me == 0){
      barabara[me].loadPixels();
      switch(vector){
        case 0:
          Me_Pixel_Position = 1;
          Me_Pixel_Position_ = 0;
          break;
        case 1:
          Me_Pixel_Position = barabara[me].width;
          Me_Pixel_Position_ = barabara[me].width - 1;
          break;
        case 2:
          Me_Pixel_Position = 1;
          Me_Pixel_Position_ = (barabara[me].height - 1) * barabara[me].width;
          break;
        case 3:
          Me_Pixel_Position = barabara[me].width;
          Me_Pixel_Position_ = 0;
          break;
      }
      if(vector == 0 || vector == 2){
        for(int i = 0; i < barabara[me].width; i++){
          col_me_r[i] = abs(int(red(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_g[i] = abs(int(blue(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_b[i] = abs(int(green(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
        }
      }
      if(vector == 1 || vector == 3){
        for(int i = 0; i < barabara[me].height; i++){
          col_me_r[i] = abs(int(red(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_g[i] = abs(int(blue(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
          col_me_b[i] = abs(int(green(barabara[me].pixels[Me_Pixel_Position_ + i * Me_Pixel_Position])));
        }
      }
      load_me = 1;
    }
    barabara[you].loadPixels();
    switch(vector){
      case 0:
        You_Pixel_Position = 1;
        You_Pixel_Position_ = (barabara[you].height - 1) * barabara[you].width;
        break;
      case 1:
        You_Pixel_Position = barabara[you].width;
        You_Pixel_Position_ = 0;
        break;
      case 2:
        You_Pixel_Position = 1;
        You_Pixel_Position_ = 0;
        break;
      case 3:
        You_Pixel_Position = barabara[you].width;
        You_Pixel_Position_ = barabara[you].width - 1;
        break;
    }
    if(vector == 0 || vector == 2){
      for(int i = 0; i < barabara[you].width; i++){
        col_you_r[i] = abs(int(red(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_g[i] = abs(int(blue(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_b[i] = abs(int(green(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
      }
    }
    if(vector == 1 || vector == 3){
      for(int i = 0; i < barabara[you].height; i++){
        col_you_r[i] = abs(int(red(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_g[i] = abs(int(blue(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
        col_you_b[i] = abs(int(green(barabara[you].pixels[You_Pixel_Position_ + i * You_Pixel_Position])));
      }
    }
    percent = 0;
    for(int i = 0; i < barabara[me].width; i++){
      percent_[i] = abs(col_you_r[i] - col_me_r[i]) + abs(col_you_g[i] - col_me_g[i]) + abs(col_you_b[i] - col_me_b[i]);
      percent += percent_[i];
    }
    if(Most_ > percent){
      Most_ = int(percent);
      Most = you;
    }
    if(percent > 100){
      percent = 100;
    }
  }
}
