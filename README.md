# Flutter Dokuman

## Giriş
- JavaScript diline	benzemektedir.
- Google tarafından	geliştirilmiştir.
- Google’ın	sahip	olduğu Flutter platformu	üzerinde	kullanılmaktadır.
- Flutter, tek seferde	hem	android hemde ios için mobil uygulama	
geliştirilen bir platformdur.
- Google tarafından	Flutter SDK’si oluşturulmuştur.
- Dart dili ile	aynı zamanda	web	uygulamaları da geliştirilebilir

```flutter
void main(){
  print("Hello Dart")
}
```

## Değişken	ve	Veri	Tipleri

### Değişkenler

- Modern	diller	hafızada	saklanan	değerleri	değişkenler	ile	ifade	etmektedir.	
- Değişkenler	hafızada	geçici	olarak	saklanan değerleri	temsil	eder.
- Dart	dilinde	değişken	için	tür	belirtmemize gerek	yoktur.

**NOT** : Değişkenler kalıcı değildir. 
Programdan çıkıldığında değerler kaybolur. Kalıcı değerler için 
değişkenlerin değerleri diske yazılmalıdır.

- Değişken oluşturma :
  - var yas = 21;
    - var -> Değişken belirteci
    - yas -> Değişken adı
    - = -> Atama operatörü
    - 21 -> Değişken değeri
- Tür belirterek değişken oluşturma :
  - int yas = 21;
    - int -> Değişken türü
- Data tipleri :
  - Int (int) -> Tam sayılar
  - Double (double) -> Ondalıklı sayılar
  - String : Metinsel ifadeler (Yazılar ve Harfler)
  - Bool : Mantıksal ifadeler (True veya False)
- Literals (Değerlerin Yazılma Kuralları) : Literals değişkenler	için	kullanılan	değerlerin	nasıl	yazılması	gerektiğini	temsil	eder.
  - "Sümeyye" //Metinsel ifade (String)
  - "S" //Harfsel ifade
  - 21 //Tam sayı (int)
  - 1.61 //Ondalıklı Sayı (double)
- Değişkenlere isim verme Kuralları :
  - Case	sensitive’dir.Büyük küçük	harf	farkı	vardır.
  - Rakamla	başlayamaz.
  - @	ve	%	değişken	içerisinde	kullanılmaz.
  - Bazı örnekler;
    - Azad
    - zara
    - abc
    - move_name
    - a_123
    - myname50
    - _temp
    - j
    - retVal
- **Örnek 1** : Bir öğrencinin *adını*, *yaşını*, *boyunu* ve *adının baş harfinin* tutulduğu değişken oluşturunuz.
  - Kod :
```flutter
class ogrenciBilgi{
  var ogrenci_ad = "Sümeyye";
  int ogrenciYas = 21;
  double ogrenci_boyu = 1.61;
  String ogrenci_basHerfi = "S";

}

void main(){
  var o1 = ogrenciBilgi();
  print("Öğrenci Adı: ${o1.ogrenci_ad}");
  print("Öğrenci Yaşı: ${o1.ogrenciYas}");
  print("Öğrenci Boyu: ${o1.ogrenci_boyu}");
  print("Öğrenci Baş Herfi: ${o1.ogrenci_basHerfi}");
}
```
  - Çıktı :
```flutter
Öğrenci Adı: Sümeyye
Öğrenci Yaşı: 21
Öğrenci Boyu: 1.61
Öğrenci Baş Herfi: S
```
- **Örnek 2** : Bir	şirketin	ürünlerinin	bilgilerinin	tutulduğu	ürünler	tablosunu	temsil	eden değişkenleri oluşturunuz.
  - Kod :
