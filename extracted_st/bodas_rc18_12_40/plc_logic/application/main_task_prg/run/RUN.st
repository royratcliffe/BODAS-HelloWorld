(* --- Implementation --- *)
(******************************************************************************)
(**************************** CAN Wakeup Handling   ***************************)
(******************************************************************************)

(* resetInfo_s.rbr_UserDefined_u32 = 0x01 means that the Wakeup has happened via CAN via CAN Channel 1 *)
(* resetInfo_s.rbr_UserDefined_u32 = 0x04 means that the Wakeup has happened via CAN via CAN Channel 4 *)
IF((16#01 = INIT_PRG.ResetInfo_struc.rbr_UserDefined_u32) OR (16#04 = INIT_PRG.ResetInfo_struc.rbr_UserDefined_u32)) THEN

  bds_sys_cancelAltWakeup(); (* forces system state to go to POSTRUN *)

END_IF