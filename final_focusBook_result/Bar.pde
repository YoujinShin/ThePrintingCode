class Bar {
  
  int cols = 6; 
  int rows = 3;
  float gap = width/cols;
  int r = 1; // start from 0  to 4
  
  Bar() {
    
  }
  
  void display() {
    
    bar_1(0, r); // x, y
    bar_2(1, r);
    bar_3(2, r);
    bar_4(3, r);
    bar_5(4, r);
    bar_6(5, r);
  }
  
  void bar_1(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    rectMode(CENTER);
    translate(gap/2, gap/2);
    fill(0);
    rect(0, 0, gap*0.6, gap*0.6);
    
    popMatrix();
  }
  
  void bar_2(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    rectMode(CENTER);
    fill(255);
    translate(gap/2, gap/2);
    rect(0, 0, gap*0.6, gap*0.6);
    
    fill(0);
    rect(0, 0, gap*0.4, gap*0.4);
    
    fill(255);
    rect(0, 0, gap*0.2, gap*0.2);
    
    popMatrix();
  }

  void bar_3(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    rectMode(CENTER);
    translate(gap/2, gap/2);
    fill(0);
    rect(0, 0, gap*0.6, gap*0.6);

    fill(255);
    rect(0, 0, gap*0.4, gap*0.4);
    
    fill(0);
    rect(-gap*0.15, 0, gap*0.21, gap*0.4);
    
    popMatrix();
  }
  
  void bar_4(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
//    fill(255);
//    rect(0.2*gap, 0.2*gap, gap*0.6, gap*0.6);
    
    // shape
    pushMatrix();
    rectMode(CORNER);
    translate(gap*0.2, gap*0.2);
    int n = 5;
    int c = 0;
    float d = gap*0.6/n;
    
    for(int i = 0; i < n; i++) {
      for(int j = 0; j < n; j++) {
        
//        int c = (int) random(3);
//        
        if(c == 0) {
          
          fill(255);
          c = 1;
        } else {
          
          fill(0);
          c = 0;
        }

        rect(d*i, d*j, d, d);
      }
    }
    popMatrix();
    
    popMatrix();
  }
  
  void bar_5(int c_, int r_) {
    
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(255);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
    rectMode(CENTER);
    
    fill(0);
    translate(gap/2, gap/2);
    rect(0, 0, gap*0.6, gap*0.6);
    
    fill(255);
    rect(0, 0, gap*0.4, gap*0.4);
    
    fill(0);
    rect(0, 0, gap*0.2, gap*0.2);
    
    fill(255,0,0);
    rect(-gap*0.1/2, 0, gap*0.1, gap*0.2);
    
    popMatrix();
  }
  
  void bar_6(int c_, int r_) {
 
    pushMatrix();
    translate(c_*gap, r_*gap); // col, row
    
    // background
    noStroke();
    fill(0);
    rectMode(CORNER);
    rect(0, 0, gap, gap);
    
    // shape
//    rectMode(CORNE);
    fill(255);
    rect(0, gap*0.1, gap, gap*0.02);
    fill(255,0,0);
    rect(0, gap*0.1*1.8, gap, gap*0.03);
    fill(255);
    rect(0, gap*0.1*5, gap, gap*0.24);
    fill(255);
    rect(0, gap*0.1*8, gap, gap*0.02);
    
    popMatrix();
  }
}
