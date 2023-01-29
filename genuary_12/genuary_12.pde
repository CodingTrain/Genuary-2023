

void setup() {
  size(800, 400);
  background(0);
  fill(255, 100);
  stroke(255, 0, 0);
  float r = 50;
  int counter = 0;
  for (float y = -r; y < height + r; y+=r) {
    for (float x = -r; x < width + r; x+=r*2) {
      if (counter % 2 == 0) {
        polygon(6, x + r, y, r);
      } else {
        polygon(6, x, y, r);
      }
    }
    counter++;
  }
}

void polygon(int n, float x, float y, float r) {
  pushMatrix();
  translate(x, y);

  beginShape();
  for (int i = 0; i < n; i++) {
    float a = map(i, 0, n, 0, TWO_PI);
    float x_ = r * cos(a);
    float y_ = r * sin(a);
    vertex(x_, y_);
  }
  endShape(CLOSE);


  popMatrix();
}
