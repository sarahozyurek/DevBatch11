public  class Selamlama {
    public void selam(string dil) {

        string slm;
        if(dil == 'hintce'){
            slm = 'namaste'; 
        } else if(dil =='ingilizce') {
            slm = 'hello';
        } else if(dil == 'rusca') {
            slm  = 'privet';
        } else{
            slm = 'merhaba';
}
system.debug(slm);
    }
    public string selam2(string language){
        string selam;
        switch on language {
            when  'hintce' {
                selam = 'namaste namaste';
            }
            when  'ingilizce' {
                selam = 'hello hello';
            }
            when  'rusca' {
                selam = 'privet privet';
            }
            when else {
                selam = 'Merhaba Merhaba';
            }
        }
        return selam;
    }
}
