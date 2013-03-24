int[][] numbers = new int[16][2];
int a = 120;
int b = 100;
int size = 200;
int startNum = 0;
int k1, k2, k3, k4;
int t = 255;

HSBColor color1;
HSBColor color2;

void setup() {
  size(1100, 800);
  colorMode(HSB, 360, 100, 100);
 
  initialize();
}
void draw() {
  background(340);
  fill(200);
  rect(a - 100,b-100,size*4 + 200, size*3+200);
  
  //outline();
  beginning();
  pipe();
  waterdrop();
}

void outline() {
  stroke(300,t);
  strokeWeight(1);
  // vertical line
  line(numbers[0][0], numbers[0][1],numbers[3][0], numbers[3][1]);
//  line(numbers[4][0], numbers[4][1],numbers[7][0], numbers[7][1]);
//  line(numbers[8][0], numbers[8][1],numbers[11][0], numbers[11][1]);
  line(numbers[12][0], numbers[12][1],numbers[15][0], numbers[15][1]);
  
  // horizontal line
  line(numbers[0][0], numbers[0][1],numbers[15][0], numbers[15][1]);
  line(numbers[1][0], numbers[1][1],numbers[14][0], numbers[14][1]);
  line(numbers[2][0], numbers[2][1],numbers[13][0], numbers[13][1]);
  line(numbers[3][0], numbers[3][1],numbers[12][0], numbers[12][1]);
}

void waterdrop() {
  noStroke();
  fill(color2.h, color2.s, color2.b,t);
  ellipse(numbers[15][0]+size, numbers[15][1]+1.6*size, 20, 20);
  ellipse(numbers[15][0]+size, numbers[15][1]+2.0*size, 40, 40);
  ellipse(numbers[15][0]+size, numbers[15][1]+2.6*size, 80, 80);
}

void pipe() {
//  stroke(color2.h, color2.s, color2.b);
  stroke(color1.h, color1.s, color1.b,t);
  line(numbers[15][0], numbers[15][1],numbers[15][0]+size, numbers[15][1]+size);
}

void beginning() {
  strokeWeight(60);
  
  if (startNum%50 ==0) {
    k1 = 0;
    k2 = (int) random(1, 7);
    k3 = (int) random(8, 14);
    k4 = 15;
    
    color1 = new HSBColor(random(360), 50, 360);
    int complimentaryHue = (color1.h + 180) % 360;
    color2 = new HSBColor(complimentaryHue, color1.s, color1.b);
  }
  startNum++;
  stroke(color1.h, color1.s, color1.b,t);
  line(numbers[k1][0], numbers[k1][1],numbers[k2][0], numbers[k2][1]);
  line(numbers[k2][0], numbers[k2][1],numbers[k3][0], numbers[k3][1]);
  line(numbers[k3][0], numbers[k3][1],numbers[k4][0], numbers[k4][1]);
}

void initialize() {
  // first column 
  numbers[0][0] = a;
  numbers[0][1] = b;
  
  numbers[1][0] = a;
  numbers[1][1] = b + size;
  
  numbers[2][0] = a;
  numbers[2][1] = b + 2*size;

  numbers[3][0] = a;
  numbers[3][1] = b + 3*size;
    
  // second column
  numbers[4][0] = a + size;
  numbers[4][1] = b;
  
  numbers[5][0] = a + size;
  numbers[5][1] = b + size;

  numbers[6][0] = a + size;
  numbers[6][1] = b + 2*size;
  
  numbers[7][0] = a + size;
  numbers[7][1] = b + 3*size;
    
  // third column
  numbers[8][0] = a + 2*size;
  numbers[8][1] = b;

  numbers[9][0] = a + 2*size;
  numbers[9][1] = b + size;
  
  numbers[10][0] = a + 2*size;
  numbers[10][1] = b + 2*size;
  
  numbers[11][0] = a + 2*size;
  numbers[11][1] = b + 3*size;
    
  // fourth column (apposite dir)
  numbers[15][0] = a + 3*size;
  numbers[15][1] = b;

  numbers[14][0] = a + 3*size;
  numbers[14][1] = b + size;
  
  numbers[13][0] = a + 3*size;
  numbers[13][1] = b + 2*size;
  
  numbers[12][0] = a + 3*size;
  numbers[12][1] = b + 3*size;
}
