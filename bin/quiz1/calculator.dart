import 'dart:io';

void main() {
  print('''
## === Calculator CLI === ##
1. Penjumlahan
2. Pengurangan
3. Perkalian
4, Pembagian
5. Modulus ''');

  stdout.write('\nPilih operasi matematika atau q untuk keluar = ');
  var input = stdin.readLineSync()!.trim();
  if (input.toLowerCase() == 'q') {
    print('Program telah keluar');
    return;
  }

  bool validInput = true;
  double angka1 = 0;
  double angka2 = 0;
  double hasil = 0;
  String operator = '';

  do {
    stdout.write('Angka pertama = ');
    var intString1 = stdin.readLineSync()!.trim();
    try {
      angka1 = double.parse(intString1);
      validInput = true;
    } catch (e) {
      print('Angka Pertama harus integer');
      validInput = false;
    }
  } while (!validInput);

  do {
    stdout.write('Angka Kedua = ');
    var intString2 = stdin.readLineSync()!.trim();
    try {
      angka2 = double.parse(intString2);
      validInput = true;
    } catch (e) {
      print('Angka Kedua harus integer');
      validInput = false;
    }
  } while (!validInput);

  switch (input.toLowerCase()) {
    case ('1'):
      operator = '+';
      hasil = operation('1', angka1, angka2);
    case ('2'):
      operator = '-';
      hasil = operation('2', angka1, angka2);
    case ('3'):
      operator = '*';
      hasil = operation('3', angka1, angka2);
    case ('4'):
      operator = '/';
      hasil = operation('4', angka1, angka2);
    case ('5'):
      operator = '%';
      hasil = operation('5', angka1, angka2);
    default:
      print('Operator tidak ditemukan');
      return;
  }

  print('Hasil dari $angka1 $operator $angka2 = $hasil');
}

double operation(String operasi, double angka1, double angka2) {
  switch (operasi) {
    case ('1'):
      return angka1 + angka2;
    case ('2'):
      return angka1 - angka2;
    case ('3'):
      return angka1 * angka2;
    case ('4'):
      var str = (angka1 / angka2).toStringAsFixed(3);
      return double.parse(str);
    case ('5'):
      return angka1 % angka2;
    default:
      return 0;
  }
}
