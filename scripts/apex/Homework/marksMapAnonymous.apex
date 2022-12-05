Map<String,Integer> marksObtainInMaths = new Map<String,Integer>{'0111CE112' => 34 ,'0111CE102' => 23,'0111CE100' => 12,'0111CE098' => 41,  '0111CA098' => 32};

System.debug(marksObtainInMaths);

for(String eachNum : marksObtainInMaths.keySet()){
    System.debug(eachNum);
}
for(Integer eachMark : marksObtainInMaths.values()){
    System.debug(eachMark);
}
Set<String> uniqueRollNumberSet = marksObtainInMaths.keySet();
System.debug('uniqueRollNumberSet===> '+ uniqueRollNumberSet );
 List<String> rollNumbers = new List<String>();
 rollNumbers.addAll(uniqueRollNumberSet);
 System.debug(rollNumbers);

List<Integer> marksObtainList  = marksObtainInMaths.values();
System.debug('marksObtainList ===> '+marksObtainList);

for (Integer i = 0 ; i < marksObtainList.size(); i++){
    Integer eachMark = marksObtainList.get(i);
    System.debug(eachMark);
    if(eachMark<20){
        System.debug(rollNumbers.get(i)+' is not qualified for next class');
        }
}