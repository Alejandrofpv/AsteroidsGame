class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = (int)(Math.random() * 900);
    myY = (int)(Math.random() * 900);
  }
  public void show(){
    noStroke();
    fill(255);
    ellipse(myX, myY, 2, 2);
  }
}
