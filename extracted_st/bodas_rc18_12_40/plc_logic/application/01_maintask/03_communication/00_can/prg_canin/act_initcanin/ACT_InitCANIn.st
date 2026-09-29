(* --- Implementation --- *)
(* ----------------------------------------------------------------------- *)
(* --- Initialisation CAN legacy receive --- *)
(* ----------------------------------------------------------------------- *)
//bds_can_initRxDatabox(BDS_CAN_1_D, 1, 16#5, BDS_CAN_STD_DU8, 8, ADR(CAN1RxData_astruc), 1, ADR(FUNC_Can1RxDatabox1_Cbk));
bds_can_initRxDatabox(bds_can_Chnl_te.BDS_CAN_2_D, 1, 16#18FF1128, BDS_CAN_EXD_DU8, 8, ADR(CAN2RxData_astruc), 1, ADR(FUNC_Can2RxDatabox1_Cbk));
