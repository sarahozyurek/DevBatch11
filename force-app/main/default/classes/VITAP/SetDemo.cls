public  class SetDemo {
 public static void citySet() {
    set<string> Cities = new set<string> ();
        Cities.add('Tokyo');
        Cities.add('Tokyo');
        Cities.add('Istanbul');
        Cities.add('Istanbul');
        Cities.add('Berlin');
        Cities.add('BERLIN');

        system.debug('Cities are  ' +Cities);
        
 }
 public static void randomIntegerSet() {
    set<integer> setInt = new Set<Integer>();
    setInt.add(25);
    setInt.add(70);
    setInt.add(81);
    setInt.add(45);
    setInt.add(545);
    system.debug(setInt);
    //system.debug('The size of the set is + 'setInt.size());// size of the element
}
public static set<integer> setFromList(list<integer> intList) {//returning set from list
    set<integer> returnSet = new set<integer>();
    returnSet.addAll(intList);
    return returnSet;
    
}
public static set<string> upperCaseSet(Set<String> setString){
    set<string> capsSet = new set<string>();

    for (string eachstr : setString) {
        string tempStr = eachstr.toUpperCase();
        capsSet.add(tempStr); 
    }
    return capsSet;
}

}