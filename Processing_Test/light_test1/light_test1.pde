final int[] LIGHT_POSITION_X = {200, 100, 300};  //  x position
final int[] LIGHT_POSITION_Y = {100, 200, 300};  //  y position
 
float lightPower;        //  光の強さ
float lightPowerAdd = 1; //  光の強さの加算値
 
float halfWidth;    //  横幅の中心
float halfHeight;   //  縦幅の中心
 
void setup() {
  size(400, 400);
  halfWidth = width / 2;
  halfHeight = height / 2;
}
 
void draw() {
  background(0);
 
  //  光の強さを変更する。範囲を超えた場合は加算値の符号を逆転させる。
  lightPower += lightPowerAdd;
  if(lightPower > 50){
    lightPower = 50;
    lightPowerAdd *= -1;
  }
  if(lightPower < 0){
    lightPower = 0;
    lightPowerAdd *= -1;
  }
 
  loadPixels();
  //  パーティクルの影響範囲のピクセルについて、色の加算を行う
  for(int i = 0; i < LIGHT_POSITION_X.length; i++){
    for (int y = 0; y < height; y++) {
      for (int x = 0; x < width; x++) {
        int pixelIndex = x + y * width;
 
        //  ピクセルから、赤・緑・青の要素を取りだす
        int r = pixels[pixelIndex] >> 16 & 0xFF;
        int g = pixels[pixelIndex] >> 8 & 0xFF;
        int b = pixels[pixelIndex] & 0xFF;
 
        //  パーティクルの中心と、ピクセルとの距離を計算する
        float dx = LIGHT_POSITION_X[i] - x;
        float dy = LIGHT_POSITION_Y[i] - y;
        float distance = sqrt(dx * dx + dy * dy);  //  三平方の定理
 
        //  0除算の回避
        if(distance < 1){
          distance = 1;
        }
 
        //  光の強さを距離で割る
        r += (255 * lightPower) / distance;
        g += (255 * lightPower) / distance;
        b += (255 * lightPower) / distance;
 
        //  ピクセルの色を変更する
        pixels[pixelIndex] = color(r, g, b);
      }
    }
  }
  updatePixels();
}
