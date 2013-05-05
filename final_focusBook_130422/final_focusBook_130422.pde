Figure myfigure;

void setup() {
  
  size(500, 500);
  myfigure = new Figure();
  frameRate(1);

}

void draw() {
  
  background(255);
  myfigure.display();
  
}



