(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: PRG_ISOBUSJ1939
 *
 * Author:  
 *
 * Description:
 * Interface for ISOBUS
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM PRG_ISOBUSJ1939
VAR
	dataJ1939Inst_as : ARRAY[1..enu_IsobusJ1939_IsobusInst.IsobusJ1939_IsobusInstMax_E] OF bds_isobus_appInst_ts;
	
	dataTxBufDataBoxes1_as : ARRAY[1..enu_IsobusJ1939_TxInst1Box.IsobusJ1939_TxInst1BoxMax_E] OF bds_isobus_txMsg_ts;
	dataRxBufDataBoxes1_as : ARRAY[1..enu_IsobusJ1939_RxInst1Box.IsobusJ1939_RxInst1BoxMax_E] OF bds_isobus_rxMsg_ts;
	
	dataTxBufDataBoxes2_as : ARRAY[1..enu_IsobusJ1939_TxInst2Box.IsobusJ1939_TxInst2BoxMax_E] OF bds_isobus_txMsg_ts;
	dataRxBufDataBoxes2_as : ARRAY[1..enu_IsobusJ1939_RxInst2Box.IsobusJ1939_RxInst2BoxMax_E] OF bds_isobus_rxMsg_ts;
	
	dataTxBufDataBoxes3_as : ARRAY[1..enu_IsobusJ1939_TxInst3Box.IsobusJ1939_TxInst3BoxMax_E] OF bds_isobus_txMsg_ts;
	dataRxBufDataBoxes3_as : ARRAY[1..enu_IsobusJ1939_RxInst3Box.IsobusJ1939_RxInst3BoxMax_E] OF bds_isobus_rxMsg_ts;
	
	dataJ1939Dm1Failrs_as : ARRAY[1..86] OF bds_isobus_dtcList_ts ; (* failure list struct-array *)
END_VAR

(* --- Implementation --- *)
;