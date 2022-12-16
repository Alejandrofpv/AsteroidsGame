class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    int r = 1;
    corners = 8;  //the number of corners, a triangular floater has 3
    xCorners = new int[]{-18, 1, 18, 24, 16, 0, -16, -29};
    yCorners = new int[]{-15, -23, -17, 0, 15, 24, 19, 0};
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
