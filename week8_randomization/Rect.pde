class Rect {
  float xpt, ypt;
  float wpt, hpt;
  float d;
  HSBColor mycolor;
  
  Rect(float xpt_, float ypt_, float wpt_, float hpt_) {
    xpt = xpt_;
    ypt = ypt_;
    wpt = wpt_;
    hpt = hpt_;
  }
  
  void display(float d_, HSBColor mycolor_) {
    d = d_;
    mycolor = mycolor_;
    noStroke();
    fill(mycolor.h, mycolor.s, mycolor.b);
    rect(xpt*d, ypt*d, wpt*d, hpt*d);
  }
}
