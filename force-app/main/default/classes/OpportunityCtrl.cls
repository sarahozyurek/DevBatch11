public with sharing class OpportunityCtrl {
    
    @AuraEnabled(cacheable=true) 
    public static List<Opportunity> getMatchingOpps(String stage) { 
        
return [SELECT Name, Type, Amount, CloseDate, StageName
    FROM Opportunity 
    WHERE StageName = :stage 
    AND Amount != null 
    ORDER BY Amount DESC 
    LIMIT 5]; 
    } 
   } 
   