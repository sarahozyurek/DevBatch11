public with sharing class OppCtrl {
    @AuraEnabled
  
    public static Decimal getOpportunityStages( string stage) {
    List<Opportunity> oppList = [SELECT  StageName,Amount  FROM Opportunity WHERE StageName = :stage];
    decimal totalAmount = 0;
for (Opportunity opp : oppList) {
    totalAmount = totalAmount+ opp.Amount;
}
return totalAmount;

    }
}