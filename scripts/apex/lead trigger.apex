List<Lead> leadList = new List<Lead>();
for (integer i=0; i< 5; i++) {

    Lead leadTrigger = new Lead();
    leadTrigger.LastName = 'lastname' + i;
    leadTrigger.Company = 'Oz';
    leadTrigger.status = 'Working - Contacted';
    leadList.add(leadTrigger);
}
if (!leadList.isempty()) {
    insert leadList;
    
}