```flutter
class urunBilgileri{
  late int urun_id;
  late String urun_adi;
  late int urun_adet;
  late double urun_fiyat;
  late String urun_tedarikci;
}
void main(){
  var u1 = urunBilgileri();
  u1.urun_id = 3416;
  u1.urun_adi = "Kol Saati";
  u1.urun_adet = 100;
  u1.urun_fiyat = 149.99;
  u1.urun_tedarikci = "rolex";
  print("Ürün id: ${u1.urun_id}");
  print("Ürün Adı: ${u1.urun_adi}");
  print("Ürün Adet: ${u1.urun_adet}");
  print("Ürün Fiyat: ${u1.urun_fiyat}");
  print("Ürün Tedarikçi: ${u1.urun_tedarikci}");
}
```
  - Çıktı :
```flutter
Ürün id: 3416
Ürün Adı: Kol Saati
Ürün Adet: 100
Ürün Fiyat: 149.99
Ürün Tedarikçi: rolex
```
<br></br>
### print() metodu ile çıktı alma
- Kodlama	yaparken	kodların	çalışma	sonuçlarını	bu	metod ile	takip	edebiliriz.
- print()	alt	alta	yazmak	için	kullanılır.
- String ifade	içine	$ ifadesi	kullanılarak	çıktıya	değişken	eklenebilir.
- String ifade	içine	${} ifadesi	kullanılarak	işlem	yapılabilir.
- **Örnekler** : 
```flutter
void main(){

  print("Örnek 3");
  
  var sayi = 10;
  int numara = 88;
  
  print(sayi);
  print(numara);
  
  print("****************************************");
  
  print("Örnek 4 : Değişkenin değerini daha sonra değiştirebiliriz!");
  
  var fiyat = 12.99;
  double ucret = 23.59;
  
  print(fiyat);
  print(ucret);
  
  fiyat = 67.99;
  ucret = 10.45;
  
  print(fiyat);
  print(ucret);

  print("****************************************");
  
  print("Örnek 5 : İşlem yaptıktan sonra başka bir değişkene veri aktarılabilir.");
  
  var sayi1 = 10;
  int sayi2 = 20;
  
  var toplam = sayi1 + 50;
  int carpma = sayi1 * sayi2;
  
  print(toplam);
  print(carpma);

  print("****************************************");

  print("Örnek 6 : Boş değişken oluşturup daha sonra değer aktarabiliriz.");

  var sonuc1;
  int sonuc2;

  sonuc1 = 333;
  sonuc2 = 555;

  print(sonuc1);
  print(sonuc2);

  print("****************************************");

  print("Örnek 7 : Yan yana değişken oluşturma");

  var s1, s2, s3;

  s1 = 21;
  s2 = "Sümeyye";
  s3 = 1.61;

  print("Yaş: $s1, Ad: $s2, Boy: $s3");

  int k1 = 325, k2 = 212803080;
  print("$k1 $k2");

  print("****************************************");

  print("Örnek 8 : Type Safety");
  var deger = 100;
  //deger = "Sümeyye"; "Sümeyye" bu kısımda hata verir
  print(deger);
}
```
- **Çıktı** :
```flutter
Örnek 3
10
88
****************************************
Örnek 4 : Değişkenin değerini daha sonra değiştirebiliriz!
12.99
23.59
67.99
10.45
****************************************
Örnek 5 : İşlem yaptıktan sonra başka bir değişkene veri aktarılabilir.
60
200
****************************************
Örnek 6 : Boş değişken oluşturup daha sonra değer aktarabiliriz.
333
555
****************************************
Örnek 7 : Yan yana değişken oluşturma
Yaş: 21, Ad: Sümeyye, Boy: 1.61
325 212803080
****************************************
Örnek 8 : Type Safety
100
```
- Type Safety – Tür	Güvenliği
  - Oluşturduğunuz	değişkene	farklı	türde	değişken	atayamazsınız.
- Değişkenin	kapsamı	(Global	ve	Local Değişken	)
  - Süslü	parantez	{	}	bizim	kapsamımızı	belirler.	Değişkenin	ulaşılabilirliği buna	bağlıdır.
