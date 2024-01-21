void main() {
  var isLoop = true;
  var i = 1;

  do {
    print('No: ${i}');
    if (i == 10) {
      isLoop = false;
    }
    i++;
  } while (isLoop);
}
