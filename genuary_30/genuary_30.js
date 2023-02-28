// add this code to your p5.js -> sketch.js 🎉


function setup() {
  createCanvas(400, 400);
  background(0);
  let w = 128;

  let cols = Math.floor(width / w);
  let rows = Math.floor(height / w);


  for (let y= 0; y < rows; y++) {
    for (let x= 0; x < cols; x++) {
      stroke(255);
      fill(255);
      rectMode(CENTER);
      square(x*w + w/2, y*w + w/2, w/2);
    }
  }
}
