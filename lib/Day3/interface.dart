abstract class MyInterface {
  late int degisken;

  void metod1();

  String metod2();

}


class ClassA implements MyInterface{
  @override
  int degisken = 10;

  @override
  void metod1() {
    print("Metod 1 çalıştı");
  }

  @override
  String metod2() {
    return("metod 3 çalıştı");
  }

}

void main(){
  var a = ClassA();
  print(a.degisken);
  a.metod1();
  print(a.metod2());
}