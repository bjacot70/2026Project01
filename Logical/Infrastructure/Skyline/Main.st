PROGRAM _CYCLIC
	
	//Get ingredient level
	Module.IngredientLevel[1] := gCoffeeMainLogic.AlarmRefill[3];
	Module.IngredientLevel[2] := gCoffeeMainLogic.AlarmRefill[0];
	Module.IngredientLevel[3] := gCoffeeMainLogic.AlarmRefill[1];
	Module.IngredientLevel[5] := gCoffeeMainLogic.AlarmRefill[2];
	
	SkylineNotification := Module.Notification[SelectedModuleIndex];
	
	//Check if ingredient got 0
	FOR x := 0 TO MAX_MODULES DO	
		IF Module.IngredientLevel[x] = 0 THEN 
			Module.AlarmFlag[x] := TRUE;
			Module.AcknowledgeFlag[x] := FALSE;
		ELSE
			Module.AlarmFlag[x] := FALSE;
		END_IF
	END_FOR
	
	CASE Step OF
		WAIT:
			
			IF Cmd.Activate THEN
				Step := ACTIVATE;
				BlockDeactivate := FALSE;
				BlockFunctions := FALSE;
				State := 'Ready';

			ELSIF Cmd.Deactivate THEN
				Step := DEACTIVATE;
				BlockActivate := FALSE;
				BlockFunctions := FALSE;
				Active := FALSE;
				State := 'Off';
					
			ELSIF Cmd.ActivateOption THEN
				Step := ACTIVATE_OPTION;
				Cmd.ActivateOption := FALSE;
				
			ELSIF Cmd.DeactivateOption THEN
				Step := DEACTIVATE_OPTION;
				Cmd.DeactivateOption := FALSE;
			END_IF
			
			IF i > MAX_MODULES THEN
				i := 0;
			END_IF

		ACTIVATE:
		
			Active := TRUE;
			Deactive := FALSE;
			
			IF y <= ACTIVATION THEN
				
				y := y + 1;
				
				IF i <= MAX_MODULES AND y = ACTIVATION THEN
					
					//Check module state
					IF Module.AlarmFlag[i] OR Module.AcknowledgeFlag[i] = FALSE THEN
						MpSkylineSetModuleState(gSkyline, Module.Name[i], 'Error');
					ELSE
						
						MpSkylineSetModuleState(gSkyline, Module.Name[i], 'Ready');
					END_IF
				
					//Check notification
					IF Module.IngredientLevel[i] <= LEVEL_LIMIT THEN
						MpSkylineSetNotification(gSkyline, Module.Name[i], 'Information');
						Module.Notification[i] := 'Information: Module ok!'; 
					END_IF
					
					//Check alarm
					IF Module.AcknowledgeFlag[i] = FALSE THEN
						MpSkylineSetNotification(gSkyline, Module.Name[i], 'Alarm');
					END_IF

					i := i + 1;	
					y := 0;
					
				ELSIF i > MAX_MODULES THEN
					Step := WAIT;
					BlockDeactivate := TRUE;
					BlockFunctions := TRUE;	
					Cmd.Activate := FALSE;
				END_IF
			END_IF

		DEACTIVATE:
			
			IF y <= ACTIVATION THEN
				
				y := y + 1;
			
				IF i <= MAX_MODULES AND y = ACTIVATION THEN
					MpSkylineSetModuleState(gSkyline, Module.Name[i], 'Off');
					MpSkylineResetNotification(gSkyline, Module.Name[i], 'Alarm');
					MpSkylineResetNotification(gSkyline, Module.Name[i], 'Information');
					i := i + 1;
					y := 0;
					
				ELSIF i > MAX_MODULES THEN
					Step := WAIT;
					BlockActivate := TRUE;
					Cmd.Deactivate := FALSE;
					Deactive := TRUE;
				END_IF
			END_IF
		
		ACTIVATE_OPTION:
		
			Module.ShowOption := TRUE;
			
			FOR i := 0 TO MAX_OPTIONS DO
				
				IF Module.Option.Activate[i] = ON THEN
					MpSkylineSetOptionState(gSkyline, Module.Option.Modules[i], Module.Option.Name[i], Module.Option.StateON[i]);
				ELSE
					MpSkylineSetOptionState(gSkyline, Module.Option.Modules[i], Module.Option.Name[i], Module.Option.StateOFF[i]);
				END_IF

			END_FOR;
			
			Step := WAIT;
			i := 0;
		
		DEACTIVATE_OPTION:
			
			Module.ShowOption := FALSE;
			Step := WAIT;
		
	END_CASE
	
	//Check notification an status					
	IF BlockFunctions  THEN
					
		FOR z := 0 TO MAX_MODULES DO
			// Set and reset information
			IF Module.IngredientLevel[z] <= LEVEL_LIMIT THEN
				MpSkylineSetNotification(gSkyline, Module.Name[z], 'Information');
				Module.Notification[z] := 'Information: Fill level below limit!';
			ELSE
				MpSkylineResetNotification(gSkyline, Module.Name[z], 'Information');
				Module.Notification[z] := 'Information: Module ok!';
			END_IF
			
			//Set alarm
			IF Module.AlarmFlag[z] THEN
				MpSkylineSetNotification(gSkyline, Module.Name[z], 'Alarm');
				MpSkylineSetModuleState(gSkyline, Module.Name[z], 'Error');
				Module.Notification[z] := 'Alarm: Fill level too low!';
					
				//Reset alarm
			ELSIF MpAlarmXCheckState(gAlarmXCore, Module.AlarmName[z], mpALARMX_STATE_NONE) AND Module.AcknowledgeFlag[z] = FALSE THEN
				MpSkylineResetNotification(gSkyline, Module.Name[z], 'Alarm');
				MpSkylineSetModuleState(gSkyline, Module.Name[z], State);
				Module.AcknowledgeFlag[z] := TRUE;
						
				//Check ingredients level 
				IF Module.IngredientLevel[z] <= LEVEL_LIMIT THEN
					Module.Notification[z] := 'Information: Fill level below limit!';
					MpSkylineSetNotification(gSkyline, Module.Name[z], 'Information');
				ELSE
					Module.Notification[z] := 'Information: Module ok!';
					MpSkylineSetNotification(gSkyline, Module.Name[z], 'Information');
				END_IF
			END_IF
		END_FOR
		
		z := 0;
		
	END_IF

END_PROGRAM

