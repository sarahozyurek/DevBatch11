public class StudentMarksheet {
    public void showMarksheetUsingDatatype() {

        string firstName = 'Sarah';
        string lastName = 'Oz';
        integer  mathematics = 90;
        decimal  english = 85.5;
        string chemistry = 'A+';

        system.debug( firstName+ ' ' + lastName+  '\'s grades are : ' + 'Math:  '+ mathematics + ',  ' +  'English:  '+ english + ',  ' + 'Chemistry: ' + chemistry);
    }
  
    public void showMarksheetUsingObject() {
        object  firstName = 'Ryan';
        object  lastName = 'Oz';
        object  fullName = firstName + ' ' + lastName;

        object  mathematics = 100;
        object  english = 95.5;
        object chemistry = 'A';

        system.debug( fullName+ '\'s grades are : ' + 'Math:  '+ mathematics + ',  ' +  'English:  '+ english + ',  ' + 'Chemistry: ' + chemistry);
    }
}
