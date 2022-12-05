List<Integer> myList = new List<Integer>{5,1,9,11,2,4,7,14};

integer minVal = myList.get(0);

for(integer each : myList){
     if( each < minVal) {
     minVal = each;
    }
}

system.debug(minVal);

//Check if a List of integers contains only odd numbers?
List<Integer> myList = new List<Integer>{5,1,9,11,2,4,7,14, 17, 19};

integer odd = 0;
integer even = 0;
for( integer each : myList) {

    if( math.mod(each, 2) == 1) {
        odd+=;
        
    }else{
        even+=;
    }
}

if(even> 0){
    system.debug('my list contains even numbers');
} else{
          system.debug('my list contains odd numbers');
}


