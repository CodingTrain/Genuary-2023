// add this code to your p5.js -> sketch.js 🎉

function setup() {
  createCanvas(600, 400);
  background(0);
  fill(255, 100);
  stroke(255, 0, 0);
  let r = 50;
  let counter = 0;
  for (let y = -r; y < height + r; y+=r) {
    for (let x = -r; x < width + r; x+=r*2) {
      if (counter % 2 == 0) {
        polygon(6, x + r, y, r);
      } else {
        polygon(6, x, y, r);
      }
    }
    counter++;
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
