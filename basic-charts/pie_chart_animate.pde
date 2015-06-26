var data = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 39 };
var index = 0;
var sum = 0;
var lastAngle = 0;

void setup() {
  size(400, 400);
  background(225);
  noStroke();
  smooth();

  for(var i = 0; i < data.length; i++) {
    sum += data[i];
  }
}

void draw() {

  if(frameCount % 15 == 0) {
    var angle = map(data[index], 0, sum, 0, TWO_PI);

    fill(frameCount * 3 % 255, frameCount * 5 % 255, frameCount * 7 % 255, 180);

    pushMatrix();
    translate(width/2, height/2);
    rotate(lastAngle);
    arc(0, 0, 300, 300, 0, angle);
    popMatrix();

    lastAngle += angle;
    index += 1;
  }

  if (index >= data.length) {
    exit();
  }
}
