//Paketler ve Import
import 'dart:io';

import '../Day2/example3.dart';

void main(){
  //Null safety - Nullable - Optional(Swift)
  //null : nil(Swift) : NoN

  String str = "Merhaba";

  //Tanımlama
  String? mesaj = null;

  //mesaj = "merhaba";

  //Yöntem 1:
  print("Yöntem 1: ${mesaj?.toUpperCase()}");

  //Yöntem 2:
  //print("Yöntem 2: ${mesaj!.toUpperCase()}");

  //Yöntem 3:
  if(mesaj != null){
    print("Yöntem 3: ${mesaj.toUpperCase()}");
  }
  else{
    print("Mesaj nulldur");
  }

  var a = Araba(renk: "Kırmızı", hiz: 120, calisiyorMu: true);
}

class Ornek{
  int x = 10;
  late int y;
}