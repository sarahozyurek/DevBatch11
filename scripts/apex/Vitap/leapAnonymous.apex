LeapYear lp = new LeapYear();
date newDate = date.today();
boolean newDateCheck = lp.LeapYearCheck(newDate);
System.debug('Today is leap year:' + newDateCheck);