<br></br>
### Constant - Sabitler
- Sabitler	içerisine	bir	kere	veri	atıldığında	bir	daha	değiştiremeyeceğiniz	yapılardır.
- **final**	ve **const** ismi	ile	kullanılırlar.
- **const** değişken	oluşturduğumuz	anda	hafızada	oluşur.
- **final** değişken	oluşturulduktan	sonra	kod	çalıştırıldığında	hafızada	oluşur.
- **const** sınıf	içinde	kullanılmaz.
- Genelde	yaygın	kullanım	**final** dır.
- Sabit	kullanmak	memory yönetimini	rahatlatır.
- Çünkü	hafızada	sabit	için	yer	ayrılır	ve	değişim	olmayacağı	için	açılan	yer	yeni	bir	değer	
almak	için	beklemez.
- Sadece	kullanılma	amaçlı	değişkenler	için	kullanılması	için	uygundur.
- Kaçış	karakterleri	String	ifade	içine	bazı	karakterleri	yazmamızı	sağlarlar.
- Bunun	çıkış	sebebi	String	ifadelerin		”	işareti	ile	başlayıp	bitmesidir.
- En	çok	kullanılan	kaçış	karakterleri.
  - \\ – \ işareti
  - \t – Bir	tab	boşluk	bırakır
  - \n	– Bir	alt	satıra	iner
  - \” – Çift	tırnak	işareti
  - \’ – Tek	tırnak	işareti
- Yorum	Satırları
  - Yorum	satırı	kullanımının	birçok	amacı	vardır.
  - Kodunuza	anlaşılır	notlar	yazmak.
  - Bazı	kod	satırını	geçici	olarak	gizlemek	için	kullanılabilir.
  - Satıra	yorum	ekleme	;
    - //	işareti	ile	yapılır.	
  - Blok	yorumu	ekleme;
    - /*	ile	açılır	*/	kapatılır.Tek	satır	değil	birden	fazla	satır	için	kullanılabilir.
### Aritmetik	Operatörler
- Matematiksel	işlemleri	yapmamızı	sağlarlar.	
- Parantezler	işlemin	önceliğini	belirtmek	için	kullanılır.
- "+" -> Toplama
  - A + B = 30
- "-" -> Çıkarma
  - A - B = -10
- "*" -> Çarpma
  - A * B = 200
- "/" -> Bölme
  - B / A = 2
- "%" -> Mod İşlemi
  - B % A = 0
- Atama	Operatörlerinin	Kısaltımı
  - Atama	işlemlerini	kolaylaştırma	amaçlı	kullanılırlar.
  - Aritmetik	operatörlerin	hepsinde	geçerlidir.
  - Normal	ifade	;
  - a = a + 3
    - a += 3
  - b = b - 3
    - b -= 3
  - c = c * 3
    - c *= 3
  - d =  / 3
    - d /= 3
### Tür Dönüşümü
1. Sayısaldan	sayısala	dönüşüm
```flutter
int i = 42;
double d = 42.25;

int sonuc1 = d.toInt();
double sonuc2 = i.toDouble();
```
2. Sayısaldan	metine	dönüşüm
```flutter
int i = 42;
double d = 42.25;

String str1 = i.toString();
String str2 = d.toString();
```
3. Metinden	sayısala	dönüşüm
- Dönüşüm	olurken	dikkatli	olunmalıdır	çünkü	metin	içinde	her	zaman	
sayı	yer	almaz	hata	ihtimali	yüksektir
```flutter
String yazi1 = "34";
String yazi2 = "34.67";

int s1 = int.parse(yazi1);
double s2 = double.parse(yazi2);
```
- **toDouble()	,	toInt()	,	toString()	,	int.parse()	,	double.parse()**

