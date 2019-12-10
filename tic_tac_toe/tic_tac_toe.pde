void setup() {
  size(500, 600);
  quitButtonSetup();
  GUI_setup();
}

void draw() {
  quitButtonDraw();
}

void keyPressed() {
}

void mousePressed() {
  quitButtonMouseClicked();
}
