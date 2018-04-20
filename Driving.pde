class Driving {

color col;
  int x;
  int y;
  int speed;
  
Driving () {
    // I am assigning random values for color of the cars. 
    col = color(random(256), random(256), random(256), random(256));
  // I am assigning random values for the speed the cars go. 
    speed = int(random(1,8));
    if (random(1)>0.5) {
      speed = -speed;
    }
    //I am assigning random locations on the screen for the cars .
    x = int(random(width));
    y = int(random(height));
  }  
  
void display() {
    // This is what the cars will look like. 
 noStroke();
    fill(col);
    rect(x, y, 80, 40);
    ellipse(x+20, y+40, 20, 20);
    ellipse(x+60, y+40, 20, 20);
  }
  
  void move() {
    // The code for making the cars go forward.
   x= x+speed;
   if (x > width && speed>0){
     x=-20;
   }
   //The code for making the cars go backwards.
   if (x<0 && speed < 0){
     x=width+20;
   }
  }
}