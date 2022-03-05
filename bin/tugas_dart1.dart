import 'dart:io';

void main(List<String> arguments) {
  // NO 1
  stdout.write("Masukkan angka ganjil: ");
  String? input1 = stdin.readLineSync();
  int n1 = int.parse(input1!);

  int countatas = (n1 - 1) ~/ 2;
  int angka = 1;
  // atas
  for (int i = 0; i <= (n1 - 1) ~/ 2; i++) {
    if (i == (n1 - 1) ~/ 2) {
      for (int j = 0; j < (n1 + 1) / 2; j++) {
        stdout.write(i + 1);
        stdout.write(" ");
      }
    } else {
      for (int a = 0; a < countatas; a++) {
        stdout.write("*");
      }
      stdout.write(angka);

      if (countatas * 2 < n1 - 1) {
        for (int a = 0; a < n1 - (countatas * 2) - 2; a++) {
          stdout.write(" ");
        }
        stdout.write(angka);
      }

      for (int b = 0; b < countatas; b++) {
        stdout.write("*");
      }

      if (angka == 9) {
      angka = 1;
      } else {
        angka++;
      }

      countatas--;
    }
    print("");
  }

  // bawah
  angka = (n1 + 1) ~/ 2 + 1;
  countatas = 1;
  for (int i = (n1 + 1) ~/ 2; i < n1; i++) {
    for (int a = 0; a < countatas; a++) {
      stdout.write("*");
    }
    stdout.write(angka);

    if (countatas * 2 < n1 - 1) {
      for (int a = 0; a < n1 - (countatas * 2) - 2; a++) {
        stdout.write(" ");
      }
      stdout.write(angka);
    }

    for (int b = 0; b < countatas; b++) {
      stdout.write("*");
    }

    countatas++;

    if (angka == 9) {
      angka = 1;
    } else {
      angka++;
    }

    print("");
  }

  // NO 2
  stdout.write("Masukkan angka genap: ");
  String? input2 = stdin.readLineSync();

  int n2 = int.parse(input2!);

  int angka1 = 1;
  int angka2 = n2;
  if (n2 > 9) {
    angka2 = (n2 % 10) + 1;
  }

  for (int i = 0; i < n2; i++) {
    //kiri
    for (int a = 0; a < n2 - i; a++) {
      stdout.write(angka1);

      if (angka1 == n2 || angka1 == 9) {
        angka1 = 1;
      } else {
        angka1++;
      }
    }

    //spasi
    for (int s = 0; s < i; s++) {
      stdout.write("  ");
    }

    //kanan
    for (int b = 0; b < n2 - i; b++) {
      stdout.write(angka2);
      if (angka2 == 1) {
        angka2 = n2;
        if (n2 > 9) {
          angka2 = 9;
        }
      } else {
        angka2--;
      }
    }

    print("");
  }
}
