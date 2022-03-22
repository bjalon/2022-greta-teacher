class Eleve {
  String? _nom;
  Map<String, List<int>> _notes = {};

  Eleve({String? nom}) {
    this._nom = nom;
  }

  void addNote(String matiere, int note) {
    if (_notes[matiere] == null) {
      _notes[matiere] = [];
    }
    _notes[matiere]!.add(note);
  }

  Map<String, List<int>> getNotes() {
    return _notes;
  }

  double getMoyenne() {
    int sum = 0;
    int notesCount = 0;

    for (var matiereNotes in _notes.values) {
      for (var currentNote in matiereNotes) {
        sum += currentNote;
        notesCount++;
      }
    }
    return sum / notesCount;
  }
}
