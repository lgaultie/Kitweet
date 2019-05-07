String tousLesParagraphes[];
String[] tousLesMots;
StringList motsSelectionnes = new StringList();
String tousLesMotsSelectionnes = "";

// Charge le texte en paragraphes
tousLesParagraphes = loadStrings("Hamon.txt");

// Rassemble tout le texte
String toutLeTexte = join(tousLesParagraphes, " ");

// Supprime du texte les caracrteres indiqués entre guillemets
tousLesMots = splitTokens(toutLeTexte, " & , + . ( ) ; : ' ? ");

// Ne recupere dans un tableau que les mots superieurs à 5 lettres
for (int a=0; a<tousLesMots.length; a++) {
  if (tousLesMots[a].length() > 5) {
    motsSelectionnes.append(tousLesMots[a]);
  }
}

// Remet tous les mots trouvés ensemble
for (int a=0; a<motsSelectionnes.size(); a++) {
  tousLesMotsSelectionnes +=  motsSelectionnes.get(a)+" ";
}
// Affiche tous les mots
printArray(tousLesMotsSelectionnes);