PROGRAM _INIT
	

	
END_PROGRAM
PROGRAM _CYCLIC	
	
	ActiveConfiguration;
	
	//Set FB parameters
	MpIOImport_0(
		Enable := TRUE,
		MpLink := ADR(gIoConfig),	
		DeviceName := ADR('mappIO'),
		FileName := ADR(FileName));

	//Reset Import command if import succeded
	IF MpIOImport_0.CommandDone = TRUE THEN 
		MpIOImport_0.Import := FALSE;
	END_IF
	
END_PROGRAM