  
void setUpReadArraysVariables() {
  setupPopulateVariables();
  readClickX();
  readClickO();
  readNoDraw();
}

void setupPopulateVariables() {
  drawCounter = 0;
}

void readClickX() {
  for (int i=0; i<clickX.length; i++) {
    clickX[i] = false;
  }
}

void readClickO() {
  for (int i=0; i<clickO.length; i++) {
    clickO[i] = false;
  }
}

void readNoDraw() {
  for (int i=0; i<noDraw.length; i++) {
    noDraw[i] = false;
  }
}
