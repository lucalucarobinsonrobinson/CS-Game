public class Basket3 {
  private int y = 400;
  private int x = 280;
  private int dy = 0;
  private int dx = 5;
  private int sizey = 40;
  private int sizex = 80;
  private int counter = 0;

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
