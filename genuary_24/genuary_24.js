// add this code to your p5.js -> sketch.js 🎉

let zoff = 0;

let colors = ["#0a0a0a", "#f7f3f2", "#0077e1", "#f5d216", "#fc3503"];

function setup() {
  createCanvas(400, 400);
  background(0);
}

function drawGrid(x, y, w, h, r) {

  for (let i = 0; i < w; i+= r) {
    for (let j = 0; j < h; j+= r) {
      push();
      let index = floor(random(colors.length));
      stroke(colors[index]);

      strokeWeight(r/16);
      noFill();
      let xoff = (x+i)/100;
      let yoff = (y+i)/100;
      let angle = TWO_PI*noise(xoff, yoff, zoff);

      translate(x+i + r/2, y+j+r/2);
      rotate(angle);

      line(-r, 0, r, 0);
      pop();
      if (random(1) < 0.8 && r > 8) {
        drawGrid(x+i, y+j, r, r, r/2);
      }
    }
  }
}

function draw() {
  noStroke();
  fill(0, 25);
  rect(0, 0, width, height);
  randomSeed(1);
  drawGrid(0, 0, width, height, width/2);
  zoff +=0.01;
}
