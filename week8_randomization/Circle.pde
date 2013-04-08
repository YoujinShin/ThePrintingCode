class Circle {
  float d, tx, ty;
  int num;
  HSBColor[] colors;
  HSBColor temp;
  
  Circle(float d_, int num_, float tx_, float ty_, HSBColor[] colors_) {
    d = d_;
    num = num_;
    tx = tx_;
    ty = ty_;
    temp = new HSBColor(0, 0, 0);
    colors = new HSBColor[5];
    colors = colors_;
  }
  
  void display() {
    noStroke();
    pushMatrix();
    translate(tx, ty);
    for(int i = 0; i < 3; i++) {
      for(int j = 0; j < 3; j++) {
        temp = colors[(int) random(5)];
        fill(temp.h, temp.s, temp.b);
        ellipse(i*num*d, j*num*d, num*d, num*d);
      }
    }
    popMatrix();
 }
}
