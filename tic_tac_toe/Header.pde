  
void header() {
  textDraw(resetString, titleFont, height, black, CENTER, CENTER, resetX, resetY, resetWidth, resetHeight);
  textDraw(scoreboard, titleFont, height, black, CENTER, CENTER, scoreA, scoreB, scoreWidth, darkHeight);
  //textDraw(playerMode, titleFont, height, black, CENTER, CENTER, scoreA, impossibleY, scoreWidth, impossibleHeight);
  textDraw(dark, titleFont, height, black, LEFT, CENTER, darkX, darkY, darkWidth, darkHeight);
  textDraw(easyString, titleFont, height, black, CENTER, CENTER, easyX, easyY, easyWidth, easyHeight);
  textDraw(mediumString, titleFont, height, black, CENTER, CENTER, mediumX, mediumY, mediumWidth, mediumHeight);
  textDraw(impossibleString, titleFont, height, black, CENTER, CENTER, impossibleX, impossibleY, impossibleWidth, impossibleHeight);
  textDraw(x, titleFont, height, black, RIGHT, CENTER, scoreXnameX, scoreYnameX, scoreWidthXO*0.5, scoreHeightXO*0.5);
  textDraw(o, titleFont, height, black, RIGHT, CENTER, scoreXnameO, scoreYnameO, scoreWidthXO*0.5, scoreHeightXO*0.5);
  xScoreS = String.valueOf(xScoreI);
  textDraw(xScoreS, titleFont, height, black, LEFT, CENTER, scoreXvarX, scoreYvarX, scoreWidthXO*0.5, scoreHeightXO*0.5);
  xScoreS = String.valueOf(oScoreI);
  textDraw(xScoreS, titleFont, height, black, LEFT, CENTER, scoreXvarO, scoreYvarO, scoreWidthXO*0.5, scoreHeightXO*0.5);
}
