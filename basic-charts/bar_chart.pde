var x = { 50, 61, 83, 69, 71, 50, 29, 31, 17, 39 };

void setup() {
  size(150, 150);

  noStroke();
  fill(80);
  // Read one array element each time through the for loop
  for (var i = 0; i < x.length; i++) {
    rect(0, i * 15, x[i], 8);
  }

  drawLine();
}

void drawLine() {
  for (var i = 1; i < x.length; i++) {
    var start_x = x[i-1];
    var start_y = 4 + (i-1) * 15;
    var end_x = x[i];
    var end_y = 4 + i * 15;

    stroke(0, 200, 200);
    line(start_x, start_y, end_x, end_y);
  }
}
