import java.util.ArrayList;

class Participants {

  String[] countries =
    {"RUSSIA", "PORTUGAL", "FRANCE", "ARGENTINA",
    "SAUDI ARABIA", "SPAIN", "AUSTRALIA",
    "ICELAND", "EGYPT", "MOROCCO", "PERU", "CROATIA",
    "URUGUAY", "IRAN", "DENMARK", "NIGERIA"};

  Participants() {
  }

  void groups() {
    //Variable for skrifttypen til grupperne
    PFont font1;
    //henter skrifttype fra datafolder:
    font1 = loadFont("MicrosoftYaHeiUI-Bold-48.vlw");
    //sætter fonten til text() commandoen:
    textFont(font1, 20);
    //Sætter tekst til at sættes fra midten
    textAlign(CENTER);

    fill(54, 213, 255); //Blå
    text("GROUP A", 250, 40);
    text("GROUP C", 750, 40);

    fill(255, 255, 40); //Gul
    text("GROUP B", 250, 315);
    text("GROUP D", 750, 315);
  }

  void countriesText() {
    //Variable for skrifttypen til landende
    PFont font2;
    //text for landende
    textAlign(CORNER);
    font2 = loadFont("MicrosoftYaHeiUI-48.vlw");
    fill(17, 25, 67); //Farven på skriften
    textFont(font2, 40); //Skriftstørrelsen og type

    int textX1 = 120;
    int textY1 = 90;
    int textX2 = 620;
    int textY2 = 365;
    int spacing = 55;
    int num = 0;

    for (int j = 0; j <= 3; j++) {
      //Sætter if statement for at sikre num ikke går out of bounds og crasher
      if (num < countries.length) text(countries[num++], textX1, textY1);

      if (num < countries.length) text(countries[num++], textX1, textY2);

      if (num < countries.length) text(countries[num++], textX2, textY1);

      if (num < countries.length) text(countries[num++], textX2, textY2);

      textY1 += spacing;
      textY2 += spacing;
    }
  }

  void pictures() {
    strokeWeight(1);
    noStroke();

    String[] countryNames = {
      "russia", "saudi-arabia", "egypt", "uruguay",
      "portugal", "spain", "morocco", "iran",
      "france", "australia", "peru", "denmark",
      "argentina", "iceland", "croatia", "nigeria"
    };

    int[] xPositions = {55, 555};  // To kolonner for x positioner
    int[] yPositions = {75, 130, 185, 240, 350, 405, 460, 515}; // 8 forskellige rækker på y-aksen

    int countryIndex = 0; //Index for at vide hvilket land der kaldes fra listen

    for (int x = 0; x < 2; x++) { //Kører på 2 kolonner
      for (int y = 0; y < 8; y++) { // Kører på 8 rækker
        if (countryIndex >= countryNames.length) {
          break; // If statement for at undgå out-of-bounds, break for at gå videre
        } else {
          
          String filename = "Flags/" + countryNames[countryIndex] + ".png"; //Sætter filnavnet i en string
          PImage flag = loadImage(filename);
          flag.resize(90, 51); //Indstiller størrelsen
          image(flag, xPositions[x], yPositions[y]); //Loader billedet på position ud fra x/y arrays ovenover på given plads ud fra for-loopet

          // Semi-transparent overlay
          fill(0, 0, 0, 20);
          rect(xPositions[x], yPositions[y], 90, 51);

          countryIndex++; // Går til næste land
        }
      }
    }
  }
}
