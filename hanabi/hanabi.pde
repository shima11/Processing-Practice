class Hanabi {
        float x, y;
        float vx, vy;
        float r;
        float gravity = 0.1;
        Hanabi(int x, int y, float vx, float vy, float r) {
                this.x = x;
                this.y = y;
                this.vx = vx;
                this.vy = vy;
                this.r = r;
        }
        void update() {
                vy = vy + gravity;
                y += vy;
                x += vx;
        }
        void display() {
                ellipse(x, y, r*2, r*2);
        }
}

class HanabiExtend extends Hanabi {
        float friction = 0.99;
        color col; 
        HanabiExtend(int x, int y, float vx, float vy, float r, float friction, color col) {
                super(x, y, vx, vy, r);
                this.friction = friction;
                this.col = col;
        } 
        
        void display() {
                fill(col);
                super.display(); 
        }
}

int num = 200;
HanabiExtend[] p = new HanabiExtend[num];
float r = 1.2;
void setup() {
        size(600, 400);
        colorMode(HSB,360,100,190,130);
        noStroke();
        smooth();
        for (int i = 0; i < p.length; i++) {
                float velX = random(-4, 4);
                float velY = random(-10, 0);
                color col = color(random(15,250),random(10,180),100); 
                p[i] = new HanabiExtend(width / 2, height / 2, velX, velY, 2.2, 0.9999, col);
        }
}
void draw() {
        fill(0, 10);
        rect(0, 0, width, height);
        fill(255);
        for (int i = 0; i < p.length; i++) {
                p[i].update();
                p[i].display();
        }
}

