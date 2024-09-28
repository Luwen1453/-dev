void main() {
  // Orijinal dizi
  List<int> numbers = [5, 10, 15, 20, 25];

  // Diziyi tersine çeviren fonksiyonu çağırıyoruz
  List<int> tersDizi = tersCevir(numbers);

  // Dizinin elemanlarının toplamını bulan fonksiyonu çağırıyoruz
  int toplam = toplamBul(numbers);

  // 0'dan 100'e kadar olan sayıların ortalamasını buluyoruz
  double ortalama = ortalamaBul(0, 100);

  // Sonuçları ekrana bastırıyoruz
  print('Orijinal Dizi: $numbers');
      print('Ters Çevrilmiş Dizi: $tersDizi');
  print('Dizinin Elemanlarının Toplamı: $toplam');
  print('0\'dan 100\'e kadar olan sayıların ortalaması: $ortalama');
}

// Dışarıdan alınan diziyi tersine çeviren fonksiyon
List<int> tersCevir(List<int> dizi) {
  return dizi.reversed.toList();
}

// Dizinin elemanlarının toplamını bulan fonksiyon
int toplamBul(List<int> dizi) {
  int toplam = 0;

  for (int sayi in dizi) {
    toplam += sayi;
  }

  return toplam;
}

// Başlangıç ve bitiş arasındaki sayıların ortalamasını bulan fonksiyon
double ortalamaBul(int baslangic, int bitis) {
  int toplam = 0;
  int elemanSayisi = 0;

  for (int i = baslangic; i <= bitis; i++) {
    toplam += i;
    elemanSayisi++;
  }

  return toplam / elemanSayisi;
}
