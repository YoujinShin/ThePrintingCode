import processing.pdf.*;
Logo mylogo;

float print_width = 8;
float print_height = 8;
float make_bigger = 60;
PImage img;

// variables
float m = 60; // muliplier
float xt = 150;
float yt = 170;
int mode = 0; // 0: background, 1: character

void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  beginRecord(PDF, "aqua_logo.pdf");
  img = loadImage("worldmap.png");
  
  colorMode(HSB, 360, 100,100);
  translate(xt, yt);
  
  int[] pick = {10, 30, 40, 120, 150,100,210, 240}; // 212
  int k = (int) random(7);

  mylogo = new Logo(m, mode, img);
  mylogo.display();
  endRecord();
}
