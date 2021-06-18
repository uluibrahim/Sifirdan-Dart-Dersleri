main(List<String> args) {
  String harfNotu = "Ab";

// svitch (buraya degişken adı yazılır)
  switch (harfNotu) {
    case "AA":
      print("notunun 80 ile 100 arasında");
      break;
    case "BB":
      print("notunun 70 ile 80 arasında");
      break;
    case "CC":
      print("notunun 60 ile 70 arasında");
      break;
    case "DD":
      print("notunun 50 ile 60 arasında");
      break;
    case "FF":
      print("Dersten kaldınız");
      break;
    default:
      print("Hatalı deger girdiniz");
    // üstterkiler olmazsa buradaki kod çalışır
  }
}
