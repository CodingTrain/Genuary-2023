
void setup() {
  fullScreen();
  colorMode(HSB, 360, 255, 255);
  background(0);
  float w = 128;
  for (float r = 256; r > 2; r *= 0.75) {
    for (float y= 0; y < height; y+=w) {
      for (float x= 0; x < width; x+=w) {
        stroke(random(360), 255, 255);
        fill(random(360), 255, 255);
        polygon(int(random(1, 11)), x + w/2, y + w/2, r);
      }
    }
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
