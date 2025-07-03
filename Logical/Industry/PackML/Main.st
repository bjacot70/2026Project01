PROGRAM _INIT
  
	
END_PROGRAM
      
PROGRAM _CYCLIC
	
	//Set FB parameters

	MpPackMLMode_0(
		MpLink := ADR(gPackMLStandaloneUnit),
		Enable := TRUE,
		ModeID := PACKML_MODE_PRODUCTION,
		Start := gCoffeeMainLogic.cmdStart,
		Stop := gCoffeeMainLogic.cmdStop,
		Reset := MpPackMLStateIsActive(gPackMLStandaloneUnit,mpPACKML_STATE_STOPPED,PACKML_MODE_PRODUCTION),
		Abort := (gCoffeeMainLogic.cmdAbort AND MpPackMLMode_0.ModeActive), 
		Clear := gCoffeeMainLogic.cmdClear);

	MpPackMLMode_1(
		MpLink := ADR(gPackMLStandaloneUnit),
		Enable := TRUE,
		ModeID := PACKML_MODE_MAINTENANCE);
	
	MpPackMLBasicUI_0(
		MpLink := ADR(gPackMLStandaloneUnit),
		Enable := TRUE,
		UIConnect := ADR(MpPackMLBasicUIConnect));

	MpPackMLStatisticsUI_0(
		MpLink := ADR(gPackMLStandaloneUnit),
		Enable := TRUE,
		UIConnect := ADR(MpPackMLStatisticsUIConnect));
	

	//Check if you can refill the ingredients
	IF MpPackMLBasicUIConnect.StateCurrent = mpPACKML_STATE_IDLE OR MpPackMLBasicUIConnect.StateCurrent = mpPACKML_STATE_ABORTED THEN
		gCoffeeMainLogic.IdleState := TRUE;
	ELSE
		gCoffeeMainLogic.IdleState := FALSE;
	END_IF
	
	
END_PROGRAM