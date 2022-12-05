List<string> sehirList= new List<string>{'Ankara' , 'Istanbul', 'Baku', 'Ankara', 'Baku', 'Dallas'};
System.debug('Sehir listesi ' +sehirList);

Set<string> ulkeSet = new Set<string> {'Turkiye', 'Almanya', 'Canada', 'Hindistan', 'Almanya', 'USA', 'usa'};

System.debug('Ulke listesi  set = '+ ulkeSet);

Set<string> sehirSet= new set<string>();
sehirSet.addAll(sehirList);
System.debug('Listedeki sehirler sete eklendikten sonra = '+ sehirSet);


Map<integer, string> plakalar = new Map<integer, string>{ 06 => 'Ankara', 34 => 'Istanbul', 35=> 'Izmir', 36 => 'Izmir'};
system.debug('Plakalar map  '+ plakalar);

map<string, list<string>> yoreselYemekler = new map<string, list<string>>();

list<string> y1 = new list<string> {'kebab',' Sarma', 'Kunefe' };
yoreselYemekler.put('Gazientep', y1);

list<string> y3 = new list<string>{'iskendeer', 'kestane sekeri', 'cantik'};
yoreselYemekler.put('Baku', y3);

System.debug('Yoresel yemekler Map '+ yoreselYemekler);

