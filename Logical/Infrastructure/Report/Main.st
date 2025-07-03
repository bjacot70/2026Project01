
PROGRAM _CYCLIC
	
	//Call FBs:
	MpReportCore_0( 
		Enable := TRUE,
		MpLink := ADR(gReport),
		ReportID := ADR(REPORT_NAME),
		FileName := ADR('Report_%Y_%m_%d_%H_%M_%S'),
		DeviceName := ADR(REPORT_DEVICE),
		Language := ADR(gSetLanguage),
		MeasurementSystem := gSetUnit);
	MpFileManagerUI_0(MpLink := ADR(gReportFileManagerUI), UIConnect := ADR(MpFileManagerUIConnect), Enable := TRUE);

	//Call Action 
	RefreshReport;
	
END_PROGRAM