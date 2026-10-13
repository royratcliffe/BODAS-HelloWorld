(* --- Implementation --- *)
(******************************************************************************)
(******************** Register UDS Callback  **********************************)
(******************************************************************************)
bds_uds_registerDidReadCallback(ADR(UDS_ReadCallback));
bds_uds_registerDidWriteCallback(ADR(UDS_WriteCallback));
bds_uds_registerRoutineF000Callback(ADR(UDS_RoutineCallback));
bds_uds_registerRoutineF001Callback(ADR(UDS_DefaultCallback));
