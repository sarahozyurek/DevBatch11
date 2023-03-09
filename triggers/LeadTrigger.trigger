trigger LeadTrigger on Lead (before insert, after insert, before update, after update) {
    List<Lead>  leadlist = trigger.new; 
    if (trigger.isBefore && trigger.isInsert) {
        for (Lead  eachlead : leadlist) {
            System.debug(eachlead);
        }
    }
    if (trigger.isBefore && trigger.isUpdate) {
        for (Lead  eachlead : leadlist) {
            System.debug( ' id '+ eachlead.id + 'name   '  + eachlead.name + '  desc' + eachlead.description);
        }
    }
        
    }

