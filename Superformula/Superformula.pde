//Wanted to draw nonstandard shapes so I found a tutorial on the Superformula. Way cool!
//https://www.youtube.com/watch?v=u6arTXBDYhQ
//Can't wait to find more applications for this.

float x;
float y;
float easing = 0.05; //I found that the more vertices I added, the more glitchy it felt to use,
//so I added some easing and it seemed to help

void setup() {
  size(700,700);
  
  noFill();
  stroke(255);
  strokeWeight(2);
  frameRate(200);
}

void draw() {
  background (0);
  
  translate(width / 2, height / 2);
  
  beginShape();
  // add some vertices...
  for (float theta = 0; theta <= 2 * PI; theta += 0.001) {
 float rad = r(theta,
 mouseX / 100.0, // a
 mouseY / 100.0, // b
 500, // m
mouseX / 100.0 , // n1
 mouseY / 100.0, // n2
 1 // n3

);
    
    
    float x = rad * cos(theta) * 50;
    float y = rad * sin(theta) * 50;
    vertex(x,y);
  }
    
  endShape(); 
  beginShape(QUADS);

  // +Z "front" face
  vertex(-1, -1,  1, 0, 0);
  vertex( 1, -1,  1, 1, 0);
  vertex( 1,  1,  1, 1, 1);
  vertex(-1,  1,  1, 0, 1);

  // -Z "back" face
  vertex( 1, -1, -1, 0, 0);
  vertex(-1, -1, -1, 1, 0);
  vertex(-1,  1, -1, 1, 1);
  vertex( 1,  1, -1, 0, 1);

  // +Y "bottom" face
  vertex(-1,  1,  1, 0, 0);
  vertex( 1,  1,  1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  // -Y "top" face
  vertex(-1, -1, -1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1, -1,  1, 1, 1);
  vertex(-1, -1,  1, 0, 1);

  // +X "right" face
  vertex( 1, -1,  1, 0, 0);
  vertex( 1, -1, -1, 1, 0);
  vertex( 1,  1, -1, 1, 1);
  vertex( 1,  1,  1, 0, 1);

  // -X "left" face
  vertex(-1, -1, -1, 0, 0);
  vertex(-1, -1,  1, 1, 0);
  vertex(-1,  1,  1, 1, 1);
  vertex(-1,  1, -1, 0, 1);

  endShape();
  
  beginShape();
  vertex(-100, -100, 0, 0, 0);
  vertex(100, -40, 0, 300, 120);
  vertex(0, 100, 0, 200, 400);
  endShape();
}


float r(float theta, float a, float b, float m, float n1, float n2, float n3) {
  return pow(pow(abs(cos(m * theta / 4.0) / a), n2) + 
  pow(abs(sin(m * theta / 4.0) / b), n3), -1 / n1);
  
}
