SetDemo.citySet();
SetDemo.randomIntegerSet();

    list<integer> listInteger = new List<Integer>();
    listInteger.add(25);
    listInteger.add(70);
    listInteger.add(81);
    listInteger.add(45);
    listInteger.add(545);

    system.debug('List ' + listInteger);

 set<integer> setInt = SetDemo.setFromList(listInteger);
system.debug('Set -> '+ setInt);

set<string> Cities = new set<string> ();
        Cities.add('Tokyo');
        Cities.add('Tokyo');
        Cities.add('Istanbul');
        Cities.add('Istanbul');
        Cities.add('Berlin');
        Cities.add('BERLIN');
        
set<string> capsCities  = SetDemo.upperCaseSet(Cities);
        system.debug('Caps cities are  ' +capsCities);