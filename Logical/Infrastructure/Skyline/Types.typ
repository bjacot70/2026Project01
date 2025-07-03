
TYPE
	Module_Type : 	STRUCT 
		Notification : ARRAY[0..7]OF STRING[80] := [8('Information: Module ok!')];
		Name : ARRAY[0..7]OF STRING[50] := ['Start','Water_Tank','Coffee_Tank','Milk_Tank','Filtering','Sugar_Tank','Coffee_Grinder','End'];
		IngredientLevel : ARRAY[0..7]OF INT := [8(1000)];
		AlarmFlag : ARRAY[0..7]OF BOOL;
		AlarmName : ARRAY[0..7]OF STRING[80] := ['','WaterEmpty','CoffeeEmpty','MilkEmpty','','SugarEmpty',2('')];
		Option : Option_Type;
		ShowOption : BOOL;
		AcknowledgeFlag : ARRAY[0..7]OF BOOL := [8(TRUE)];
	END_STRUCT;
	SkylineStateEnum : 
		(
		WAIT,
		ACTIVATE,
		DEACTIVATE,
		NOTIFICATION,
		DEACTIVATE_NOTIFICATION,
		ACTIVATE_OPTION,
		DEACTIVATE_OPTION
		);
	SkylineCmd_Type : 	STRUCT 
		Activate : BOOL;
		Deactivate : BOOL;
		Notification : BOOL;
		DeactivateOption : BOOL;
		ActivateOption : BOOL;
	END_STRUCT;
	Option_Type : 	STRUCT 
		StateOFF : ARRAY[0..3]OF STRING[80] := [2('Off'),'NormalFilter','GrindRough'];
		StateON : ARRAY[0..3]OF STRING[80] := ['Cooling','Heating','PremiumFilter','GrindFine'];
		Name : ARRAY[0..3]OF STRING[80] := ['OptionCooling','OptionHeating','OptionFilter','OptionGrinder'];
		Activate : ARRAY[0..3]OF INT;
		Modules : ARRAY[0..3]OF STRING[80] := [2('Water_Tank'),'Filtering','Coffee_Grinder'];
	END_STRUCT;
END_TYPE
