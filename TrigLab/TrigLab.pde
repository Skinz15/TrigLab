float x;
float y;
float radius = 200;

void setup() {
  size(900, 600);
  background(255);

  x = width/2;
  y = height/2;
  
   //stationary circle
  circle(x, y, radius);
}

void draw() {
    //sun
  fill(255,216,45);
  circle(x,y,radius/4);
}

void circle(float x, float y, float radius) {
  ellipse(x, y, 2*radius, 2*radius);
}