### Konsol Girdisi
- Sadece	string türünde	girdi	olabilir.
- stdin import edilmelidir.
- readLineSync() metodu	ile	veri	konsoldan	okunur.
- Kod:
```flutter
import 'dart:io';
void main(){

  print("Adınızı Giriniz: ");

  String isim = stdin.readLineSync()!;
  print("Adınız : $isim");

  print("1.Sayıyı Giriniz: ");
  int sayi1 = int.parse(stdin.readLineSync()!);

  print("2. Sayıyı Giriniz: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  print("Toplam: ${sayi1+sayi2}");
}
```
<br></br>
## Standart	Programlama	Yapıları
#### Karar	Alma	Yapıları	(if - when)
- Belirlenen	şartlara	göre	karar	alan	
yapılardır.
- Kararlar,	şartın	true veya	false olmasına	
göre	alınır.
#### Karşılaştırma	Operatörü
- Koşul	gereken	yerlerde	kullanılır.	Örn :	if ,	while vb.
- *==* -> Eşittir
  - (A == B) is not true
- *!=* -> Eşit Değil
  - (A != B) is true
- *>* -> Büyüktür
  - (A > B) is not true
- *<*-> Küçüktür
  - (A < B) is true
- *>=* -> Büyük Eşittir
  - (A >= B) is not true
- *<=* -> Küçük Eşittir
  - (A <= B) is true
#### Mantıksal	Operatörler
- Mantıksal	işlemleri	bu	operatörler	ile	yaparız.
- Her	iki	şart	sağlandığında	gibi.
- && -> AND: Her iki koşulda sağlanıyorsa true olur.
  - (A && B) is false.
- || -> OR: İki koşuldan biri sağlanıyorsa true olur.
  - (A || B) is true.
- ! -> NOT: Var olan durumun tersine dönüştürür.
  - !(A && B) is true.
#### if Yapısı
```flutter
/*
if(şart){
şarta bağlı kod (TRUE ise)
}
*/
  int yas = 20;
  if (yas >= 18){
    print("Reşitsiniz");
  }
```
```flutter
/*
if(şart){
şarta bağlı kod (TRUE ise)
} else {
şarta bağlı kod (FALSE ise)
}
*/
  int yas = 17;
  if (yas >= 18){
    print("Reşitsiniz");
  } else {
    print("Reşit değilsiniz");
  }

  String isim = "Sümeyye";
  if (isim == "Sumeyye"){
    print("Merhaba Sümeyye");
  } else {
    print("Tanınmayan Kişi");
  }
```
- Çoklu Şart
```flutter
void main(){
  int a = 10;
  int b = 20;
  
  if(a == 10 && b == 20){
    print("Her iki şartta sağlandı");
  }
  
  if(a == 10 || b == 20){
    print("Her iki şarttan an az biri sağlandı");
  }
}
```
- else if
```flutter
void main(){
  int c = 15;
  
  if(a == 20){
    print("a 20'ye eşittir");
  } else if(a == 50){
    print("a 50'ye eşittir");
  } else{
    print("a hiçbir şarta eşit değildir");
  }
}
```
- **Örnek** : Kullanıcıdan	alınan	seçime	göre	hesap	yapan	programı	yazınız.
  - Kod:
```flutter
  print("Örnek: Kullanıcıdan	alınan	seçime	göre	hesap	yapanprogramı	yazınız.");

  print("Dikdörtgen Alanı (1)");
  print("Çember Alan (2)");
  int secim = int.parse(stdin.readLineSync()!);
  print("Seçiminiz: $secim");
  if(secim == 1){
    print("Kısa kenar giriniz: ");
    int kisaKenar = int.parse(stdin.readLineSync()!);
    print("Uzun Kenar giriniz: ");
    int uzunKenar = int.parse(stdin.readLineSync()!);
    int sonuc = kisaKenar * uzunKenar;
    print("Dikdörtgen alanı: $sonuc");
  }
  else if(secim == 2){
    print("Yarıçapı giriniz: ");
    int yaricap = int.parse(stdin.readLineSync()!);
    double sonuc = 3.14*yaricap*yaricap;
    print("Çember alanı: $sonuc");
  }
  else{
    print("Hatalı seçim :(");
  }
```
  - Çıktı:
```flutter
Örnek: Kullanıcıdan	alınan	seçime	göre	hesap	yapanprogramı	yazınız.
Dikdörtgen Alanı (1)
Çember Alan (2)
1
Seçiminiz: 1
Kısa kenar giriniz: 
12
Uzun Kenar giriniz: 
14
Dikdörtgen alanı: 168
```
- **Örnek** : Kullanıcıdan	alınan	seçime	göre	hesap	yapan	programı	yazınız.
  - Kod:
