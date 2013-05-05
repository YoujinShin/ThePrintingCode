Parents myparent1;
Parents myparent2;
Parents myparent3;
Parents myparent4;
Candy mycandy;
Figure myfigure;
IceCream myicecream;
boolean hey = false;

int colorChoice = 0; // 0 -> black & white, 1 -> color
PImage img1, img2, img3, img4;

void setup() {
  
  size(500, 500);
  img1 = loadImage("bbom1.jpg");
  img2 = loadImage("bbom2.jpg");
  img3 = loadImage("bbom3.jpg");
  img4 = loadImage("bbom4.jpg");
  
  myfigure = new Figure(colorChoice); 
  myparent1 = new Parents(img1);
  myparent2 = new Parents(img2);
  myparent3 = new Parents(img3);
  myparent4 = new Parents(img4);
  mycandy = new Candy();
  myicecream = new IceCream();
  
  frameRate(0.5);
}

void draw() {
  
  background(255);
//  myfigure.display();
//  myparent.display();
//  mycandy.display();
//  myicecream.display();

  int tempn = (int) random(2);
    
  if(hey == false) {
    
    if(tempn == 0) {
      mycandy.display();
    } else {
      myicecream.display();
    }
    
  } else {
    
    displayParents();
  }

  
}

void keyPressed() {
//  hey = true;
}

void displayParents() {

  int tempn = (int) random(3);
  
  if(tempn == 0) {
    myparent1.display();
    
  } else if(tempn == 1) {
    myparent2.display();
    
  } else if(tempn == 2) {
    myparent3.display();
    
  } else {
    myparent4.display();
    
  }
}




