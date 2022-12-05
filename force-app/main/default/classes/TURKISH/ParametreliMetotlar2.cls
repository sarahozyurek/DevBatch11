public  class ParametreliMetotlar2 {
 public void dersSonucu(){
        string ad = 'ahmet';
        string ders = 'turkce';
        integer note = 50;
        boolean isPass = true;
        //ahmet turkce dersi sinavindan 50 notunu aldi basari durumu true
        System.debug(ad + '  ' + ders + ' .  ' + ' . dersi sinavindan ' + note +  ' notunu aldi. Basari durumu  ' + isPass);
 }

 public void dersDurumu(string isim, string ders, integer note, boolean isPass){
    System.debug(isim + '  ' + ders + ' .  ' + ' . dersi sinavindan ' + note +  ' notunu aldi. Basari durumu  ' + isPass);
    string name = isim; 
    string drs = ders;
    integer nt = note; 
    boolean isps = isPass;

    System.debug(name + '  ' + drs + ' .  ' + ' . dersi sinavindan ' + nt +  ' notunu aldi. Basari durumu  ' + isps);
 }
}