```flutter
  print("Örnek : Kullanıcıdan	alınan	seçime	göre	hesap	yapanprogramı	yazınız.");
  print("Toplama (1)\nÇıkarma (2)\nÇarpma (3)\nBölme (4)\nMod Alma (5)");

  print("Lütfen seçim yapınız: ");
  int secim = int.parse(stdin.readLineSync()!);

  print("Birinci sayıyı Giriniz : ");
  int sayi = int.parse(stdin.readLineSync()!);

  print("İkinci sayıyı giriniz: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  if(secim == 1){
    var toplam = sayi + sayi2;
    print("Toplam: $toplam");
  }
  else if(secim == 2){
    var cikarma = sayi - sayi2;
    print("Çıkarma: $cikarma");
  }
  else if(secim == 3){
    var carpma = sayi * sayi2;
    print("Çarpma: $carpma");
  }
  else if(secim == 4){
    var bolme = sayi / sayi2;
    print("Bölme: $bolme");
  }
  else if(secim == 5){
    var modAlma = sayi % sayi2;
    print("Mod Alma: $modAlma");
  }
  else{
    print("Hatalı seçim :(");
  }
```
  - Çıktı:
```flutter
Örnek : Kullanıcıdan	alınan	seçime	göre	hesap	yapanprogramı	yazınız.
Toplama (1)
Çıkarma (2)
Çarpma (3)
Bölme (4)
Mod Alma (5)
Lütfen seçim yapınız: 
3
Birinci sayıyı Giriniz : 
12
İkinci sayıyı giriniz: 
3
Çarpma: 36
```
### Switch
- else	if yapısının	daha	pratik	kullanımıdır.
- Case	denilen	durumlar	sağlanırsa	kod	çalışır.	
### Döngüler
- Döngüler	belirli	kodları	tekrarlı	çalıştırma	amaçlı	yapılardır.
- Örneğin	;	veri	tabanından	gelen	verileri	işlemek	gibi.
- Döngü	türleri	;
  - for
  - while
#### for Döngüsü
- Kod:
```flutter
/*
for(var i=0; i<5; i++){
Tekrarlanan kod yapısı
}
i=0 -> başlangıç
i<5 -> bitiş şartı
i++ -> artış
*/
for(var i=0; i<5; i++){
print(i);
}
/*
for(var veri in veri_kümesi){
Tekrarlanan kod yapısı
}
*/
var dizi = [10, 20, 30];
for(var deger in dizi){
print("Sonuç : $deger");
}
```
- Çıktı:
```flutter
0
1
2
3
4

Sonuç : 10
Sonuç : 20
Sonuç : 30
```
#### while Döngüsü
- Kod:
```flutter
/*
while(şart){
Tekrarlanan ifade
}
*/
var sayac = 1;
while(sayac < 4){
  print("Sonuç : $sayac");
  sayac += 1; //sayac = sayac + 1
}
```
- Çıktı:
```flutter
Sonuç : 1
Sonuç : 2
Sonuç : 3
```
#### break : işlemi bitirir
- Kod:
```flutter
var sayac = 0;
while (sayac < 5){
  if(sayac == 3){
    break;
  }
  print("Döngü 1 : $sayac");
  sayac += 1;
}
```
- Çıktı:
```flutter
Döngü 1 : 0
Döngü 1 : 1
Döngü 1 : 2
```
#### continue : işlemi pas geçer
- Kod:
```flutter
for(var i=0; i<5; i++){
  if(i == 3){
    continue;
  }
  print("Döngü 2 : $i");
}
```
- Çıktı:
```flutter
Döngü 2 : 0
Döngü 2 : 1
Döngü 2 : 2
Döngü 2 : 4
```
#### Örnek : Konsoldan	girilen	adınızı		konsoldan	girdiğiniz	tekrar	sayısı	kadar	yazdıran	programı	yazınız.
- Kod:
```flutter
Döngü 2 : 0
Döngü 2 : 1
Döngü 2 : 2
Döngü 2 : 4
```

