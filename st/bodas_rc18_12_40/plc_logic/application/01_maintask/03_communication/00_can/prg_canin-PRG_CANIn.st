(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: PRG_CANIn
 *
 * Author:  
 *
 * Description:
 * Interface for CAN Receiving
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM PRG_CANIn
VAR
    (* Buffer for rx databoxes *)
    CAN1RxData_astruc : ARRAY[1..2] OF bds_can_DataboxData_ts;
    CAN2RxData_astruc : ARRAY[1..5] OF bds_can_DataboxData_ts;
    sigData_au8       : ARRAY[1..8] OF USINT; (* data ARRAY FOR CAN signal based data*)
END_VAR
VAR_OUTPUT
    o_rxActEngPercTq_u8 : USINT;
END_VAR

(* --- Implementation --- *)
(* ----------------------------------------------------------------------- *)
(* --- CAN signal based receive --- *)
(* ----------------------------------------------------------------------- *)
IF (0 = bds_can_receiveSignal(ComConf_ComSignal_ComSignal_ActualEngPercentTorque_xRx, ADR(sigData_au8), 0)) THEN
    (* Data is stored in sigData_au8. *)
    (* The signal ActualEngPercentTorque is 1 byte so copy the 1st byte and update the test variable.*)
    o_rxActEngPercTq_u8 := sigData_au8[1];
END_IF
