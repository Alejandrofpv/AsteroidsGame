class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 6;
    corners = 25;
    int r = 1;
    xCorners = new int[]{15*r, 13*r, 10*r, 5*r, -1*r, -3*r, -4*r, -5*r, -7*r, -9*r, -10*r, -8*r, -7*r, -7*r, -8*r, -10*r, -9*r, -7*r, -5*r, -4*r, -3*r, -1*r, 5*r, 10*r, 13*r};
    yCorners = new int[]{0*r, -1*r, -1*r, -2*r, -8*r, -8*r, -7*r, -3*r, -5*r, -5*r, -3*r, -1*r, -1*r, 1*r, 1*r, 3*r, 5*r, 5*r, 3*r, 7*r, 8*r, 8*r, 2*r, 1*r, 1*r};
    myCenterX = (int)(Math.random() * 900);
    myCenterY = (int)(Math.random() * 800);
    myXspeed = Math.random() * 2 - 1;
    myYspeed = Math.random() * 2 - 1;
    myPointDirection = 0;
    myColor = (255);
    rotSpeed = (double)(Math.random() * 5) - 2.5;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
