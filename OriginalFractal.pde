public void setup()
{
  size(500, 500);
  background(255,178,102);
}
public void draw()
{
  myFractal(250, 250, 480);
}
public void myFractal(int x, int y, int siz)
{
  fill(255,(int)(Math.random()*204-104),(int)(Math.random()*204-102));
  ellipse(x,y,siz,siz);
  if (siz > 10) {
    myFractal(x-siz/2, y, siz/2);
    myFractal(x+siz/2, y, siz/2);
    myFractal(x, y+siz/2, siz/2);
    myFractal(x, y+siz/2, siz/2);
  }
}
