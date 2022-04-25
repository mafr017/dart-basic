void main(List<String> args) {
  print("");

  /// 04 Collection
  /** List
   * dikenal dengan array
   */
  List<String> listWarna = [];
  var listString = <String>["dart", "flutter"];

  listWarna.add("merah");
  listWarna.add("kuning");
  listWarna.add("hijau");
  listWarna.add("biru");
  print(listWarna);
  print("jumlah data: ${listWarna.length}");

  // listWarna.remove("hijau");
  listWarna.removeAt(2);
  print(listWarna);

  listWarna[1] = "hijau";
  print(listWarna);
  print("");

  /** Set
   * mirip dengan array tetapi harus unik datanya
   */
  Set<int> angkaRandom = {};
  var tipeSet = <String>{};
  angkaRandom.add(2);
  angkaRandom.add(2);
  angkaRandom.add(3);
  angkaRandom.add(4);
  print(angkaRandom);
  print(angkaRandom.length);

  /** Map
   * key harus unik
   */
  Map<String, String> hobiOrang = {};
  var tipeMap1 = Map<String, String>();
  var tipeMap2 = <String, String>{};
  hobiOrang['asep'] = 'game';
  hobiOrang['eneng'] = 'masak';
  hobiOrang['asep'] = 'futsal';
  print(hobiOrang);
}
