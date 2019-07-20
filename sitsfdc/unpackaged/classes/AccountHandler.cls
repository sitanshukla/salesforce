public class AccountHandler
{
    public static void insertAccount(Integer value)
    {  
        List<Account> addAccounts = new List<Account>();       
        Integer counter = 1;
        while(counter <= value){
        //System.debug('Counter Value before Incrementing ' + counter);
        Account acc = new Account();
        acc.Name = 'Acme Inc'+ counter;
        acc.AccountNumber = 'A000'+counter;
        addAccounts.add(acc);
        counter = counter +1;
        }
        insert addAccounts;
    }
}