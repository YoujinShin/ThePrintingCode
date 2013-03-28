class Logo
{
  float x1, y1, x2, y2, x3, y3, x4, y4, x5, y5, x6, y6;
  float x7, y7, x8, y8; // points
  float d1 = 2.87; 
  float d2 = 1.93; // diameter
  float d3, m;
  int mode;
  PImage img;
  boolean done;
  
  color c1;
  color c2;
  color c0;
  HSBColor color0;
  HSBColor color1;
  HSBColor color2;
  // for video
  float tempx, tempy;
  int n;
  float th = 0;
  
  Logo(float m_, int mode_, PImage img_) {
    colorMode(HSB, 360, 100,100);
    m = m_;
    mode = 0;//mode_
    img = img_;
    int tempnum = 206; // 206(0,1), 330(0), 155
    
    done = false;
    tempx = 0;
    tempy = 0;
    n = 0;
    
    if(mode == 0) {
//      color1 = new HSBColor(random(360), 20, 90); // 
      color1 = new HSBColor(tempnum, 20, 90);
      color2 = new HSBColor(color1.h, 100, color1.b);
      c0 = color(color2.h, color2.s, color2.b);
      background(c0);
      c1 = color(color1.h, color1.s, color1.b);
      c2 = color(360);
    } else {
//      color1 = new HSBColor(random(360), 40, 100);
      color1 = new HSBColor(tempnum, 40, 100);
      color2 = new HSBColor(color1.h, 100, color1.b);

      c1 = color(color1.h, color1.s, color1.b);
      c2 = color(color2.h, color2.s, color2.b);
      background(360);
//      image(img, -xt, -yt+300, width, (height-300));
    }
  }
  
  void initialize() {
    x2 = x1 + 0.93*m;
    y2 = y1 - 0.9*m;
    x3 = x2;
    y3 = y2 + 2.61*m;
    x4 = x3 + d2*m;
    y4 = y3;
    x5 = x4;
    y5 = y4 - 0.9*m;
    x6 = x5 + 1.82*m/2;
    y6 = y5 + 1.8*m/2;
    x7 = x6 + 1.82*m/5;
    y7 = y6 + 1.8*m/5;
    x8 = x7 + 1.82*m/4;
    y8 = y7 + 1.8*m/4;
    d3 = 0.5; // 0.4
  }
  
  void display() {
    background(c0);
    
    strokeWeight(22);
    noFill();
    stroke(c1);
    ellipse(x2, y2 + 0.6*m + d1*m/2, d1*m, d1*m);

    arc(x3 + d2*m/2, y3, d2*m, d2*m, PI/2,PI, OPEN);
    stroke(c2);
    arc(x3 + d2*m/2, y3, d2*m, d2*m, 0, PI/2, OPEN);
    
    stroke(c2);
    line(x1, y1, x2, y2);
    line(x2, y2, x3, y3);
    line(x4, y4, x5, y5);
    line(x5, y5, x6, y6);
    
    fill(c2);
    stroke(c2);
    strokeWeight(1);
    triangle(x6, y6 + 1.8*m/6, x6 - d3*m/2, y8, x6 + d3*m/2, y8);
    arc(x6, y8, d3*m, d3*m, 0, PI, OPEN);
  }
  
  void flow() {
    fill(0);
    noStroke();
  
    if(n == 0) {
        tempx = tempx + 0.93;
        tempy = tempy - 0.9;
        if(dist(tempx, tempy, x2, y2) < 2) {
          tempx = x2;
          tempy = y2;
          n = 1;
        }
      } else if(n == 1) {
        tempx = tempx;
        tempy = tempy + 1.5;
        if(dist(tempx, tempy, x3, y3) < 1) {
          tempx = x3;
          tempy = y3;
          n = 2;
          th = PI*3/2;
        }
      } else if(n == 2) {
        // circle 1
        tempx = (d2*m/2) * sin(th) + x3 + d2*m/2;
        tempy = (d2*m/2) * cos(th) + y3;
        th = th + 0.02;
        if(abs(th-(PI*3/2 + PI/3.2)) < 0.01) {
          n = 3;
          th = PI/10;
        }
      } else if(n == 3) {
        tempx = (d1*m/2) * sin(th) + x2;
        tempy = (d1*m/2) * cos(th) + y2 + 0.6*m + d1*m/2;
        th = th + 0.02;
        if(abs(th-(2*PI + PI/10)) < 0.01) {
          tempx = (d1*m/2) * sin(2*PI) + x2;
          tempy = (d1*m/2) * cos(2*PI) + y2 + 0.6*m + d1*m/2;
          n = 4;
          th = -PI/2+PI/3.2;
        }
      } else if(n == 4) {
        tempx = (d2*m/2) * sin(th) + x3 + d2*m/2;
        tempy = (d2*m/2) * cos(th) + y3;
        th = th + 0.02;
        if(abs(th-PI/2) < 0.01) {
          n = 5;
          tempx = x4;
          tempy = y4;
        }
      } else if(n == 5) {
        tempx = tempx;
        tempy = tempy - 1;
        if(dist(tempx, tempy, x5, y5) < 1) {
          n = 6;
          tempx = x5;
          tempy = y5;
        }
      } else if(n == 6) {
        tempx = tempx + 1.82*0.7;
        tempy = tempy + 1.8*0.7;
       
        if(dist(tempx, tempy, x6, y6) < 1) {
          tempx = x6;
          tempy = y6;
          n = 7;
        }
      } else if(n == 7) {
        cnt++; 
        if(cnt > 0 && cnt < 30) {
          fill(c2);
          stroke(c2);
          strokeWeight(1);
          triangle(x6, y6 + 1.8*m/6, x6 - d3*m/2, y8, x6 + d3*m/2, y8);
          arc(x6, y8, d3*m, d3*m, 0, PI, OPEN);
        }
        if(cnt > 50) {
          done = true;
        }
      }
 
      if(n == 7) {
      } else {
        fill(c1);
        ellipse(tempx, tempy, 22,22);
      }
    }
}

