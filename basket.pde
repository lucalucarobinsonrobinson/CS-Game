public class Basket {
  private int y;
  private int x;
  private int dy;
  private int dx;
  private int sy;
  private int sx;
  private int counter;
  
  public Basket(int xloc, int yloc, int vx, int vy, int sizex, int sizey, int c) {
    x = xloc;
    y = yloc;
    dx = vx;
    dy = vy;
    sx= sizex;
    sy = sizey;
    counter = c;
  }
  
  public void move() { 

    if (x == (width - sx)) {
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
  
  public void display() {
    fill(255,0,255);
    rect(x, y, sx, sy);
  }
}
