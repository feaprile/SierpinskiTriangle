
int myColor = (int)Math.random()*255;
public void setup()
{
  size(700, 700);

  background(150);
}
public void draw() {
  background(0);
  fill(0,255,0);
  sierpinski(150, 700, mouseX);
  secondSierpinski(0, 700, mouseY);
  thirdSierpinski(300, 700, mouseX);
  fourthSierpinski(-150, 700, mouseY);
}
public void sierpinski(int x, int y, int len) {
  if (len <= 30) {
    fill(x,y,(x+y)/1.5);
    triangle(x, y, x+len/2, y-len, x+len, y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
public void secondSierpinski(int x, int y, int len) {
  if (len<=30) {
    fill(x,y,(x+y)/3);
    triangle(x, y, x-len/2, y+len, x-len, y);
  } else {
    secondSierpinski(x, y, len/2);
    secondSierpinski(x +len/2, y, len/2);
    secondSierpinski(x+len/4, y-len/2, len/2);
  }
}

public void thirdSierpinski(int x, int y, int len) {
  if (len<=30) {
    fill(x,y,(x+y)/6);
    triangle(x, y, x-len/2, y+len, x-len, y);
  } else {
    thirdSierpinski(x, y, len/2);
    thirdSierpinski(x +len/2, y, len/2);
    thirdSierpinski(x+len/4, y-len/2, len/2);
  }
}

public void fourthSierpinski(int x, int y, int len) {
  if (len<=30) {
    fill(x,y,(x+y)/8);
    triangle(x, y, x-len/2, y+len, x-len, y);
  } else {
    fourthSierpinski(x, y, len/2);
    fourthSierpinski(x +len/2, y, len/2);
    fourthSierpinski(x+len/4, y-len/2, len/2);
  }
}
