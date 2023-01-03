// Account ac = new account();
// insert ac;
// System.debug('Aoex is simple');

try{
Account ac = new account();
insert ac;
} catch(Exception ex){
   System.debug('Something went wrong buddy');
   System.debug('Ex -> ' + ex.getMessage());
   System.debug('Ex line number ' + ex.getLineNumber());
} 
system.debug('Apex is simple');