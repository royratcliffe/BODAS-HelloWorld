(* --- Interface --- *)
(*********************************************************************************************************************
 *    __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: Main_Task_PRG
 *
 * Description:
 * Main loop of application
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM MAIN_TASK_PRG

VAR
(******************************************************************************)
(*************************** _Init ********************************************)
(******************************************************************************)


(******************************************************************************)
(*************************** _Starlock ****************************************)
(******************************************************************************)
StartRelease_st_b  : BOOL;   (*State of the startlock: 1 = the program runs*)

(******************************************************************************)
(*************************** _Run *********************************************)
(******************************************************************************)


(******************************************************************************)
(*************************** _PostRun *****************************************)
(******************************************************************************)
PostRun_st_b         : BOOL;   (*State of the postrun: 1 = the post runs*)
CallPostRunNr_no_u16 : UINT;
States_s             : bds_sys_states_ts;
(******************************************************************************)
(*************************** _Errors ******************************************)
(******************************************************************************)


(******************************************************************************)
(*************************** _CAN *********************************************)
(******************************************************************************)


(******************************************************************************)
(*************************** General ******************************************)
(******************************************************************************)
st_Startlock_b    : BOOL;
MainTaskState_enu : enu_MainTaskState := enu_MainTaskState.MT_INIT;			(* variable indicating the mode of the main task callback function (MT_INIT, MT_CYCLE) *)
END_VAR

VAR CONSTANT
	DELAY_STANDARD       : INT  := 2000; (* debouncing time 2000[ms]*)
	TaskCycleTime_ms_u16 : UINT := 10;   (* Task Cycle Time *) 
END_VAR

(* --- Implementation --- *)
CASE MainTaskState_enu OF

	enu_MainTaskState.MT_INIT:
		(* Initialization state - only once *)
		INIT();
	
		StartRelease_st_b := FALSE;
		MainTaskState_enu := enu_MainTaskState.MT_CYCLE;

	ELSE (* -> MT_CYCLE and default state *)
		(* Cyclic state *)
	
		(* Read inputs *)
		INPUTS();
	
		IF( StartRelease_st_b ) THEN
			IF( PostRun_st_b ) THEN
				(* Postrun *)
				POSTRUN();
			ELSE	
				(* Normal operational mode *)
				//_RUN();
			END_IF

		ELSE
			(* Wait for start release *)
			STARTLOCK();
		END_IF
	
		(* Set CAN outputs *)
		CAN_OUT();
	
		(* Error management *)
		ERRORS();
	
		(* Set outputs *)
		OUTPUTS();
	
		(* Reads the parameter from EEPROM *)
		READ_PARAMETERS();

END_CASE
