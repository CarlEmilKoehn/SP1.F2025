//variabler for hvide rektangler


//space mellem Y-aksen på hvide rektangler = 55 pixels

void setup() {
  size(1000, 555);
  rectMode(CENTER);
  imageMode(CENTER);

  //blå baggrund
  background(39, 45, 75);

  Display d = new Display();
  Participants p = new Participants();
  
  
  d.drawRect(); //Hvide rektangler
  d.rectColor(); //Farvet firkant inde i rektanglerne
  d.whiteLine(); //Hvid midterlinje
  p.groups(); //Sætter gruppe teksten
  p.countriesText(); //Texten for landende
  p.pictures(); //Indsætter billeder

}
