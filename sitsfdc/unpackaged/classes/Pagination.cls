public class Pagination
{
public integer totalRecs = 0;
public integer OffsetSize = 0;
public integer LimitSize= 10;
public List<Account> acc{get;set;}
public Pagination()
{
totalRecs = [select count() from account];
}
public List<account> getacclist()
{
List<Account> acc = Database.Query('SELECT Account.Name, Account.website, Account.AnnualRevenue, Account.description, Account.Type FROM account LIMIT :LimitSize OFFSET :OffsetSize');
return acc;
}
}