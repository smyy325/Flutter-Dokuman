class Ev{
  int pencereSayis;
  Ev({required this.pencereSayis});
}

class Saray extends Ev{
  int kuleSayisi;

  Saray({required this.kuleSayisi, required int pencereSayis}) : super (pencereSayis: 100);
}

class Villa extends Ev{
  bool garajVarMi;

  Villa({required this.garajVarMi}) : super (pencereSayis: 100);
}

void main(){

}