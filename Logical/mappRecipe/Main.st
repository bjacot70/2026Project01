
PROGRAM _INIT
	(* Insert code here *)
	 
END_PROGRAM

PROGRAM _CYCLIC
	Machine_Settings.Hole_Punch_Count;
	Machine_Settings.Last_Unit_Distance;
	Machine_Settings.Life_Corner_Punch_Count;
	Machine_Settings.Life_Crimps;
	Machine_Settings.Life_Cut_Count;
	Machine_Settings.Life_Dimple_Punch_Count;
	Machine_Settings.Life_Gag_Cyl_Count;
	Machine_Settings.Life_Hole_Punch_Count;
	Machine_Settings.Life_Material_Length;
	Machine_Settings.Life_Muntin_Punch_Count;
	Machine_Settings.Life_Tab_Punch_Count;
	Machine_Settings.Material_Length;
	Machine_Settings.Max_Length;
	Machine_Settings.Muntin_Punch_Count;
	Machine_Settings.PE_Offset;
	Machine_Settings.PE_Offset_Raw;

	//mapp recipe stuff
		
	CASE recipeXML OF
		0:
			IF loadSettings = TRUE THEN
				recipeXML := 10;
			END_IF
			IF saveSettings = TRUE THEN
				recipeXML := 30;
			END_IF
			
		10:	//load 
			MpRecipeXML_0.Load := TRUE;
			recipeXML := 20;
			
		20:
			IF MpRecipeXML_0.CommandDone = TRUE THEN
				loadSettings := FALSE;
				MpRecipeXML_0.Load := FALSE;
				recipeXML := 0;
			END_IF
				
		30:	//save
			MpRecipeXML_0.Save := TRUE;
			recipeXML := 40;
			
		40:
			IF MpRecipeXML_0.CommandDone = TRUE THEN
				saveSettings := FALSE;
				MpRecipeXML_0.Save := FALSE;
				recipeXML := 0;
			END_IF
		
	END_CASE

	//Function block calls
	MpRecipeXML_0(MpLink := ADR(gRecipeXml), Enable := TRUE, DeviceName := ADR('USER'), FileName := ADR('MachineSettings'));
	MpRecipeRegPar_0(MpLink := ADR(gRecipeXml) , Enable := TRUE, PVName := ADR('Machine_Settings'));

END_PROGRAM

PROGRAM _EXIT
	(* Insert code here *)
	 
END_PROGRAM

