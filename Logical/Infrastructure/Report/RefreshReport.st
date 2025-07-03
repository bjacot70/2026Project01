
ACTION RefreshReport: 
	
	IF MpReportCore_0.Active = TRUE AND MpFileManagerUI_0.Active = TRUE THEN
		
		//Generate process
		IF MpReportCore_0.Generate = TRUE THEN		

			IF MpReportCore_0.CommandDone = TRUE THEN
				
				MpReportCore_0.Generate := FALSE;
				Refresh := TRUE;
				EnableGenerate := FALSE;
			END_IF
		END_IF
		
		//Deleting process  
		IF DeleteReport = TRUE THEN				
			MpFileManagerUIConnect.File.Delete := TRUE;
			MpFileManagerUIConnect.MessageBox.Confirm := TRUE;
			DeleteReport := FALSE;
			Refresh := TRUE;
			EnableDelete := FALSE;
		END_IF
		
		//Refresh process
		IF Refresh = TRUE THEN				
			TON_0(IN := TRUE, PT := T#2s);
			IF TON_0.Q = TRUE THEN
				Refresh := FALSE;
				TON_0(IN := FALSE, PT := T#2s);
				MpFileManagerUIConnect.File.Refresh := TRUE;
			END_IF
		END_IF
		
		//reset enable attribute for buttons
		IF Refresh = FALSE THEN		
			EnableDelete := TRUE;
			EnableGenerate := TRUE;
		END_IF
		
		FOR i := 0 TO 49 DO							
			// Save Filenames to a seperate array for display in Table
			DisplayFileName[i] := MpFileManagerUIConnect.File.List.Items[i].Name;
			IF DisplayFileNameIndex = i THEN		
				// if selected set a index for display selected file in table
				MpFileManagerUIConnect.File.List.Items[i].IsSelected := TRUE;	
			END_IF
		END_FOR
		
		// String for pdfViewer to display right report
		StrSelectedFile := CONCAT(STR_FILE_DEVICE, MpFileManagerUIConnect.File.List.Items[DisplayFileNameIndex].Name);		

	END_IF

END_ACTION
