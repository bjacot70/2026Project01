
PROGRAM _CYCLIC

	//Set FB parameters
	MpAuditTrail_0(
	MpLink := ADR(gAuditTrail),
	Enable := TRUE, 
	DeviceName := ADR('mappDir'), 
	ErrorReset := gCoffeeMainLogic.cmdClear,
	Language := ADR(gSetLanguage),
	FileName := ADR('Audit_%Y_%m_%d_%H_%M_%S'),
	MeasurementSystem := gSetUnit);

	MpAuditTrailUI_0(
	MpLink := ADR(gAuditTrail),
	Enable := TRUE, 
	DeviceName := ADR('mappDir'),
	UIConnect := ADR(MpAuditTrailUIConnect), 
	ErrorReset := gCoffeeMainLogic.cmdClear,
	Language := ADR(gSetLanguage),
	MeasurementSystem := gSetUnit);
	
	
	IF (MpAuditTrail_0.Export) AND (MpAuditTrail_0.CommandDone) THEN
		MpAuditTrail_0.Export := FALSE;
	END_IF
	
	IF MpAuditTrail_0.ArchiveAvailable THEN
		MpAuditTrail_0.ExportArchive := TRUE;
	ELSE
		MpAuditTrail_0.ExportArchive := FALSE;
	END_IF
	
	FilterConfiguration;
	SortConfiguraiton;
	
END_PROGRAM