
public class Stars //note that this class does NOT extend Floater
{
  private int myX, myY;
  Stars()
  {
      myX= ((int)(Math.random()*700));
      myY= ((int)(Math.random()*700));
  }
  public void show()
  {
    noStroke();
    fill(random(255), random(255), random(255));
    ellipse (myX, myY, 3, 3);
  }
}