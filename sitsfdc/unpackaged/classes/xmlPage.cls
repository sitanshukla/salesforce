public with sharing class xmlPage {


    public xmlPage() {
        Document document = new Document();
        document.AuthorId = UserInfo.getUserId();
        document.FolderId = UserInfo.getUserId();
     
        String bodyStr = 'Hello World<Test>Value</Test>';
        Blob body = Blob.valueOf(bodyStr);
        document.Body = body;
        insert document;
       
    }
    public string xmlContent { get; set; }
    public ApexPages.PageReference downloadXML( ) {
        return Page.xmlDownload;
    }
}