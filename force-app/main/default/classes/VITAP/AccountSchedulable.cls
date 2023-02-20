public class AccountSchedulable implements Schedulable {
public void execute(SchedulableContext sc){
    //we will execute batch
    //any apex code.
    //any method of any class
    database.executeBatch(new AccountsBatch());
}
}
