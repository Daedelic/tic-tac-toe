Boolean start = false;
int xScoreI=0, oScoreI=0;
String xScoreS, oScoreS;
Boolean reset = false;
void setup() {
  size(500, 600);
  textSetup();
  quitButtonSetup();
  GUI_setup();
  textDraw(playerMode, titleFont, height, black, CENTER, TOP, scoreA, impossibleY, scoreWidth, impossibleHeight);
  header();
  setUpReadArraysVariables();
}
void draw() {
  hoverOver();
  quitButtonDraw();
  if (start == true) {
    twoPlayerGame();
    twoPlayerKey();
  }
  if (reset==true) {
    noLoop();
  } else {
    loop();
  }
}

void keyPressed() {
}
void mousePressed() {
  quitButtonMouseClicked();
  if (start == false && mouseX >= scoreA  && mouseX <= impossibleY+scoreWidth && mouseY >= impossibleY && mouseY <= impossibleY+impossibleHeight) {
    start = true;
  }
  if (start == true) {
    twoPlayerBoolean();
  }
  if (start = true && twoPlayer2 == true || twoPlayerAI == true) {
    clickXO();
  }
}
