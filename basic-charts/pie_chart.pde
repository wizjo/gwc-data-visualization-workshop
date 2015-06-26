var x = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 39 };
var angles = {};

void setup() {
  size(400, 400);
  background(255);
  noStroke();

  var sum = 0;
  for(var i = 0; i < x.length; i++) {
    sum += x[i];
  }
  for(var i = 0; i < x.length; i++) {
    angles[i] = map(x[i], 0, sum, 0, 360);
  }
}

void draw() {
  pieChart(300, angles);
  exit();
}

void pieChart(diameter, data) {
  var lastAngle = 0;
  for (var i = 0; i < data.length; i++) {
    var s = map(i, 0, data.length, 0, 255);
    fill(s * 3 % 255, s * 5 % 255, s * 7 % 255, 200);

    arc(width/2, height/2, diameter, diameter, lastAngle, lastAngle+radians(angles[i]));
    lastAngle += radians(angles[i]);
  }
}
