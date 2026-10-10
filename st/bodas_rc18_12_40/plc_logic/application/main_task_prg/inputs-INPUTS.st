(* --- Implementation --- *)
(******************************************************************************)
(************************ INPUTS  *********************************************)
(******************************************************************************)
PRG_Inputs(i_TaskCycleTime_ms_u16 := TaskCycleTime_ms_u16, o_T15_st_u8 =>);
(******************************************************************************)
(************************ CAN INPUT  ******************************************)
(******************************************************************************)
PRG_CANIn();
(* read current and previous states of system. *)
bds_sys_getStates(ADR(states_s));

(* if the system is in POSTRUN state currently *)
IF (NOT (USINT_TO_BOOL(PRG_Inputs.o_T15_st_u8)) OR states_s.currentState_e = BDS_SYSSTATE_POSTRUN_E) THEN
    PostRun_st_b := TRUE;
ELSE
    PostRun_st_b := FALSE;
END_IF
