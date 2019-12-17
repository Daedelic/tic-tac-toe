Boolean winCheck() {
  Boolean win = false;
  // i=0,3,6; j=1
  for (int i=0; i<7; i=i+3) {
    int j = 1;
    if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
    if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  }
  //i=0,1,2; j=3
  for (int i=0; i<3; i++) {
    int j = 3;
    if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
    if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  }
  // i=0; j=4
  int i = 0;
  int j = 4;
  if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
  if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  //
  // i=2; j=2
  i = 2;
  j = 2;
  if (clickX[i]==true && clickX[i+j]==true && clickX[i+j+j]==true ) win = true;
  if (clickO[i]==true && clickO[i+j]==true && clickO[i+j+j]==true ) win = true;
  return win;
}

void winDraw() {
  println("You win. Add the reset button to activate loop and reset all variables");
  reset=true; //Must restart game here
}
