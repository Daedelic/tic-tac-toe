Boolean[] clickX = new Boolean[9];
Boolean[] clickO = new Boolean[9];
Boolean[] noDraw = new Boolean[9];
int drawCounter; //If odd, X-turn; if even, O-turn (uses modulus to evalaute even and odd number, basic algorithm

void drawXO() {
  int XOdraw = drawCounter % 2;
  for (int i=0; i<noDraw.length; i++) {
    if ( noDraw[i]==true) {
      if (clickX[i]==true) {
        noStroke();
        rect(spaceX[i], spaceY[i], spaceWidth, spaceHeight);
        textDraw(X, titleFont, height, black, CENTER, CENTER, spaceX[i], spaceY[i], spaceWidth, spaceHeight);
        stroke(1);
        lines();
      } else if (clickO[i]==true) {
        noStroke();
        rect(spaceX[i], spaceY[i], spaceWidth, spaceHeight);
        textDraw(O, titleFont, height, black, CENTER, CENTER, spaceX[i], spaceY[i], spaceWidth, spaceHeight);
        stroke(1);
        lines();
      } else {
      }
    }
  }
}

void clickXO() {
  //rect(spaceX1, spaceY1, spaceWidth, spaceHeight);
  int XOclick;
  for (int i=0; i<noDraw.length; i++) {
    if (mouseX>spaceX[i] && mouseX<spaceX[i]+spaceWidth && mouseY>spaceY[i] && mouseY<spaceY[i]+spaceHeight ) {
      drawCounter++; //drawCounter=drawCounter+1
      XOclick = drawCounter % 2;
      if (XOclick == 1) {
        clickX[i] = true;
        noDraw[i] = true;
      } else if (XOclick == 0) {
        clickO[i] = true;
        noDraw[i] = true;
      } else {
      }
    }
  }
}
