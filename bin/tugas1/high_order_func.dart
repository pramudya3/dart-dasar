void sayWord(String word, String Function(String) filter) {
  var filteredWord = filter(word);
  print('$filteredWord');
}

String filterBadWord(String word) {
  if (word.contains('kampret')) {
    return word.replaceAll('kampret', 'k*****');
  } else {
    return word;
  }
}

void main() {
  sayWord('Hai kampret', filterBadWord);
}
