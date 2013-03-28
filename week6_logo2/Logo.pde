class Logo
{
  float x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6;
  float x7, y7, x8, y8; // points
  float d1 = 2.87; 
  float d2 = 1.93; // diameter
  float d3, m;
  int mode;
  PImage img;
  
  color c1;
  color c2;
  HSBColor color0;
  HSBColor color1;
  HSBColor color2;
  
  Logo(float m_, int mode_, PImage img_) {
    colorMode(HSB, 360, 100,100);
    m = m_;
    mode = 1;//mode_
    img = img_;
    int tempnum = 206; // 206(0,1), 330(0), 155
    
    if(mode == 0) {
//      color1 = new HSBColor(random(360), 20, 90); // 
      color1 = new HSBColor(tempnum, 20, 90);
      color2 = new HSBColor(color1.h, 100, color1.b);
      background(color2.h, color2.s, color2.b);
      c1 = color(color1.h, color1.s, color1.b);
      c2 = color(360);
    } else {
//      color1 = new HSBColor(random(360), 40, 100);
      color1 = new HSBColor(tempnum, 40, 100);
      color2 = new HSBColor(color1.h, 100, color1.b);

      c1 = color(color1.h, color1.s, color1.b);
      c2 = color(color2.h, color2.s, color2.b);
      background(360);
      image(img, -xt, -yt+300, width, (height-300));
    }
  }
  
  void display() {
    strokeWeight(15);
    stroke(c2);
    x2 = x1 + 0.93*m;
    y2 = y1 - 0.9*m;
    
    noFill();
    stroke(c1);
    ellipse(x2, y2 + 0.6*m + d1*m/2, d1*m, d1*m);
    
    x3 = x2;
    y3 = y2 + 2.61*m;
    
    arc(x3 + d2*m/2, y3, d2*m, d2*m, PI/2,PI, OPEN);
    stroke(c2);
    arc(x3 + d2*m/2, y3, d2*m, d2*m, 0, PI/2, OPEN);
    
    stroke(c2);
    x4 = x3 + d2*m;
    y4 = y3;
    
    x5 = x4;
    y5 = y4 - 0.9*m;
    
    x6 = x5 + 1.82*m/2;
    y6 = y5 + 1.8*m/2;
    
    line(x1, y1, x2, y2);
    line(x2, y2, x3, y3);
    line(x4, y4, x5, y5);
    line(x5, y5, x6, y6);
    
    noStroke();
    fill(c2);
    x7 = x6 + 1.82*m/5;
    y7 = y6 + 1.8*m/5;
    x8 = x7 + 1.82*m/4;
    y8 = y7 + 1.8*m/4;
    
    d3 = 0.5; // 0.4
    stroke(c2);
    strokeWeight(1);
    triangle(x6, y6 + 1.8*m/6, x6 - d3*m/2, y8, x6 + d3*m/2, y8);
    arc(x6, y8, d3*m, d3*m, 0, PI, OPEN);
  }
}

