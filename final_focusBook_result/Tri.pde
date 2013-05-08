class Tri {
  
  int cols = 6; 
  int rows = 3;
  float gap = width/cols;
  int r = 2; // start from 0  to 4
  
  Tri() {
    
  }
  
  void display() {
    
    tri_1(0, r); // x, y
    tri_2(1, r); // x, y
    tri_3(2, r); // x, y
    tri_4(3, r); // x, y
    tri_5(4, r); // x, y
    tri_6(5, r); // x, y
  }
  
  void tri_1(int c_, int r_) {

    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap*3/4);
    fill(255);
    triangle(-gap/3, 0, gap/3, 0, 0, -gap*sqrt(3)/3);
  
    popMatrix();
  }
  
  void tri_2(int c_, int r_) {

    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap*3/4);
    fill(0);
    triangle(-gap/3, 0, gap/3, 0, 0, -gap*sqrt(3)/3);
    
    translate(0, -gap*1.1/12);
    fill(255);
    float d = gap/6;
    triangle(-d, 0, d, 0, 0, -d*sqrt(3));
    
    fill(0);
    triangle(-d/2, 0, d/2, 0, 0, -d*sqrt(3)/2);
//    triangle(0, 0, -d/2, -d*sqrt(3)/2, d/2, -d*sqrt(3)/2);
  
    popMatrix();
  }
  
  void tri_3(int c_, int r_) {

    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    float d = gap/6;
    translate(gap/2, gap*4/5);
    fill(255);
    triangle(-d*1.1, 0, d*1.1, 0, 0, -d*sqrt(3));
    
    noFill();
    stroke(255);
    strokeWeight(8);
    translate(0, -gap/6);
    triangle(-d*1.5, 0, d*1.5, 0, 0, -d*sqrt(3)*1.5);
  
    popMatrix();
  }
 
  void tri_4(int c_, int r_) {

    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    float d = gap/3;
    float h = d*sqrt(3);
    
    float d2 = d/4;
    float h2 = h/4;
    float ygap = gap*3/4 - 4*h2;
    
    fill(0);
    pushMatrix();
    translate(gap/2, ygap+h2);
    triangle(-d2, 0, d2, 0, 0, -h2);
    popMatrix();
    
    pushMatrix();
    translate(gap/2-d2, ygap+2*h2);
    triangle(-d2, 0, d2, 0, 0, -h2);
    translate(2*d2, 0);
    triangle(-d2, 0, d2, 0, 0, -h2);
    popMatrix();
    
    pushMatrix();
    translate(gap/2-d2*2, ygap+3*h2);
    triangle(-d2, 0, d2, 0, 0, -h2);
    translate(2*d2, 0);
    triangle(-d2, 0, d2, 0, 0, -h2);
    translate(2*d2, 0);
    triangle(-d2, 0, d2, 0, 0, -h2);
    popMatrix();
    
    pushMatrix();
    translate(gap/2-d2*3, ygap+4*h2);
    triangle(-d2, 0, d2, 0, 0, -h2);
    translate(2*d2, 0);
    triangle(-d2, 0, d2, 0, 0, -h2);
    translate(2*d2, 0);
    triangle(-d2, 0, d2, 0, 0, -h2);
    translate(2*d2, 0);
    triangle(-d2, 0, d2, 0, 0, -h2);
    popMatrix();
    
    popMatrix();
  }
  
  void tri_5(int c_, int r_) {

    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap*3/4);
    fill(255);
    triangle(-gap/3, 0, gap/3, 0, 0, -gap*sqrt(3)/3);
    
    translate(0, -gap*1.1/12);
    fill(0);
    float d = gap/6;
    triangle(-d*1.1, 0, d*1.1, 0, 0, -d*sqrt(3)*1.1);
    
    fill(255,0,0);
    triangle(-d/2*0.98, 0, d/2*0.98, 0, 0, -d*sqrt(3)/2*0.98);
  
    popMatrix();
  }
  
  void tri_6(int c_, int r_) {

    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    float d = gap/3.5;
    float h = d*sqrt(3);
    float rad = radians(30);
    
    pushMatrix();
    translate(gap*0.5, gap*0.61);
   
    rotate(0);
    fill(0);
    triangle(0, 0, d, -h, -d, -h);
    
    d = d*sqrt(3)/2;
    h = d*sqrt(3);
    rotate(rad);
    fill(255);
    triangle(0, 0, d, -h, -d, -h);
    
    d = d*sqrt(3)/2;
    h = d*sqrt(3);
    rotate(rad);
    fill(0);
    triangle(0, 0, d, -h, -d, -h);
    
    d = d*sqrt(3)/2;
    h = d*sqrt(3);
    rotate(rad);
    fill(255);
    triangle(0, 0, d, -h, -d, -h);
    
    d = d*sqrt(3)/2;
    h = d*sqrt(3);
    rotate(rad);
    fill(0);
    triangle(0, 0, d, -h, -d, -h);
    
    d = d*sqrt(3)/2;
    h = d*sqrt(3);
    rotate(rad);
    fill(255);
    triangle(0, 0, d, -h, -d, -h);
    
    d = d*sqrt(3)/2;
    h = d*sqrt(3);
    rotate(rad);
    fill(0);
    triangle(0, 0, d, -h, -d, -h);
    
    d = d*sqrt(3)/2;
    h = d*sqrt(3);
    rotate(rad);
    fill(255,0,0);
    triangle(0, 0, d, -h, -d, -h);
    popMatrix();
    
    popMatrix();
  }
  
}
