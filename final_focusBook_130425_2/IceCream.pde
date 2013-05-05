class IceCream{
  
  int numPt = 20;
  color c1; // pink
  color c2; // ㅂㅔㅇㅣㅈㅣ
  
  IceCream() {
    
    size(500, 500);
    frameRate(1);
    
    c1 = color(252, 128, 165);
    c2 = color(250, 223, 173);
  }
  
  void display() {
    
    int r = 100;
    int num = 20;
    int tempn = (int) random(3);
    
    if(tempn == 0) {
      circle((int) random(5, 20), r);
    } else if(tempn == 1){
      repetition((int) random(50, 90)); // number of cone per line
    } else {
      repetition2((int) random(6, 20)); // number of cone per line
    }
  }
  
  void conedisplay(float tx, float ty, int radius_, color tempc1, color tempc2) {
    int radius = radius_;
    
    pushMatrix();
    
      // icecream
    fill(tempc1);
    noStroke();
    translate(tx, ty);
    beginShape();
    for(int i = 0; i < numPt; i++) {
      float rad = map(i, 0, numPt, 0, -PI);
      float x = radius * cos(rad);
      float y = radius * sin(rad);
      
      vertex(x, y);
    }
    vertex(radius*cos(0), radius*sin(0));
    endShape();
    
    // cone
    fill(tempc2);
    beginShape();
    vertex(0, radius/50);
    vertex(radius, radius/10); // right
    vertex(0, radius*2); // bottom
    vertex(-radius,0); // left
    vertex(0, radius/50);
    endShape();
    
    popMatrix();
  }
  
  void circle(int num_, int r_) {
    
    int r = r_;
    int num = num_;
    
    for(int i = 0; i<num; i++) {
      float rad = map(i, 0, num, 0, 2*PI);
      float x = 2*r * cos(rad);
      float y = 2*r * sin(rad);
      conedisplay(x+width/2, y+height/2,5, c1, c2);
  //    conedisplay(random(0,width), random(0,height), 10);
    }
    
    conedisplay(width/2, height*5/12, r, c1, c2);
  }
  
  void repetition(int num_) {
    
    int num = num_; // per row
    float w = (float) width/(num+1);
    int r = (int) 100/(num+5);
    
    for(int i = 1; i < num+1; i++) {
      
      for(int j = 1; j < num+1; j++) {
        
        float x = i*w;
        float y = j*w;
        int r1 = (int) r * (num +1 - abs(num/2 - i) -abs(num/2 - j))/6;
        conedisplay(x, y, r1, c1, c2);
        //text(i, x, y);
      }
      
    }
    conedisplay(width/2, height*5/12, r*30, color(255), color(255)); 
  }
  
  void repetition2(int num_) {
    
    int num = num_; // per row
    float w = (float) width/(num+1);
    int r = (int) 100/(num+5);
    color tempcolor1 = color(c1, 100);
    color tempcolor2 = color(c2, 100);
    int rannum = (int) random(num/2-1, num/2+1);
    
    for(int i = 1; i < num+1; i++) {
      
      for(int j = 1; j < num+1; j++) {
        
        float x = i*w;
        float y = j*w;
        conedisplay(x, y, r,tempcolor1, tempcolor2);
        //text(i, x, y);
      }
    }
    conedisplay(width/2, height*5/12, r*10, c1, c2);  
  }
}
