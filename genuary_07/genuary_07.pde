
Bubble[] bubbles = new Bubble[250];
PImage notc;

void setup() {
  size(400, 400);
  notc = loadImage("notc.jpg");
  for (int i = 0; i < bubbles.length; i++) {
    bubbles[i] = new Bubble();
  }
  background(0);
}

void draw() {
  fill(0, 1);
  noStroke();
  rect(0, 0, width, height);




  for (Bubble b : bubbles) {
    b.rise();
    b.show();
  }
}
