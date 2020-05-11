Basket b2 = new Basket(320,200,-5,0,80,40,0,0);
Start start = new Start(); 
Egg egg = new Egg(400, 320, 0, 0, 50, 50, 0, 0, 12, 10);
Timer startTimer;
public int score = 0;

//float life = egg.getLifeCount();
void setup() {
  size(640, 480);
  startTimer = new Timer(10);
}

void draw() {
  background(49, 49, 49);
  egg.display();
  egg.update();
  b2.display();
  b2.move();
  start.display();
  collide();
  animateCollision();
  if(startTimer.getTime() > 0) {
    startTimer.countDown();
  }
  text(startTimer.getTime(),20,20);
  
  if(collision == true) {
    score++;
    println(score);
    egg.setY(400);
    egg.setX(320);
    collision = false;
    egg.setvelX(0);
    b2.setY(random(50, 350));
    b2.setX(random(0, (width - b2.sx)));
    float neg1 = random(1);
    float neg2 = random(2);
    if(score >= 3) {
      if (neg1 >= 0.5) {
        b2.setdX((int(random(1,10))) * -1);
      }
      if (neg1 < 0.5) {
        b2.setdX(int(random(1,10)));
      }
    }
    if(score >= 6) {
      if (neg2 >= 0.5) {
        b2.setdY((int(random(1,10))) * -1);
      }
      if (neg2 < 0.5) {
        b2.setdY(int(random(1,10)));
      }
    }
  }
}
