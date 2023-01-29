

float xoff = 0;
float yoff = 0;
void setup() {
  size(800, 400);
}

void draw() {
  background(0);
  translate(width/2, 400);
  randomSeed(1);
  xoff = 0;
  branch(100);
  yoff += 0.01;
}


void branch(float len) {
  strokeWeight(2);
  stroke(255);
  line(0, 0, 0, -len);
  translate(0, -len);

  float a = map(noise(xoff, yoff), 0, 1, -PI, PI);
  xoff += 0.01;
  len = len * 0.75;
  if (len > 4) {
    if (random(1) < 0.9) {
      pushMatrix();
      rotate(a);
      branch(len);
      popMatrix();
    }
    if (random(1) < 0.9) {
      pushMatrix();
      rotate(-a);
      branch(len);
      popMatrix();
    }
  } else {
    noStroke();
    fill(0, 255, 0, 100);
    circle(0, 0, 8);
  }
}
