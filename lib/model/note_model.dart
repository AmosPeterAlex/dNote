class NoteBook {
  String subjectName;
  bool isFav;
  List<Note>? notes; // Nullable List<Note>
  NoteBook({
    required this.subjectName,
    required this.isFav,
    this.notes,
  });
}

class Note {
  String title;
  String comment;

  Note({
    required this.title,
    required this.comment,
  });
}
