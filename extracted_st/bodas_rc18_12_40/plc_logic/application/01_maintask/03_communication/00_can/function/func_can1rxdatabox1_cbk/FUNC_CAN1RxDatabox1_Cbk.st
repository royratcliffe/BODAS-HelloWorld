(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * FUNC: FUNC_CAN1RxDatabox1_Cbk
 *
 * Author:  
 *
 * Description:
 * Callback for CAN1
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
FUNCTION FUNC_CAN1RxDatabox1_Cbk
VAR

END_VAR

(* --- Implementation --- *)
GlobalVariables.can1RxDataboxCbkCntr_gu32 := GlobalVariables.can1RxDataboxCbkCntr_gu32 + 1;