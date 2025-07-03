/* Automation Studio generated header file */
/* Do not edit ! */

#ifndef _BUR_1751390166_1_
#define _BUR_1751390166_1_

#include <bur/plctypes.h>

/* Datatypes and datatypes of function blocks */
typedef enum PackMLModes
{	PACKML_MODE_PRODUCTION = 1,
	PACKML_MODE_MAINTENANCE = 2
} PackMLModes;

typedef enum CoffeeStateEnum
{	COFFEE_WAIT = 0,
	COFFEE_TAKEWATER = 1,
	COFFEE_TAKECOFFEE = 2,
	COFFEE_TAKECOFFEEMILK = 3,
	COFFEE_RELEASE = 4,
	COFFEE_FINISH = 5
} CoffeeStateEnum;

typedef struct Machine_Settings_typ
{	float CO_Width;
	float CO_Width_Preset_Val;
	unsigned long Life_Crimps;
	unsigned short Crimp_Time;
	plctime crimpTime;
	float PE_Offset;
	float PE_Offset_Raw;
	float Cutoff_Length;
	float Cutoff_Length_Finish;
	unsigned long Corner_Punch_Count;
	unsigned long Life_Corner_Punch_Count;
	unsigned long Cut_Count;
	unsigned long Life_Cut_Count;
	unsigned long Gag_Cyl_Count;
	unsigned long Life_Gag_Cyl_Count;
	unsigned long Hole_Punch_Count;
	unsigned long Life_Hole_Punch_Count;
	unsigned long End_Start_Punch_Count;
	unsigned long Life_End_Start_Punch_Count;
	unsigned long Shear_Punch_Count;
	unsigned long Life_Shear_Punch_Count;
	unsigned long Muntin_Punch_Count;
	unsigned long Life_Muntin_Punch_Count;
	unsigned long Tab_Punch_Count;
	unsigned long Life_Tab_Punch_Count;
	unsigned long Dimple_Punch_Count;
	unsigned long Life_Dimple_Punch_Count;
	float Material_Length;
	float Life_Material_Length;
	float Scrap_Max_Length;
	float Max_Length;
	signed long Last_Unit_Distance;
	signed long First_Unit_Distance;
	float FP_Width;
	float FP_Width_Preset_Val;
	float RF_Width;
	float RF_Width_Preset_Val;
	plcbit HMI_2_QC_Pos;
	plcbit HMI_2_TP1;
	plcbit HMI_2_TP2;
	plcbit HMI_2_UL1;
	plcbit HMI_2_UL2;
	plcbit HMI_2_BL1;
	plcbit HMI_2_BL2;
	plcbit HMI_2_UB1;
	plcbit HMI_2_UB2;
	unsigned char Conveyor_Speed;
	plcbit System_Drift_Disable;
	float HomeOffset[8];
	signed long CrimpDelay;
	plcbit CrimperEnable;
	unsigned short FeederPressExtractionTime;
	float FeederPressFeedLength;
	float CrimperPEOffset;
	float RollformerClearDistance;
	float RollformerThreadUpDistance;
	plcbit LightCurtainDisable;
	plcbit ExtruderDisable;
} Machine_Settings_typ;

typedef struct ReportCoffeeType
{	plcstring Name[256];
	signed short Water;
	signed short Sugar;
	signed short Coffee;
	signed short Milk;
} ReportCoffeeType;

typedef struct RefillAlarmType
{	signed short Water;
	signed short Sugar;
	signed short Milk;
	signed short Coffee;
} RefillAlarmType;

typedef struct RefillType
{	signed short Water;
	signed short Sugar;
	signed short Milk;
	signed short Coffee;
} RefillType;

typedef struct CoffeeAxisLogicType
{	plcbit Active;
	plcbit Power;
	plcbit PowerOn;
	plcbit Home;
	plcbit MoveAdditive;
	plcbit MoveActive;
	plcbit InPosition;
	double Position;
} CoffeeAxisLogicType;

typedef struct CoffeeMainLogicType
{	struct CoffeeAxisLogicType AxisCupFeeder;
	struct CoffeeAxisLogicType AxisTakeout;
	plcbit cmdAbort;
	plcbit cmdStop;
	plcbit cmdClear;
	plcbit cmdStart;
	plcbit TemperatureWithinLimit;
	plcbit CreateFirstRecipe;
	plcbit cmdTakeout;
	signed short Refill[4];
	signed short AlarmRefill[4];
	enum CoffeeStateEnum CoffeeState;
	struct ReportCoffeeType ReportCoffee[200];
	plcstring PackMLState[81];
	plcbit IdleState;
} CoffeeMainLogicType;






__asm__(".section \".plc\"");

/* Used IEC files */
__asm__(".ascii \"iecfile \\\"Logical/Global.typ\\\" scope \\\"global\\\"\\n\"");

/* Exported library functions and function blocks */

__asm__(".previous");


#endif /* _BUR_1751390166_1_ */