<br></br>
## Nesne Tabanlı Programlama
#### Sınıf (Class) Nedir?
- Nesneler soyutlanarak bilgisayar koduna dönüştürülür oluşan soyut taslaklara sınıf (class) denir.
#### Nesne (Object) Nedir?
- Nesneler sınıfların somutlaşmış halleridir.
- Nesnelerin durumu (state) ve davranış biçimleri vardır (behaviour).
- Örneğin:
  - renk, hız, kapasite -> Durum (state)
  - hızlanmak ve yavaşlamak için pedallar -> Davranış (behaviour)
- Sınıflar ise nesnelerin özellikleri ve davranışları ile ilgili ayrıntıları içerir.
#### Nesnenin Durumu ve Davranışı
- **Durum (State)**: Sınıfların bir-birçok özelliği olabilir
  - *Somut değişkenler (instance variables)* belirler
  - Nesneyle birlikte taşınır
- **Davranış (behaviour)**: Sınıflar bir ya da birden çok metoda sahip olabilir
  - *Metod* program içindeki bir işi temsil eder
    - Görevlerin gerçekleştirileceği adımları tanımlar
    - kullanıcıdan kompleks işlemleri gizler
    - Metodu çağırmak, metodun bu işlemleri gerçekleştirmesini sağlar
**late**: sınıf içinde değişkene değer aktarmadan değişken oluşturmamızı sağlar.
- Class yapısı içindeki metod ve özelliklerine erişmek için *ilk şart bulunduğu Class'dan nesne oluşturmalı.*
- Her nesne kendine ait özelliklere erişebilir ve veri aktarımı yapabilir.
<br></br>
### Fonksiyonlar
- Belirli	işlemleri	temsil	eden	yapılardır.
- Kullanma	amacımız	tekrarlanan	kod	yapılarının	önüne	geçmektir.
- Programlamayı	daha	pratik	bir	hale	getirir.
- Kodun	okunmasına	faydası	vardır.
- Geri	Dönüş	değeri	olmayan	fonksiyonlar
  - Sadece	yaptırılmak	istenen	işlemi	yapan	metodu	kullanana	veri döndürmeyen fonksiyonlardır.
- Geri	Dönüş	değeri	olan	fonksiyonlar
  - Yapılan	işlem	sonucunda	metodu	kullanana	veri	dönüşü	yapan	fonksiyonlardır.
-  Fonksiyonların	Parametre	Alması
  - Parametre	fonksiyonlara	dışarıdan	verilen	değerlerdir.
  - Her	fonksiyonun	parametresi	olmak	zorunda	değildir.
  - Parametreler	tanımlaması	değişkeni	tanımlar	gibidir.	
  - Parametreler	,	virgül	ile	birden	fazla	tanımlanabilir.
  - Birden	fazla	parametre	kullanılabilir.

