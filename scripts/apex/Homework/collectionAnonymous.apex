List<string> weekDays = new List<String>();
        weekDays.add('Monday');//add
        weekDays.add('Tuesday');
        weekDays.add('Wednesday');
        weekDays.add('Thursday');
        weekDays.add('Friday');
     

        system.debug(weekDays);
        List<string> weekEnd = new List<String>{'Saturday', 'Sunday'};
        weekDays.addAll(weekEnd);// addAll

        string firstDay = weekDays.get(0); //get
        System.debug('Uppercased days ' +firstDay.toUpperCase());
        System.debug(weekDays);

        System.debug('Total days are:   '+ weekDays.size());//size
        System.debug('Contains Sunday?:  '+weekDays.contains('Sunday'));//contains
        System.debug('Same list?  ' +weekDays.equals(weekEnd));//equals
         System.debug('Index of Monday is  '+ weekDays.indexOf('Monday'));//indexof
        weekDays.isEmpty();//isEmpty
        weekDays.remove(0);// remove
        weekEnd.clear();//clear
       
        weekDays.set(5, 'Sunday');//set 
        weekDays.sort();//sorted 
        system.debug(weekDays);


