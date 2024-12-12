void main(){
  //1.commpile error
  String x = "Hello";
  //x = 100;

  //2.Runtime exception (error)
  var liste =<String>[];
  liste.add("Sumeyye");
  liste.add("Emre");

  String isim = liste[3];
  print("Gelen isim: $isim");

  try{
    String isim = liste[3];
    print("Gelen isim: $isim");
  } catch(e){
    print("Listenin boyutunu aştınız!!");
  }
}