trigger PreventProductDeletion on OpportunityLineItem (before delete) {
   List<Opportunity> opp = [Select id from Opportunity where StageName = 'Closed Won'];
   List<OpportunityLineItem> oli = [Select id from OpportunityLineItem where OpportunityID IN :opp];
   List<OpportunityLineItem> olit = [Select id from OpportunityLineItem where ID IN :trigger.old];
   for (OpportunityLineItem opl : olit ){ 
    if (oli.contains(opl)){
    opl.addError('Cannot delete product with related closed won opportunities.');
    }
  }
}