public class Egg {
  private int y = 400;
  private int x = 320;
  private int dy = 10;
  private int dx = 0;
  private int sizey = 50;
  private int sizex = 50;
  private int check = 0;
  private int counter = 0;

  public void move() {
    if (key == ' ') {

//we need this code to make dy change based on eggs y posn, so that the egg's ascent and descent mirror real world physics
// attempt below, doesnt work yet
      /*for (y = 400; y >= 300; dy  10) {
       int dy = 10;
       }
       
       for (y = 400; y > 300; y <= 100) {
       int dy = 8;
       }
       
       for (y = 400; y > 100; y <= 180) {
       int dy = 5;
       }*/
      
      /*if(y <= 100) {
        dy = 8;
      }
      
      if(y >= 300) {
        dy = 10;
      }*/
        


      y -= dy;
      x -= dx;

      if (y == 160) {
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
