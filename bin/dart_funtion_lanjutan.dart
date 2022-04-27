void main(List<String> args) {
  void garisBaru() {
    print("");
  }

  /// 07 Funtion Lanjutan
  sayHello("Adit", filterBadWord);
  sayHello("gila", filterBadWord);
  garisBaru();

  /** Anonymous Function
   * function yang tidak memiliki nama atau disebut juga lambda
   */
  var upperFunction = (String name) {
    return name.toUpperCase();
  };

  var lowerFunction = (String name) => name.toLowerCase();

  print(upperFunction("Adit"));
  print(lowerFunction("Fathur"));
  garisBaru();

  /** Anonymous Function as Parameter */
  sayHello("Aditya Fathur", (namee) {
    return namee.toUpperCase();
  });
}

void sayHello(String name, String Function(String) filter) {
  /** Higher Order Function
   * function yang menggunakan function sebagai variable, parameter / return value
   * biasanya digunakan ketika ingin membuat function yang general dan ingin mendapatkan...
   * ...input yang flexible berupa function, yang bisa dideklarasikan oleh pengguna ketika memanggil function tersebut 
   */
  var filteredName = filter(name);
  print("Hi $filteredName");
}

String filterBadWord(String name) {
  if (name.toLowerCase() == "gila") {
    return '****';
  } else {
    return name;
  }
}
