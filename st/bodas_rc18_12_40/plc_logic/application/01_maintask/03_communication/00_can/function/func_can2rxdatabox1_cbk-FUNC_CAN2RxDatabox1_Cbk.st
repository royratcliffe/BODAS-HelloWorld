(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Function: FUNC_CAN2RxDatabox1_Cbk
 *
 * Author:  
 *
 * Description:
 * Callback for CAN2
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
FUNCTION FUNC_CAN2RxDatabox1_Cbk
VAR
    DataboxData_au8    : ARRAY[1..8] OF USINT;
    DataboxNumBytes_u8 : USINT;
END_VAR

(* --- Implementation --- *)
IF (0 = bds_can_getDatabox(bds_can_Chnl_te.BDS_CAN_2_D, 1, ADR(DataboxData_au8), ADR(DataboxNumBytes_u8))) THEN
    (* Data in array DataboxData_au8 are valid and can be evaluated.*)
    (* The number of received bytes is stored in variable DataboxNumBytes_au8.*)
    GlobalVariables.anValue_perc_gu8 := DataboxData_au8[1];
    GlobalVariables.swtStatus_gu8    := DataboxData_au8[2] AND 16#03;
    bds_can_sendData(bds_can_Chnl_te.BDS_CAN_2_D, 16#3, BDS_CAN_STD_DU8, 8, ADR(DataboxData_au8));
END_IF
