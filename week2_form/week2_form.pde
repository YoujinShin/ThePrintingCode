/*
 Printing Code week2: Form
 Write a Processing sketch that outputs 2 shapes on a page. 
 The first shape should be inspired by the word “wet”. 
 The second shape should be inspired by the word “sharp”. 
 Use only black and white. 
 You have to use beginShape(), and all vertex points have to be created in a for loop.
 */

import processing.pdf.*;

float print_width = 15; // inch
float print_height = 8; // inch 22
float make_bigger = 60; // make_bigger = 40;

int circleRadius = 20;
int numPoints = 10;

void setup() {
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  
  beginRecord(PDF, "rain.pdf");
  background(0);

  // First shape: light 
  //fill(255);
  //noStroke();
  noFill();
  stroke(255);
  
 
  float angle = 360 / numPoints;
  strokeWeight(0.5);
  //fill(255);
  for (int j = 0; j < 30; j++) {
    pushMatrix();
    beginShape();
    translate(random(width), random(height - height/4, height));
    // circle
    for (int i = 0; i < numPoints + 3; i++) {
      float x = cos(radians(i * angle)) * (circleRadius + random(10));
      float y = sin(radians(i * angle)) * (circleRadius + random(0));
      curveVertex(x, y);
    }
    endShape();
    popMatrix(); 
  }
  
  fill(255);
  // Second shape: rain
  stroke(0);
  
  for (int i = 0; i < 100; i++) {
    pushMatrix();
    beginShape();  
    translate(random(width), random(height - height/4));
    // each rain drop
    vertex(0, 0);
    vertex(0, random(80, 200));
    vertex(random(2), random(40,60));
    vertex(random(2), random(10,20));

    endShape();
    popMatrix();
  }

  endRecord();
}

void draw() {
}

