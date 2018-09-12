int x = 0;
int y = 0;
int a = 500;
int b = 0;
int c = 0;
int d = 500;
int e = 500;
int f = 0;
int g = 500;
float red = 0;
float green = 0;
float blue = 0;
void setup()
{
  size(500,500);
}
void topLeft()
{
  ellipse(x,y,x,y);
  x = x + 1;
  y = y + 1;
  if (x > 500) {
    x = 0;
    y = 0;
    red = random(255);
    green = random(255);
    blue = random(255);
  }
}
void topRight()
{
  ellipse(a,b,c,c);
  a = a - 1;
  b = b + 1;
  c = c + 1;
  if (a < 0) {
    a = 500;
    b = 0;
    c = 0;
  }
}
void bottomRight()
{
  ellipse(d,e,c,c);
  d = d - 1;
  e = e - 1;
  if (d < 0) {
    d = 500;
    e = 500;
  }
}
void bottomLeft()
{
  ellipse(f,g,c,c);
  f = f + 1;
  g = g - 1;
  if (f > 500) {
    f = 0;
    g = 500;
  }
}
void draw()
{
  stroke(red, blue, green);
  fill(0,0,0,0);
  topLeft();
  topRight();
  bottomRight();
  bottomLeft();
}
