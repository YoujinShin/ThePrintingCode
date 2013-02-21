import toxi.color.*;
import toxi.color.theory.*;
import toxi.util.datatypes.*;

int circleRadius = 250;
int numPoints = 5;
float distance = 10;

import processing.pdf.*;

float print_width = 15; // inch
float print_height = 15; // inch 22
float make_bigger = 60; // make_bigger = 40;

void setup()
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  
  beginRecord(PDF, "myself.pdf");
  background(255);
  colorMode(HSB, 1, 1, 1);
  fill(0);
  
  translate(width/2 + 50, height /2 +100);
  float angle = 360 / numPoints;
 
  beginShape();
  
  TColor myNewColor = TColor.newHSV(random(0,1), 1, 1);
  TColor myOriginalColor = TColor.newHSV(random(0,1), 1, 1);
  myOriginalColor.desaturate(0.7);
  //background(myOriginalColor.hue(), myOriginalColor.saturation(), myOriginalColor.brightness());
  
  float k = random(0,300);
  for(int i = 0; i < numPoints+3; i++)
  {
     k = random(0,100);
     TColor randColor = TColor.newHSV(random(0,1), 1, 1);
     randColor.desaturate(0.4);
     
     float x = cos(radians(i * angle)) * circleRadius + k;
     float y = sin(radians(i * angle)) * circleRadius + k;
     distance = dist(x, y, width / 2, height / 2);
     println(distance);
     curveVertex(x, y);
     
     drawCircle(x, y, randColor);
     myNewColor = myOriginalColor.blend(randColor, 0.4);
  }
  stroke(myNewColor.hue(), myNewColor.saturation(), myNewColor.brightness());
  noFill();
  endShape();
  
  
  endRecord();
}

void drawCircle(float tx, float ty, TColor tcolor) {
  noStroke();
  fill(tcolor.hue(), tcolor.saturation(), tcolor.brightness(), 150);
  float j = map(distance, 300, 700, 50, 100);
  ellipse(tx, ty, j, j);
}