<br></br>
### Null Safety
- Kullandığımız	değişkenler	null	olabilir.
- Null	Safety	özelliğini	kullanmak	için	değişken	türünden	sonra	'?' işareti	kullanılır.
- Null	safety	özelliği	olan	değişkenden	sonra	!	işareti	kullanılırsa	,	null	olmayacağını ben	kodlamama	güveniyorum	demektir.
- Null	safety	özelliği	olan	değişkenden	sonra ?	kullanırsa	,	null	olduğunda	hata oluşmaz	korumaya	alır	,	null	olmaz	ise	normal	çalışmasını	gerçekleştirir.
#### late
- Değişken	tanımlandığı	anda	hafızada	yer	ayrılmasındansa,değişkeni	ilk	kullandığımız	anda	hafızada	yer	ayrılmasını	sağlar.
- Sınıfın	constructorı	varsa	ve	içinde	değişken	ataması	yapılabilirse	late kullanmaya	gerek	yoktur.
#### Constructor
- Bir	sınıftan	(	class )	nesne	oluşturmak	için	gerekli	olan	yapıdır.
- Bir	sınıfta	hem	boş	hem	dolu	constructor olamaz.
- Dolu	constructor	varsa	late	kullanılmasına	gerek	yoktur.
<br></br>
### Paketler & Import
- Paketler birden	fazla	sınıfı	kümelediğimiz	yapılardır.
- Paketler ile	daha	düzenli	projeler	oluşturulabilir.
- Import bir	sınıfı	başka	bir	sınıf	içinde	kullanıcaksa o	sınıfı	import etmeliyiz.
- Bir	sınıfın	tüm	uzantısı	kullanıldığında	import’a gerek	yoktur.
<br></br>
### Static Değişkenler ve	Metodlar
- Bir	değişkenin	veya	metodun,	bulunduğu	sınıftan	(	class )	nesne	oluşturmaya	gerek	kalmadan	erişilmek	istenirse	kullanılır.
<br></br>
### Enumeration
- **enum** ifadesi	gösterilir.
- Parametrelerde	kullanılır.
- Verilerin	eşleşmesi	sonucunda	bir	işlem	yapılır.
- Kodlama	yapan	yazılımcıyı	detaydan	kurtarmaktadır
<br></br>
### Composition
- Başka	sınıflardan	(	class )	oluşmuş	nesneler	bir	sınıfın	değişkeni	olabilir.
<br></br>
### Kalıtım	(	Inheritance )
- Mevcut	bir	sınıftan	başka	bir	sınıf	türetmek	için	kullanılır.
- Kodun	tekrar	kullanabilirliğiniartırır.
- Sadece	**class** için	geçerlidir.
- Super class **extends** kelimesi	ile	subclass’a eklenir.
- Bir	sınıfın	tek	kalıtımı	olabilir.
- Bir	sınıfa	birden	fazla	sınıf	kalıtım	yolu	ile	bağlanamaz.
- Üst	sınıfa	**superclass** denir.
- Alt	sınıfa	**subclass** denir
- Kalıtım	yoluyla	oluşturulan	sınıfın	constructor’ı üst	sınıfın	özelliklerini	almalıdır.
<br></br>
### Override
- Metodları Ezme	:	Overriding, kalıtım	ilişkisinde	üst	sınıfın	metodlarının alt	sınıf	tarafından	tekrar	kullanılmasıdır.
<br></br>
### PolyMorphism
- PolyMorphism olması	için	iki	sınıf	arasında	kalıtım	ilişkisi	olmalıdır.
- Daha	kapsayıcı	bir	kullanım	sağlamak	için	kullanılır.
- Özellikle	metodların parametrelerinde	PolyMorphism kullanılarak	daha	kapsayıcı	veriler	alınabilir.
- Superclass gibi	görünüp	subclass gibi	davranır.
- Özellikle	metodların parametrelerinde	PolyMorphism kullanılarak	daha	kapsayıcı	veriler	alınabilir.
<br></br>
### Nesnelerin	Tip	Dönüşümü
- Tip	kontrolü **is**	ile	yapılabilir.is	true false şeklinde	bilgi	verir.
- Downcasting ve	Upcasting olması	için	kalıtım	ilişkisi olmalıdır.
<br></br>
### Interface
- Class	yapısında	kullanılabilir.
- Bir	sınıf	birden	fazla	interface alabilir.
- implements ile	eklenirler.
- Hazır	taslaklar	gibi	düşünebilirsiniz.
- Interface’ler sınıflara	özellik	katar.
<br></br>
<br></br>
## Collections
### List
- Aynı	türde	verileri	bir	arada	tutar.
- İndeks	numaraları	0	dan	başlar.
- Veri	eklendikçe	otomatik	olarak	boyutu	artar.
- Listeyi	filtrelemek	için	koşul	yazılmalıdır. Iterable sınıfından	yaralanılır.
```flutter
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
```
<br></br>
```flutter
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
```
### HashSet
- List ile	aynı	özelliklere	sahiptir.
- İçine	eklenen	veriler	düzensiz	rasgele	yerleştirilir.
- Aynı	veriden	tekrar	kayıt	edilemez.
### Nesne	Tabanlı	- HashSet
- Set	yapı	itibari	ile	içine	insert	edilen	verileri	rasgele	sıralamaktadır.
- Bu	rasgele	sıralama	ınt,string içeren	set	gibi	ifadelerde	kolaylıkla	yapılabiliyor.
- Fakat	set	içine	nesne	yerleştirildiğinde	nesne	içindeki	hangi	değişkene	göre	bu	rasgele	sıralamayı	yapacağını	belirtmemiz	gerekiyor.
- HashMap: Key ve	value ilişkisi	ile	çalışır. Key ile	verilere	erişiriz.
  <br> </br>
