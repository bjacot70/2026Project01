
PROGRAM _INIT
   (* SfDomainConnect *) 
	SfDomainConnect_0.SfDomain := ADR(gSafeDomain_1);  
	(* Username and password defined under UserRoleSystem in the Configuration View *) 
	SfDomainConnect_0.UserName := 'ged';  
	SfDomainConnect_0.Password := 'ged'; 
     
	(* SfDomainTransfer *) 
	SfDomainTransfer_0.SfDomain := ADR(gSafeDomain_1); 
	(* Name of the SafeAPPLICATION and SafeCOMMISSIONING to be transferred *) 
	SfDomainTransfer_0.SafeAppFilePath := 'mapp1.sfapp'; 
	SfDomainTransfer_0.SafeCommFilePath := ''; 
     
	(* SfDomainInfo *) 
	SfDomainInfo_0.SfDomain := ADR(gSafeDomain_1); 
     
	(* SfDomainCompletion *) 
	SfDomainCompletion_0.SfDomain := ADR(gSafeDomain_1); 
	
	 
END_PROGRAM

PROGRAM _CYCLIC

	
	CASE Step OF 
         
		(* Wait for the command to start machine commissioning *) 
		WAIT: 
			IF bCmdStart THEN 
				Step := CONNECT; 
			END_IF 
         
             
			(* Establish connection to the SafeDOMAIN *) 
		CONNECT: 
			SfDomainConnect_0.Enable := TRUE; 
			IF SfDomainConnect_0.Active = TRUE THEN 
				Step := TRANSFER; 
			END_IF 
             
         
			(* Transfer the SafeAPPLICATION and SafeCOMMISSIONING to the SafeDOMAIN *) 
		TRANSFER: 
			SfDomainTransfer_0.Execute := TRUE; 
			IF SfDomainTransfer_0.Done = TRUE THEN 
				SfDomainTransfer_0.Execute := FALSE; 
				Step := COMP_READ_INFO; 
			END_IF 
             
 
			(* Read information from the SafeDOMAIN *) 
		COMP_READ_INFO: 
			SfDomainInfo_0.Execute := TRUE; 
			IF SfDomainInfo_0.Done = TRUE THEN 
				SfDomainInfo_0.Execute := FALSE; 
				(* Copy the read information to function block SfDomainCompletion, *) 
				(* display this data for verification *) 
				SfDomainCompletion_0.Info := SfDomainInfo_0.Info; 
				Step := COMP_WAIT_ACK; 
			END_IF 
 
         
			(* Wait for acknowledgment *)     
			(* User acknowledges correctness with bDataCorrect = TRUE *)     
		COMP_WAIT_ACK: 
			IF bDataCorrect THEN 
				bDataCorrect := FALSE; 
				Step := COMPLETION; 
			END_IF 
             
         
			(* Finish step completion *) 
		COMPLETION: 
			SfDomainCompletion_0.Execute := TRUE; 
			IF SfDomainCompletion_0.Done = TRUE THEN 
				SfDomainCompletion_0.Execute := FALSE; 
				Step := DISCONNECT; 
			END_IF 
         
             
			(* Disconnect from the SafeDOMAIN *) 
		DISCONNECT: 
			SfDomainConnect_0.Enable := FALSE; 
			IF SfDomainConnect_0.Busy = FALSE THEN 
				bCmdStart := FALSE; 
				Step := WAIT; 
			END_IF 
 
	END_CASE 
     
	Station := 'IF6.ST4';
	AsIOAccRead_0(enable := TRUE, pDeviceName := ADR(Station), pChannelName := ADR('SLXbootState'));		//Added 3/21/18
	
	IF AsIOAccRead_0.status = 0 THEN
		bootState := AsIOAccRead_0.value;
	ELSIF AsIOAccRead_0.status <> 65535 THEN
		bootState := 0;
	END_IF
	
	
	
     
	(* Cyclic call of the function blocks *) 
	SfDomainConnect_0(); 
	SfDomainTransfer_0(); 
	SfDomainInfo_0(); 
	SfDomainCompletion_0(); 

	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

