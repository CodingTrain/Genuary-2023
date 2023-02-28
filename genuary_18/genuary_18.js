// add this code to your p5.js -> sketch.js 🎉

function setup() {
  createCanvas(600, 600);
}

function drawGrid(x, y, w, h, r) {

  for (let i = 0; i < w; i+= r) {
    for (let j = 0; j < h; j+= r) {
      stroke(255);
      noFill();
      circle(x + i + random(-100,100), y + j + random(-100,100), r);

      if (random(1) < 0.5 && r > 8) {
        drawGrid(x+i, y+j, r, r, r/2);
      }
    }
  }
}

function draw() {
  background(0);
  drawGrid(0, 0, width, height, width/2);
  noLoop();
}
