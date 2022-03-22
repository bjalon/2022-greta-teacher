import 'package:teacher/teacher.dart';
import 'package:test/test.dart';

import '../bin/eleve.dart';

void main() {
  test("Si ajoute des notes, récupère ces notes dans la liste de l'élève", () {
    var eleveJalon = Eleve(nom: "Benjamin");
    eleveJalon.addNote("Math", 14);
    eleveJalon.addNote("Français", 8);
    expect(eleveJalon.getNotes(), {
      "Math": [14],
      "Français": [8]
    });
  });

  test("Si ajoute d'autres notes, récupère ces notes dans la liste de l'élève",
      () {
    var eleveCecile = Eleve(nom: "Cecile");
    eleveCecile.addNote("Math", 2);
    eleveCecile.addNote("Français", 14);
    expect(eleveCecile.getNotes(), {
      "Math": [2],
      "Français": [14]
    });
  });

  test("Si ajoute d'autres notes, récupère la moyenne de l'élève", () {
    var eleveCecile = Eleve(nom: "Cecile");
    eleveCecile.addNote("Math", 2);
    eleveCecile.addNote("Français", 14);
    expect(eleveCecile.getMoyenne(), 8.0);
  });
}
