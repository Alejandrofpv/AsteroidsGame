Star[] st = new Star[400];
ArrayList <Asteroid> joe = new ArrayList <Asteroid>();
ArrayList <Bullet> Shots = new ArrayList <Bullet>();
Spaceship bob;
boolean PW = false;
boolean PS = false;
boolean PA = false;
boolean PD = false;
boolean PSp = false;
int cooldown = 20;

public void setup(){
  size(900, 800);
  for(int i = 0; i < st.length; i++){
    st[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    joe.add(new Asteroid());
  }
  bob = new Spaceship();
}
public void draw(){
  background(0);
  for(int i = 0; i < st.length; i++){
    st[i].show();
  }
  for(int i = 0; i < joe.size(); i++){
    joe.get(i).show();
    joe.get(i).move();
    float d1 = dist((float)bob.getX(), (float)bob.getY(), (float)joe.get(i).getX(), (float)joe.get(i).getY());
    if(d1 < 20){
      joe.remove(i);
    }
  }
  for(int i = 0; i < Shots.size(); i++){
    Shots.get(i).move();
    Shots.get(i).show();
    for(int r = 0; r < joe.size(); r++){
      float d = dist((float)joe.get(r).getX(), (float)joe.get(r).getY(), (float)Shots.get(i).getX(), (float)Shots.get(i).getY());
      if(d <= 27){
        joe.remove(r);
        Shots.remove(i);
        break;
      }
    }
  }
  bob.show();
  bob.move();
  checker();
}

public void keyPressed(){
  if(key == 'e'){
    bob.hyperspace();
  }
  if(key == 'w'){
    PW = true;
  }
  if(key == 's'){
    PS = true;
  }
  if(key == 'a'){
    PA = true;
  }
  if(key == 'd'){
    PD = true;
  }
  if(key == ' '){
    PSp = true;
  }
}

public void keyReleased(){
  if(key == 'w'){
    PW = false;
  }
  if(key == 's'){
    PS = false;
  }
  if(key == 'a'){
    PA = false;
  }
  if(key == 'd'){
    PD = false;
  }
  if(key == ' '){
    PSp = false;
  }
}

public void checker(){
  if(PW == true){
    bob.addS();
  }
  if(PS == true){
    bob.subS();
  }
  if(PA == true){
    bob.turnL();
  }
  if(PD == true){
    bob.turnR();
  }
  if(PSp == true){
    cooldown -= 5;
    if(cooldown == 0){
      Shots.add(new Bullet(bob));
      cooldown = 20;
    }
  }
}
