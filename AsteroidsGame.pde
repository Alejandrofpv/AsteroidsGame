Star [] st = new Star[400];
Spaceship bob;
boolean PW = false;
boolean PS = false;
boolean PA = false;
boolean PD = false;

public void setup(){
  size(900, 800);
  for(int i = 0; i < st.length; i++){
    st[i] = new Star();
  }
  bob = new Spaceship();
}
public void draw(){
  background(0);
  for(int i = 0; i < st.length; i++){
    st[i].show();
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
}
