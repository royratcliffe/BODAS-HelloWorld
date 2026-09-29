(* --- Interface --- *)
PROGRAM UDS_RoutineCallback
VAR
	NvmWriteRet_u16  : UINT;
	DiagChkLvlRet_u8 : USINT;
	Level_pu8       : POINTER TO USINT;
END_VAR

(* --- Implementation --- *)
(* here check th security level *)
//bds_sec_getLevel(BDS_SEC_ASW_INST_NAME_1_E, ADR(Level_pu8));
//DiagChkLvlRet_u8 := UDS_Diag_ChkLvl(16#00000004, Level_pu8^);
DiagChkLvlRet_u8 := 0;

IF( NOT(USINT_TO_BOOL(DiagChkLvlRet_u8))) THEN 
	NvmWriteRet_u16 := bds_mem_writeBlock( UINT_TO_USINT( bds_mem_nvmBlock01_512_R_D ), ADR(GlobalVariables.PrmAsw_gstruc), 0, SIZEOF(GlobalVariables.PrmAsw_gstruc));
	
	IF(0 = NvmWriteRet_u16) THEN
			bds_uds_setCallbackStatus(0); (* E_OK *)
			
	ELSE
		bds_uds_setCallbackStatus(10); (* E_NOK which decrements to 1. i.e executes for 10 cycles before E_NOK is set ( wait time ill date is written to NVM) *)
		
	END_IF

ELSE	
	bds_uds_setCallbackStatus(10); (* E_NOK *)

END_IF
