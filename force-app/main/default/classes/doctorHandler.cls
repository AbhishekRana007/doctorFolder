/**
 * Sample Trigger Handler for Account
 */
public class doctorHandler implements ITrigger 
{  map<id,string> updatingLead=new map<id,string>();
 
    public void bulkBefore(){
        if(trigger.isUpdate){
           updatingLead=doctorHelper.fetcher(trigger.old);}
  		system.debug('--- bulkbEfore is called');
    }
    
    public void bulkAfter(){
  		system.debug('--- bulkAfter is called');      
    }
    
    public void beforeInsert(SObject so){
        doctorHelper.insertHelper((lead)so);
  		system.debug('--- beforeInsert is called');      
    }
    public void beforeUpdate(SObject oldSo, SObject so){
       system.debug('--- beforeUpdate in called'); 
       doctorHelper.updateHelper(updatingLead,(lead)so);
  		system.debug('--- beforeUpdate is called');      
    }

    public void beforeDelete(SObject so){
  		system.debug('--- beforeDelete is called');      
    }

    public void afterInsert(SObject so){
  		system.debug('--- afterInsert is called');      
    }

    public void afterUpdate(SObject oldSo, SObject so){
         
  		system.debug('--- afterUpdate is called');      
    }

    public void afterDelete(SObject so){
  		system.debug('--- afterDelete is called');      
    }
  
    public void andFinally(){
        system.debug('--- andFinally called');      
    }
}