
Boolean twoPlayer2=false, twoPlayerAI=false, easy=false, medium=false, impossible=false;

void twoPlayerBoolean() {
  if (twoPlayer2 == false && mouseX >= scoreA  && mouseX <= impossibleY+scoreWidth && mouseY >= impossibleY && mouseY <= impossibleY+impossibleHeight) {
    twoPlayer2 = true;
    twoPlayerAI = false;
  } else if (twoPlayerAI == false && mouseX >= scoreA  && mouseX <= impossibleY+scoreWidth && mouseY >= impossibleY && mouseY <= impossibleY+impossibleHeight) {
    twoPlayer2 = false;
    twoPlayerAI = true;
  }
  if (twoPlayer2 == false && twoPlayerAI == true && mouseX >= easyX  && mouseX <= easyX+easyWidth && mouseY >= easyY && mouseY <= easyY+easyHeight) {
    easy = true;
    medium = false;
    impossible = false;
    println(easy, medium, impossible);
  }
  if (twoPlayer2 == false && twoPlayerAI == true && mouseX >= mediumX  && mouseX <= mediumX+mediumWidth && mouseY >= mediumY && mouseY <= mediumY+mediumHeight) {
    easy = false;
    medium = true;
    impossible = false;
    println(easy, medium, impossible);
  }
  if (twoPlayer2 == false && twoPlayerAI == true && mouseX >= impossibleX  && mouseX <= impossibleX+impossibleWidth && mouseY >= impossibleY && mouseY <= impossibleY+impossibleHeight ) {
    easy = false;
    medium = false;
    impossible = true;
    println(easy, medium, impossible);
  }
}

void twoPlayerGame() {
  if (twoPlayer2 == true) {
    fill(yellowQuitButton);
    noStroke();
    rect(scoreA, impossibleY, scoreWidth, impossibleHeight);
    stroke(1);
    textDraw(playerMode2, titleFont, height, black, CENTER, TOP, scoreA, impossibleY, scoreWidth, impossibleHeight);
  }
  if (twoPlayerAI == true) {
    fill(yellowQuitButton);
    noStroke();
    rect(scoreA, impossibleY, scoreWidth, impossibleHeight);
    stroke(1);
    textDraw(playerModeAI, titleFont, height, black, CENTER, CENTER, scoreA, impossibleY, scoreWidth, impossibleHeight);
  }
}
void play2player() {
  //Current Procedure
  //println("Play two player");
  drawXO();
  Boolean win = winCheck();
  if (win == true) winDraw();
}

void twoPlayerKey() {
  if ( twoPlayer2 == true) {
    play2player();
  } else if (twoPlayerAI == true) {
    if(easy==true) easy();
    if(medium==true) medium();
    if(impossible==true) impossible();
  }
}
