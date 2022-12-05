public  class PrimitiveDataTypeDemo3 {

        public void printNewTime(){
            datetime dt3 = datetime.newInstance(2022, 11, 13,11,16,23);
            system.debug('dt3 is ' + dt3);   
            datetime dt4_1 = datetime.newInstance(300000);
            system.debug('dt4 is ' + dt4_1);

            long longtime = 1234344545666L;  
            datetime dt4 = datetime.newInstance(longtime);
            system.debug('dt4 is ' + dt4);

            datetime dt6 = Datetime.now();
            system.debug('Current time  is ' + dt6);

            DateTime d1 = DateTime.newInstanceGmt(2022, 11, 13, 12, 15, 54);
            System.debug(d1.dateGmt());
    }
    
}