## Flutter 
### const Kullanımı
- Eğer widget içine sayfa yenilendiğinde bir veri eklenmicekse yani widgetta değişim olmayacaksa const kullanılır.
- Bu özelliği bütün widgetlarda kullanabiliriz.
- const özelliği olan widget sayfa yenilenirken daha az işlem gerektirir çünkü içeriği sabittir ve performansa etkisi faydası vardır.

### Row
- Widgetların yan yana durmasını sağlar.
- Varsayılan başlangıç noktası sol üst köşedir.
- Boyutu içindeki widgetlara göre değişir.

### Column
- Widgetların alt alta durmasını sağlar.
- Varsayılan başlangıç noktası sol üst köşedir.
- Boyutu içindeki widgetlara göre değişir.

### Stack
- Widgetların üst üste durmasını sağlar.
- İlk eklenen en altta yer alır.
- Varsayılan başlangıç noktası sol üst köşedir.
- Boyutu içindeki widgetlara göre değişir.

### MainAxisAlignment özelliği
- Row veya Column içinde Row ise yatayda , column ise dikeyde hizalama yapılır.

### CrossAxisAlignment özelliği
- MainAxisAlignment’in tersi yönde hizalama yapar.
- Row veya Column içinde satırsa dikeyde, column ise yatayda hizalama yapılır.
- Bunu sağlamak için row veya column içinde hareket alanı olmalıdır.

### Tasarımı Ekrana Göre Oranlama
- Tasarımda sabit olarak oluşturduğumuz genişlik , yükseklik , boşluk miktarı gibi sayıları ekranın boyutuna oranlayarak işlem yapabiliriz.
- Bu şekilde yapılan oranlama dinamik olarak boyutlama sağlamaktadır. 
- Örneğin : Butonun genişliğini ekranın yarısı kadar olsun diyebiliriz.
- Oranlama işlemi için ekran bilgisini MediaQuery sınıfı ile alabiliriz.

### MainAxisSize
- Row veya Column içinde bulunduğu alanın boyutunu belirler. 
- MainAxisSize.max aslında match parent 
- MainAxisSize.min aslında wrap content

### Center
- Widgetları içinde bulunduğu alana göre yatay ve dikeyde merkezler.

### Align
- İçinde bulunduğu alana göre hizalama yapar. 
- Center yapısının daha detaylı hali olarak düşünülebilir.
- Row yatayda sayfayı kapladığı için sadece dikeyde row alanını ortalayabilir. Row içine ayrı müdahale etmeliyiz.
- Row içinide ortalarsak yatay ve dikeyde ortada olur.

### Expanded
- Widget bulunduğu alanda Row içindeyse yatayda , Column içindeyse dikeyde boş olan alanda yayılır.
- Eğer birden fazla expanded olursa kendi aralarında eşit oranda yayılırlar.
- Expanded : flex ( oranlama ): Yayılma miktarı için oranlama yapılabilir. Oranlama için flex özelliği ile kullanılabilir.
- Widget bulunduğu alanda Row içindeyse yatayda , Column içindeyse dikeyde boş olan alanda yayılır. 
- Ters yönde yayılma yapmak için CrossAxisAlignment.stretch özelliği kullanılır.
