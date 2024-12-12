class Ogrenciler{
  int no;
  String ad;
  String sinif;

  Ogrenciler({required this.no, required this.ad, required this.sinif});
}

void main(){
  var o1 = Ogrenciler(no: 123, ad: "Ayşe", sinif: "9C");
  var o2 = Ogrenciler(no: 134, ad: "Ahmet", sinif: "10C");
  var o3 = Ogrenciler(no: 145, ad: "Ali", sinif: "11C");

  var ogrencilerListesi = <Ogrenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o2);
  ogrencilerListesi.add(o3);
  
  for( var o in ogrencilerListesi){
    print("No: ${o.no}\nAd: ${o.ad}\nSınıf: ${o.sinif}");
  }

  // Sorting
  print("---------------------------- Sayısal: Küçükten > büyüğe--------------------------");
  Comparator<Ogrenciler> s1 = (x,y) => x.no.compareTo(y.no);
  ogrencilerListesi.sort(s1);
  for( var o in ogrencilerListesi){
    print("No: ${o.no}\nAd: ${o.ad}\nSınıf: ${o.sinif}");
  }

  print("---------------------------- Sayısal: büyükten > küçüğe--------------------------");
  Comparator<Ogrenciler> s2 = (x,y) => y.no.compareTo(x.no);
  ogrencilerListesi.sort(s2);
  for( var o in ogrencilerListesi){
    print("No: ${o.no}\nAd: ${o.ad}\nSınıf: ${o.sinif}");
  }

  print("---------------------------- Metinsel: Küçükten > büyüğe--------------------------");
  Comparator<Ogrenciler> s3 = (x,y) => x.ad.compareTo(y.ad);
  ogrencilerListesi.sort(s3);
  for( var o in ogrencilerListesi){
    print("No: ${o.no}\nAd: ${o.ad}\nSınıf: ${o.sinif}");
  }

  print("---------------------------- Metinsel: büyükten > küçüğe--------------------------");
  Comparator<Ogrenciler> s4 = (x,y) => y.ad.compareTo(x.ad);
  ogrencilerListesi.sort(s4);
  for( var o in ogrencilerListesi){
    print("No: ${o.no}\nAd: ${o.ad}\nSınıf: ${o.sinif}");
  }

  //Filtreleme
  print("---------------------------- Filtreleme 1 --------------------------");
  Iterable<Ogrenciler> f1 = ogrencilerListesi.where((ogrenciNesnesi){
    return ogrenciNesnesi.no > 123 && ogrenciNesnesi.no<140;
  });

  var liste1 = f1.toList();
  for( var o in liste1){
    print("No: ${o.no}\nAd: ${o.ad}\nSınıf: ${o.sinif}");
  }

  print("---------------------------- Filtreleme 2 --------------------------");
  Iterable<Ogrenciler> f2 = ogrencilerListesi.where((ogrenciNesnesi){
    return ogrenciNesnesi.ad.contains("e");
  });

  var liste2 = f2.toList();
  for( var o in liste2){
    print("No: ${o.no}\nAd: ${o.ad}\nSınıf: ${o.sinif}");
  }

}