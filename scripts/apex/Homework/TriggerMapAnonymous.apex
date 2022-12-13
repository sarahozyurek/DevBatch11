TriggerMap t = new TriggerMap();
id sfId= t.InsertSF_Project();
System.debug(sfId);
 t.UpdateSF_Project(sfId, 'Updated Trigger Project');
