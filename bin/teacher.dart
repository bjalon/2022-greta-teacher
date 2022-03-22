import 'dart:io';

import 'eleve.dart';

void main(List<String> arguments) {
  var eleve = Eleve(nom: "Benjamin JALON");
  String? note;
  String? matiere;
  String? choix;
  do {
    choix = askAction();
    doAction(choix, eleve);
  } while (isApplicationStillAlive(choix));
}

String? askAction() {
  print("1. pour ajouter une note");
  print("2. Pour visualiser les notes");
  print("3. Pour visualiser la moyenne");
  print("q. Pour quitter");
  return stdin.readLineSync();
}

void doAction(String? choix, Eleve eleve) {
  switch (choix) {
    case "1":
      String? matiere;
      int note;
      print("Quelle matière ?");
      matiere = stdin.readLineSync();
      print("Quelle est la note ?");
      var noteAsString = stdin.readLineSync();
      if (noteAsString == null) {
        note = 0;
      } else {
        note = int.parse(noteAsString);
      }
      eleve.addNote(matiere ?? "Math", note);
      break;
    case "2":
      print("Voici les notes :");
      for (var matiere in eleve.getNotes().keys) {
        print("** $matiere : ${eleve.getNotes()[matiere]!}");
      }
      break;
    case "3":
      print("Voici la moyenne ${eleve.getMoyenne()}");
      break;
    case "q":
      print("Merci, aurevoir.");
      break;
    default:
  }
}

bool isApplicationStillAlive(String? choix) {
  return choix != "q";
}
