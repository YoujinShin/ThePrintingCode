import geomerative.*;
import org.apache.batik.svggen.font.table.*;
import org.apache.batik.svggen.font.*;

import processing.pdf.*;
float print_width = 15; // inch 15
float print_height = 20; 
float make_bigger = 60; // make_bigger = 40;

int fontSize = 100;
int lengPoints = 1; // length between points
int diameter = 30;

void setup() 
{
  size(round(print_width * make_bigger), round(print_height * make_bigger));
  
  beginRecord(PDF, "myself.pdf");
  background(0);
  smooth();
  
  color myNewColor = color(255, 204,0,100); // yellow (
  color myNewColor2 = color(255);
  
  RG.init(this); // initialize the geomerative library  
  RFont font = new RFont("FreeSans.ttf", 190, RFont.LEFT); // create a new font
  //RFont font = new RFont("STHeiti-48.vlw", 180, RFont.LEFT); 
  RFont font2 = new RFont("FreeSans.ttf",80, RFont.LEFT); // create a new font
  String str = "A B C D E F G";
  String str2 = "H I J K L M";
  String str3 = "N O P Q R S T";
  String str4 = "U V W X Y Z";
  
  drawPolygonRect(50,200, font, str, color(80),0);
  drawPolygonRect(50,400, font, str2, color(80),1);
  drawPolygonRect(50,600, font, str3, color(80),2);  
  drawPolygonRect(50,800, font, str4, color(80),3);

  endRecord();
}

void drawPolygonRect(float x_, float y_, RFont font_, String str_, color myNewColor_,int is_) {
  pushMatrix();
  translate(x_, y_);
  RCommand.setSegmentLength(lengPoints); // how long between points
  RGroup group = font_.toGroup(str_).toPolygonGroup();
  
  for(int k = 0; k < group.elements.length; k++) {
    
    RPolygon polygon = (RPolygon) group.elements[k];
    color temp = color(255, 204,0);
    color colorLetter = color(0);
    
    if (is_==1 && (k==1 || k==2)) {
      colorLetter = temp;
    } else if(is_==2 && (k==0 || k==1)) {
      colorLetter = temp;
    }  else if(is_==3 && (k==0 || k==4)) {
      colorLetter = temp;
    } else {
      colorLetter= myNewColor_;
    }
    
    for(int i = 0; i < polygon.contours.length; i++) {
      // for each contour
      RContour curContour = polygon.contours[i];
      for(int j = 0; j < curContour.points.length; j++) {
        RPoint curPoint = curContour.points[j];
        noStroke();
        float kk = map(j, 0, curContour.points.length, 0, 255);
        float fwidth = map(kk, 0, 255, 30, 1);
        
        fill(colorLetter, kk);
        rectMode(CORNER);
        rect(curPoint.x, curPoint.y, fwidth, 1);   
      }      
    }
  }
  popMatrix();
}

void drawPolygonEl(float x_, float y_, RFont font_, String str_, color myNewColor_, int is_, int num_) {
  pushMatrix();
  translate(x_, y_);
  RCommand.setSegmentLength(lengPoints); // how long between points
  RGroup group = font_.toGroup(str_).toPolygonGroup();
  
  for(int k = 0; k < group.elements.length; k++) {
    RPolygon polygon = (RPolygon) group.elements[k];
    
    for(int i = 0; i < polygon.contours.length; i++) {
      // for each contour
      RContour curContour = polygon.contours[i];
      beginShape();
      
      for(int j = 0; j < curContour.points.length; j++) {
        RPoint curPoint = curContour.points[j];
        noStroke();
        float kk = map(j, 0, curContour.points.length, 0, 255);
        float fwidth = map(kk, 0, 255, 11, 1);
    
        fill(myNewColor_, kk);
        ellipse(curPoint.x+random(10), curPoint.y+random(10), 10, 10);   
        //vertex();
      }
      endShape();      
    }
  }
  popMatrix();
}
