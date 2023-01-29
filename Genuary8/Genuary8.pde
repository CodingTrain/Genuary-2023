
void setup() {
  size(400, 400);
}

float sdf(float x, float y) {
  float d = dist(x, y, 200, 200) - 100;
  return d / 50;
}


void draw() {
  loadPixels();
  for (int x = 0; x < width; x++) {
    for (int y = 0; y < height; y++) {
      int pix = x + y * width;
      float d = sdf(x, y);
      float r = map(d, -1, 1, 0, 255);
      float g = map(d, 1, -1, 0, 255);
      pixels[pix] = color(r, g, 0);
    }
  }
  updatePixels();
  noLoop();
}
