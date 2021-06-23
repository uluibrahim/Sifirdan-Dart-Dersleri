class MyStack {
  List _liste = [];

  push(yeniEleman) {
    _liste.add(yeniEleman);
  }

  pop() => _liste.removeLast();
}

class GenericStack<T> {
  List<T> _liste = <T>[];

  void push(T yeniEleman) => _liste.add(yeniEleman);

  T pop() => _liste.removeLast();
}
