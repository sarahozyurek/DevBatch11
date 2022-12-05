public  class ParametreliMetotlar {
//bu metot parameter olarak string1 deger alsin. Bu stringin karakter sayisini return etsin.
public integer uzunluk(string text){
integer uzn = text.length();
return uzn;
}
//bu metot paramatre olarak integer deger alsinKac rakamdan olusuyor  return etsin.

public integer rakamSayisi(integer sayi){
string strSayi = string.valueof(sayi);
return strSayi.length();
}

public integer sum(integer a, integer b){
    return a+b;
}

public integer cikarma(integer c, integer d){
    return c- d;
} 
// kitap, fiyati, 3 metod yaz miktari etsin
public void kitapHesapla(string kitapAdi, integer adet, decimal fiyat  ){
    decimal  totalFiyat = fiyat *adet;


}
}
