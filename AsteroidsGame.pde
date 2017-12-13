ArrayList <Asteroid> space=new ArrayList <Asteroid>();
ArrayList <Bullet> shoot=new ArrayList <Bullet>();
Spaceship f= new Spaceship();
Stars[] nightSky= new Stars[150];
private boolean keyW;
private boolean keyA;
private boolean keyD;
private int asteroidFinal;
private int health = 100;
public void setup() 
{
  size(700, 700);
  for (int i=0; i <nightSky.length; i++)
  {
    nightSky[i]= new Stars();
  }
  for (int ni=0; ni <40; ni++)
  {
    space.add(new Asteroid());
  }
}

public void draw() 
{
  background(0);
  for (int i=0; i <nightSky.length; i++)
  {
    nightSky[i].show();
  }
  for (int ni=0; ni<space.size(); ni++)
  {
    space.get(ni).show();
    space.get(ni).move();
  }
  for (int i=0; i<shoot.size(); i++)
  {
    shoot.get(i).show();
    shoot.get(i).move();
  }
  f.show();
  f.move();
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
  for (int i=0; i<space.size(); i++)
  {
    if (dist(f.getX(), f.getY(), space.get(i).getX(), space.get(i).getY())<20)
    {
      space.remove(i);
      health=health-20;
    }
  }

  for (int oi=0; oi<space.size(); oi++)
  {
    for (int i=0; i<shoot.size(); i++)
    {
      if (dist(space.get(oi).getX(), space.get(oi).getY(), shoot.get(i).getX(), shoot.get(i).getY())<20)
      {
        space.remove(oi);
        shoot.remove(i);
        asteroidFinal++;
        break;
      }
    }
  }
  fill(255);
  textSize (15);
  text ("Asteroids Broken= " + asteroidFinal, 25, 25);
  fill(255);
  textSize (15);
  text ("Health= " + health, 40, 40);
  
  if (health<20)
  {  
  fill(255);
  textSize (120);
  text ("You Lose", 100, 350);
  }
  
    if (space.size()<1)
  {  
  fill(255);
  textSize (120);
  text ("You Win!", 100, 350);
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
    f.setX((int)(Math.random()*700));
    f.setY((int)(Math.random()*700));
    f.setDirectionX(0);
    f.setDirectionY(0);
  }

  if (key== ' ' )//shoot
  {
    shoot.add(new Bullet(f));
  }
}
public void keyReleased()
{
  if (key == 'w')//accelerate
  {
    keyW = false;
  }
  if (key == 'd')//right
  {
    keyD = false;
  }
  if (key == 'a')//left
  {
    keyA = false;
  }
}