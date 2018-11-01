//orbitting lab

//declare variables
float x;
float y;
float radius = 200;
//earth variables
float ex;
float ey;
int theta = 0;
//moon variables
float mx;
float my;
int eTheta = 5;

//window setup and giving value to x and y
void setup() {
  size(900, 600);
  background(255);

  x = width/2;
  y = height/2;
}

void draw() {
  background(0);

  //stationary circle
  fill(0);
  circle(x, y, radius);

  //sun
  fill(255, 216, 45);
  circle(x, y, radius/4);

  //the "simplifying this codes with less info" variables
  //earth
  ex = x+radius*cos(radians(theta));
  ey = y+radius*sin(radians(theta));
  //moon
  mx = ex +.4*radius*cos(radians(eTheta));
  my = ey +.4*radius*sin(radians(eTheta));
  
  //drawing these methods
  earth();
  moon();
}

//circle method that avoids the use of ellipses
void circle(float x, float y, float radius) {
  ellipse(x, y, 2*radius, 2*radius);
}

// draws the earth circle and moves along the stationary circle around the sun
void earth() {
  fill(60, 92, 252);
  circle(ex, ey, radius/8);
  theta++;
}

//draws the moon circle which rotates around the moon
void moon() {
  fill(200);
  circle(mx, my, radius/16);
  eTheta = eTheta + 2;
}