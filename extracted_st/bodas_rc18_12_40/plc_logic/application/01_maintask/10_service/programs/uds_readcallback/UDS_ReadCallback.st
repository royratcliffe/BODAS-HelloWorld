(* --- Interface --- *)
FUNCTION UDS_ReadCallback
VAR_INPUT
	//a variable to which the content has to be written
	UDSReadData_pau8 : POINTER TO USINT;
END_VAR
VAR
	// variables for internal operations
	//data_au8 : ARRAY[0..8] OF BYTE;
	i: BYTE;
	DidValue_u16: UINT;
	set_u8: USINT;
	ret_secLevel:UINT;
	Level_pu16:POINTER TO UINT;
	ret_response:BOOL;
	temp_sec_level:BOOL;
	uPmpSnsr_mV_u16:UINT;
	fctPmp_s16:INT;
	stBrkSwt_u8:USINT;
	iPmpFwdAct_mA_u16:UINT;
	funcRet_u8: USINT;
	
	UDSReadData_pau8_poby : POINTER TO ARRAY[0..7] OF BYTE; 
	UDSReadData_pau8_by : ARRAY[0..7] OF BYTE;
	DID_0103_s32 : DINT;
	
	DiagChkLvlRet_u8 : USINT;
END_VAR

(* --- Implementation --- *)
(* Get the DID requested by tester present *)
bds_uds_GetActiveDid(ADR(DidValue_u16));

//bds_can_sendData(bds_can_Chnl_te.BDS_CAN_1_D, 5, BDS_CAN_EXD_DU8, 2, ADR(DidValue_u16));

//CASE DidValue_u16 OF

 // 16#C003, 16#D001, 16#D002:
	(* here check th security level *)
	//bds_sec_getLevel(BDS_SEC_ASW_INST_NAME_2_E, ADR(Level_pu16));
	//DiagChkLvlRet_u8 := UDS_Diag_ChkLvl(16#00000004, Level_pu16^);

//ELSE
	(* all levels allowed *)
	//bds_sec_getLevel(BDS_SEC_ASW_INST_NAME_1_E, ADR(Level_pu16));
	//DiagChkLvlRet_u8 := UDS_Diag_ChkLvl(16#FFFFFFFF, Level_pu16^);
	//DiagChkLvlRet_u8 := 0;

//END_CASE
IF( TRUE ) THEN 

//IF( NOT( USINT_TO_BOOL( DiagChkLvlRet_u8 ) ) ) THEN 
	CASE DidValue_u16 OF 
		(* Handle the read operation at DIDs *)
		(* Parameters *)
		16#C001:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := INT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.fctPmp_s16, 8));
				UDSReadData_pau8[0]  := INT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.fctPmp_s16);
				
		16#C002:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu, 8));
				UDSReadData_pau8[0]  := TO_BYTE(GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu);
				
		16#C003:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := INT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.nrCogs_s16, 8));
				UDSReadData_pau8[0]  := INT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.nrCogs_s16);
				
		16#01C7:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.iSpSafout1_u16, 8));
				UDSReadData_pau8[0]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.iSpSafout1_u16);
	
		16#01C8:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.iSpSafout2_u16, 8));
				UDSReadData_pau8[0]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.iSpSafout2_u16);
				
		16#D001:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[0]  := BOOL_TO_BYTE(GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgXcpOn_b);
				
		16#D002:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[0]  := BOOL_TO_BYTE(GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgStoreDataToNvm_b);
				
		16#C010:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.eff_perc_au16[0], 8));
				UDSReadData_pau8[0]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.eff_perc_au16[0]);
				UDSReadData_pau8[3]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.eff_perc_au16[1], 8));
				UDSReadData_pau8[2]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.eff_perc_au16[1]);
				UDSReadData_pau8[5]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.eff_perc_au16[2], 8));
				UDSReadData_pau8[4]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.eff_perc_au16[2]);
				
		16#C020:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[0], 8));
				UDSReadData_pau8[0]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[0]);
				UDSReadData_pau8[3]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[1], 8));
				UDSReadData_pau8[2]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[1]);
				UDSReadData_pau8[5]  := UINT_TO_BYTE(SHR(GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[2], 8));
				UDSReadData_pau8[4]  := UINT_TO_BYTE(GlobalVariables.PrmAsw_gstruc.nEngSpd_rpm_au16[2]);
				
		(* Process Values *)
		16#A001:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UINT_TO_BYTE(SHR(PRG_Inputs.uPmpSnsr_mV_u16, 8));
				UDSReadData_pau8[0]  := UINT_TO_BYTE(PRG_Inputs.uPmpSnsr_mV_u16);
		16#A002:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[0]  := INT_TO_BYTE(PRG_Outputs.st_BrkSwt_u8);	
		16#A003:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UDINT_TO_BYTE(SHR(PRG_Inputs.frqVehSnsr_Hz_u32, 8));
				UDSReadData_pau8[0]  := UDINT_TO_BYTE(PRG_Inputs.frqVehSnsr_Hz_u32);
		16#B001:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UINT_TO_BYTE(SHR(PRG_Outputs.no_CurrentK07_mA_u16, 8));
				UDSReadData_pau8[0]  := UINT_TO_BYTE(PRG_Outputs.no_CurrentK07_mA_u16);
		16#B002:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[0]  := PRG_Outputs.st_CtrlValve_u8;
		16#B003:
				bds_uds_setCallbackStatus(0); (* E_OK *)
				UDSReadData_pau8[1]  := UINT_TO_BYTE(SHR(PRG_Inputs.vWhlSpd_kph_u16, 8));
				UDSReadData_pau8[0]  := UINT_TO_BYTE(PRG_Inputs.vWhlSpd_kph_u16);
		ELSE
				bds_uds_setCallbackStatus(1); (* E_OK *)	
	
	END_CASE
ELSE
	bds_uds_setCallbackStatus(1); (* E_NOK *)
	
END_IF

