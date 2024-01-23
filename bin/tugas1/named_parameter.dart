void printName({String? firstName, lastname}) {
  print("Hello $firstName $lastname");
}

void printName2({String firstName = '', lastname = ''}) {
  print("Hello $firstName $lastname");
}

void main() {
  String firstName = 'Budi';
  String lastName = 'Oke';

  printName();
  printName(firstName: firstName, lastname: lastName);
  printName2();
  printName2(firstName: firstName, lastname: lastName);
}
