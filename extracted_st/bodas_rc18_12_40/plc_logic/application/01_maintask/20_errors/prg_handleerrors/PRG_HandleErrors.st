(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: PRG_HandleErrors
 *
 * Author:  
 *
 * Description:
 * Error Handling
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM PRG_HandleErrors

VAR_INPUT
	i_stPmpSnsrSigInvldErr_e   : bds_dsmCmn_fltLvl_te;
	i_stBrkSwtSigInvldErr_e    : bds_dsmCmn_fltLvl_te;
	i_uPmpSnsr_mV_u16          : UINT;
	i_frqVehSnsr_Hz_u32        : UINT;
	i_iPmpFwdAct_mA_u16        : UINT;
	i_vWhlSpd_kmh_u16          : UINT;
END_VAR

VAR
	chkResult_e : bds_dsmCmn_fltLvl_te;

	(* DFC type definitions *)
	DFC_bds_TiUpDwn0x8A03_ts : DFC_bds_TiUpDwn0x8A03;
	DFC_bds_TiUpDwn0x8A02_ts : DFC_bds_TiUpDwn0x8A02;
	DFC_bds_TiInRow0x8B02_ts : DFC_bds_TiInRow0x8B02;
	DFC_bds_TiUpDwn0x8A01_ts : DFC_bds_TiUpDwn0x8A01;
	DFC_bds_TiInRow0x8B01_ts : DFC_bds_TiInRow0x8B01;
	DFC_bds_TiInRow0x8B03_ts : DFC_bds_TiInRow0x8B03;
	DFC_bds_NoDeb0x8C01_ts   : DFC_bds_NoDeb0x8C01;
	DFC_bds_NoDeb0x8C03_ts   : DFC_bds_NoDeb0x8C03;
END_VAR
VAR CONSTANT
	COUNTR_DSMDEB_DU16 : UINT := 10;
END_VAR
(* --- Implementation --- *)
(* ----------------------------------------------------------------------- *)
(* --- Failures - DFCs ---*)
(* ----------------------------------------------------------------------- *)
(* --- DTC 0x8A02 ---*)
(* Report error (DFC): Pump sensor signal invalidity error *)
bds_dsmDTC_updateErr(DFC_bds_TiUpDwn0x8A02_ts.DTC, i_stPmpSnsrSigInvldErr_e, (COUNTR_DSMDEB_DU16 * 1000)); (* 10msec := 10*1000usec *)

(* --- DTC 0x8B02 ---*)
(* Report error (DFC): Break switch signal invalidity error *)
bds_dsmDTC_updateErr(DFC_bds_TiInRow0x8B02_ts.DTC, i_stBrkSwtSigInvldErr_e, (COUNTR_DSMDEB_DU16 * 1000));  (* 10msec := 10*1000usec *)

(* --- DTC 0x8A01 ---*)
(* check IF error condition is fulfilled *)
IF (500 > i_uPmpSnsr_mV_u16) THEN
   (* error *)
   chkResult_e := bds_dsmCmn_fltLvl_100_Perc_e;

ELSE
   (* ok *)
   chkResult_e := bds_dsmCmn_fltLvl_0_Perc_e;

END_IF

(* report error (DFC) *)
 bds_dsmDTC_updateErr(DFC_bds_TiUpDwn0x8A01_ts.DTC, chkResult_e, (COUNTR_DSMDEB_DU16 * 1000)); (*10msec := 10*1000usec*)

(* --- DTC 0x8A03 ---*)
(* check IF error condition is fulfilled *)
IF (8000 < i_frqVehSnsr_Hz_u32) THEN
   (* error *)
   chkResult_e := bds_dsmCmn_fltLvl_100_Perc_e;

ELSE
   (* ok *)
   chkResult_e := bds_dsmCmn_fltLvl_0_Perc_e;

END_IF

(* report error (DFC) *)
bds_dsmDTC_updateErr(DFC_bds_TiUpDwn0x8A03_ts.DTC, chkResult_e, (COUNTR_DSMDEB_DU16 * 1000)); (* 10msec := 10*1000usec *)

(* --- DTC 0x8B01 ---*)
(* check IF error condition is fulfilled *)
IF( 3000 < i_iPmpFwdAct_mA_u16 ) THEN
   (* error *)
   chkResult_e := bds_dsmCmn_fltLvl_100_Perc_e;

ELSE
   (* ok *)
   chkResult_e := bds_dsmCmn_fltLvl_0_Perc_e;
   
END_IF

(* report error (DFC) *)
bds_dsmDTC_updateErr(DFC_bds_TiInRow0x8B01_ts.DTC, chkResult_e, (COUNTR_DSMDEB_DU16 * 1000)); (* 10msec := 10*1000usec *)

(* --- DTC 0x8B03 ---*)
IF (40 < i_vWhlSpd_kmh_u16) THEN
   (* error *)
   chkResult_e := bds_dsmCmn_fltLvl_100_Perc_e;

ELSE
   (* ok *)
   chkResult_e := bds_dsmCmn_fltLvl_0_Perc_e;

END_IF

(* report error (DFC) *)
bds_dsmDTC_updateErr(DFC_bds_TiInRow0x8B03_ts.DTC, chkResult_e, (COUNTR_DSMDEB_DU16 * 1000)); (* 10msec := 10*1000usec *)

(* --- DTC 0x8C01 ---*)
(* check IF error condition is fulfilled *)
IF ( 8 < GlobalVariables.PrmAsw_gstruc.fctPmp_s16 ) THEN
   (* error *)
   chkResult_e := bds_dsmCmn_fltLvl_100_Perc_e;
   
ELSE
   (* ok *)
   chkResult_e := bds_dsmCmn_fltLvl_0_Perc_e;

END_IF

(* report error (DFC) *)
bds_dsmDTC_updateErr(DFC_bds_NoDeb0x8C01_ts.DTC, chkResult_e, (COUNTR_DSMDEB_DU16 * 1000));

(* --- DTC 0x8C03 ---*)
(* check IF error condition is fullfilled *)
IF( 40 < GlobalVariables.PrmAsw_gstruc.nrCogs_s16 ) THEN
   (* error *)
   chkResult_e := bds_dsmCmn_fltLvl_100_Perc_e;

ELSE
   (* ok *)
   chkResult_e := bds_dsmCmn_fltLvl_0_Perc_e;
   
END_IF

(* report error (DFC) *)
bds_dsmDTC_updateErr(DFC_bds_NoDeb0x8C03_ts.DTC, chkResult_e, (COUNTR_DSMDEB_DU16 * 1000));