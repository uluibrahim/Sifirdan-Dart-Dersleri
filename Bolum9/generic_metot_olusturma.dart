main(List<String> args) {
  double doubleOrt = ortalama<double>(5, 4);
  double intOrt= ortalama<int>(8, 4);
}

double ortalama<T extends num>(T a, T b) => (a + b) / 2;
