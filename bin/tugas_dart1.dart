import 'dart:io';

void main(List<String> arguments) {
  // NO 1
  stdout.write("Masukkan angka ganjil: ");
  String? input1 = stdin.readLineSync();
  int n1 = int.parse(input1!);

  for (int i = 0; i < n1; i++) {
    if (i == 0 || i == n1 - 1) {
      for (int j = 0; j < n1; j++) {
        if (j == (n1 - 1) / 2) {
          stdout.write(i + 1);
        } else {
          stdout.write("*");
        }
      }
    } else if (i == (n1 - 1) / 2) {
      for (int j = 0; j < n1; j++) {
        if (j % 2 == 1) {
          stdout.write(" ");
        } else {
          stdout.write(i + 1);
        }
      }
    } else {
      for (int j = 0; j < n1; j++) {
        if (j == 0 || j == n1 - 1) {
          stdout.write("*");
        } else if (j == 1 || j == n1 - 2) {
          stdout.write(i + 1);
        } else {
          stdout.write(" ");
        }
      }
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
