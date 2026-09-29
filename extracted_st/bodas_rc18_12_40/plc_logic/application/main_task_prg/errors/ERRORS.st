(* --- Implementation --- *)
(******************************************************************************)
(******************** Error Handling  *****************************************)
(******************************************************************************)

PRG_HandleErrors(
	i_stPmpSnsrSigInvldErr_e := PRG_Inputs.stPmpSnsrSigInvldErr_e, 
	i_stBrkSwtSigInvldErr_e  := PRG_Inputs.stBrkSwtSigInvldErr_e, 
	i_uPmpSnsr_mV_u16          := PRG_Inputs.uPmpSnsr_mV_u16, 
	i_frqVehSnsr_Hz_u32        := UDINT_TO_UINT( PRG_Inputs.frqVehSnsr_Hz_u32 ), 
	i_iPmpFwdAct_mA_u16        := PRG_Outputs.no_CurrentK07_mA_u16, 
	i_vWhlSpd_kmh_u16          := PRG_Inputs.vWhlSpd_kph_u16);
	
(******************************************************************************)
(******************** Error Memory Workaround *********************************)
(******************************************************************************)	
PRG_ErrMemMgr();	
