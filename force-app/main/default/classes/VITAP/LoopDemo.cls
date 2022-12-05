public  class LoopDemo {
    public void print_int_while() {

            Integer i = 1;
            while (i < =25) {
                    System.debug(i);
                    i++;
            }
    }
    public void printNumbers(integer startInt, integer endInt){
        // for (Integer i = 0; i < n; i++) {
        //     System.debug(i);
        //   }
      
           
            if(startInt > endInt ) {
                system.debug('Not allowed');
           } else { for(integer  i = startInt; i<= endInt; i++){
            integer modi  = math.mod(i,2);
           if(modi == 1) 
           system.debug(i);
        } 
        for (i = startInt ; i <=endInt; i = i + 2) 
    
    }
 }