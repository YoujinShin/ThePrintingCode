import processing.pdf.*;

PFont font;
float print_width = 15; // inch
float print_height = 19; // inch 22
float make_bigger = 60; // make_bigger = 40;
int cols, rows;
float gutterSize, pageMargin;

void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  
  beginRecord(PDF, "bookcover.pdf");
  background(255);
  
  // Create grid !
  cols = 8;//(int)random(2,15); // 2,8
  rows = cols;
  gutterSize = 10;
  pageMargin = 50;
  Grid grid = new Grid(cols, rows, gutterSize, pageMargin); // cols, rows, gutterSize, pageMargin
  
  // Draw triangle
  drawTriangle(grid);
  
  // Title of book
  String title = "Outlier";
//  font = loadFont("LetterGothicStd-Bold-48.vlw");
  font = createFont("LetterGothicStd-Bold-48", 64);
  Module titleModule = grid.modules[0][0];
  fill(0);
  textFont(font);
  text(title, titleModule.x, titleModule.y, titleModule.w * 100, titleModule.h * 100);
  
  // Author of book
  String author = "Malcolm Gladwell";
  //Module authorModule = grid.modules[0][(int)(rows)/2];
  Module authorModule = grid.modules[0][1];
  fill(155);
  textFont(font);
  text(author, authorModule.x, authorModule.y, authorModule.w * 200, authorModule.h * 100);
  
  //grid.display();
  endRecord();
}

void drawTriangle(Grid grid_) {
  Grid tempGrid = grid_;
  for(int j = rows-1; j > 0; j--) {
    for(int i = rows-j; i < cols; i++) {
      fill(20);
      noStroke();
//      
//      noFill();
//      stroke(200);
//      strokeWeight(2);
      
      beginShape();
      vertex(tempGrid.modules[i][j].x + tempGrid.modules[i][j].w, tempGrid.modules[i][j].y);
      vertex(tempGrid.modules[i][j].x, tempGrid.modules[i][j].y + tempGrid.modules[i][j].h);
      vertex(tempGrid.modules[i][j].x + tempGrid.modules[i][j].w, tempGrid.modules[i][j].y + tempGrid.modules[i][j].h);
      vertex(tempGrid.modules[i][j].x + tempGrid.modules[i][j].w, tempGrid.modules[i][j].y);
      endShape();
    }
  }
  int num = (int)(rows-1)/2;
  float tempx = tempGrid.modules[num][num].x;
  float tempy = tempGrid.modules[num][num].y;
  
//  fill(255, 0, 0, map(cols, 2, 15, 120, 255));
  fill(255, 0, 0, 220);
  
  pushMatrix();
  rotate(map(cols, 2, 15, 0, PI/18));
  beginShape();
  vertex(tempx, tempy);
  vertex(tempx + tempGrid.moduleWidth, tempy);
  vertex(tempx + tempGrid.moduleWidth, tempy + tempGrid.moduleHeight);
  vertex(tempx, tempy);
  endShape();
  popMatrix();
}
