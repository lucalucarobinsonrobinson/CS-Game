Basket b1 = new Basket(400,100,5,0,80,40,0);
Basket b2 = new Basket(400,200,-5,0,80,40,0);
Start start = new Start(); 
Egg egg = new Egg();

void setup() {
  size(640, 480);
}

void draw() {
  background(255,0,0);
  egg.move();
  egg.display();
  b1.display();
  b1.move();
  b2.display();
  b2.move();
  start.display();
}
