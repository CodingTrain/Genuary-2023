class Bubble {
  float x, y, r;

  boolean intersect = false;

  Bubble() {

    x = random(width);
    r = random(16, 32);
    y = height + r * 5;
  }

  void rise() {
    y = y - random(5);
    x = x + random(-2, 2);

    if (y < r) {
      y = height + r * 5;
    }
  }

  void show() {
    noStroke();
    if (intersect) fill(255, 0, 0, 50);
    else fill(0, 255, 0, 50);
    circle(x, y, r*2);
  }
}
