class Effect{
  float ex,ey,ev,er,ec,es;
 Effect(float cos,float sin){
  ex = boss.bx;
  ey = boss.by;
  ev = random(6);
  er = random(12);
  ec = cos;
  es = sin;
 } 
  void move(){
    ex += ec*ev;
    ey += es*ev;
    if(abs(ex-boss.bx) > random(200)){
      ex = boss.bx;
    }
    if(abs(ey-boss.by) > random(200)){
      ey = boss.by;
    }
  }
  void display(){
    fill(255,255,255);
    noStroke();
    rect(ex,ey,er,er);
  }
}
