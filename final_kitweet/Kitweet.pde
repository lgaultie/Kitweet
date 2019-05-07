String monTexte= "Candidat";
int taille;
import processing.pdf.*;

int posXDepart;
int pasX;
PFont maTypo;
Float tailleArc;
int[] repetitions={2,2,2,2,2,4,4,4,5,6,6,6}; 
String[] mots={"sécurité","religion","sortir","pétrole","république","français","agriculture","guerre","immigration","nucléaire","président","peuple"};

void setup() {
  size (800, 800);
  beginRecord(PDF, "graph.pdf");
  background(255);                              
  noLoop();                                     
  stroke(0, 0, 255, 80);
  strokeWeight(5);
  strokeCap(SQUARE);
  pasX=10;
  posXDepart=width/2-(monTexte.length()*pasX)/2;
  maTypo = createFont("courier New", 12);
  textFont(maTypo);
  textAlign(RIGHT, CENTER);
  noFill();
  noLoop();
}


void draw() {
  for (int a=0; a<mots.length; a++) {
    tailleArc = map(repetitions[a], 0, 10, 0, TWO_PI-HALF_PI);
    stroke(random(255), random(255), random(255));
    noFill();
    arc(width/2, height/2, 50+a*22, 50+a*22, -HALF_PI, -HALF_PI+tailleArc);
    fill(0);
    text(mots[a], width/2-8, height/2-26-(a*11));
  }
  endRecord();
}
