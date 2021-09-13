//declaring variables
float brushTransparency;
float brushColor = 255;
boolean brushIsEraser = true;

void setup (){
size(800,800);
background(255);

}

void draw (){
circle(400,400,400);//center circle
line(mouseX,mouseY,90,90);//NW
//line(400,100,400,250);//N
line(mouseX,mouseY,710,710);//SE
//line(400,700,400,550);//S

fill(255);
circle(400,400,400);//center circle
fill(256,256,0,100);
circle(200,200,200);//yellow circle
fill(256,70,0,100);
circle(100,200,125);//red circle
fill(40,256,10,100);
circle(600,600,100);//green circle

mousePressed()

}




/*fill(255);
circle(400,400,400);//center circle
line(300,300,90,90);//NW
//line(400,100,400,250);//N
line(500,500,710,710);//SE
//line(400,700,400,550);//S

fill(256,256,0,100);
circle(200,200,200);//yellow circle
fill(256,70,0,100);
circle(100,200,125);//red circle
fill(40,256,10,100);
circle(600,600,100);//green circle
*/
