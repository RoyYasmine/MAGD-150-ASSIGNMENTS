Ladybug lbug;
Bee bbug;
Caterpillar cbug;
Spiderweb web;
Spider[] spider = new Spider[1]; // Starting with only one spider to begin with.
float gravity = 0.005;

 void setup(){
 size(600,600);
 lbug= new Ladybug();
 bbug= new Bee();
cbug= new Caterpillar();
web= new Spiderweb();
spider[0] = new Spider(550, 0, 100);
 }
 void draw(){
  background(#69C477);    
 lbug.display(); //This displays the ladybug I made in the Ladybug class.
 bbug.display(); //This displays the bee I made in the Bee class.
 cbug.display(); //This displays the caterpillar I made in the Caterpillar class.
 web.display();//This displays the spiderweb I made in the Spiderweb class.
 for (int i = 0; i < spider.length; i++ ) { //This will show the spider bouncing up and down.
    spider[i].gravity();
    spider[i].move();
    spider[i].display();
   
}
 }

void mousePressed() {
  Spider b = new Spider(mouseX, mouseY, 100); //This will create a new spider when you click on the screen.
  spider = (Spider[]) append(spider, b);
  
}
class Bee {

  Bee(){

}
  
  void display(){ //This is what the bee will look like.
PVector mouse = new PVector(mouseX,mouseY);
 PVector center = new PVector(210,250);
mouse.sub(center);
 mouse.mult(0.3); 
ellipseMode(CENTER);
fill(#F0FC4F);
noStroke();
ellipse(220,190,200,130);
fill(#C9EBFF);
stroke(0);
strokeWeight(5);
ellipse(210,90,mouse.x,mouse.y); // Mouse.x and mouse.y changes the size of the wings.
ellipse(230,90,mouse.x,mouse.y); // Mouse.x and mouse.y changes the size of the wings.
fill(0);
noStroke();
triangle(320,180,340,190,320,200);
stroke(0);
strokeWeight(15);
line(190,130,190,245);
line(220,130,220,250);
line(250,130,250,245);

  }}
  class Caterpillar {
 
 Caterpillar(){
  
 }
  void display(){
    noStroke();
fill(#49715A);
ellipseMode(CENTER);
ellipse(100,550,80,80);
ellipse(100,500,80,80);
ellipse(100,450,80,80);
ellipse(100,600,80,80);
ellipse(100,650,80,80);
stroke(0);
strokeWeight(10);
line(40,500,60,500);
line(40,550,60,550);
line(40,600,60,600);
line(140,600,160,600);
line(140,550,160,550);
line(140,500,160,500);
  }  }
  class Ladybug {
  
  Ladybug(){
  
  }
  
  void display(){ //This is what the lady bug will look like.
    background(#69C477);
   fill( #BF403A);
   noStroke();
   
   pushMatrix();  //The start of the new coordinate system at 450,450.
   translate(450,450); //The starting center of the lady bug.
   rotate(PI/4); //I am roating the lady bug 45 degrees.
  
 ellipseMode(CENTER);
   ellipse(0,0,150,150);
   fill(0);
   ellipse(-30,30,20,20);
   ellipse(-20,-40,20,20);
   ellipse(-50,-10,20,20);
   ellipse(50,-10,20,20);
   ellipse(25,-40,20,20);
   ellipse(30,30,20,20);
  strokeWeight(10);
   stroke(0);
   line(0,-75,0,70);
   strokeWeight(8);
   stroke(0);
   line(0,-75,-20,-100);
   line(0,-75,20,-100);
   popMatrix(); // This restores the prior coordinate system after this.
 
 scale(.75); //I am scaling the ladybug by 75% percent.
 
  fill( #BF403A);
   noStroke();
 pushMatrix(); 
   translate(450,450);
   rotate(PI/4);
  
 ellipseMode(CENTER);
   ellipse(0,0,150,150);
   fill(0);
   ellipse(-30,30,20,20);
   ellipse(-20,-40,20,20);
   ellipse(-50,-10,20,20);
   ellipse(50,-10,20,20);
   ellipse(25,-40,20,20);
   ellipse(30,30,20,20);
  strokeWeight(10);
   stroke(0);
   line(0,-75,0,70);
   strokeWeight(8);
   stroke(0);
   line(0,-75,-20,-100);
   line(0,-75,20,-100);
   popMatrix(); 

  
  }}
  class Spider {
  float a;
  float b;
  float speed;
  float c;
  
  Spider (float tempa, float tempb, float tempc) {
    a = tempa;
    b = tempb;
    c = tempc;
    speed = 0;
  }
  
  void gravity() { 
    speed = speed + gravity; //Adding gravity to speed.
  }
  
  void move() { //The way the spider will bounce up and down.
    b = b + speed;
    if (b > height) {
      speed = speed * -1;
      b = height;
    }
  }
  
  void display() { //What the spider will look like.
    fill(0);
    stroke(0);
    ellipse(a,b,c,c);
  }
}  
class Spiderweb {

  Spiderweb(){

}

void display(){ //What the spiderweb will look like.
  ellipseMode(CENTER);
    noStroke();
    fill(250);
    ellipse(580,200,300,300);
    stroke(0);
    strokeWeight(5);
    noFill();
    ellipse(580,200,250,250);
    ellipse(580,200,200,200);
    ellipse(580,200,150,150);
    ellipse(580,200,100,100);
    ellipse(580,200,50,50);
   stroke(0);
    strokeWeight(5);
    line(430,200,580,200);
    line(580,50,580,200);
    line(580,200,580,350);
    line(580,200,730,200);
    line(580,200,470,300);
    line(580,200,690,300);
    line(580,200,470,100);
    line(580,200,690,100);
}}
