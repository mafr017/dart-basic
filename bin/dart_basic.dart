void main(List<String> arguments) {
  print('\n\nSelamat Belajar Dart... 🤓\n\n');

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

  var nilaiBebas; // sama seperti dynamic

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
}

String getValue() {
  print("getValue() dipanggil"); //2
  return "Hellow";
}
