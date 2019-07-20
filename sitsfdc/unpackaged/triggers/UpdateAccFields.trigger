trigger UpdateAccFields on Contact (after insert, after update) {
    list<Account> lstAcc = new List<Account>();
    set<ID> sAccID = new set<ID>();
    for(Contact c: trigger.new){
        sAccID.add(c.AccountId);
    }
    List<Account> acc =[select id, Description from account where id IN:sAccId];
    for(Account a : acc){
        a.Description = 'updated via contact';
        lstAcc.add(a);
    }
    Update lstAcc;
}