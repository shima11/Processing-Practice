int N = 10;//個数
int count = 0;

public class  Circle 
{
  //フィールド
  float x;//位置
  float y;
  float rad; //半径
  int m = 0;
  
  Circle(float tx, float ty, float trad)//コンストラクタ
  {
    x = tx;
    y = ty;
    rad = trad;
  }
  void paint(){
   if(y > height+50){
     if(frameCount % 10 == 0){
      y = random(height/8);
     }
      m = 0;
     }
//     stroke(80,80,90);
//    strokeWeight(20);
     fill(150, 10 , 10);
     ellipse(x, y, rad, rad);//(X,Y)の位置に描く
     m ++;
    if(m == 30){ 
      y += 8;
      m --; 
    }
  }
 }

Circle[] circle; //Circleオブジェクトの宣言

void setup(){
  
  size(500, 500);
  frameRate(30); 
  circle = new Circle [ N ];//Circleオブジェクトの箱をN個作る
  for(int i = 0; i < N; i++){ //以下は初めのサークルの設定
     float x = random(width);
     float y = random(height/8);
     float rad = 80;
     circle[i] = new Circle(x, y, rad);//それぞれのCircleオブジェクトを作る
  }
}
void draw(){
  
  background(0);
 for(int i = 0; i < count; i++){
   circle[i].paint(); //メソッドを呼び出す
  }
  if(frameCount % 20 == 0){
  count++;
  }
  if(count == N){
    count--;
  }
}

