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
  int angka1 = 0;
  int angka2 = 0;
  double? hasilDouble = 0;
  int? hasilInt = 0;
  String operator = '';

  do {
    stdout.write('Angka pertama = ');
    var intString1 = stdin.readLineSync()!.trim();
    try {
      angka1 = int.parse(intString1);
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
      angka2 = int.parse(intString2);
      validInput = true;
    } catch (e) {
      print('Angka Kedua harus integer');
      validInput = false;
    }
  } while (!validInput);

  switch (input.toLowerCase()) {
    case ('1'):
      operator = '+';
      (hasilDouble, hasilInt) = operation('1', angka1, angka2);
    case ('2'):
      operator = '-';
      (hasilDouble, hasilInt) = operation('2', angka1, angka2);
    case ('3'):
      operator = '*';
      (hasilDouble, hasilInt) = operation('3', angka1, angka2);
    case ('4'):
      operator = '/';
      (hasilDouble, hasilInt) = operation('4', angka1, angka2);
    case ('5'):
      operator = '%';
      (hasilDouble, hasilInt) = operation('5', angka1, angka2);
    default:
      print('Operator tidak ditemukan');
      return;
  }

  print('Hasil dari $angka1 $operator $angka2 = ${hasilDouble ?? hasilInt}');
}

(double?, int?) operation(String operasi, int angka1, int angka2) {
  switch (operasi) {
    case ('1'):
      return (null, angka1 + angka2);
    case ('2'):
      return (null, angka1 - angka2);
    case ('3'):
      return (null, angka1 * angka2);
    case ('4'):
      double? hasil = 0;
      try {
        hasil = double.parse((angka1 / angka2).toStringAsFixed(3));
      } catch (e) {
        print('Divided by zero: $e');
      }
      return (hasil, null);
    case ('5'):
      return (null, angka1 % angka2);
    default:
      return (null, null);
  }
}
