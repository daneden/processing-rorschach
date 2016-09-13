float xoff = 0;
float inc = 0.02;

void setup() {
  size(1000,1000);
}

void draw() {
  background(34);
  stroke(200);
  for(int i = -2; i < height * 2; i+=4) {
    float len = (noise(xoff) * width) / 1.5;
    line((width/2) - (len/2) - i/2, i, (width/2) + (len/2), i/2);
    xoff+=inc;
  }
  
  noLoop();
}

void mousePressed() {
  if(mouseX > width/2) {
    redraw();
  } else {
    saveFrame();
  }
}