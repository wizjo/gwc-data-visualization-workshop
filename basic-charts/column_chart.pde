var x = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 39 };
var i = 0;

void setup() {
  size(200, 200);
  background(200);
  noStroke();
}

void draw() {
  if (frameCount % 10 == 0) {
    fill(frameCount * 3 % 255, frameCount * 5 % 255, frameCount * 7 % 255, 200);
    pushMatrix();
    translate(i * 15, 0);
    rect(5, 200 - x[i] * 2, 10, x[i] * 2);
    popMatrix();

    i++;
  }

  if(i >= x.length) {
    drawLine();
    exit();
  }
}

void drawLine() {
  for(var j = 1; j < x.length; j++) {
    var start_x = 10 + (j - 1) * 15;
    var start_y = 200 - x[j-1] * 2;
    var end_x = 10 + j * 15;
    var end_y = 200 - x[j] * 2;
    stroke(50, 0, 255);
    line(start_x, start_y, end_x, end_y);
  }
}
