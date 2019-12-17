float headerX, headerY, headerWidth, headerHeight;
float boardX, boardY, BoardWith, BoardHeight;
float spaceWidth, spaceHeight;
float[] spaceX = new float[9];
float[] spaceY = new float[9];
float lineAX1, lineAY1, lineBX1, lineBY1;
float lineAX2, lineAY2, lineBX2, lineBY2;
float lineAX3, lineAY3, lineBX3, lineBY3;
float lineAX4, lineAY4, lineBX4, lineBY4;
float resetX, resetY, resetWidth, resetHeight;
float scoreA, scoreB, scoreWidth, scoreHeight, scoreAX, scoreBX;
float scoreAO, scoreBO, scoreWidthXO, scoreHeightXO;
float darkX, darkY, darkWidth, darkHeight;
float easyX, easyY, easyWidth, easyHeight;
float mediumX, mediumY, mediumWidth, mediumHeight;
float impossibleX, impossibleY, impossibleWidth, impossibleHeight;
float scoreXnameX, scoreYnameX, scoreXvarX, scoreYvarX;
float scoreXnameO, scoreYnameO, scoreXvarO, scoreYvarO;

void GUI_setup() {
  background(white);
  headerX = width*0;
  headerY = height*0;
  headerWidth = width;
  headerHeight = height * 1/4;

  boardX = width * 0;
  boardY = height * 1/4;
  BoardWith = width;
  BoardHeight = height * 3/4;
  for (int i=0; i<spaceX.length; i=i+3) {
    spaceX[i] = width * 0; //spaceX1 = spaceX4 = spaceX7 = width * 0;
  }
  for (int i=1; i<spaceX.length; i=i+3) {
    spaceX[i] = width * 1/3; //spaceX2 = spaceX5 = spaceX8 = width * 1/3;
  }
  for (int i=2; i<spaceX.length; i=i+3) {
    spaceX[i] = width * 2/3; //spaceX3 = spaceX6 = spaceX9 = width * 2/3;
  }
  for (int i=0; i<4; i++) {
    spaceY[i] = height * 1/4; //spaceY1 = spaceY2 = spaceY3 = height * 1/4;
  }
  for (int i=3; i<6; i++) {
    spaceY[i] = height * 2/4; //spaceY4 = spaceY5 = spaceY6 = height * 2/4;
  }
  for (int i=6; i<9; i++) {
    spaceY[i] = height * 3/4; //spaceY7 = spaceY8 = spaceY9 = height * 3/4;
  }
  spaceWidth = width * 1/3;
  spaceHeight = height * 1/4;
  lineAX1 = lineBX1 = width * 1/3;
  lineAY1 = height * 1/4;
  lineBY1 = height;
  lineAX2 = lineBX2 = width * 2/3;
  lineAY2 = height * 0/4;
  lineBY2 = height;
  lineAX3 = width * 0;
  lineBX3 = width;
  lineAY3 = lineBY3 = height * 2/4;
  lineAX4 = width * 0;
  lineBX4 = width;
  lineAY4 = lineBY4 = height * 3/4;
  resetX = width * 0;
  resetY = height * 4/80;
  resetWidth = width * 1/4;
  resetHeight = height * 12/80;
  scoreA = scoreAX = width * 1/4;
  scoreAO = width * 5.5/12;
  scoreB = scoreBX = scoreBO = height * 0;
  scoreWidth = width * 5/12;
  scoreWidthXO = width * 2.5/12;
  scoreHeight = scoreHeightXO = height * 1/4;
  darkX = easyX = mediumX = impossibleX = width * 2/3;
  darkY = height * 0;
  easyY = height * 1/16;
  mediumY = height * 2/16;
  impossibleY = height * 3/16;
  darkWidth = easyWidth = mediumWidth = impossibleWidth = width * 1/3;
  darkHeight = easyHeight = mediumHeight = impossibleHeight = height * 1/16;
  scoreXnameX = scoreA;
  scoreYnameX = scoreYvarX = height * 1/16;
  scoreXvarX = scoreAX + scoreWidthXO*0.5;
  scoreXnameO = scoreAO;
  scoreYnameO = scoreYvarO = height * 1/16;
  scoreXvarO = scoreAO + scoreWidthXO*0.5;
  //
  //rect(headerX, headerY, headerWidth, headerHeight);
  //rect(boardX, boardY, BoardWith, BoardHeight);
  /*
  for (int i=0; i<spaceX.length; i++) {
   rect(spaceX[i], spaceY[i], spaceWidth, spaceHeight);
   }
   */
  //rect(spaceX1, spaceY1, spaceWidth, spaceHeight);
  //rect(spaceX2, spaceY2, spaceWidth, spaceHeight);
  //rect(spaceX3, spaceY3, spaceWidth, spaceHeight);
  //rect(spaceX4, spaceY4, spaceWidth, spaceHeight);
  //rect(spaceX5, spaceY5, spaceWidth, spaceHeight);
  //rect(spaceX6, spaceY6, spaceWidth, spaceHeight);
  //rect(spaceX7, spaceY7, spaceWidth, spaceHeight);
  //rect(spaceX8, spaceY8, spaceWidth, spaceHeight);
  //rect(spaceX9, spaceY9, spaceWidth, spaceHeight);
  lines();
  //rect(resetX, scoreYnameX, resetWidth, scoreHeightXO*0.5);
  //rect(scoreA, scoreB, scoreWidth, scoreHeight);
  //rect(scoreAX, scoreBX, scoreWidthXO, scoreHeightXO);
  //rect(scoreAO, scoreBO, scoreWidthXO, scoreHeightXO);
  rect(scoreA, scoreB, scoreWidth, darkHeight); //Scoreboard Title
  rect(scoreA, impossibleY, scoreWidth, impossibleHeight); //1-Person or 2-Person Title
  rect(scoreXnameX, scoreYnameX, scoreWidthXO*0.5, scoreHeightXO*0.5);
  rect(scoreXvarX, scoreYvarX, scoreWidthXO*0.5, scoreHeightXO*0.5);
  rect(scoreXnameO, scoreYnameO, scoreWidthXO*0.5, scoreHeightXO*0.5);
  rect(scoreXvarO, scoreYvarO, scoreWidthXO*0.5, scoreHeightXO*0.5);
  rect(darkX, darkY, darkWidth, darkHeight);
  rect(easyX, easyY, easyWidth, easyHeight);
  rect(mediumX, mediumY, mediumWidth, mediumHeight);
  rect(impossibleX, impossibleY, impossibleWidth, impossibleHeight);
}

void lines() {
  line(lineAX1, lineAY1, lineBX1, lineBY1);
  line(lineAX2, lineAY2, lineBX2, lineBY2);
  line(lineAX3, lineAY3, lineBX3, lineBY3);
  line(lineAX4, lineAY4, lineBX4, lineBY4);
}
