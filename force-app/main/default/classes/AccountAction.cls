public with sharing class AccountAction {
@InvocableMethod(
    label='Update Account Revenue'
    description='Summation of Child Opporunity Amount dispalyed on Parent Account Anuual Revenue'
    category='Account'
)
public static void updateAccountRevenue(List<Id> oppIds){
    // Fetch Parent Account Information from OppIds using SOQL
    // NOTE: Use the WITH SECURITY_ENFORCED clause to enable field- and object-level security permissions checking for SOQL Queries in Apex code
    Opportunity newlyCreatedOpp = [SELECT AccountId FROM Opportunity WHERE Id =: oppIds[0] WITH SECURITY_ENFORCED LIMIT 1];
    Id parentAccountId = newlyCreatedOpp.AccountId;
    // Fetch all Child Opportunity under that Parent Account using SOQL
    // Create a totalAmount variable
    List<Opportunity> childOpps = [SELECT Amount FROM Opportunity WHERE AccountId =: parentAccountId WITH SECURITY_ENFORCED];
    Decimal totalAmount = 0;
    // Iterate over all Child opporunity and add up Amount value
    for(Opportunity opp : childOpps){
        // Amount is not null and have some value then only do the summation
        if(opp.Amount != null && opp.Amount > 0) {
            totalAmount = totalAmount + opp.Amount;
        }
    }
    // Update Parent Account's Annual revenue field with totalAmount value
    // NOTE: Creating an instance of Sobject Type Account
    // Alternative Line: Account parentAcc = new Account(Id = parentAccountId, AnnualRevenue = totalAmount);
    Account parentAcc = new Account();
    parentAcc.Id = parentAccountId;
    parentAcc.AnnualRevenue = totalAmount;
    update parentAcc;
}
}