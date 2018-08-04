class Bara{
  
  int B_num = int(top.L_data), S_num = int(top.R_data);
  int wid = Image.width / S_num, hei = Image.height / B_num, x, y;
  int num = 0, num_;
  
  Bara(){
  }
  
  void func(){
    for(int i = 0; i < B_num; i++){
      for(int j = 0; j < S_num; j++){
        image(barabara[num], x * (j + 1), y * (i + 1), x - 10, y - 10);
        num++;
      }
    }
    num_ = num;
    num = 0;
        
  }
  
  void bara(){
    for(int i = 0; i < B_num; i++){
      for(int j = 0; j < S_num; j++){
 //       if(j == 0){
          barabara[num] = Image.get(j * wid, i * hei, wid, hei);
  /*      }
        else{
          barabara[num] = Image.get(j * wid - 1, i * hei, wid + 1, hei);
        }*/
        barabara[num].save("./barabara/bara" + num + ".jpg");
        num++;
      }
    }
    num = 0;
    x = width / (S_num + 1);
    y = height / (B_num + 1);
  }
}
