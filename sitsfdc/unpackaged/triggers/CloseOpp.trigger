trigger CloseOpp on Opportunity (After update) {  
    List<Opportunity> OppLst = new List<Opportunity>();
    for (Opportunity oppt : trigger.new){
        if(oppt.StageName == 'Closed'){
           
        }
    }
}