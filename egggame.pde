Egg egg = new Egg();
Basket1 basket1 = new Basket1();
Basket2 basket2 = new Basket2();
Basket3 basket3 = new Basket3();
void setup() {
  size(640, 480);
}

void draw() {
  background(255,0,0);
  egg.display();
  egg.move();
  basket1.display();
  basket1.move();
  basket2.display();
  basket2.move();
  basket3.display();

  
  //if(y+25 > height || y-25 <0) {
  //    dy *= -1;
  //}
}
