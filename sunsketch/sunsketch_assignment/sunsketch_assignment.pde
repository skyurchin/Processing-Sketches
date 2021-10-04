//create a visualization of my understanding of the universe at age 9
//a rotating, ever-changing ball of light and matter at the center
//and multicolored galaxies appearing all around it in the void



//initializing
float a = 0.0;
float rSize;
int circleSize;

 

void setup(){
  size (800, 800);
  background(0);
  frameRate(200);
  size(800, 800, P3D);
  rSize = width / 6;  
  noStroke();
  fill(204, 204);
  circleSize = width/40;

}



void draw (){
  
//make rotating rectangles that form the sphere/star at the center 
a += 0.005;
  if(a > TWO_PI) { 
    a = 0.0; 
  }

  translate(width/2, height/2);

  rotateX(a);
  rotateY(a * 2.0);
  fill(255,255,255,a); //make the colors transparent and glowing
  rect(-rSize, -rSize, rSize*2, rSize*2);

  rotateX(a * 1.001);
  rotateY(a * 2.002);
  fill(50,125,255,a);
  rect(-rSize, -rSize, rSize*2, rSize*2);
  

}





void keyPressed() {
//set up the key functions
  int keyIndex = -1;
  if (key >= 'A' && key <= 'Z') {
    keyIndex = key - 'A';
  } else if (key >= 'a' && key <= 'z') {
    keyIndex = key - 'a';
  }
  if (keyIndex == -1) {
    // if it's not a letter key, clear the galaxy ellipses
    background(0);
  } else { 
    // if it's a letter key, add a random galaxy ellipse
    fill(millis() % 255, 255, 255);
    float x = map(keyIndex, 0, 30, 0, width - circleSize);
    circle(x, 0, circleSize);
    

}

  }
