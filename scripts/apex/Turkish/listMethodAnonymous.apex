List <string> isimler = new List <string>();
isimler.add('rabia');
isimler.add('zeynep');
isimler.add('Miray');

System.debug(isimler);

integer isimsayisi = isimler.size();
system.debug(isimsayisi);

system.debug(isimler.isEmpty()); // isEMpty ve size yapabiliriz. isEmpty hizli tercih et

boolean check = isimler.contains('emre');
System.debug('ismi iceriyor mu ? ' +check);

//iki liste esit mi?
List<string> isimler1 = new List<string>{'Ali', 'Veli', 'RABIA'};
List<string> isimler2 = new List<string>{'Ali', 'Veli', 'RABIA'};
List<string> isimler3 = new List<string>{'Elif', 'Sule', 'SARAH'};

system.debug(isimler1.equals(isimler2)); 
system.debug(isimler2.equals(isimler3)); 



