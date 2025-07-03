
PROGRAM _INIT
	MpAlarmXCore_0.Enable := TRUE; 
	MpAlarmXCore_0.MpLink := ADR(gAlarmXCore); 
	 
	MpAlarmXHistory_0.Enable := TRUE; 
	MpAlarmXHistory_0.MpLink := ADR(gAlarmXHistory); 
	MpAlarmXHistory_0.FileName := ADR('Alarms_%Y_%m_%d_%H_%M_%S'); 
	//MpAlarmXHistory_0.DeviceName := ADR('CF'); 
	MpAlarmXHistory_0.DeviceName := ADR('USER'); 
	
	MpAlarmXCore_0(); 
	MpAlarmXHistory_0(); 
	 
END_PROGRAM

PROGRAM _CYCLIC

	  
	IF Temperature >= 50 THEN 
		MpAlarmXSet(gAlarmXCore,'TemperatureHigh'); 
	ELSE 
		MpAlarmXReset(gAlarmXCore,'TemperatureHigh'); 
	END_IF; 
	 
	MpAlarmXCore_0(); 
	MpAlarmXHistory_0(); 
	
END_PROGRAM

PROGRAM _EXIT

	 
END_PROGRAM

