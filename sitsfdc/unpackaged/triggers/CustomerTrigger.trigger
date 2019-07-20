//Trigger Code
trigger CustomerTrigger on APEX_Customer__c (after update) {
    List<APEX_Invoice__c> InvoiceList = new List<APEX_Invoice__c>();
    for (APEX_Customer__c objCustomer: Trigger.new) {
        if (objCustomer.APEX_Customer_Status__c == 'Active' && trigger.oldMap.get(objCustomer.id).APEX_Customer_Status__c != 'Active') {
            APEX_Invoice__c objInvoice = new APEX_Invoice__c();
            objInvoice.APEX_Status__c = 'Pending';         
            objInvoice.APEX_Customer__c = objCustomer.id;
            objInvoice.Apex_Description__c = 'record created through trigger';

            InvoiceList.add(objInvoice);
        }
    }
    //DML to insert the Invoice List in SFDC
    insert InvoiceList;
}