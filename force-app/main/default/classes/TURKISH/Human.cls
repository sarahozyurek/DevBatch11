public  class Human {
    public string  fullName(string firstName, string lastName) {

        string upperFN = firstName.toUpperCase();
        string upperLN = lastName.toUpperCase();

        string fullName = upperFN + '  ' + upperLN;
        return fullName;
    }

    public integer yas(date dogumTarihi){
        date todayDate = date.today();
        integer toplamGunSayisi = dogumTarihi.daysBetween(todayDate);
        integer a = integer.valueOf(toplamGunSayisi/365);
        return a;

    }
}
