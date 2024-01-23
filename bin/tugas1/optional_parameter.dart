void printName(String firstname, [String? lastname, String nickname = '']) {
  print('Hai $firstname $lastname');
}

void main() {
  var name1 = 'Budi';
  String? name2 = 'Idub';

  printName(name1);
  printName(name1, name2);
}
