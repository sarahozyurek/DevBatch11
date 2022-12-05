public  class MapDemo {
    public static string retrieveMonth(integer m) {
        string month = ' ' ;
        map<integer, string> monthMap = new   map<integer, string> {1=> 'January', 2=> 'February', 3=> 'March', 4=> 'April', 5=> 'May', 6=> 'June', 7=> 'July', 8 => 'August' ,9 => 'September', 10=> 'October', 11=> 'November', 12=> 'December'};

        boolean keyExists = monthMap.containsKey(m);

        if(keyExists){
           monthName = monthMap.get(m);
        } else {
        monthName = 'This is not a exist month. Enter a valid month';
        }
        return monthName;
    }
}
