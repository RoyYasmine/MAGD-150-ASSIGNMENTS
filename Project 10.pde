

float scale;
float x;
float y;
float z;
float u;
float v;
float uOffset;
float vOffset;
float xRotation;
float yRotation;
PImage check; //https://www.colourbox.com/preview/5740389-checkered-texture-3d-background.jpg
PImage back;
PImage bottom;
PImage front;
PImage left;
PImage right;
PImage top;
PImage txtr;

boolean showDiagnosticImages = true;

void setup() {
  surface.setTitle("Meshes");
  pixelDensity(displayDensity());
  check= loadImage("check.jpg");
  size(600, 420, P3D);
  background(check);
  noStroke();
 
 
x = width / 2.0;
y = height / 2.0;
z = -500;
scale = min(width, height) / 2.0;
xRotation = 0;
yRotation = 0;

u = 1;
v = 1;

textureMode(NORMAL);
textureWrap(REPEAT);

uOffset = 0;
vOffset = 0;

front = loadImage("BlueGreen.JPG");
right = loadImage("PinkTeal.JPG");
back = loadImage("YellowRed.JPG");
left = loadImage("RedBlue.JPG");
bottom = loadImage("BlueGreen.JPG");
top = loadImage("PinkTeal.JPG");
txtr = loadImage("check.jpg");
  
}

void draw(){
  background(check);
  xRotation = map(mouseY, -height / 2.0, height / 2.0, 0, TWO_PI);
  yRotation = map(mouseX, -width / 2.0, width / 2.0, 0, TWO_PI);
  
directionalLight(420, 80, 100, -1, 0, 0);
pointLight(31, 92, 126, 30, 45, 35);  
camera(mouseY, height/2,(height/2)/ tan(PI/6),width/2,height/2,0,0,1,0);
  
  
  pushMatrix();
  translate(x,y,z);
  rotateY(yRotation);
  rotateX(xRotation);
  scale(scale);
   
    // Front
  beginShape();
  texture(showDiagnosticImages ? front : txtr);
  vertex(-1, -1, 1, uOffset, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, 1, uOffset, vOffset + v);  
  
  beginContour();
  vertex(-0.5, 0.5, 1);
  vertex(0.5, 0.5, 1);
  vertex(0.5, -0.5, 1);
  vertex(-0.5, -0.5, 1);
  endContour();
  endShape(CLOSE);

  // Right
  beginShape(QUADS);
  texture(showDiagnosticImages ? right : txtr);
  vertex(1, -1, 1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(1, 1, 1, uOffset, vOffset + v);
  endShape(CLOSE);

  // Back 
  beginShape();
  texture(showDiagnosticImages ? back : txtr);
  vertex(1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, -1, uOffset + u, vOffset);
  vertex(-1, 1, -1, uOffset + u, vOffset + v); 
  vertex(1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

 
  // Left
  beginShape();
  texture(showDiagnosticImages ? left : txtr);
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(-1, -1, 1, uOffset + u, vOffset);
  vertex(-1, 1, 1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);

  // Bottom
  beginShape();
  texture(showDiagnosticImages ? bottom : txtr);
  vertex(-1, 1, 1, uOffset, vOffset);
  vertex(1, 1, 1, uOffset + u, vOffset);
  vertex(1, 1, -1, uOffset + u, vOffset + v);
  vertex(-1, 1, -1, uOffset, vOffset + v);
  endShape(CLOSE);
  
 
  // Top
  beginShape();
  texture(showDiagnosticImages ? top : txtr);
  vertex(-1, -1, -1, uOffset, vOffset);
  vertex(1, -1, -1, uOffset + u, vOffset);
  vertex(1, -1, 1, uOffset + u, vOffset + v);
  vertex(-1, -1, 1, uOffset, vOffset + v);
  endShape(CLOSE);
  popMatrix();


}


