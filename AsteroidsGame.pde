Spaceship f= new Spaceship();
Asteroid a= new Asteroid();
Stars[] nightSky= new Stars[150];
Asteroid[] space= new Asteroid[20];
private boolean keyW;
private boolean keyA;
private boolean keyD;
public void setup() 
{
  size(500, 500);
  for (int i=0; i <nightSky.length; i++)
  {
    nightSky[i]= new Stars();
  }
    for (int ni=0; ni <space.length; ni++)
  {
    space[ni]= new Asteroid();
  }
}
public void draw() 
{
  background(0);
  for (int i=0; i <nightSky.length; i++)
  {
    nightSky[i].show();
  }
    for (int ni=0; ni <space.length; ni++)
  {
    space[ni].show();
    space[ni].move();
  }
  f.show();
  f.move();
  a.show();
  a.move();
  {
  if (keyW==true)//accelerate
  {
    f.accelerate(0.05);
  }
  if (keyD==true)//right
  {
    f.turn(5);
  }
  if (keyA==true)//left
  {
    f.turn(-5);
  }
  }
}
 
  public void keyPressed()
{
  if (key == 'w')//accelerate
  {
   keyW = true;
  }
  if (key == 'd')//right
  {
    keyD = true;
  }
  if (key == 'a')//left
  {
   keyA = true;
  }
      if (key== 's')//hyperspace
  {
    f.setPointDirection((int)(Math.random()*360));
    f.setX((int)(Math.random()*500));
    f.setY((int)(Math.random()*500));
    f.setDirectionX(0);
    f.setDirectionY(0);
  }

}
public void keyReleased()
{
  if (key == 'w')//accelerate
  {
 keyW = false;  }
  if (key == 'd')//right
  {
 keyD = false;  }
  if (key == 'a')//left
  {
 keyA = false;  }
}