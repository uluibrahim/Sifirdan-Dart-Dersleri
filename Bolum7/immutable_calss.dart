main(List<String> args) {
  // oluşturduğumuz nesneleri const tanımlarsak çok daha bellek dostu ve hızlı bir uygulama olacaktır
  const Student emre = const Student(4, "emre");
  const Student emre2 = const Student(4, "emre");

  // yukarıdaki gibi nesneleri const tanımlarsak ve nesnelerin içeriği aynı ise aynı adreste tutulur Burada bellekten tasurruf etmiş oluruz
  if (emre == emre2) {
    print("Eşit");
  } else {
    print("Eşit değil");
  }
}

class Student {
  final int id; // final tanımlayarak değiştirilmesinş engelledik
  final String isim; // final tanımlayarak değiştirilmesinş engelledik

  const Student(this.id, this.isim);
}
