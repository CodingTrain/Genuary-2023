float zoff = 0;

int[] colors = new int[]{#0a0a0a, #f7f3f2, #0077e1, #f5d216, #fc3503};

void setup() {
  size(800, 800);
  background(0);
}

void drawGrid(float x, float y, float w, float h, float r) {

  for (int i = 0; i < w; i+= r) {
    for (int j = 0; j < h; j+= r) {
      pushMatrix();
      int index = floor(random(colors.length));
      stroke(colors[index]);

      strokeWeight(r/16);
      noFill();
      float xoff = (x+i)/100;
      float yoff = (y+i)/100;
      float angle = TWO_PI*noise(xoff, yoff, zoff);

      translate(x+i + r/2, y+j+r/2);
      rotate(angle);

      line(-r, 0, r, 0);
      popMatrix();
      if (random(1) < 0.8 && r > 8) {
        drawGrid(x+i, y+j, r, r, r/2);
      }
    }
  }
}

void draw() {
  noStroke();
  fill(0, 25);
  rect(0, 0, width, height);
  randomSeed(1);
  drawGrid(0, 0, width, height, 400);
  zoff +=0.01;
}
