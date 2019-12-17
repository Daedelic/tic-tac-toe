PFont titleFont;

float titleWidth, titleHeight;
String title, quit;
String dark = "Dark Mode", easyString = "easy", mediumString = "medium", impossibleString = "impossible";
String resetString = "Reset", scoreboard = "Scoreboard", playerMode = "Player Mode";
String playerMode2 = "2-Player Mode", playerModeAI = "Against the Computer";
String x="X:", o="O:";
String X = "X", O = "O";

color black = 0, white = 255;

void textSetup() {
  titleFont = createFont ("txt", height); // //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  title = "X";
  titleWidth = width * 1/2;
  titleHeight = height * 1/10;
  quit = "X";


  
  
}

void textDraw(String string, PFont font, float height, color ink, int alignHorizontal, int alignVertical, float rectX, float rectY, float rectWidth, float rectHeight) {
  float fontSize = height;
  fill(ink); //Purple Ink, copied from Color Selector
  textAlign (alignHorizontal, alignVertical); //Align X&Y, see Processing.org / Reference
  //Values: LEFT | CENTER | RIGHT & TOP | CENTER | BOTTOM | BASELINE
  //Parameters change depending on font and serifs
  if (string.length() >= 14) {
    fontSize = textCalculator(height, string, rectWidth);
  } 
  else {
    fontSize = fontSize * 0.05;
  }
  textFont(font, fontSize); 
  text(string, rectX, rectY, rectWidth, rectHeight); 
  fill(255); 
}

float textCalculator(float size, String string, float rectWidth) {
  textSize(size);
  while ( textWidth(string) > rectWidth ) {
    size = size * 0.99;
    textSize(size);
  }
  return size; 
}
