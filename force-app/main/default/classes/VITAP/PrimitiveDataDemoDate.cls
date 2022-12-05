public class PrimitiveDataDemoDate {
    public void printNewDate(){
        system.debug('Create new date instance');
        Date newDate = Date.newInstance(1995, 2, 2);
        system.debug('new date\'s is ' + newDate);

        Date newDate2 = Date.newInstance(2022, 10, 10);
        system.debug('new date2 is ' + newDate2);

        Date todayDate = date.today();
        system.debug('today\'s date is ' + todayDate);
    }
    public void printTime(){
        Time myTime = time.newInstance(1, 1, 15, 55);
        system.debug('mytime is ' + myTime);

        Time newTime = time.newInstance(16, 18, 45, 15);
        system.debug('meTime is ' + myTime);
    }
    public void printNewDateTime() {
        Date newDate  = date.today();
        Time newTime = time.newinstance(1,1,15,55);

        Datetime dt1= Datetime.newInstance(newDate, newTime);
        system.debug('Date and time is :  '+dt1);

        Datetime dt2= Datetime.newInstance(newDate, newTime);
        system.debug('Date and time is :  '+dt1);
    }
}
