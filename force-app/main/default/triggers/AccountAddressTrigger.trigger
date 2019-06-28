trigger AccountAddressTrigger on Account (before insert,before update) {
    Account PP=new Account();
    Account PPs=new Account();
    try {
        if (Trigger.isupdate) {
          if(PP.Match_Billing_Address__c=true && PP.BillingPostalCode <> null){
                PPs.ShippingPostalCode=PPs.BillingPostalCode;
                PPs.Id=PP.Id;
                System.debug('PPSUPDATE'+PPs.Id);
                update PP;
            }
    }
        if (Trigger.isInsert) {
            if(PP.Match_Billing_Address__c=true){
                
                pp.ShippingPostalCode=PP.BillingPostalCode;
                System.debug('PPSINSERT');
                insert PP;
            }
            
        }
          
    }catch(DmlException e) {
        System.debug('The following exception has occurred: ' + e.getMessage());
    }
    
}