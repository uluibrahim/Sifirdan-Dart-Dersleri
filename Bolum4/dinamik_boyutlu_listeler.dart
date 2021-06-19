main(List<String> args) {
  List<int> sayilar = [];

  // listeye eleman eklemek

  sayilar.add(3);
  sayilar.add(2);
  sayilar.add(6);

  print(sayilar);

  // listenin uzunluğu
  print(sayilar.length);

  print("\n\n");

  // ilk tanımlamada istenirse eleman eklenebilir.
  List<int> sayilar2 = [3, 5, 60];

  sayilar2.add(2);
  sayilar2.add(8);

  print(sayilar2);
  print("\n\n");

  // listeyi sabit boyutlu tanımlayıp daha sonra genişletilebilmesi (growable)

  List<int> sayilar3 = List.filled(5, 0, growable: true);

  print(sayilar3);
  sayilar3.add(5);
  print(sayilar3);

  print("\n\n");

  List<int>  sayilar4=List.empty(growable: true); // dinamik liste oluşturulmuş gibi oluyor.
  List<int>  sayilar5=[];
  // sayilar4 ve sayilar5 listeleri aynıdır.
  
}
