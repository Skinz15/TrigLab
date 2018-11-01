float x;
float y;
float radius = 200;
float theta = 0;

void setup() {
  size(900, 600);
  background(255);

  x = width/2;
  y = height/2;
}

void draw() {
  background(255);

  //stationary circle
  fill(255);
  circle(x, y, radius);

  //sun
  fill(255, 216, 45);
  circle(x, y, radius/4);
  
  earth();
}

void circle(float x, float y, float radius) {
  ellipse(x, y, 2*radius, 2*radius);
}

void earth() {
  fill(60, 92, 252);
  circle(width/2+radius*cos(radians(theta)), height/2+radius*sin(radians(theta)), radius/8);
  theta++;
}

void moon(){
  
}