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

  private float getX() {
    return x;
  }

  private float getY() {
    return y;
  }


  public void move() { 
// update x n y posn
// check x posn to see if it is off screen (<0) or greater than width
// if it is off screen, dx * -1

    if (x == (width - sx)) {
      counter += 1;
    }
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

  private float getX() {
    return x;
  }

  private float getY() {
    return y;
  }


  public void move() { 
// update x n y posn
// check x posn to see if it is off screen (<0) or greater than width
// if it is off screen, dx * -1

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
    fill(255, 0, 255);
    rect(x, y, sx, sy);
  }
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
    fill(255, 0, 255);
    rect(x, y, sx, sy);
  }
}
