(* --- Interface --- *)
FUNCTION UDS_WriteCallback
VAR_INPUT
	UDSReadData_pau8 : POINTER TO USINT;
END_VAR
VAR
	DidValue_u16     : UINT;	
	DiagChkLvlRet_u8 : USINT;
	Level_pu8        : POINTER TO USINT;
END_VAR

(* --- Implementation --- *)
(* Get the DID requested by tester present *)
bds_uds_GetActiveDid(ADR(DidValue_u16));

(* here check the security level *)
CASE DidValue_u16 OF
  16#C003, 16#D001, 16#D002:
	(* security level 2 *)
	//bds_sec_getLevel(BDS_SEC_ASW_INST_NAME_1_E, ADR(Level_pu8));
	//DiagChkLvlRet_u8 := UDS_Diag_ChkLvl(16#00000004, Level_pu8^);
	DiagChkLvlRet_u8 := 0;

ELSE
	(*bds_sec_getLevel(BDS_SEC_ASW_INST_NAME_1_E, ADR(Level_pu8));
	DiagChkLvlRet_u8 := UDS_Diag_ChkLvl(16#FFFFFFFF, Level_pu8^);*)
	DiagChkLvlRet_u8 := 0;

END_CASE

IF( NOT(USINT_TO_BOOL(DiagChkLvlRet_u8))) THEN 
	CASE DidValue_u16 OF 
		(* Handle the write operation at DID 0xC001 *)
		16#C001:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			GlobalVariables.PrmAsw_gstruc.fctPmp_s16 := WORD_TO_INT(USINT_TO_WORD(UDSReadData_pau8[0]) + SHL(USINT_TO_WORD(UDSReadData_pau8[1]), 8));
		
		(* Handle the write operation at DID 0xC002 *)	
		16#C002:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.0 := UDSReadData_pau8[0].0;
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.1 := UDSReadData_pau8[0].1;
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.2 := UDSReadData_pau8[0].2;
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.3 := UDSReadData_pau8[0].3;
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.4 := UDSReadData_pau8[0].4;
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.5 := UDSReadData_pau8[0].5;
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.6 := UDSReadData_pau8[0].6;
			GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu.7 := UDSReadData_pau8[0].7;
	
		(* Handle the write operation at DID 0xC003 *)	
		16#C003:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			GlobalVariables.PrmAsw_gstruc.nrCogs_s16 := WORD_TO_INT(USINT_TO_WORD(UDSReadData_pau8[0]) + SHL(USINT_TO_WORD(UDSReadData_pau8[1]), 8));
	
		(* Handle the write operation at DID 0x01C7 *)		
		16#01C7:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			GlobalVariables.PrmAsw_gstruc.iSpSafout1_u16 := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[0]) + SHL(USINT_TO_WORD(UDSReadData_pau8[1]), 8));
		
		(* Handle the write operation at DID 0x01C8 *)		
		16#01C8:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			GlobalVariables.PrmAsw_gstruc.iSpSafout2_u16 := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[0]) + SHL(USINT_TO_WORD(UDSReadData_pau8[1]), 8));
		
		(* Handle the write operation at DID 0xD001 *)	
		16#D001:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgXcpOn_b := USINT_TO_BOOL(UDSReadData_pau8[0]);
			
		(* Handle the write operation at DID 0xD002 *)		
		16#D002:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgStoreDataToNvm_b := USINT_TO_BOOL(UDSReadData_pau8[0]);
		
		(* Handle the write operation at DID 0xC010 *)		
		16#C010:
			bds_uds_setCallbackStatus(0); (* E_OK *)
			//GlobalVariables.PrmAsw_gstruc.eff_perc_au16[0] := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[0]) + SHL(USINT_TO_WORD(UDSReadData_pau8[1]), 8));
			//GlobalVariables.PrmAsw_gstruc.eff_perc_au16[1] := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[2]) + SHL(USINT_TO_WORD(UDSReadData_pau8[3]), 8));
			//GlobalVariables.PrmAsw_gstruc.eff_perc_au16[2] := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[4]) + SHL(USINT_TO_WORD(UDSReadData_pau8[5]), 8));
	
		(* Handle the write operation at DID 0xC020 *)	
		16#C020:
			//GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[0] := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[0]) + SHL(USINT_TO_WORD(UDSReadData_pau8[1]), 8));
			//GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[1] := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[2]) + SHL(USINT_TO_WORD(UDSReadData_pau8[3]), 8));
			//GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[2] := WORD_TO_UINT(USINT_TO_WORD(UDSReadData_pau8[4]) + SHL(USINT_TO_WORD(UDSReadData_pau8[5]), 8));
	ELSE
			bds_uds_setCallbackStatus(1); (* E_NOK *)

	END_CASE
		
ELSE
	bds_uds_setCallbackStatus(1); (* E_NOK *)
	
END_IF	