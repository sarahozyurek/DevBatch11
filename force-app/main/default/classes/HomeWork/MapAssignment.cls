public  class MapAssignment {
    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın.. son 1 haftanın sıcaklık ortalamalarına göre 10 derecenin üstünde olan şehirleri bir liste 10 derece ve altındaki şehirleri ayrı liste olarak yazdırın.

    //farklı 5 şehrin son 7 gündeki sıcaklık durumlarını şehir ismi key sıcaklık değerleri decimal liste olan bir map yazın..
    public static void degreeOfCities(Map<string, List<Double>> cityOfHot2) {
        System.debug(cityOfHot2);
        System.debug('Newyork son 1 haftalik sicaklik degerleri = '+ cityOfHot2.get('newYork'));

        for (string city : cityOfHot2.keySet()) {
            System.debug(city + ' sehrinin son 1 haftalik sicaklik degerleri = '+ cityOfHot2.get(city) );
        }
    }

    //şehir ismini key alan haftalık sıcaklık ortalamasını value olarak alan yeni bir map oluşturuyoruz..

    public static void averageDegreeOfCities(Map<string, List<Double>> cityOfHot3) {
        Map<String,Double> averageHot = new  Map<String,Double>();
        for (string city : cityOfHot3.keySet()) {
            System.debug(city + ' icin son 1 haftanin sicaklik degerleri = ' + cityOfHot3.get(city));
            Double sum = 0;
            for (double eachDegree : cityOfHot3.get(city)) {
                sum += eachDegree;
            }
            double ort = sum/cityOfHot3.get(city).size();
            averageHot.put(city, ort);
        }
        System.debug('sehirler ve 1 haftalik sicaklik ortalamalari = ' + averageHot);
    }

}