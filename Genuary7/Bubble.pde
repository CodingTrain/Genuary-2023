class Bubble {
  float x, y, r;

  boolean intersect = false;

  Bubble() {

    x = random(width);
    r = random(4, 8);
    y = height + r * 5;
  }

  void rise() {
    y = y - random(3);
    x = x + random(-1, 1);

    if (y < r) {
      y = height + r * 5;
    }
  }

  void show() {
    noStroke();

    color c = notc.get(int(x), int(y));
    fill(c, 50);
    circle(x, y, r*2);
  }
}
