void sayWord(String word, String Function(String) filter) {
  print('${filter(word)}');
}

void main() {
  sayWord('Hai kampret', (word) {
    if (word.contains('kampret')) {
      return word.replaceAll('kampret', 'k*****');
    } else {
      return word;
    }
  });
}
