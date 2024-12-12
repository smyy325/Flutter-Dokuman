import 'dart:collection';

void main(){
  //tanımlama
  var sayilar = {"Bir":1, "İki": 2};
  var iller = HashMap<int,String>();

  //değer atama
  iller[16] = "Bursa";
  iller[45] = "Manisa";
  print(iller);

  //Güncelleme
  iller[16] = "Yeni Bursa";
  print(iller);

  String il = iller[45]!;
  print(il);

  print("Boyut: ${iller.length}");
  print("Boş Kontrol: ${iller.isEmpty}");

  var anahtarlar = iller.keys;

  for(var a in anahtarlar){
    print("$a -> ${iller[a]}");
  }

  iller.remove(16);
  print(iller);

  iller.clear();
  print(iller);
}