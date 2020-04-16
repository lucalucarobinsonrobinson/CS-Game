public class Basket {
  private float y;
  private float x;
  private float dy;
  private float dx;
  private float sy;
  private float sx;
  private float counter;
  
  public Basket(float xloc, float yloc, float vx, float vy, float sizex, float sizey, float c) {
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
