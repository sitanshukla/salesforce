trigger CreateContact on Account (after insert) {
    List<Account> acct = new List<Account>();
    List<Contact> con = new List<Contact>();
    for(Account acc: trigger.new){
        acc.getSObjectType();
        for(Integer i=0 ; i<10 ; i++){
            Contact c = new Contact(LastName = acc.Name+String.valueOf(i), AccountID = acc.Id);
            con.add(c);
        }
        insert con;
    }
  
}