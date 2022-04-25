void main(List<String> arguments) {
  print('\n\nSelamat Belajar Dart... 🤓\n\n');

  /// 01 Variable
  /** Variable
  * penamaan camelCase
  */
  String name;
  int umur;
  double tinggi;
  bool wargaIndonesia;
  dynamic bebas;

  name = "M Aditya FR";
  umur = 24;
  tinggi = 165.5;
  wargaIndonesia = true;

  bebas = "bebas";
  bebas = 24;
  bebas = 165.5;
  bebas = true;

  print("\nSelamat belajar " + name);

  var nilaiBebas; // tipe data awal bebas

  /** Final
  * tidak bisa dideklarasi ulang, tapi nilai nya bisa diubah (kasus di array)
  */
  final tidakBisaDeklarasiUlang = "Adit";
  // nilaiTetap = "Aditya";     //ERROR

  /** Const
  * nilainya immutable, const diubah menjadi hardcode saat kompile
  */
  final array1 = [1, 2, 3];
  const array2 = [1, 2, 3];

  array1[2] = 1;
  // array2[2] = 1;  //ERROR

  print("");
  print(array1);
  print(array2);
  print("");

  /** Late
  * variable yang dideklarasikan nanti saja
  */
  late var value = getValue();
  print("Variable sudah dibuat"); //1
  print(value); //3
  print("");

  /** num
   * tipe data untuk int dan double
   */
  num nominal = 1000;
  print(nominal);

  nominal = 1000.00;
  print(nominal);
  print("");

  /** String Interpolation
   * string yang digabung dengan expression
   */
  String firstName = "M Aditya";
  String lastName = "Fathur Rahman";

  var fullName = "$firstName $lastName";
  print(fullName);

  var dipisah = "ini" "akan" "digabung" "tanpa" "spasi";
  print(dipisah);
  print("");

  var multiText = """
Ini string multiline
belajar dart.
""";
  print(multiText);
  print("");

  /// 2 Konversi tipe data dan operator (pembagian & type test)
  var inputString = '1000';
  var inputInt = int.parse(inputString);
  var inputDouble = double.parse(inputString);
  print(inputString);
  print(inputInt);
  print(inputDouble);
  print("");

  var intToDouble = inputInt.toDouble();
  var intToString = inputInt.toString();

  var doubleToInt = inputDouble.toInt();
  var doubleToString = inputDouble.toString();

  /** Pembagian
   * '/' hasil double
   * '~/' hasil int
   * '%' sisa bagi
   */
  var nilaiAwal = 59;
  print(nilaiAwal / 4);
  print(nilaiAwal ~/ 4);
  print(nilaiAwal % 4);
  print("");

  /** Operator type test
   * as = melakukan konversi tipe data secara paksa
   * is = true, jika object sesuai tipe data
   */
  dynamic test1 = "ini string";
  dynamic test2 = 21;
  var varString = test1 as String;
  var varInt = test2 as int;
  // var paksa = test2 as String;  //ERROR
  print(test1 is String);
  print(test2 is int);
  print("");

  /// 04 Null
  /** Null
   * gunakan '?' supaya nullable
   */
  int number1;
  int? number2;
  // print(number1);   //ERROR
  print(number2);
  print("");

  /** Null check
   * check jika data null maka akan mengembalikan nilai tetapan
   * konversi paksa gunakan '!' setelah nama data, tetapi jika data null maka aplikasi akan error
   */
  String? user;
  var anggota = user ?? 'Guest';
  print(anggota);
  print("");
}

String getValue() {
  print("getValue() dipanggil"); //2
  return "Hellow";
}
