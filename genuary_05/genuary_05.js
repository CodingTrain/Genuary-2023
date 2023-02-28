// add this code to your p5.js -> sketch.js 🎉

class Bubble {
  constructor() {
    this.x = random(width);
    this.r = random(16, 32);
    this.y = height + this.r * 5;
    this.intersects = false;
  }

  rise() {
    this.y = this.y - random(5);
    this.x = this.x + random(-2, 2);

    if (this.y < this.r) {
      this.y = height + this.r * 5;
    }
  }

  show() {
    noStroke();
    if (this.intersect) fill(255, 0, 0, 50);
    else fill(0, 255, 0, 50);
    circle(this.x, this.y, this.r*2);
  }
}

const bublesLength = 50;
let bubbles = [];


function setup() {
  createCanvas(600, 400);
  
  for (let i = 0; i < bublesLength; i++) {
    bubbles[i] = new Bubble();
  }
}

function draw() {
  background(0);
  
  for (let b of bubbles) {
    b.intersects = false;
  }


  for (let a of bubbles) {
    for (let b of bubbles) {
      if (a != b) {
        let d = dist(a.x, a.y, b.x, b.y);
        if (d < a.r + b.r) {
          a.intersect = true;
          b.intersect = false;
          strokeWeight(2);
          stroke(255);
          line(a.x, a.y, b.x, b.y);
        }
      }
    }
  }
  
  for (let b of bubbles) {
    b.rise();
    b.show();
  }
}
