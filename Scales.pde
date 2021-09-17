void setup() {
  size(1000, 1000);
  //background(255, 183, 197);
  background(255, 255, 255);
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  int count = 1;
  int r = (int)Math.random() * 256+50;
  int g = (int)Math.random() * 256;
  int b = (int)Math.random() * 256+80;
  for(int h = 0; h <= 1000; h += 75) {
    if (count == 1){
      for (int x = 0; x <= 1000; x += 100) {
        stroke(r+(x+h)/9, g, b);
        row(x, h);
        count -= 1;
        }
      }
     else {
      for (int x = -50; x <= 1000; x += 100) {
        stroke(r+(x+h)/9, g, b);
        row(x, h);
        count += 1;
            }
    }

    }
}

void row(int h, int x) {
  //stroke((int)r, (int)g, (int)b); //tbd to change int to variables for gradient
  int y = h;
  scale(x, y);
//  for(int i = 0; i <= 500; i += 98.5) {
//    if(y == 80){
//      scale(i, 80);
//      y += 20;
//    }
//    else {
//      scale(i, 100);
//      y -= 20;
//    }
//  }
}
void scale(int x, int y) {
  fill(255, 255, 255);
  strokeWeight(8);
  // bezier(120, 80,  120, 150, 220, 150, 220, 80); // (x1, y1, anchorx1, anchory1, anchorx2, anchory2, x2, y2)
  bezier(x, y,  x, y+70, x+100, y+70, x+100, y);
}
