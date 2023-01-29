
void setup() {
  size(1024, 1024);
  background(0);
  float w = 128;

  int cols = int(width / w);
  int rows = int(height / w);

  int r1 = int(random(cols));
  int r2 = int(random(rows));


  for (float y= 0; y < rows; y++) {
    for (float x= 0; x < cols; x++) {
      stroke(255);
      fill(255);
      rectMode(CENTER);
      push();

      translate(x*w + w/2, y*w + w/2);
      if (x == r1 && y == r2) {
        rotate(radians(2));
        fill(245);
      }
      square(0, 0, w/2);
      pop();
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
