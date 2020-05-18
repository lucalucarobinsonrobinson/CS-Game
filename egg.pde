boolean jump;

//jumps
void keyReleased() {
  switch(key) {
  case ' ':
    jump = true;
    break;
  }
}

int jumpCount() {
  int jumpCount = 0;
  if (jump == true) {
    return jumpCount +1;
  } else {
    return jumpCount;
  }
}

void jump() {
  if (jump) {
    println("jump");
  }
}

public class Egg {
  private float y = 400;
  private float x = 320;
  private float vely = 0;
  private float velx = 0;
  private float sizey = 50;
  private float sizex = 50;
  private float check = 0;
  private float counter = 0;
  private float c = 12;
  private float maxyspeed = 10;

  public Egg(float yval, float xval, float vely, float velx, float sizey, float sizex, float check, float counter, float c, float maxyspeed) {
    y = yval;
    x = xval;
    vely = vely;
    velx = velx;
    sizey = sizex;
    check = check;
    counter = counter;
    c = c;
    maxyspeed = maxyspeed;
  }

//set gravity and such things
  float G = 0.75;
  float initVel = -15;
  public void update() {
    if (jump) {
      vely = initVel; //set it to the start vel
      jump = false; //not jumping anymore
    }

    // always add gravity to vel.y BEFORE
    // adding the vel.y to the pos.y
    vely += G;

    //
    x += velx;
    y += vely;

    //constrain the y position so that it
    // doesnt go too low
    y = constrain(y, 0, 400);

    //if (y == 550) {
    //  y = 400;
    //  vely = 0;
    //}
  }

//be able to pull the x and y values of the eggs position
  public float getX() { 
    return x;
  }

  public void setX(float aX) {
    x = aX;
  }

  private float getY() { 
    return y;
  }

  public void setY(float aY) {
    y = aY;
  }
  
  public void setvelX(float vX) {
    velx = vX;
  }

  // We need to be able to change velx and vely

  // We need to be able to see where our ball is

  public void display() {
    fill(255, 255, 255);
    ellipse(x, y, sizex, sizey);
  }
}
