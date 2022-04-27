void main(List<String> args) {
  /// 06 Function

  /** Inner Function
   * function yang dibuat di dalam function
   * tidak bisa diakses dari luar outer function
   * tidak bisa diakses sebelum baris function inner dibuat
   */
  void garisBaru() {
    print("");
  }

  garisBaru();

  sayHello("Adit");
  garisBaru();

  sayHelloFull("M Aditya", "Fathur", "Rahman");
  sayHelloFull("M Aditya", "Fathur");
  sayHelloFull("M Aditya");
  garisBaru();

  sayHelloDefaultValue("M Aditya", "Fathur");
  sayHelloDefaultValue("M Aditya");
  garisBaru();

  sayHelloNamedParameter(firstName: "M Aditya", lastName: "Fathur Rahman");
  sayHelloNamedParameter(firstName: "M Aditya");
  sayHelloNamedParameter(lastName: "Fathur Rahman");
  garisBaru();

  sayHelloRequiredParameter(
      firstName: "M Aditya", middleName: "Fathur", lastName: "Rahman");
  sayHelloRequiredParameter(firstName: "M Aditya", middleName: "Fathur");
  sayHelloRequiredParameter(firstName: "M Aditya", lastName: "Rahman");
  garisBaru();

  print(sayHelloReturn("Aditya"));
  garisBaru();

  /** Function Short Expression
   * digunakan untuk membuat function yang hanya membutuhkan satu baris
   */
  int sum(int first, int second) => first + second;
  print(sum(3, 7));
  garisBaru();
}

void sayHello(String name) {
  print("Hello $name");
}

void sayHelloFull(String firstName, [String? middleName, String? lastName]) {
  /** Function Optional Parameter
   * gunakan '[]' dan tipe data harus nullable
   */
  print("Hello $firstName $middleName $lastName");
}

void sayHelloDefaultValue(String firstName,
    [String middleName = '', String lastName = '']) {
  /** Function Optional Parameter Default Value
   * gunakan '[]'
   */
  print("Hello $firstName $middleName $lastName");
}

void sayHelloNamedParameter({String? firstName, String lastName = ''}) {
  /** Function Named Parameter
   * gunakan '{}' harus nullable / ada default value 
   */
  print("Hello $firstName $lastName");
}

void sayHelloRequiredParameter(
    {required String firstName, String? middleName, String lastName = ''}) {
  /** Function Required Parameter
   * gunakan '{}'
   * parameter yang wajib diisi ketika dipanggil 
   */
  print("Hello $firstName $middleName $lastName");
}

String sayHelloReturn(String name) {
  return "Hello $name";
}
