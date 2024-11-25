class Kategoriler{
  int kategori_id;
  String kategori_ad;

  Kategoriler({required this.kategori_id, required this.kategori_ad});
}

class Yonetmenler{
  int yonetmen_id;
  String yonetmen_ad;

  Yonetmenler({required this.yonetmen_id, required this.yonetmen_ad});
}

class Filmler{
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(
      {required this.film_id,
        required this.film_ad,
        required this.film_yil,
        required this.kategori,
        required this.yonetmen});
}

void main(){
  var k1 = Kategoriler(kategori_id: 1, kategori_ad: "Dram");
  var k2 = Kategoriler(kategori_id: 2, kategori_ad: "Bilim Kurgu");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "Quentin Tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "Christopher Nolan");

  var f1 = Filmler(film_id: 1, film_ad: "Django", film_yil: 2013, kategori: k1, yonetmen: y1);
  print("Film id      : ${f1.film_id}");
  print("Film Adı     : ${f1.film_ad}");
  print("Film Yılı    : ${f1.film_yil}");
  print("Film Kategori: ${f1.kategori.kategori_ad}");
  print("Film Yönetmen: ${f1.yonetmen.yonetmen_ad}");
}