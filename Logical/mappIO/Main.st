
PROGRAM _INIT
	configTemplateName := 'NewConfig';
	
	 
END_PROGRAM

PROGRAM _CYCLIC
	
	MpIOImport_0.MpLink := ADR(gIoConfig);
	MpIOImport_0.Enable := TRUE;
	MpIOImport_0.FileName := ADR(configTemplateName);
	MpIOImport_0.DeviceName := ADR('USER');
	
	MpIOImport_0();
	
	
	
	
	//test IO points
	diTestInput01;
	diTestInput02;
		
	doTestOutput01;
	
	
	 
END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

