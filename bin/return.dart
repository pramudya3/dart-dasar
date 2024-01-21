bool? isExists(String prefixName, List<String> names) {
  for (var name in names) {
    if ((name.contains(prefixName))) {
      return true;
    }
  }
  return false;
}

void main() {
  print(isExists('Budi', ['Budi', 'Joko', 'Paijo']));
}
