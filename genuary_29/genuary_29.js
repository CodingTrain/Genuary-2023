// add this code to your p5.js -> sketch.js 🎉

function setup() {
  createCanvas(400, 400)
  colorMode(HSB, 360, 255, 255);
  background(0);
  let w = 128;
  for (let r = 256; r > 2; r *= 0.75) {
    for (let y= 0; y < height; y+=w) {
      for (let x= 0; x < width; x+=w) {
        stroke(random(360), 255, 255);
        fill(random(360), 255, 255);
        polygon(Math.floor(random(1, 11)), x + w/2, y + w/2, r);
      }
    }
  }
}

function polygon(n, x, y, r) {
  push();
  translate(x, y);

  beginShape();
  for (let i = 0; i < n; i++) {
    let a = map(i, 0, n, 0, TWO_PI);
    let x_ = r * cos(a);
    let y_ = r * sin(a);
    vertex(x_, y_);
  }
  endShape(CLOSE);


  pop();
}
