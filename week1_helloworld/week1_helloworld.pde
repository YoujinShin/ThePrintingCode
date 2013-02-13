 /*
 Printing Code week1: Hello World
  1. You can only use black (0) and white (255). 
  2. You are only allowed to use triangle(), rect() and ellipse() once each, 
     and no other drawing functions are allowed (no beginShape or images). 
  3. Bring to class a design of an ice cream cone. 
 */
 
 import processing.pdf.*;
 
 float print_width = 15; // inch
 float print_height = 22; // inch
 float make_bigger = 30; // make_bigger = 40;
 
 void setup() {
   size(round(print_width * make_bigger), round(print_height * make_bigger));
   background(255);
   beginRecord(PDF, "grab.pdf");
   
   float a = width/2;
   float c = width/4;
   float d = width/8;
   
   // RECT
   int w = 30;
   int h = 10;
   int w_num = width/w;
   int h_num = height/h;
   
   /*
   noStroke();
   for(int i = 0; i < w_num; i++) {
     for(int j = 0; j < h_num; j++) { 
       strokeWeight(0.1);
       if (j % 2 == 0) {
         fill(255);
       } else {
         fill(0);
       }
       rect(i * w, j * h, w, h);
     }
   }
   */
   
   noStroke();
   //for(int i = 0; i < w_num; i++) {
     for(int j = 0; j < h_num; j++) { 
       strokeWeight(0.1);
       if (j % 2 == 0) {
         fill(255);
       } else {
         fill(0);
       }
       rect(0, j * h, width, h);
     }
   //}
   
   // ELLIPSE
   fill(255);
   strokeWeight(10);
   ellipse(a, a, a, a);
   
   // TRIANGLE 
   fill(0);
   triangle(a - c, height/2 - d, width-c, height/2 - d, a, height-d);
   
   endRecord();
 }
 
 void draw() {
 }
