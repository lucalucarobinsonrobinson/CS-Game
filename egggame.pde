//Basket b1 = new Basket(400,100,5,0,80,40,0);
//Basket b2 = new Basket(280, 200, 0, 0, 80, 40, 0);
Basket b2 = new Basket(320,200,-5,0,80,40,0);
Start start = new Start(); 
Egg egg = new Egg(400, 320, 0, 0, 50, 50, 0, 0, 12, 10);
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
  if(startTimer.getTime() > 0) {
    startTimer.countDown();
  }
  text(startTimer.getTime(),20,20);
}
