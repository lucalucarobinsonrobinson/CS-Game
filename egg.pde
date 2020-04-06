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
      
      if (y == 160) {
        counter++;
      }
      
      if (y == 650) {
        y = 400;
        counter++;
      }
      
      if (counter%3 == 0) {
        y -= dy;
      }
      
      if (counter%3 == 1) {
        y += dy;
      }
      
      if (counter%3 == 2) {
        y += 0;
      }
      
      if ((key == ' ') && (y == 400) && (keyPressed == true)) {
        counter++;
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
