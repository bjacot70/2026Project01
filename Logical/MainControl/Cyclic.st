
PROGRAM _CYCLIC


	// Main state machine for the brewing process handled by PackML
(****************************************************************IDLE*********************************************************************)	
	
	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_IDLE, PACKML_MODE_PRODUCTION)) THEN			
		gCoffeeMainLogic.PackMLState := 'Idle';
		TransitionTime := 500;
		TransformTime := T#500ms;
		gCoffeeMainLogic.AxisCupFeeder.Power 		:= TRUE;			
		gCoffeeMainLogic.AxisTakeout.Power 			:= TRUE;
		
		IF (gCoffeeMainLogic.AxisTakeout.Active = TRUE) AND (gCoffeeMainLogic.AxisCupFeeder.Active = TRUE)  THEN

			Transform := '[{"select":"#g83","duration":500,"display":true}]';
		ELSE

			gCoffeeMainLogic.cmdAbort := TRUE; 
				
		END_IF
	
	END_IF


	(****************************************************************RESETTING*********************************************************************)	
	
	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_RESETTING
		, PACKML_MODE_PRODUCTION)) THEN			
		gCoffeeMainLogic.PackMLState := 'Resetting';	
		gCoffeeMainLogic.cmdClear 		:= FALSE;
		gCoffeeMainLogic.cmdAbort 		:= FALSE;
		
		gCoffeeMainLogic.AxisCupFeeder.Power 		:= TRUE;				// power and home both conveyor axes
		gCoffeeMainLogic.AxisTakeout.Power 			:= TRUE;				
		
		IF(gCoffeeMainLogic.AxisTakeout.PowerOn = TRUE) AND (gCoffeeMainLogic.AxisCupFeeder.PowerOn = TRUE)  THEN
			
			MpPackMLStateComplete(gPackMLStandaloneUnit, PACKML_MODE_PRODUCTION);
			
		END_IF
	END_IF
	
	(******************************************************************STARTING*******************************************************************)	

	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_STARTING, PACKML_MODE_PRODUCTION)) THEN			
		gCoffeeMainLogic.PackMLState := 'Starting';
		TransitionTime := 3000;
		Transform := '[{"select":"#g83","duration":3000,"translate":[375,-87.299533]}]';
		TransformTime := T#3S;
		TransformWait.IN := TRUE;
		TransformWait.PT := TransformTime;
		
		gCoffeeMainLogic.AxisCupFeeder.MoveAdditive 	:= TRUE;			// start moving the cup to fill station
		gCoffeeMainLogic.cmdStart := FALSE;
		
			
		IF (gCoffeeMainLogic.AxisCupFeeder.InPosition) AND TransformWait.Q = TRUE THEN
			TransformWait.IN := FALSE;	
			gCoffeeMainLogic.AxisCupFeeder.MoveAdditive 	:= FALSE;				// reset command when in position
			gCoffeeMainLogic.AxisCupFeeder.InPosition := FALSE;
			gCoffeeMainLogic.AxisCupFeeder.Position 	:= 0.0;
			MpPackMLStateComplete(gPackMLStandaloneUnit, PACKML_MODE_PRODUCTION);
			TransformWait();
		END_IF

	END_IF
	
	
	(******************************************************************EXECUTE*******************************************************************)	

	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_EXECUTE, PACKML_MODE_PRODUCTION)) THEN			
		gCoffeeMainLogic.PackMLState := 'Execute';
		TransitionTime := 3000;
		TransformTime := T#3S;
		Transform :='[{"select":"#path39","duration":2000,"fill":7}
		,{"select":"#path41","duration":2000,"fill":7}
		,{"select":"#path3","duration":2000,"fill":7}
		,{"select":"#rect999","duration":2000,"display":true,"fill":1}
		,{"select":"#rect999-9","duration":2000,"display":true,"fill":1}
		,{"select":"#path49","duration":2000,"fill":0}]';
		ExecuteWait.IN := TRUE;
		ExecuteWait.PT := TransformTime;
		ExecuteWait();
			
		IF ExecuteWait.Q = TRUE THEN
			FillCoffeeWait.IN := TRUE;
			FillCoffeeWait.PT := T#2s;
			Transform := '[{"select":"#path49","duration":2000,"fill":0}
			,{"select":"#path39","duration":2000,"fill":0}
			,{"select":"#path41","duration":2000,"fill":2}
			,{"select":"#path3","duration":2000,"fill":3}
			,{"select":"#rect999","duration":500,"display":false}
			,{"select":"#rect999-9","duration":500,"display":false}
			,{"select":"#path49","duration":2000,"fill":7}]';
			
			IF FillCoffeeWait.Q THEN
				FillCoffeeWait.IN := FALSE;
				ExecuteWait.IN := FALSE;
				gCoffeeMainLogic.AxisTakeout.MoveAdditive := TRUE;					// start moving cup to take out
				MpPackMLStateComplete(gPackMLStandaloneUnit, PACKML_MODE_PRODUCTION);
			END_IF
		END_IF
		
			
	END_IF	
	
	(******************************************************************Completing*******************************************************************)	

	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_COMPLETING, PACKML_MODE_PRODUCTION)) THEN			
		TransitionTime := 3000;
		Transform := '[{"select":"#g83","duration":3000,"translate":[560,-87.299533]}]';
		gCoffeeMainLogic.PackMLState := 'Completing';	
		TransformWait.IN := TRUE;
		TransformWait.PT := TransformTime;
			
		IF (gCoffeeMainLogic.AxisTakeout.InPosition) AND TransformWait.Q = TRUE THEN

			TransitionTime := 500;
			Transform := '[{"select":"#g83","duration":500,"display":false}]';
			TransformHide.IN := TRUE;
			TransformHide.PT := TransformTime;
						
			IF TransformHide.Q = TRUE THEN

				CupHideWait.IN := TRUE;
				CupHideWait.PT := T#1S;
				Transform := '[{"select":"#g83","duration":1000,"translate":[3.497,-87.299533]}]';
				
				IF CupHideWait.Q = TRUE THEN
					CupHideWait.IN := FALSE;
					TransformWait.IN := FALSE;
					TransformHide.IN := FALSE;
					gCoffeeMainLogic.cmdStart					:= FALSE;					// reset the brewing start command 
					gCoffeeMainLogic.AxisTakeout.MoveAdditive 	:= FALSE;					// reset command when in position
					gCoffeeMainLogic.AxisTakeout.InPosition := FALSE;
					gCoffeeMainLogic.AxisTakeout.Position 	:= 0.0;
					MpPackMLStateComplete(gPackMLStandaloneUnit, PACKML_MODE_PRODUCTION);	
				END_IF

			END_IF
			
		END_IF
	
	END_IF	
	TransformWait();
	CupHideWait();
	TransformHide();
	(****************************************************************STOPPED*********************************************************************)	
	
	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_STOPPED, PACKML_MODE_PRODUCTION)) THEN			
		gCoffeeMainLogic.PackMLState := 'Stopped';	
		gCoffeeMainLogic.cmdClear := FALSE;
		
	END_IF	
	
	(******************************************************************ABORTING*******************************************************************)	
	
	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_ABORTING, PACKML_MODE_PRODUCTION)) THEN			
		gCoffeeMainLogic.PackMLState := 'Aborting';		
		gCoffeeMainLogic.AxisCupFeeder.Power 	:= FALSE;
		gCoffeeMainLogic.AxisTakeout.Power 		:= FALSE;
			
		IF (gCoffeeMainLogic.AxisCupFeeder.PowerOn = FALSE) AND (gCoffeeMainLogic.AxisTakeout.PowerOn = FALSE) THEN 
			MpPackMLStateComplete(gPackMLStandaloneUnit, PACKML_MODE_PRODUCTION);		
		END_IF 
		
		gCoffeeMainLogic.cmdAbort := FALSE;
	END_IF	
	
	(******************************************************************ABORTED*******************************************************************)	
	
	IF (MpPackMLStateIsActive(gPackMLStandaloneUnit, mpPACKML_STATE_ABORTED, PACKML_MODE_PRODUCTION)) THEN			
		gCoffeeMainLogic.PackMLState := 'Aborted';
		gCoffeeMainLogic.AxisCupFeeder.Power 			:= FALSE;
		gCoffeeMainLogic.AxisTakeout.Power 				:= FALSE;
		gCoffeeMainLogic.AxisCupFeeder.MoveAdditive 	:= FALSE;
		gCoffeeMainLogic.AxisTakeout.MoveAdditive		:= FALSE;
		gCoffeeMainLogic.AxisCupFeeder.Home			 	:= FALSE;
		gCoffeeMainLogic.AxisTakeout.Home				:= FALSE;
		gCoffeeMainLogic.cmdStart						:= FALSE;
			
		IF (gCoffeeMainLogic.AxisCupFeeder.PowerOn = FALSE) AND (gCoffeeMainLogic.AxisTakeout.PowerOn = FALSE) THEN 
			MpPackMLStateComplete(gPackMLStandaloneUnit, PACKML_MODE_PRODUCTION);		
		END_IF 
		
		gCoffeeMainLogic.cmdAbort := FALSE;
	END_IF	

	(******************************************************************END OF PACKML*******************************************************************)	
	
	//Check if Alarm can be cleared
	IF (gClearAlarm = TRUE) THEN
		MainCoffeeUIConnect.visShowClearButton := YES;
	ELSE
		MainCoffeeUIConnect.visShowClearButton := NO;
	END_IF

	//Control Refill Alarms
	IF MainCoffeeUIConnect.visStartCoffee = TRUE THEN
		gCoffeeMainLogic.cmdStart := TRUE;
		(*gCoffeeMainLogic.cmdClear := TRUE*)
		MainCoffeeUIConnect.visStartCoffee := FALSE;
		ProducedCoffee.Number := ProducedCoffee.Number + 1;

		FOR i := 0 TO MAX_INGREDIENTS DO
			
			Refill[i] := Refill[i] - gCoffeeMainLogic.Refill[i];
			
			IF(Refill[i] < 0 ) THEN
				Refill[i] := 0;
			END_IF
		END_FOR;
	END_IF
	
	FOR i := 0 TO MAX_INGREDIENTS DO
		gCoffeeMainLogic.AlarmRefill[i] := Refill[i];
	END_FOR
	
	//Get correct measurement system
	IF gUnit = 'metric' THEN

		gSetUnit := 1;
		
	ELSIF gUnit = 'imperial' THEN
		gSetUnit := 2;

	ELSE
		gSetUnit := 3;

	END_IF;
	
	TransformWait();
	FillCoffeeWait();
	ExecuteWait();
	
END_PROGRAM
