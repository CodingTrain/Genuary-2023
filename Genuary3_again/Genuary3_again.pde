PImage gloria;

void setup() {
  size(600, 505);
  gloria = loadImage("gloria.jpg");
  image(gloria, 0, 0);
}

void draw() {
  for (int i = 0; i < 100; i++) {
    int x1 = int(random(width));
    int y1 = int(random(height));
    int x2 = width-x1;
    int y2 = y1;

    int c1 = gloria.get(x1, y1);
    int c2 = gloria.get(x2, y2);

    gloria.set(x1, y1, c2);
    gloria.set(x2, y2, c1);
  }
  image(gloria, 0, 0);
}
