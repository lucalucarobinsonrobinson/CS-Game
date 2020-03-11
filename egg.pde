public class Egg {
  private int y = 400;
  private int x = 320;
  private int dy = 10;
  private int dx = 0;
  private int sizey = 70;
  private int sizex = 50;
  private int check = 0;
  private int counter = 0;

  /*void keyPressed() {
   if (key == ' ') {
   check = 1;
   } else {
   check = 0;
   }
   }*/

  public void move() {
    if (key == ' ') {

      y -= dy;
      x -= dx;

      if (y == 180) {
        counter += 1;
      }

      if (y == 400) {
        counter += 1;
      }

      if (counter%2 == 0) {
        y -= dy;
        //x -= dx;
      }

      if (counter%2 == 1) {
        y += dy;
        //x -= dx;
      }

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
    }
  }

  // We need to be able to change dx and dy

  // We need to be able to see where our ball is

  public void display() {
    fill(255, 255, 255);
    ellipse(x, y, sizex, sizey);
  }
}
