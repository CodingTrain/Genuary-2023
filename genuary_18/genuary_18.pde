
void setup() {
  size(800, 800);
}

void drawGrid(float x, float y, float w, float h, float r) {

  for (int i = 0; i < w; i+= r) {
    for (int j = 0; j < h; j+= r) {
      stroke(255);
      noFill();
      circle(x + i + random(-100,100), y + j + random(-100,100), r);

      if (random(1) < 0.5 && r > 8) {
        drawGrid(x+i, y+j, r, r, r/2);
      }
    }
  }
}

void draw() {
  background(0);
  drawGrid(0, 0, width, height, 400);
  noLoop();
}
