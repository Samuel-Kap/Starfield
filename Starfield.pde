//Particle bob;
double pos1 =Math.random()*500+ Math.random()*500;
double pos2 =Math.random()*500+ Math.random()*500;
Particle stuff[]= new Particle[1000];
void setup()
{
  for (int i=0; i<stuff.length; i++)
  {
    stuff[i] = new Particle();
    stuff[0]= new OddballParticle();
  }
  //bob=new Particle();
  size(1000, 1000);
}
void draw()
{
  noStroke();
  background(160);
  for (int i=0; i<stuff.length; i++)
  {
    stuff[i].move();
    stuff[i].show();
  }
  // bob.move();
  //bob.show();
}
void mousePressed()
{
  if (mousePressed && (mouseButton == LEFT)) {
    pos1 =Math.random()*500+ Math.random()*500;
    pos2 =Math.random()*500+ Math.random()*500;
    for (int i=0; i<stuff.length; i++)
    {
      stuff[0]= new OddballParticle();
      stuff[i] = new Particle();
    }
  }
}  
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor;
  Particle()
  {
    myX=pos1;
    myY=pos2;
    myAngle=Math.random()*2*Math.PI;
    mySpeed=Math.random()*10;
    myColor=color(0);
  }
  void move()
  {
    myX+= Math.cos(myAngle)*mySpeed;
    myY+= Math.sin(myAngle)*mySpeed;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, (float)2, (float)2);
  }
}
  class OddballParticle extends Particle
  {
    OddballParticle()
    {
      myX=pos1;
      myY=pos2;
      myAngle=Math.random()*2*Math.PI;
      mySpeed=Math.random()*10;
      myColor=color(0);
    }
    void move()
    {
      myX= myX + (int)(Math.random()*3)-1;
      myY= myY + (int)(Math.random()*3)-1;
    }
    void show()
    {
      fill(myColor);
      ellipse((float)myX, (float)myY, (float)2, (float)2);
    }
  }

