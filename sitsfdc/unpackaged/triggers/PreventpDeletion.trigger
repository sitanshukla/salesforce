trigger PreventpDeletion on Opportunity (before delete) {
    for(Opportunity oli : Trigger.old)
    {
        if(oli.StageName =='Closed Won') // Please compare your values here
        {
            oli.addError('you can not delete this OLI');
        }
    }
}