public class Asteroid extends Floater
{
  private int rotSpeed= ((int)(Math.random()*10)-5);
  public Asteroid()
  {
    corners= 6;
    xCorners= new int[corners];
    yCorners= new int[corners];
    xCorners[0]=-8;
    yCorners[0]=-6;
    xCorners[1]=-4;
    yCorners[1]=-6;
    xCorners[2]=0;
    yCorners[2]=-7;
    xCorners[3]=7;
    yCorners[3]=-2;
    xCorners[4]=8;
    yCorners[4]=5;
    xCorners[5]=-7;
    yCorners[5]=10;

    myColor = (209);
    myDirectionX = ((Math.random()*2)-1);
    myDirectionY = ((Math.random()*2)-1);
    myPointDirection = (Math.random()*360);
    setX((int)(Math.random()*500));
    setY((int)(Math.random()*500));
  }
  public void move()
  {
    turn(rotSpeed);
    super.move();
  }
  public void setX(int x) {
    myCenterX=x;
  }  
  public int getX() {
    return (int)myCenterX;
  }  
  public void setY(int y) {
    myCenterY=y;
  }  
  public int getY() {
    return (int)myCenterY;
  }  
  public void setDirectionX(double x) {
    myDirectionX= x;
  }  
  public double getDirectionX() {
    return myDirectionX;
  }   
  public void setDirectionY(double y) {
    myDirectionY= y;
  }   
  public double getDirectionY() {
    return myDirectionY;
  }   
  public void setPointDirection(int degrees) {
    myPointDirection= degrees;
  }   
  public double getPointDirection() {
    return myPointDirection;
  }
}