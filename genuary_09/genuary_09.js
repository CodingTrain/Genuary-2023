// copy & paste this code in p5.js -> sketch.js file ✌️

let xoff = 0;
let yoff = 0;
let len = 100;

function setup() {
  createCanvas(600, 600);
}

function draw() {
  background(0);
  translate(width/2, height - len);
  randomSeed(1);
  xoff = 0;
  branch(len);
  yoff += 0.01;
}


function branch(len) {
  let weight = map(len, 4, 100, 1, 5);
  strokeWeight(weight);
  stroke(255);
  line(0, 0, 0, -len);
  translate(0, -len);

  let a = map(noise(xoff, yoff), 0, 1, -PI, PI);
  xoff += 0.01;
  len = len * 0.75;
  if (len >= 4) {
    if (random(1) < 0.9) {
      push();
      rotate(a);
      branch(len);
      pop();
    }
    if (random(1) < 0.9) {
      push();
      rotate(-a);
      branch(len);
      pop();
    }
  } else {
    noStroke();
    fill(random(100, 255), 0, random(200, 255), 100);
    circle(0, 0, 8);
  }
}
