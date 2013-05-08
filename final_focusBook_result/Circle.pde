class Circle {
  
  int cols = 6; 
  int rows = 3;
  float gap = width/cols;
  int r = 0; // start from 0  to 4
  
  Circle() {
    
  }
  
  void display() {
    
    circle_1(0, r);
    circle_2(1, r);
    circle_3(2, r);
    circle_4(3, r);
    circle_5(4, r);
    circle_6(5, r);
  }
  
  void circle_1(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap/2);
    fill(255);
    ellipse(0, 0, gap/1.5, gap/1.5);
    
    popMatrix();
  }
  
  void circle_2(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap/2);
    
    fill(0);
    ellipse(0, 0, gap/1.5, gap/1.5);
    
    fill(255);
    ellipse(0, 0, gap/2, gap/2);
    
    fill(0);
    ellipse(0, 0, gap/3, gap/3);
    
    fill(255);
    ellipse(0, 0, gap/6, gap/6);
    
    popMatrix();
  }
  
  void circle_3(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap/2);
    fill(255);
    ellipse(0, 0, gap/2, gap/2);

    fill(0);
    ellipse(0, 0, gap/3, gap/3);
    
    fill(255);
    ellipse(gap/6, gap/6, gap/4, gap/4);
    
    popMatrix();
  }
  
  void circle_4(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap/2);
    fill(0);
    ellipse(0, 0, gap/2, gap/2);

    fill(255);
    ellipse(0, 0, gap/3, gap/3);
    
    fill(0);
    ellipse(0,0, gap/6, gap/6);
    
    int n = 10;
    for(int i = 0; i < n; i++) {
      
      float rad = radians(360/ n) * i;
      float r = gap/3;
      float x = r * cos(rad);
      float y = r * sin(rad);
      ellipse(x, y, gap/12, gap/12);
    }
    
    popMatrix();
  }
  
  void circle_5(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    translate(gap/2, gap/2);
    fill(0);
    ellipse(0, 0, gap/1.2, gap/1.2);

    fill(255);
    ellipse(0, 0, gap/1.5, gap/1.5);
    
    fill(255,0,0);
    ellipse(0,0, gap/2, gap/2);
    
    fill(255);
    ellipse(0,0, gap/3, gap/3);
    
    fill(0);
    ellipse(0,0, gap/6, gap/6);
    
    popMatrix();
  }
  
  void circle_6(int c_, int r_) {
    
      
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);

    // shape
    translate(0, gap/2);
    fill(255,0,0);
    ellipse(gap/2, 0, gap/2, gap/2);
    fill(0);
    ellipse(gap/2 - gap/6, 0, gap/2, gap/2);
    
    ellipse(gap/2 + gap/6, 0, gap/2, gap/2);

    noFill();
    stroke(255);
    strokeWeight(1.5);
    ellipse(gap/2, 0, gap/2, gap/2);
    ellipse(gap/2 - gap/6, 0, gap/2, gap/2);
    ellipse(gap/2 + gap/6, 0, gap/2, gap/2);
    popMatrix();
  }
}
