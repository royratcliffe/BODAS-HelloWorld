(* --- Implementation --- *)
(******************************************************************************)
(******************** Initialization: General System***************************)
(******************************************************************************)

(* --> debug: get reset info AND send it via CAN *)
bds_sys_getResetInfo(ADR(ResetInfo_struc)); (* reads the reset information of ECU *)
bds_can_sendData(bds_can_Chnl_te.BDS_CAN_2_D, 16#10001, BDS_CAN_EXD_DU8, 2, ADR(ResetInfo_struc.rbr_Grp_u16));
bds_can_sendData(bds_can_Chnl_te.BDS_CAN_2_D, 16#10002, BDS_CAN_EXD_DU8, 2, ADR(ResetInfo_struc.rbr_Type_u16));

ResetInfoData_au32[0] := ResetInfo_struc.rbr_UserDefined_u32;
bds_can_sendData(bds_can_Chnl_te.BDS_CAN_2_D, 16#10003, BDS_CAN_EXD_DU8, 4, ADR(ResetInfoData_au32));

(* debug <-- *)
(* ASW name AND HW-ID *)
bds_sys_applSwName(ADR(ApplSwName_str)); (* RC27-18/40 w/o Ethernet for others see the BSW manual *) 

(* UUID (Byte 1..16) 392a682f-06fb-41eb-8b25-9b7ee48892f3 + major version (Byte 17) and minor version (Byte 18) *)
(* Defined in BODAS-service Editor *)
UDSUUID_no_au8[1]  := 16#39;
UDSUUID_no_au8[2]  := 16#2A;
UDSUUID_no_au8[3]  := 16#68;
UDSUUID_no_au8[4]  := 16#2F;
UDSUUID_no_au8[5]  := 16#06;
UDSUUID_no_au8[6]  := 16#FB;
UDSUUID_no_au8[7]  := 16#41;
UDSUUID_no_au8[8]  := 16#EB;
UDSUUID_no_au8[9]  := 16#8B;
UDSUUID_no_au8[10] := 16#25;
UDSUUID_no_au8[11] := 16#9B;
UDSUUID_no_au8[12] := 16#7E;
UDSUUID_no_au8[13] := 16#E4;
UDSUUID_no_au8[14] := 16#88;
UDSUUID_no_au8[15] := 16#92;
UDSUUID_no_au8[16] := 16#F3;
(* version *)
UDSUUID_no_au8[17] := 16#01; (* major version *)
UDSUUID_no_au8[18] := 16#23; (* minor version *)

(* Set UDS UUID for the BODAS-service App *)
bds_uds_setUUID(ADR(UDSUUID_no_au8[1]), 16);

(* Postrun and CAN Wakeup *)
bds_sys_requestPostRunProlong(); (* request for prolong in postrun *)

(* Enable writing and forcing *)
bds_codesys_setForcingWritingMode(16#FFFF);