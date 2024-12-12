import 'dart:collection';

void main(){
  //tanımlama
  var plakalar = HashSet.from([16, 23, 6]);
  var meyveler = HashSet<String>();

  //Değer atama
  meyveler.add("Kiraz");
  meyveler.add("Muz");
  meyveler.add("Elma");
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print(meyve);
  
  print("Boyut: ${meyveler.length}");
  print("Boş Kontrol: ${meyveler.isEmpty}");

  for(var meyve in meyveler){
    print("Sonuç: ${meyve}");
  }

  //8, 1, 2, 3
  for(var i=0; i<meyveler.length; i++){
    print("$i. -> ${meyveler.elementAt(i)}");
  }

  meyveler.remove("Elma");
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}