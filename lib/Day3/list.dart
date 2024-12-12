void main(){
  var plakalar = [16, 23, 6];
  var meyveler = <String>[];
  //veri ekleme
  meyveler.add("Muz");
  meyveler.add("Kiraz");
  meyveler.add("Elma");
  print(meyveler);

  //Güncelleme
  meyveler[1]="Yeni Kiraz";
  print(meyveler);

  //Insert
  meyveler.insert(1, "Portakal");
  print(meyveler);

  //veri okuma
  String meyve = meyveler[0];
  print(meyve);

  print("Boyut: ${meyveler.length}");
  print("Boş Kontrol: ${meyveler.isEmpty}");

  //For Each
  for( var meyve in meyveler){
    print("Sonuç: $meyve");
  }

  //0-1-2-3
  for(var i=0; i<meyveler.length;i++){
    print("$i. -> ${meyveler[i]}");
  }

  print(meyveler);
  var liste = meyveler.reversed.toList();
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(1);
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}