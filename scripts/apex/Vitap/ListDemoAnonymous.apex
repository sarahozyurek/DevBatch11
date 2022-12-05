ListDemo.allCats();
List<string> listStr = new List<string>();
listStr.isEmpty();
system.debug('LIST IS EMPTY');
list<string> listSample;

List<integer> listInteger= new List<integer>();
         listInteger.add(10); //0
         listInteger.add(15); //1
         listInteger.add(21); //2
         listInteger.add(15); //3
         listInteger.add(18); //4         listInteger.add(10); //0
         listInteger.add(3); //1
         listInteger.add(12); //2
         listInteger.add(7); //3
         listInteger.add(6); //4
         system.debug('before sort-> '+ listInteger);
         listInteger.sort();
        system.debug('after sort-> '+ listInteger);








string valueAt2 = ListDemo.cadidatesList(2);
system.debug(valueAt2);

string valueAt5 = ListDemo.cadidatesList(5);
system.debug(valueAt5);


ListDemo.randomIntegerList();