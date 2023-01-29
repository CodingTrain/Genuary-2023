class Bubble {
  float x, y, r;
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
    stroke(255);
    noFill();
    circle(x, y, r*2);
  }
}
