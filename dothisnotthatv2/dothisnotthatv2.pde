//Global Varaibles
float clickmeX, clickmeY, clickmeWidth, clickmeHeight, clickmeTextSize;
float ormeX, ormeY, ormeWidth, ormeHeight;
String clickmeText="Click ME", ormeText="OR ME";
color black=#030303, resetColor=#FFFFFF, grey=#A09F9C, variableColor;
PFont titlefont;
float rectX, rectY, rectWidth, rectHeight;
float elipseX, elipseY, elipseWidth, elipseHeight;
Boolean clickmeClicked=false, ormeClicked=false;
//
void setup() {
  //gemometry
  size(1000, 800);//Landscape
  int appwidth = width;
  int appheight = height;
  if (width > displayWidth || height > displayHeight) {
    appwidth = displayWidth;
    appheight = displayHeight;
    println("canvas needs to be re adjusted");
  } else {
    println("canvas is good to go");
  }
  //display orientation
  String ls="Landscape or Square", p="portrait", DO="Display Orientation", instruct="Bru, turn your phon";
  String orientation = (appwidth >= appheight) ? ls : p ;
  println(DO, orientation);
  if(orientation == ls) {
    println("good to go");
  } else {
    appwidth *= 0;
    appheight *= 0;
  }
  //population
  clickmeX = appwidth/1.5;
  clickmeY = appheight/1.5;
  clickmeWidth = appwidth/10;
  clickmeHeight = appheight/8;
  titlefont = createFont("Times New Roman", 60);
  rectX = clickmeX;
  rectY = appheight/4;
  rectWidth = appwidth/10;
  rectHeight = appheight/8;

  //
//
}//end setup
//
void draw() {
  if (clickmeClicked==true) {rect(rectX, rectY, rectWidth, rectHeight);}
   if (mouseX>clickmeX && mouseX<clickmeX+clickmeWidth && mouseY>clickmeY && mouseY<clickmeY+clickmeWidth) {
     variableColor = grey;
  } else {
    variableColor = resetColor;
  } //endhoverover
  clickmeTextSize = 20;
  fill(variableColor);
  rect(clickmeX, clickmeY, clickmeWidth, clickmeHeight);
  fill(black);
  textAlign(CENTER, CENTER);
  textFont(titlefont, clickmeTextSize);
  text(clickmeText, clickmeX, clickmeY, clickmeWidth, clickmeHeight);
  textAlign(CENTER, CENTER);
  fill(resetColor);
}//end draw
//
void keyPressed() {}//end keypressed
//
void mousePressed() {
if(mouseX>clickmeX && mouseX<clickmeX+clickmeWidth && mouseY>clickmeY && mouseY<clickmeY+clickmeWidth) {
   if ( mouseButton == LEFT) {
     clickmeClicked = true;
     ormeClicked = false;
   }
   }
}//end mousepressed
