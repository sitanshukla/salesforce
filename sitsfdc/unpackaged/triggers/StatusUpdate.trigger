trigger StatusUpdate on Opportunity (after insert, after update){
    list<Id> accIds = new list<Id>();
    list<Account> accounts = new list<account>();
    for(opportunity o:trigger.new){
        accIds.add(o.accountId);
    }
    for(account a:[select Id, Rating from account where Id IN :accIds]){
        for(opportunity opp:trigger.new){
            a.Opportunity_Status__c = opp.StageName;
            accounts.add(a);                       
       }
        update accounts;
    }
}