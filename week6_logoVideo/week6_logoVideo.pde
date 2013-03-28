Logo mylogo;
PImage img;

// variables
float m = 90; // muliplier
float xt = 200;
float yt = 230;
int mode = 0; // 0: background, 1: character

float xp = xt;
float yp = yt;
int cnt = 0;

void setup() {
  size(700, 700);
  img = loadImage("worldmap.png");
  
  colorMode(HSB, 360, 100,100);
  pushMatrix();
  translate(xt, yt);
  
  int[] pick = {10, 30, 40, 120, 150,100,210, 240}; // 212
  int k = (int) random(7);

  mylogo = new Logo(m, mode, img);
  mylogo.initialize();
  popMatrix();
}

void draw() {
  pushMatrix();
  translate(xt, yt);
  
  if(mylogo.done == false) {
    mylogo.flow();
  } else {
    mylogo.display();
  }
  popMatrix();
}


