public class AttachmentController {
	@AuraEnabled
    public static void updatePicturePath(String recId){
        //In Lightning Experience, Attachments are stored in ContentDocuments
        ContentDocumentLink docLink;
		try {
			docLink = [ SELECT ContentDocumentId
                        FROM ContentDocumentLink
                        WHERE LinkedEntityId = :recId order by Id desc Limit 1];
		} catch (Exception ex) {
			docLink = new ContentDocumentLink(ContentDocumentId= 'a026F00001FMqmgQAD');
		}
        Speaker__c speaker = [SELECT Id FROM Speaker__c WHERE Id = :recId];
        String verId;
        try {
	        //ContentVersion Id uniquely identifies the attachment
			ContentVersion ver = [SELECT Id FROM ContentVersion Where ContentDocumentId = :docLink.ContentDocumentId ];
 			verId = ver.Id;
        } catch (Exception e2) {
            verId = 'a026F00001FMqmgQAD';
        }
        //Update the Picture_Path field with the url of the image    
        speaker.Picture_Path__c = '/sfc/servlet.shepherd/version/download/'+ verId;
        upsert speaker;
    }
}