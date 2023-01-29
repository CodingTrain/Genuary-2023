
Bubble[] bubbles = new Bubble[50];


void setup() {
  size(800, 600);
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble();
  }
}

void draw() {
  fill(0, 10);
  noStroke();
  rect(0, 0, width, height);
  for (Bubble b : bubbles) {
    b.rise();
    //b.show();
  }


  for (Bubble a : bubbles) {
    for (Bubble b : bubbles) {
      if (a != b) {
        float d = dist(a.x, a.y, b.x, b.y);
        if (d < a.r + b.r) {
          strokeWeight(2);
          stroke(255);
          line(a.x, a.y, b.x, b.y);
        }
      }
    }
  }
}
