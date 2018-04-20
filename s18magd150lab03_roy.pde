void setup (){
size (600,600);  
frameRate(30);
}
void draw () {
background (#48BBD1); 

//pig head blowing bubblegum
ellipseMode(RADIUS);
fill(#FFADF6);
noStroke();
ellipse(300, 300, 200,200);

//eyes
float r= 200.0;
float s=380.0;
int w = abs(220);

stroke(250);
strokeWeight(80);
point(r,w);
point(s,w);
stroke(0);
strokeWeight(50);
point(r,w);
point(s,w);

//nose
int q=300-10;
int u=30*2;

fill(#DE9AD6);
noStroke();
ellipse(q,295, u, u);
stroke(0);
strokeWeight(40);
point(260,q);
point(320,q);

//ears
int z=35+5;
int e=210/2;
noStroke();
fill(#FFADF6);
triangle(180, 140, 280,e,w,z);
triangle(310,e,410,133,380,z);

noStroke();
fill(#DE9AD6);
triangle(197, 120, 265,100, 222, u);
triangle(330,100,397,120,375,u);

//bubble being blown
float a= 1.5;
float c = map(mouseX, 0, width, 0, 175);
float d = map(mouseX, 0, width, 40, 300);
fill(300, c, 280);
ellipse(width/2, height/a, d, d);   
println("The Pig Is Blowing A Bubble!");
println(mouseX);

}