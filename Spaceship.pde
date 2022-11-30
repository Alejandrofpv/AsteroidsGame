class Spaceship extends Floater{
   public Spaceship(){
     corners = 25;
     int r = 1;
     xCorners = new int[]{15*r, 13*r, 10*r, 5*r, -1*r, -3*r, -4*r, -5*r, -7*r, -9*r, -10*r, -8*r, -7*r, -7*r, -8*r, -10*r, -9*r, -7*r, -5*r, -4*r, -3*r, -1*r, 5*r, 10*r, 13*r};
     yCorners = new int[]{0*r, -1*r, -1*r, -2*r, -8*r, -8*r, -7*r, -3*r, -5*r, -5*r, -3*r, -1*r, -1*r, 1*r, 1*r, 3*r, 5*r, 5*r, 3*r, 7*r, 8*r, 8*r, 2*r, 1*r, 1*r};
     myCenterX = 450;
     myCenterY = 400;
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = 0;
     myColor = (255);
   }
   public void hyperspace(){
     myCenterX = (int)(Math.random() * 900);
     myCenterY = (int)(Math.random() * 800);
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = (int)(Math.random() * 360);
   }
   public void addS(){
     myXspeed = myXspeed + 0.2 * Math.cos(radians((float)myPointDirection));
     myYspeed = myYspeed + 0.2 * Math.sin(radians((float)myPointDirection));
   }
   public void subS(){
     myXspeed = myXspeed - 0.2 * Math.cos(radians((float)myPointDirection));
     myYspeed = myYspeed - 0.2 * Math.sin(radians((float)myPointDirection));
   }
   public void turnR(){
     myPointDirection = myPointDirection + 7;
   }
   public void turnL(){
     myPointDirection = myPointDirection - 7;
   }
}
