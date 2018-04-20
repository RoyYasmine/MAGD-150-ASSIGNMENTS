void setup(){
size(600,600);
background(20);
}

void draw (){
// alien head
ellipseMode(RADIUS);  
noStroke();
fill(100);  
ellipse(300, 300, 150, 200);  

//neck
noStroke();
rect(260,487,95,150);

//left eye
stroke(0);
strokeWeight(100);
point(230,250);

//right eye
stroke(0);
strokeWeight(100);
point(360,250);

//glimpse in eye
stroke(200);
strokeWeight(10);
point(385,225);
point(205,225);

//dots on face
noFill();
stroke(80);
strokeWeight(1);
ellipse(280,150,4,4);
ellipse(280,170,4,4);
ellipse(280,130,4,4);
ellipse(280,110,4,4);
ellipse(290,120,4,4);
ellipse(290,140,4,4);
ellipse(290,160,4,4);
ellipse(290,180,4,4);
ellipse(300,150,4,4);
ellipse(300,170,4,4);
ellipse(300,130,4,4);
ellipse(300,110,4,4);
ellipse(300,190,4,4);
ellipse(310,120,4,4);
ellipse(310,140,4,4);
ellipse(310,160,4,4);
ellipse(310,180,4,4);
ellipse(320,150,4,4);
ellipse(320,170,4,4);
ellipse(320,130,4,4);
ellipse(320,110,4,4);

//lips
stroke(60);
strokeWeight(5);
strokeCap(ROUND);
line(250,400,350,400);

//teeth https://processing.org/reference/triangle_.html
stroke(250);
fill(250);
triangle(255,405,260,430,265,405);
triangle(275,405,280,430,285,405);
triangle(295,405,300,430,305,405);
triangle(315,405,320,430,325,405);
triangle(335,405,340,430,345,405);

//nostrils
fill(0);
noStroke();
ellipse(280,320,8,8);
ellipse(310,320,8,8);

//atenna 1
fill(100);
noStroke();
rect(240, 70, 20, 60);

//point on antenna
fill(100);
noStroke();
ellipse(250,60,15,15);

//antenna 2
fill(100);
noStroke();
rect(330, 70, 20, 60);

//point on antenna
fill(100);
noStroke();
ellipse(340,60,15,15);

//moon
fill(200);
noStroke();
ellipse(520,80,60,60);

//spots on moon
fill(150);
noStroke();
ellipse(480,90,5,4);
ellipse(500,40,10,9);
ellipse(540,80,15,14);
ellipse(560,100,3,3);
ellipse(500,115,13,12);
ellipse(530,125,5,4);
ellipse(475,60,2,2);
ellipse(520,30,6,5);
ellipse(508,80,8,7);
ellipse(570,60,3,3);
ellipse(560,50,5,5);
ellipse(540,46,7,6);
ellipse(550,115,7,6);
ellipse(487,65,6,6);
ellipse(525,55,3,3);
ellipse(525,100,3,3);
ellipse(565,80,5,4);
}
