import processing.pdf.*;
Circle[] mycircles;
HSBColor[] colors;
Grid grid;

float d = 25;
int num = 1;

float print_width = 15; // inch 15
float print_height = 15 * 28/20; 
float make_bigger = 60;

void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  d = print_width * make_bigger/20;
  //size(d*20, d*28);
  colorMode(HSB, 360, 100, 100);
  
  beginRecord(PDF, "myposter.pdf");
  //background(360);
  
  colors = new HSBColor[5];
  mycircles = new Circle[6];
  grid = new Grid(d, colors);
  
  setColor(); 
  grid.rectDisplay();
  //grid.display();
  setCircle();
  
  pushMatrix();
  translate(d, 2*d);
  for(int i = 0; i < 6; i++) {
    mycircles[i].display();
  }
  popMatrix();
  
  endRecord();
  //text("o l i v e t t i", 12*d, 13*d); 
}

void setCircle() {
  noStroke();
  mycircles[0] = new Circle(d, 1, 3*d + 0.5*d, 0.5*d, colors);
  mycircles[1] = new Circle(d, 3, 6*d + 0.5*3*d, 0.5*3*d, colors);
  mycircles[2] = new Circle(d, 2, 0.5*2*d, 6*d + 0.5*2*d, colors);
  mycircles[3] = new Circle(d, 4, 0.5*4*d, 12*d + 0.5*4*d, colors);
  mycircles[4] = new Circle(d, 2, 12*d + 0.5*2*d, 12*d + 0.5*2*d, colors);
  mycircles[5] = new Circle(d, 1, 15*d + 0.5*1*d, 18*d + 0.5*1*d, colors);
}

void setColor() {
  int Sat = 65;
  
  colors[0] = new HSBColor(0, Sat, 100); 
  // find tetradic colors pairs that are closer to the base color. BottomHue stays the same
  int rightHue = (colors[0].h + 25) % 360;
  int bottomHue = (colors[0].h + 180) % 360;
  int leftHue = (colors[0].h + 205) % 360;
  
  colors[1] = new HSBColor(rightHue, Sat, 100);
  colors[2] = new HSBColor(bottomHue, Sat, 100);
  colors[3] = new HSBColor(leftHue, Sat, 100);
  colors[4] = new HSBColor(360, 0, 360);
}

