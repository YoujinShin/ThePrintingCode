class Grid {
  float d = 20;
  HSBColor[] colors;
  Rect[] rects;
  
  Grid(float d_, HSBColor[] colors_) {
    d = d_;
    colors = new HSBColor[5];
    rects = new Rect[22];
    colors = colors_;
    initialize();
  }
  
  void display() {
    stroke(300);
    for(int i = 0; i < 30; i++) {
      line(0, i*d, width, i*d);
    }
    for(int i = 0; i < 20; i++) {
      line(i*d, 0, i*d, height);
    }
  }
  
  void rectDisplay() {
    rects[0].display(d, colors[3]); //blue
    rects[1].display(d, colors[2]); //sky
    rects[2].display(d, colors[1]); //orange
    rects[3].display(d, colors[0]); //red
    rects[4].display(d, colors[2]); //sky
    rects[5].display(d, colors[2]); //sky
    rects[6].display(d, colors[0]); //red
    rects[7].display(d, colors[4]); //rihgt white
    rects[8].display(d, colors[3]); //middle blue
    rects[9].display(d, colors[3]); //middle blue down
    rects[10].display(d, colors[3]); //middle blue down2
    rects[11].display(d, colors[2]); //middle blue down2
    rects[12].display(d, colors[1]); //left down orange
    rects[13].display(d, colors[4]); //left down white
    rects[14].display(d, colors[2]); //left sky
    rects[15].display(d, colors[2]); //left sky
    rects[16].display(d, colors[3]); //left blue
    rects[17].display(d, colors[3]); //left blue
    rects[18].display(d, colors[2]); // sky
    rects[19].display(d, colors[2]);
    rects[20].display(d, colors[4]); //white
    rects[21].display(d, colors[4]); //white
  }
  
  void initialize() {
    rects[0] = new Rect(0, 0, 5, 8); //left up
    rects[1] = new Rect(0, 8, 5, 10); //left middle
    rects[2] = new Rect(5, 0, 15, 28); // right orange
    rects[3] = new Rect(0, 18, 9, 10); // left down
    rects[4] = new Rect(18, 14, 2, 6); // right middle
    rects[5] = new Rect(18.5, 20, 1.5, 3); // right middle
    rects[6] = new Rect(5, 0, 8, 3.5); // top middle
    rects[7] = new Rect(16, 15, 2, 4); //right down
    rects[8] = new Rect(11, 14, 5, 3); //middle
    rects[9] = new Rect(11, 17, 3, 2); //middle
    rects[10] = new Rect(12, 19, 1, 1); //middle
    rects[11] = new Rect(17.5, 20,1,0.5);// right small sky
    rects[12] = new Rect(3, 16, 8, 8); //left down orange
    rects[13] = new Rect(7, 20, 4, 4); //left down white
    rects[14] = new Rect(4, 9, 2, 7);
    rects[15] = new Rect(6, 14, 1, 1);
    rects[16] = new Rect(2, 3.5, 6.5, 5.5);
    rects[17] = new Rect(4, 9, 4.5, 2);
    rects[18] = new Rect(4.5, 2.5, 2, 2);
    rects[19] = new Rect(8.5, 3.5, 6, 6);
    rects[20] = new Rect(11.5, 3.5, 3, 3);
    rects[21] = new Rect(2, 11, 2, 2);
  }
}

