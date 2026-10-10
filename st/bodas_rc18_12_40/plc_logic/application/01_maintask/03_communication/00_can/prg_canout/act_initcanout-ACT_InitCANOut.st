(* --- Implementation --- *)
(* ----------------------------------------------------------------------- *)
(* --- Initialisation CAN signal based --- *)
(* ----------------------------------------------------------------------- *)
(* Set the Transmit I-PDU and corresponding groups (e.g. CCVS) as defined in eC *)
retSet_u16 := bds_can_setMsgGroup(ADR(bds_IPduGrpVctr_au8), ComConf_ComIPduGroup_ComIPduGroup_CAN_2_Tx, BOOL_TO_USINT(TRUE));
(* Set the Receive I-PDU and corresponding groups (e.g. EngCtrl1) as defined in eC *)
retSet_u16 := bds_can_setMsgGroup(ADR(bds_IPduGrpVctr_au8), ComConf_ComIPduGroup_ComIPduGroup_CAN_2_Rx, BOOL_TO_USINT(TRUE));
(* activate the groups *)
(* !!!*)
retStrt_u16 := bds_can_startAllMsgGroups(ADR(bds_IPduGrpVctr_au8), 1);
(* Send a STD CAN message on CAN 2 when in Ini *)
data_au8[1] := UINT_TO_USINT(retSet_u16);
data_au8[2] := UINT_TO_USINT(SHR(retSet_u16, 8));
data_au8[3] := UINT_TO_USINT(retStrt_u16);
data_au8[4] := UINT_TO_USINT(SHR(retStrt_u16, 8));
data_au8[5] := UINT_TO_USINT(i_statusNvmIni_u16);
data_au8[6] := UINT_TO_USINT(SHR(i_statusNvmIni_u16, 8));
data_au8[7] := BOOL_TO_USINT(GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgXcpOn_b);
data_au8[8] := BOOL_TO_USINT(GlobalVariables.PrmAsw_gstruc.PrmDbg_struc.flgStoreDataToNvm_b);
bds_can_sendData(bds_can_Chnl_te.BDS_CAN_2_D, 16#1, BDS_CAN_STD_DU8, 8, ADR(data_au8));
