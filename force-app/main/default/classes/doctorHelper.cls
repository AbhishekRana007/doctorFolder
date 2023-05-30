public with sharing class doctorHelper{

  /*  public static  map<id,string> fetcher(list<lead>anl){
        map<id,string>xlead=new map<id,string>();
      system.debug('before list');
   list<lead> uplead=[Select name,id,firstname,Salutation from lead where id in :anl];   
        system.debug('befoer list'+uplead);
        for(lead ld:uplead){
            xlead.put(ld.Id,ld.Salutation);
            }
        system.debug('size of thik sis '+uplead.size());
        
        return xlead;
 }
   */
   
 public static void insertHelper(lead nl){
   System.debug('this is here');
     if(nl.Salutation==null)
  nl.Salutation='Dr.';   
 }
   
  public static void updateHelper(/*map<id,string>tlead,*/lead nl){
   System.debug('this is here');
     if(/*tlead.containskey(nl.Id) &&*/ nl.Salutation==null)
  nl.Salutation='Dr.';   
     
 }  
}
