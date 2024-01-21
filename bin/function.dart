void printElement(int element) {
  print('No. $element');
}

void main() {
  var list = [1, 2, 3, 4, 5];
  for (var i = 0; i < list.length; i++) {
    printElement(list[i]);
  }
}
