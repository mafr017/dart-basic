void main(List<String> args) {
  /// 05 Loop
  /** For Loop */
  for (var i = 0; i < 5; i++) {
    print("object-$i");
  }
  print("");

  var array1 = [2, 3, 5, 234, 546, 432];
  for (var value in array1) {
    print("value is $value");
  }
  print("");

  /** While Loop */
  var counter = 0;
  while (counter < 10) {
    print("Perulangan1-$counter");
    counter++;
  }
  print("");

  /** Do While Loop */
  var counter2 = 0;
  do {
    print("Perulangan2-$counter2");
    counter2++;
  } while (counter2 < 10);
  print("");

  /** Break & Continue
   * break = menghentikan seluruh perulangan
   * continue = menghentikan perulangan yang sedang berjalan dan lanjut ke selanjutnya
   */
  var temp = 0;
  while (true) {
    print("loop-$temp");
    temp++;
    if (temp > 10) {
      break;
    }
  }
  print("");
  for (var i = 0; i < 50; i++) {
    if (i % 2 == 0) {
      continue;
    }
    print("loop2-$i");
  }
  print("");
}
