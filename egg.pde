boolean jump;

void keyReleased() {
   switch(key) {
     case ' ':
       jump = true;
       break;
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
  
  public Egg(float y, float x, float vely, float velx, float sizey, float sizex, float check, float counter, float c, float maxyspeed) {
    y = y;
    x = x;
    vely = vely;
    velx = velx;
    sizey = sizex;
    check = check;
    counter = counter;
    c = c;
    maxyspeed = maxyspeed;
  }
  
float G = 0.75;
float initVel = -15;
  public void update() {
    if(jump) {
      vely = initVel;
      jump = false;
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
  
  private float getX() { 
    return x;
  } 
  private float getY() { 
    return y;
  }

  // We need to be able to change velx and vely

  // We need to be able to see where our ball is

  public void display() {
    fill(255, 255, 255);
    ellipse(x, y, sizex, sizey);
  }
}
