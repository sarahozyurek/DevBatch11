public   class Datetime_Assignment {
    public void diffofDate() {

        date varTomorrowDate = date.newInstance(2022,11,15);
        date varTodaysDate = date.today();
        integer daysdiff = varTodaysDate.daysBetween(varTomorrowDate);
        system.debug('Days between today and tomorrow: '+ daysdiff);  
    }
    
    public void timeCheck() {
        datetime varTomorrowDatetime = datetime.newInstance(2022,11,15,23,0,0);
        datetime var10Days = varTomorrowDatetime.addDays(10);
        datetime var10DaysDateTime = var10Days.addHours(2);
        long timelong = 12339874361L;
        datetime varDateTimeLong = Datetime.newInstance(timelong);
        datetime varAdded = varTomorrowDatetime.addDays(7);
       datetime var10DaysAdded = var10DaysDateTime.addDays(10);
 
       system.debug('varTomorrowDatetime is  ' +varTomorrowDatetime);
       system.debug('var10DaysDateTime is  ' +var10DaysDateTime);
       system.debug('varDateTimeLong is  ' +varDateTimeLong);
       system.debug('varTomorrowDatetime  after 7 days is  ' +varAdded);
       system.debug('var10DaysAdded is  ' +var10DaysAdded);
       
    }
}
