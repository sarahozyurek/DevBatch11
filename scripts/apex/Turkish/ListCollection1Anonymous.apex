List<string> isimList = new List<string>();
isimList.add('Sarah');
isimList.add('Rabia');
isimList.add('Emre');
isimList.add('Ryan');
isimList.add('Azra');
system.debug(isimList);
system.debug('index numarasi 2 olan isim get ile=  ' + isimList.get(2));
system.debug('index numarasi 2 olan isim get ile=  ' + isimList[2]);

boolean check = isimList.contains('Ayfer');
system.debug('Ayfer ismi listemizde var mi? = '+ check);
boolean check1 = isimList.contains('Sarah');
system.debug('Sarah ismi listemizde var mi? = '+ check1);
string silinenIsim = isimList.remove(0);
system.debug('Silinen isim: '+ silinenIsim);
system.debug('Listenin son hali   '+ isimList);
isimList.sort();
system.debug('sort metodundan sonra = '+ isimList);

List<string> isimList2 = new List<string>{'Salih', 'Asiye', 'Fatma', 'Sarah'};
ListCollection11.printListEachItem(isimList2);
system.debug(isimList2);



List<decimal> numbers = new List<decimal> {3.14, 2.16, 5.75, 7.01};
ListCollection11.listEachItemSum(numbers);


