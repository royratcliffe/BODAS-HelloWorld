(* --- Implementation --- *)
(******************************************************************************)
(******************** CAN OUTPUT  *********************************************)
(******************************************************************************)
PRG_CANOut(i_statusNvmIni_u16  := PRG_NVMConfig.status_u16,
           i_iPmpFwdAct_mA_u16 := PRG_Outputs.no_CurrentK07_mA_u16,
           i_iPmpFwdSet_mA_u16 := PRG_Outputs.iPmpFwdSet_mA_u16,
           i_CtrlValve_u8      := PRG_Outputs.st_CtrlValve_u8,
           i_rxActEngPercTq_u8 := PRG_CANIn.o_rxActEngPercTq_u8,
           i_vWhlSpd_kph_u16   := UINT_TO_INT(PRG_Inputs.vWhlSpd_kph_u16),
           i_uPmpSnsr_mV_u16   := PRG_Inputs.uPmpSnsr_mV_u16,
           i_frqVehSnsr_Hz_u32 := PRG_Inputs.frqVehSnsr_Hz_u32,
           i_anValue_perc_u8   := GlobalVariables.anValue_perc_gu8,
           i_stBrkSwt_u8       := PRG_Outputs.st_BrkSwt_u8);
