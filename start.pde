public class Start {
  private float y = 400;
  private float x = 280;
  private float dy = 0;
  private float dx = 5;
  private float sizey = 40;
  private float sizex = 80;
  private float counter = 0;

  /*public void move() { 
    if (x == 560) {
      counter += 1;
    }
    if (x == 0) {
      counter += 1;
    }
    if (counter%2 == 0) {
      y += dy;
      x += dx;
    }
    if (counter%2 == 1) {
      y += dy;
      x -= dx;
    }
  }*/

  // We need to be able to change dx and dy

  // We need to be able to see where our ball is

  public void display() {
    fill(255, 0, 255);
    rect(x, y, sizex, sizey);
  }
} 
