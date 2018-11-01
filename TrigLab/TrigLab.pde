float x;
float y;
float radius = 200;

void setup() {
  size(900, 600);
  background(255);

  x = width/2;
  y = height/2;
}

void draw() {
  //stationary circle
  circle(x, y, radius);
  
  //sun
  fill(255,216,45);
  
}

void circle(float x, float y, float radius) {
  ellipse(x, y, 2*radius, 2*radius);
}