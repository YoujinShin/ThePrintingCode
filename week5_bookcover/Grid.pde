class Grid {
  int cols, rows;
  float gutterSize, pageMargin;
  Module[][] modules;
  float moduleWidth, moduleHeight;
  
  Grid(int cols_, int rows_, float gutterSize_, float pageMargin_) {
    cols = cols_;
    rows = rows_;
    gutterSize = gutterSize_;
    pageMargin = pageMargin_;
    
    modules = new Module[cols][rows];
    
    float actualPageWidth = ((float)width - (2*pageMargin));
    float totalGutterWidth = (cols-1) * gutterSize;
    moduleWidth = (actualPageWidth - totalGutterWidth)/ (float)cols;
    
    float actualPageHeight = ((float)height - (2*pageMargin));
    float totalGutterHeight = (rows-1) * gutterSize;
    moduleHeight = (actualPageHeight - totalGutterHeight)/ (float)rows;
    
    for(int i = 0; i < cols; i++) {
      for(int j = 0; j < rows; j++) {
        modules[i][j] = new Module();
        modules[i][j].x = pageMargin + (i*moduleWidth) + (i*gutterSize);
        modules[i][j].y = pageMargin + (j*moduleHeight) + (j*gutterSize);
        modules[i][j].w = moduleWidth;
        modules[i][j].h = moduleHeight;
      }
    }
  }
    
  void display() {
    noFill();
    stroke(255, 0, 0, 100);
    rect(pageMargin, pageMargin, width - (2*pageMargin), height - (2*pageMargin));
    
    for(int i = 0; i < cols; i++) {
      for(int j = 0; j < rows; j++) {
        rect(modules[i][j].x, modules[i][j].y, modules[i][j].w, modules[i][j].h);
      }
    }
  }
}
