// Plaka ve o plakaya ait şehir isimlerinin olduğu bir Map<Integer,String> oluşturalım.
// 	1.İstanbul(34),Bursa(16),İzmir(35),Konya(42),Gaziantep(27) şehirlerini plaka numaralarıyla mapimize ekleyelim.
// 	2.Mapimizde 34(İstanbul) ve 61(Trabzon) ait plakaların olup olmadığını kontrol edelim.
// 	3.Mapimizin eleman sayısnı system.debug ile yazdıralım.
// 	4.16 nolu plakayı mapimizden çıkaralım.
// 	4.Mapimizdeki plakalardan oluşan yeni bir set oluşturalım.
// 	5.Mapimizdeki şehirlerden oluşan yeni bir list oluşturalım.
// 	6.Plaka ve şehir ismini aynı system.debug içerisinde kullanalım.

map<integer, string> sehirPlaka = new map<integer, string> { 34 => 'Istanbul', 16 => 'Bursa' , 35 => 'Izmir', 42 => 'Konya' , 27 => 'Gaziantep' };
system.debug(sehirPlaka);

system.debug('Mapte 34 plakasi var mi?   ' + sehirPlaka.containsKey(34));
system.debug('Mapte 61 plakasi var mi?   ' + sehirPlaka.containsKey(61));
system.debug('Mapimizin eleman sayisi  '+sehirPlaka.size());
sehirPlaka.remove(16);
system.debug(sehirPlaka);

set< integer> plakaSet = sehirPlaka.keySet();
System.debug('Plakalar:  '+plakaSet);

List<string> sehirList = sehirPlaka.values();
System.debug('Sehirler:    '+sehirList);


for(integer eachPlaka : plakaSet){
    string sehir = sehirPlaka.get(eachPlaka);
    system.debug( eachPlaka+ 'Plakali sehrimiz  ' + sehir + 'dir.');
}