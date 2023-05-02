class Laudos {
  static final Laudos _singleton = Laudos._internal();

  factory Laudos() {
    return _singleton;
  }

  Laudos._internal();

  List<Map<String, String>> laudos = [
    {'title': 'Laudo 1', 'text': 'Texto Laudo 1'},
    {'title': 'Laudo 2', 'text': 'Texto Laudo 2'},
    {'title': 'Laudo 3', 'text': 'Texto Laudo 3'},
    {'title': 'Laudo 4', 'text': 'Texto Laudo 4'},
  ];
  int laudosLen = 4;

  List<Map<String, String>> getLaudos() {
    return laudos;
  }

  getLen() {
    return laudosLen;
  }

  createLaudo(title, text) {
    laudos.add({'title': title, 'text': text});
    laudosLen += 1;
  }

  deleteLaudo(index) {
    laudos.removeAt(index);
  }
}
