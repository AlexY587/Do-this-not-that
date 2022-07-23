//Global Varaibles
float clickmeX, clickmeY, clickmeWidth, clickmeHeight, clickmeTextSize;
float ormeX, ormeY, ormeWidth, ormeHeight, ormeTextSize;
String clickmeText="Click ME", ormeText="OR ME";
color black=#000000, resetColor=#FFFFFF, grey=#A09F9C, variableColor, variableColor2;
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
    println(instruct);
  }
  //population
  ormeX = appwidth/3;
  ormeY = appheight/1.5;
  ormeWidth = appwidth/10;
  ormeHeight = appheight/8;
  clickmeX = appwidth/1.5;
  clickmeY = appheight/1.5;
  clickmeWidth = appwidth/10;
  clickmeHeight = appheight/8;
  titlefont = createFont("Times New Roman", 60);
  rectX = clickmeX;
  rectY = appheight/4;
  rectWidth = appwidth/10;
  rectHeight = appheight/8;
  elipseX = ormeX;
  elipseY = appheight/4;
  elipseWidth = appwidth/10;
  elipseHeight = appwidth/8;

  //
//
}//end setup
//
void draw() {
    background(black);
  fill(variableColor2);
  rect(ormeX, ormeY, ormeWidth, ormeHeight);
  fill(black);
  ormeTextSize = 20;
  textAlign(CENTER, CENTER);
  textFont(titlefont, ormeTextSize);
  text(ormeText, ormeX, ormeY, ormeWidth, ormeHeight);
  fill(resetColor);
  if (ormeClicked==true) {ellipse(elipseX, elipseY, elipseWidth, elipseHeight);}
   if (mouseX>ormeX && mouseX<ormeX+ormeWidth && mouseY>ormeY && mouseY<ormeY+ormeWidth) {
     variableColor2 = grey;
  } else {
    variableColor2 = resetColor;
  } //endhoverover
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
   if(mouseX>ormeX && mouseX<ormeX+ormeWidth && mouseY>ormeY && mouseY<ormeY+ormeWidth) {
   if ( mouseButton == LEFT) {
     clickmeClicked = false;
     ormeClicked = true;
   }
   }
}//end mousepressed
