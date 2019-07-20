public class saveRecord{
   public Account accobj{get;set;}
       public saveRecord(ApexPages.StandardSetController controller) {
          accobj= new Account();
       }
    
       public void save(){
           Account acc=new Account();
           acc.Name=accobj.Name;
           insert acc;
       }
}