class Hayvan {
  void sesCikar(){
    print("Sesim yok");
  }
}

class Memeli extends Hayvan{

}

class Kedi extends Memeli{
  @override
  void sesCikar() {
    print("Miyav Miyav");
  }
}

class Kopek extends Memeli{
  @override
  void sesCikar() {
    print("Hav hav");
  }
}

void main(){
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar(); //kalıtım yok, kendi metoduna erişti.
  memeli.sesCikar(); // kalıtım var, üst sınıfın metoduna erişti.
  kedi.sesCikar(); // kalıtım var, kendi metoduna erişti.
  kopek.sesCikar(); // kalıtım var, kendi metoduna erişti.
}