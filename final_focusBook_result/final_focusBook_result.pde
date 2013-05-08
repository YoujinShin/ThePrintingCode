import processing.pdf.*;

float print_width = 6;
float print_height = 3;
float make_bigger = 200; // 60

int cols = 6; 
int rows = 3;
float gap = 0;

Circle mycircle;
Bar mybar;
Tri mytri;

void setup() {
  
  size(round(print_width*make_bigger), round(print_height*make_bigger));
  
  initialize();
  beginRecord(PDF, "focusbook.pdf");
  
  background(255);
  
  gap = width/cols;
  drawGrid();
  
  mycircle.display();
  mybar.display();
  mytri.display();
  
  endRecord();
}

void drawGrid() {
  
  stroke(180);
  strokeWeight(1);
  
  for(int i = 0; i < cols; i++) {
    
    line(gap*i, 0, gap*i, height);
  }
  
  for(int j = 0; j < rows; j++) {
    
    line(0, gap*j, width, gap*j);
  }
}

void initialize() {
  
  mycircle = new Circle();
  mybar = new Bar();
  mytri = new Tri();
}
