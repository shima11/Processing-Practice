class Set{
  
  int[] seton = new int[check.num];
  
  Set(){
    for(int i = 0; i < seton.length; i++){
      seton[i] = check.num + 1;
    }
  }
  
  void func(){
    for(int i = 0; i < int(top.L_data); i++){
      for(int j=0;j<int(top.R_data);j++){ 
       //image(barabara[check.narabu[i]], 125, 10 + i * 31, 30, 30);    
       //println(check.narabu[0]);
       image(barabara[check.narabu[i*int(top.R_data) + j]], 50*j + 80, 50+i*50 + 80, 50, 50); 
       //if(conRate[i*int(top.R_data) + j] < 880000)println(conRate[i*int(top.R_data) + j]);
      }
  }
  }
}
