class Ev{
  int pencereSayisi;
  Ev({required this.pencereSayisi});
}

class Saray extends Ev{
  int kuleSayisi;

  Saray({required this.kuleSayisi, required int pencereSayisi}) : super (pencereSayisi: pencereSayisi);
}

class Villa extends Ev{
  bool garajVarMi;

  Villa({required this.garajVarMi, required pencereSayisi}) : super (pencereSayisi: pencereSayisi);
}

void main(){
  var topkapiSarayi = Saray(kuleSayisi: 10, pencereSayisi: 300);
  print(topkapiSarayi.kuleSayisi);
  print(topkapiSarayi.pencereSayisi);

  var bogazVilla = Villa(garajVarMi: true, pencereSayisi: 50);
  print(bogazVilla.garajVarMi);
  print(bogazVilla.pencereSayisi);
/*
  // Tip Kontrolü
  if(topkapiSarayi is Saray){
    print("Saraydır");
  }else{
    print("Saray değildir");
  }

  //Downcasting
  var ev = Ev(pencereSayisi: 10);
  var saray = ev as Saray;

  //Upcasting
  var s = Saray(kuleSayisi: 3, pencereSayisi: 100);
  Ev e = s;*/
}