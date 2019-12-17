
PFont quitButtonFont;
color red = #ff0000; //Ink
color purpleQuitButton = #0000ff;
color yellowQuitButton = #FEFFDB;
void quitButtonRect() {
  rect(width*19/20, height*0, width*1/20, height*1/20);
}
void quitButtonSetup() {
  quitButtonFont = createFont ("broadway", 55);
  quitButtonRect(); //Quit Button
}
void quitButtonDraw() {
  //HoverOver
  if (mouseX >= width*1/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*19/20) {
    fill(yellowQuitButton);
    quitButtonRect();
  } else {
    fill(purpleQuitButton);
    quitButtonRect();
  }
  fill(red);
  textAlign (CENTER, CENTER); 
  textFont(quitButtonFont, 20); 
  text(title, width*19/20, height*0, width*1/20, height*1/20);
  fill(255); 
}
void quitButtonMouseClicked() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    exit();
  }
}
