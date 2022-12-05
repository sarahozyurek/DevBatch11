public class Ogrenci11 { 

    public static integer ogrenciSayisi = 0;
    //static obj degil classa ait oldgndn  classa ozel
    public integer oSayisi = 0;
    //static olmadigi icin objye ait degil. sonraki degerler yeniden basliyor.

    public string firstName;
    public string lastName;
    private string schoolName = 'Dream School';
    public string className;
    public string language;
    public Boolean art;
    public Boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public Integer fenGrade;

    public Ogrenci11() {// constructor
        ogrenciSayisi++;
        oSayisi++;
        System.debug('yeni bir kayit yapildi.ogrenci sayimiz' + ogrenciSayisi);

        system.debug('Statik olmayan ogrenci sayisi = ' +oSayisi );
    }

    public Ogrenci11(string fName, string lName, integer ingNot){
        //parametresiz constructor calistirir
    this();    
    this.firstName = fName;
    this.lastName = lName;
    this.ingGrade = ingNot;
}
}

