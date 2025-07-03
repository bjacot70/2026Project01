
TYPE
	ProducedCoffeeType : 	STRUCT 
		Number : INT;
		_Number : INT;
		Name : STRING[80];
	END_STRUCT;
	RefillMainType : 	STRUCT 
		Milk : INT; (*Whole amount of milk*)
		Sugar : INT; (*Whole amount of sugar*)
		Coffee : INT; (*Whole amount of coffee*)
		Water : INT; (*Whole amount of water*)
	END_STRUCT;
	RecipeSelectEnum : 
		( (*Enumeration definition for recipe selection*)
		MAPP_REGULAR := 0,
		MAPP_MILKCOFFEE := 1,
		MAPP_ESSPRESSO := 2,
		MAPP_CAPPUCINO := 3,
		NO_SELECTION := 4
		);
	MainControlStepEnum : 
		( (*Enumeration definition for main state machine*)
		STATE_IDLE,
		STATE_STARTING,
		STATE_EXECUTE,
		STATE_COMPLETING,
		STATE_TAKEOUT_CUP,
		STATE_POSITION_CUP
		);
	RefillStateEnum : 
		( (*Enumeration definition for refill machine*)
		REFILL_NONE := 1,
		REFILL_WATER := 2,
		REFILL_MILK := 3,
		REFILL_COFFEE := 4,
		REFILL_SUGAR := 5
		);
	MainCoffeeUIConnectType : 	STRUCT  (*Main logic structure *)
		visShowClearButton : BOOL; (*HMI control bit*)
		visStartCoffee : BOOL; (*HMI control bit*)
	END_STRUCT;
END_TYPE
