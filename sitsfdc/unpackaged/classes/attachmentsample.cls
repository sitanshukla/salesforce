public class attachmentsample {
    public attachmentsample(ApexPages.StandardController controller) {

    }
    Public Attachment myfile;
    Public Attachment getmyfile()
    {
        myfile = new Attachment();
        return myfile;
    }

    Public Pagereference Savedoc()
    {
        String accid ='0017F000007PXw6'; /*Users id*/
        Attachment a = new Attachment(parentId = accid, name=myfile.name, body = myfile.body);

         /* inserting the attachment */
         insert a;
        return NULL;
    }   
}