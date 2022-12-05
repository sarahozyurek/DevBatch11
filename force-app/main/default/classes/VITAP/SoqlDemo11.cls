public class SoqlDemo11 {
    //Account recorlarindan Industry 'Education' olanlarin listesinin record sayisini bulup return eden bir metot yazin..
    public static integer accountIndustry(string indstry) {
        //List<Account> accList = [select id, name from account where industry = 'Education'];
        List<Account> accList = [select id, name from account where industry =: indstry];
        System.debug(accList);
        integer recordSayisi = accList.size();
        return recordSayisi;
    }Contw
}for 