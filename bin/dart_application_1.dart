import 'dart:io';
void main(List<String> arguments) {
  int n = 0;
  print("Input number : ");
  var input = stdin.readLineSync();
  n = int.parse(input!);
  if(n % 2 != 0) {
    odd(n);
  }else {
    even(n);
  } 
}

void odd(int n){
int a = (n / 2).floor();
    int b = 1;
    for (int i = 0; i < n; i++) {
      for (int k = 0; k < a; k++) {
        stdout.write("*");
      }
      for (int k = 0; k < b; k++) {
        if (k % 2 != 0) {
          stdout.write(" ");
        } else {
          if (i + 1 == 9) {
            stdout.write("9");
          } else {
            stdout.write((i + 1) % 9);
          }
        }
      }
      for (int k = 0; k < a; k++) {
        stdout.write("*");
      }
      if (i < (n / 2).floor()) {
        a--;
        b += 2;
      } else {
        a++;
        b -= 2;
      }
      print("");
    }
}

void even(int n){
int a = 1, b = n;
    for (int i = 0; i < n; i++) {
      for (int k = 0; k < n - i; k++) {
        if (a % 9 == 0) {
          stdout.write("9");
        } else {
          stdout.write(a % 9);
        }
        a++;
        if (a > n) {
          a = 1;
        }
      }
      for (int k = 0; k < i * 2; k++) {
        stdout.write(" ");
      }
      for (int k = 0; k < n - i; k++) {
        if (b % 9 == 0) {
          stdout.write("9");
        } else {
          stdout.write(b % 9);
        }
        b--;
        if (b < 1) {
          b = n;
        }
      }
      print("");
    }
  }