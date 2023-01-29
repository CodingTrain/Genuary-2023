
Bubble[] bubbles = new Bubble[50];


void setup() {
  size(800, 600);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble();
  }
}

void draw() {
  //fill(0, 10);
  //noStroke();
  background(0);
  //rect(0, 0, width, height);




  for (Bubble b : bubbles) {
    b.intersect = false;
  }

  for (Bubble a : bubbles) {
    for (Bubble b : bubbles) {
      if (a != b) {
        float d = dist(a.x, a.y, b.x, b.y);
        if (d < a.r + b.r) {
          a.intersect = true;
          b.intersect = false;
          strokeWeight(2);
          stroke(255);
          line(a.x, a.y, b.x, b.y);
        }
      }
    }
  }

  for (Bubble b : bubbles) {
    b.rise();
    b.show();
  }
}
