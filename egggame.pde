public float xloc = 300;
public float yloc = 200;
public float vx = -5;
public float vy = 0;
public float sizex = 80;
public float sizey = 40;
public float c = 0;

//Basket b2 = new Basket(320,200,-5,0,80,40,0);
Basket b2 = new Basket(xloc,yloc,vx,vy,sizex,sizey,c);
Start start = new Start(); 
Egg egg = new Egg(400, 320, 0, 0, 50, 50, 0, 0, 12, 10);
Score score = new Score();
Timer startTimer;

//float life = egg.getLifeCount();
void setup() {
  size(640, 480);
  startTimer = new Timer(10);
}

void draw() {
  background(49, 49, 49);
  egg.display();
  egg.update();
  //b1.display();
  //b1.move();
  b2.display();
  b2.move();
  start.display();
  //egg.LifeCount();
  collide();
  animateCollision();
  collisionTest();
  score.showScore();
  if(startTimer.getTime() > 0) {
    startTimer.countDown();
  }
  text(startTimer.getTime(),20,20);
}
