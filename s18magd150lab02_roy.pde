void setup(){
size(600,600);
background(#627583);   
}

void draw(){
//balloon
fill(#E86262);
noStroke();
ellipse(150,140,200,200);

//point bottom of balloon
fill(#E86262);
noStroke();
triangle(70,200,150,300,230,200);

//red stripe
stroke(#EDB367);
line(65,100,232,100);

//yellow stripe
stroke(#F0DD80);
line(56,140,240,140);

//green stripe
stroke(#83DB61);
line(65,180,232,180);

//blue stripe
stroke(#66B7F7);
line(100,220,200,220);

//purple stripe
stroke(#A880D3);
line(120,250,176,250);

  
//string
strokeWeight(4);
stroke(0);
line(120,265,120,320);
line(180,265,180,320);

//basket top
stroke(77,60,21,64);
fill(77,60,21,64);
rect(100,320,100,10);

//basket bottom
stroke(77,60,21,64);
fill(77,60,21,64);
rect(110,320,80,90);

//basket lining
stroke(144,116,64,30);
strokeWeight(5);
line(110,335,190,410); 
line(110,355,170,410);
line(110,375,150,410);
line(110,395,130,410);
line(130,335,190,390);
line(150,335,190,370);
line(170,335,190,350);

line(110,410,190,330);
line(110,390,170,330);
line(110,370,150,330);
line(110,350,130,330);
line(130,410,190,350);
line(150,410,190,370);
line(170,410,190,390);


//mountain 1
fill(#6A644C);
stroke(#6A644C);
triangle(0,600,150,450,280,600);

//snow on mountain 1
stroke(#DBDBD9);
fill(#DBDBD9);
beginShape();
vertex(150,450);
vertex(100,500);
vertex(120,540);
vertex(150,500);
vertex(180,540);
vertex(195,500);
endShape(CLOSE);

//mountain 2
fill(#6A644C);
stroke(#6A644C);
triangle(300,600,450,320,600,600);

//snow on mountain 2
stroke(#DBDBD9);
fill(#DBDBD9);
beginShape();
vertex(450, 320);
vertex(406,400);
vertex(420,450);
vertex(450,400);
vertex(475,450);
vertex(494,400);
endShape(CLOSE);

//moon
strokeWeight(91);
stroke(#000000);
point(500,100);

//half of moon
fill(250);
strokeWeight(20);
stroke(250);
arc(499,100,70,70,HALF_PI, PI+HALF_PI,CHORD);
 

}