(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: PRG_CANOut
 *
 * Author:  
 *
 * Description:
 * Interface for CAN Transmitting
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM PRG_CANOut
VAR
(* Buffer for rx databoxes *)
CAN1RxData_astruc : ARRAY[1..2] OF bds_can_DataboxData_ts;
CAN2RxData_astruc : ARRAY[1..5] OF bds_can_DataboxData_ts;
	
bds_IPduGrpVctr_au8 : ARRAY[0..7] OF USINT;
retSet_u16 : UINT;
retStrt_u16 : UINT;

data_au8 : ARRAY[1..8] OF USINT;

dataTx_au8  : ARRAY[1..8] OF USINT;					(* data ARRAY FOR CAN legacy data*)
sigData_au8 : ARRAY[1..8] OF USINT;			        (* data ARRAY FOR CAN signal based data*)

END_VAR

VAR_INPUT
	i_statusNvmIni_u16   : UINT;
	i_iPmpFwdAct_mA_u16  : UINT;
	i_iPmpFwdSet_mA_u16  : UINT;
	i_CtrlValve_u8       : USINT;
	i_rxActEngPercTq_u8  : USINT;
	
	i_vWhlSpd_kph_u16 : INT;
	
	i_uPmpSnsr_mV_u16   : UINT;
	i_frqVehSnsr_Hz_u32 : UDINT;
	
	i_anValue_perc_u8 : USINT;

	i_stBrkSwt_u8 : USINT;
END_VAR

VAR_OUTPUT
	
END_VAR


(* --- Implementation --- *)
(* ----------------------------------------------------------------------- *)
(* --- CAN legacy transmit --- *)
(* ----------------------------------------------------------------------- *)

(* Send a cyclic STD CAN message ON CAN1 when in OsMain *)
bds_can_sendData( bds_can_Chnl_te.BDS_CAN_1_D, 16#2, BDS_CAN_STD_DU8, 0, 0 );

(* SnsrInp1 Tx *)
dataTx_au8[1] := UINT_TO_USINT( i_uPmpSnsr_mV_u16 );
dataTx_au8[2] := UINT_TO_USINT( SHR( i_uPmpSnsr_mV_u16, 8) );

dataTx_au8[3] := i_stBrkSwt_u8;

dataTx_au8[4] := UDINT_TO_USINT( i_frqVehSnsr_Hz_u32);
dataTx_au8[5] := UDINT_TO_USINT( SHR(i_frqVehSnsr_Hz_u32, 8));
dataTx_au8[6] := UDINT_TO_USINT( SHR(i_frqVehSnsr_Hz_u32, 16));
dataTx_au8[7] := UDINT_TO_USINT( SHR(i_frqVehSnsr_Hz_u32, 24));

dataTx_au8[8] := i_anValue_perc_u8;		(* to test if 0x18FF1128 is received - legacy*)

IF (0 = bds_can_sendData(bds_can_Chnl_te.BDS_CAN_2_D, 16#18FF2703, BDS_CAN_EXD_DU8, 8, ADR(dataTx_au8) ) )THEN
	(* ok, message is buffered and will be sent as fast as possible *)	
	;
END_IF

(* ELSE: error *)	

(* Outp1 Tx message from CAN dbc *)
(* Output currents *)
dataTx_au8[1] := UINT_TO_USINT(i_iPmpFwdAct_mA_u16);               (* LSB *)
dataTx_au8[2] := UINT_TO_USINT( SHR( i_iPmpFwdAct_mA_u16, 8 ) );   (* MSB *)

dataTx_au8[3] := UINT_TO_USINT( i_iPmpFwdSet_mA_u16 );
dataTx_au8[4] := UINT_TO_USINT(SHR( i_iPmpFwdSet_mA_u16, 8) );

dataTx_au8[5] := i_CtrlValve_u8;

dataTx_au8[6] := TO_USINT( GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu );		(* to test if the list DID C002 is received *)
dataTx_au8[7] := TO_USINT( INT_TO_WORD(GlobalVariables.PrmAsw_gstruc.nrCogs_s16) AND 16#FF);	(* to test if the no. of cogs DID C003 is received *)
dataTx_au8[8] := i_rxActEngPercTq_u8;  					                        (* to test if ComConf_ComSignal_ComSignal_ActualEngPercentTorque_xRx is received *)

IF( 0 = bds_can_sendData(bds_can_Chnl_te.BDS_CAN_2_D, 16#18FF2603, BDS_CAN_EXD_DU8, 8, ADR( dataTx_au8 ) ) ) THEN
  (* ok, message is buffered and will be sent as fast as possible *)
	;
END_IF

(* else: error *)

(* ----------------------------------------------------------------------- *)
(* --- CAN signal based transmit --- *)
(* ----------------------------------------------------------------------- *)

(* CCVS message FROM CAN dbc - out OF the 100 ms loop *)
(* Vehicle Speed *)
sigData_au8[1] := UINT_TO_USINT(i_vWhlSpd_kph_u16);
sigData_au8[2] := UINT_TO_USINT(SHR(i_vWhlSpd_kph_u16, 8));

IF( 0 = bds_can_sendSignal(ComConf_ComSignal_ComSignal_WheelBasedVehicleSpeed_xTx, ADR(sigData_au8), 0 ) ) THEN
  (* ok,message is sent on bus with updated signal data *)
  ;
END_IF

(* Parking Brake (Control Valve) *)
sigData_au8[1] := i_CtrlValve_u8;

IF( 0 = bds_can_sendSignal(ComConf_ComSignal_ComSignal_ParkingBrakeSwitch_xTx, ADR(sigData_au8), 0)) THEN
	(* ok,message is sent on bus with updated signal data *)
	;
END_IF

  