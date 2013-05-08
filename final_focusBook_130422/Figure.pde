class Figure{
  
  int num;
  float degree, D;

  Figure() {
    num = (int) random(3, 8);
    degree = 360/num;  
    D = random(100, 250);
  }
  
  void display() {
    num = (int) random(3, 8);
    degree = 360/num; 
    D = random(100, 250);
    
    displayBasic(D*2, width/2, height/2);
    displayBasic(D, width/2, height/2);
    
    int num2 = num;//(int) random(3, 8);
    for(int i = 0; i < num2; i++) {
      float degree2 = 360/num2;
      float d2 = D/3;
      float x = cos(radians(i*degree2)) * (width/3);
      float y = sin(radians(i*degree2)) * (width/3);
      displayBasic(d2, x + width/2, y + height/2);
    }
    
  }
  
  void displayBasic(float d_, float x_, float y_) {
    
    float d = d_;
    
    pushMatrix();
    translate(x_, y_);
    fill(0);
    beginShape();
    for(int i = 0; i < num; i++) {
      float x = cos(radians(i*degree)) * (d/2);
      float y = sin(radians(i*degree)) * (d/2);
      vertex(x, y);
    }
    vertex(d/2, 0);
    endShape();
    
    fill(255);
    d = d/2;
    beginShape();
    for(int i = 0; i < num; i++) {
      float x = cos(radians(i*degree)) * (d/2);
      float y = sin(radians(i*degree)) * (d/2);
      vertex(x, y);
  
    }
    vertex(d/2, 0);
    endShape();
    popMatrix();
  }
  
}
