public class Basket {
  private float y;
  private float x;
  private float dy;
  private float dx;
  private float sy;
  private float sx;
  private float counterx;
  private float countery;

  public Basket(float xloc, float yloc, float vx, float vy, float sizex, float sizey, float cx, float cy) {
    x = xloc;
    y = yloc;
    dx = vx;
    dy = vy;
    sx= sizex;
    sy = sizey;
    counterx = cx;
    countery = cy;
  }

//make it so we can change the basket x and y and velx and vely
  private float getX() {
    return x;
  }

  private float getY() {
    return y;
  }
  
  public void setX(float bX) {
    x = bX;
  }
  
  public void setY(float bY) {
    y = bY;
  }
  
  public void setdX(float bdX) {
    dx = bdX;
  }

  public void setdY(float bdY) {
    dy = bdY;
  }

  public void move() { 
// update x n y posn
// check x posn to see if it is off screen (<0) or greater than width
// if it is off screen, dx * -1

    if (x >= (width - sx)) {
      counterx += 1;
    }
    
    if (y >= (height - sy)) {
      countery += 1;
    }
    
    //if (x == (height - sy)) {
    //  counter += 1;
    //}

    if (x <= 0) {
      counterx += 1;
    }
    
    if (y <= 0) {
      countery += 1;
    }

    if (counterx%2 == 0) {
      x += dx;
    }
    
    if (countery%2 == 0) {
      y += dy;
    }

    if (counterx%2 == 1) {
      x -= dx;
    }
    
    if (countery%2 == 1) {
      y -= dy;
    }
  }

  public void display() {
    fill(255, 0, 255);
    rect(x, y, sx, sy);
  }
}
