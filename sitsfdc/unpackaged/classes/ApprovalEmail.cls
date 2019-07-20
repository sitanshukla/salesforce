global class ApprovalEmail implements Database.Batchable<sObject> {
    global Database.QueryLocator start(Database.BatchableContext bc){
        return Database.getQueryLocator([Select ID, Owner.ID, Owner.Email from Opportunity Where RecordTypeId = '0126F000002ARsfQAG' AND OwnerId = '0056F000006QoUHQA0' AND StageName ='Qualification' AND CreatedDate <= LAST_N_DAYS:7]);
    }    
    global void execute(Database.BatchableContext bc, List<Opportunity> scope){
        List<Messaging.SingleEmailMessage> mailList = new List <Messaging.SingleEmailMessage>();
        //system.debug('+++');
        ID a = '00X6F000002BreVUAS';
        for(Opportunity op : scope){
            //system.debug('@@@');
            List < String > toAddresses = new List < String > ();
            List < String > CcAddresses = new List < String > ();
            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
            ccAddresses.add(op.Owner.Email);
            mail.setCcAddresses(CcAddresses);
            mail.setTargetObjectId(op.OwnerID);
            mail.saveAsActivity = false;
            mail.setSenderDisplayName('System Admin');
            //mail.setWhatId(op.Id);
            mail.setTemplateId(a);
            //mailList.add(mail);
            Messaging.sendEmail(new Messaging.SingleEmailMessage[]{mail});
        }
       // Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
}
    global void finish(Database.BatchableContext bc){
        
    }
}