color col;
int num = 600; // The number of cars shown on the screen.
Driving[] cars; // The array for the cars.

void setup(){
 size(900,1000);
 col = color(random(256), random(256), random(256), random(256));
  cars = new Driving[num]; // The initial array.
  for (int i =0;i<num;i++) {
    cars[i] = new Driving(); 
  }
}

void draw(){
background(col);  //The sketch will have a different background color every time it is ran.
  for (int i =0;i<num;i++) {
    cars[i].display();
    cars[i].move();
  }

}