trigger triggerOnLead on Lead ( after insert,after Update) {
        system.debug('entered trigegr');
    TriggerFactory.initiateHandler(Lead.sObjectType);
    }


    