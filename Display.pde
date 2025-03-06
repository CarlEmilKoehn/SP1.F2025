class Display {

  //Variable for rummet mellem rektanglerne
  int spacingY = 55;

  Display() { //tom konstruktør
  }

  void whiteLine() {
    //Hvid skillelinje
    stroke(255);
    strokeWeight(3);
    line(width/2, 0, width/2, height);
  }

  void rectColor() {
    //variabler for farvede dele af de hvide rektangler
    int colorRectH = 50;
    int colorRectW = 12;
    int colorRectX1 = 484;
    int colorRectY1 = 75;
    int colorRectX2 = 984;
    int colorRectY2 = 350;

    for (int i = 0; i <= 3; i++) {

      for (int j = 0; j <= 3; j++) {
        //blå
        stroke(54, 213, 255);
        fill(54, 213, 255);
        rect(colorRectX1, colorRectY1, colorRectW, colorRectH);
        rect(colorRectX2, colorRectY1, colorRectW, colorRectH);
        //gul
        stroke(255, 255, 40);
        fill(255, 255, 40);
        rect(colorRectX1, colorRectY2, colorRectW, colorRectH);
        rect(colorRectX2, colorRectY2, colorRectW, colorRectH);
      }
      colorRectY1 += spacingY;
      colorRectY2 += spacingY;
    }
  }


  void drawRect() {
    stroke(255);
    fill(255);

    //Rektanglernes størrelse + start placering:
    int whiteRectX1 = 250;
    int whiteRectY1 = 75;
    int whiteRectX2 = 750;
    int whiteRectY2 = 350;
    int whiteRectH = 50;
    int whiteRectW = 480;

    for (int i = 0; i <= 3; i++) {

      for (int j = 0; j <= 3; j++) {
        rect(whiteRectX1, whiteRectY1, whiteRectW, whiteRectH);
        rect(whiteRectX1, whiteRectY2, whiteRectW, whiteRectH);
        rect(whiteRectX2, whiteRectY1, whiteRectW, whiteRectH);
        rect(whiteRectX2, whiteRectY2, whiteRectW, whiteRectH);
      }
      whiteRectY1 += spacingY;
      whiteRectY2 += spacingY;
    }
  }
}
