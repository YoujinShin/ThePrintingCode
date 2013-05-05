class Candy {

  color c1;
  color c2;
  
  Candy() {
    c1 = color(239, 48, 36);
    c2 = color(210);
  }
  
  void display() {
  
    background(255, 253, 208, 30);
    float tempx = random(width/3, width*2/3);
    float tempy = random(height/3,height*2/3);
    int tempr = 40;
    int num = (int) random(5, 9);
    int tempn = (int) random(2);
    
    if(tempn == 0) {
      circle();
    } else {
      repetition((int) random(4, 15)); // number of cone per line
    } 
    
  }
  
  void candydisplay(float x_, float y_, int r, color c1_, color c2_) {
    
    pushMatrix();
  
    translate(x_, y_);
    rotate(random(-PI/3, PI/3));
    noStroke();
    
    int num = 20; 
    int radius = r;
    
    // bar
    beginShape();
    stroke(c2_);
    fill(c2_); // grey
    vertex(radius/10, 0);
    vertex(radius/10, 4*radius); // right
    vertex(-radius/10, 4*radius); // bottom
    vertex(-radius/10,0); // left
  //  vertex(0, radius/50);
    endShape();  
    
    // candy
    stroke(c1_);
    beginShape();
    float x = 0;
    float y = 0;
    fill(c1_);//227, 38, 54); // red
    curveVertex(radius*cos(0), radius*sin(0));
    for(int i = 0; i < num+1; i++) {
      float rad = map(i, 0, num-1, 0, 2*PI);
      x = radius * cos(rad) + random(radius)/30;
      y = radius * sin(rad) + random(radius)/30;
      curveVertex(x, y);
    }
    curveVertex(x, y);
    endShape();
    
    popMatrix();
  }
  
  void circle() {
    
    float tempx = width/2 + random(10);
    float tempy = height/2 + random(10);
    int tempr = (int) random(50, 70);
    int num = (int) random(6, 11);
    
    candydisplay(tempx, tempy, tempr, color(c1, 243), c2);
    fill(255);
    text("JUNHO",tempx-tempr/2, tempy);
    
    for(int i = 0; i <num; i++) {
      float rad = map(i, 0, num, 0, 2*PI);
      float x = 3*tempr*cos(rad) + random(tempr/7);
      float y = 3*tempr*sin(rad) + random(tempr/7);
//      candydisplay(x+tempx, y+tempy, (int) tempr/6, color(255), color(255));
      candydisplay(x+tempx, y+tempy, (int) tempr/9, color(c1, 150), color(c2, 180));
    }
    
  }
  
  void repetition(int num_) {
    
    int num = num_; // per row
    float w = (float) width/(num+1);
    int r = (int) 100/(num+5);
    color tempcolor1 = color(c1, 100);
    color tempcolor2 = color(c2, 200);
    int rannum = (int) random(num/2-1, num/2+1);
    
    for(int i = 1; i < num+1; i++) {
      
      for(int j = 1; j < num+1; j++) {
        
        float x = i*w;
        float y = j*w;
        noStroke();
        fill(tempcolor2);
        //rect(x, y, r*4, r/2);
        candydisplay(x, y, r,color(255), color(255));
        //text(i, x, y);
      }
    }
//    candydisplay(width/2, height*5/12, r*20, color(255), tempcolor2);  
    candydisplay(width/2, height*5/12, r*8, c1, c2);  
    fill(255);
    text("JUNHO",width/2-5*r, height*5/12-r);
  }
}
