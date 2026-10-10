(* --- Interface --- *)
(*********************************************************************************************************************
*    __   __   ___  ___           __   __        __   __  ___
*   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
*  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
*
* Project: Hello World for ml290.rts
*
* Program: PRG_Outputs
*
* Author: 
*
* Description:
* Interface for the hardware outputs to the application
*
* (c) Copyright by BOSCH REXROTH AG, all rights reserved
*
*********************************************************************************************************************)
PROGRAM PRG_Outputs
VAR_INPUT
    i_UPumpSensr_mV_u16 : UINT;
END_VAR
VAR
    diagParam_s             : bds_outCmn_diagParam_ts;
    bds_outPwm_retGet_s     : bds_outPwm_get_ts; (* PWM output status *)
    no_UBatt_mV_u16         : UINT;
    st_FlgInhActive_b       : BOOL;
    st_FlgUBatLowDetd_b     : BOOL;
    st_FlgUBatLowDetdPrev_b : BOOL;
    st_FlgOutpLocked_b      : BOOL;
    st_FlgUnderUbat_b       : BOOL;
    st_FlgRstInh_b          : BOOL;
    st_FlgRstLowBatt_b      : BOOL;
    no_NrCycDebRst_u16      : UINT;
    no_CurrentK07_mA_u16    : UINT;
    iPmpFwdSet_mA_u16       : UINT;
    st_CurStK07_u8          : USINT;
    no_UPumpSensr_mV_u16    : UINT;
    st_CtrlValve_u8         : USINT;
    st_BrkSwt_u8            : USINT;
    MngInh_struc            : struc_MngInhb;
    PHMDL_CHNL1             : UINT := (UDINT_TO_UINT(PHMDL) OR UDINT_TO_UINT(CHNL1));
END_VAR
VAR CONSTANT
    st_ENotOk_cby    : BYTE := 16#01;
    st_StdHigh_cby   : BYTE := 16#01;
    st_StdLow_cby    : BYTE := 16#00;
    st_StdActive_cby : BYTE := 16#01;
    st_StdIdle_cby   : BYTE := 16#00;
    st_StdOn_cby     : BYTE := 16#00;
    st_StdOff_cby    : BYTE := 16#01;
END_VAR

(* --- Implementation --- *)
(* Inhibit handling *)
ACT_HandleInhibit();
(* PropValve - read actual current *)
bds_outPwm_retGet_s := bds_outPwm_get(bds_outPwm_signal_te.bds_outPwm_K07_E);

(* check return state of BDS-Function call *)
IF (bds_outCmn_ok_E = bds_outPwm_retGet_s.statusApi_e) THEN
    (* Call successful, signal is valid *)
    ;
ELSE
    (* error handling *)
    no_CurrentK07_mA_u16 := bds_outPwm_retGet_s.iAct_mA_u16;
END_IF

(* Calculate set current *)
(* PropValve [K07]= PmpSensor [K52] * Factor [parameter DID 0xC001] *)
iPmpFwdSet_mA_u16 := i_UPumpSensr_mV_u16 * INT_TO_UINT(GlobalVariables.PrmAsw_gstruc.fctPmp_s16);

(* Calculate set state *)
(* CtrlValve [K12] = BrkSwitch [K78] | List [DID 0xC002] *)
CASE (GlobalVariables.PrmAsw_gstruc.listCtrlVlv_enu) OF
enu_listCtrlVlv.st_fctOff_cenu: st_CtrlValve_u8   := st_StdIdle_cby;
enu_listCtrlVlv.st_fctOnPos_cenu: st_CtrlValve_u8 := st_BrkSwt_u8;
enu_listCtrlVlv.st_fctOnNeg_cenu: IF (NOT (0 = st_BrkSwt_u8)) THEN
        st_CtrlValve_u8 := st_StdIdle_cby;
    ELSE
        st_CtrlValve_u8 := st_StdActive_cby;
    END_IF
    ELSE
        ;
END_CASE

(* ----------------------------------------------------------------------- *)
(* --- Set outputs ---*)
(* ----------------------------------------------------------------------- *)
(* Set outputs only when inhibit is not active *)
(* PropValve *)
bds_outPwm_cfgMode(bds_outPwm_signal_te.bds_outPwm_K07_E, bds_outMode_CLCC_E);   (* Configure K07 as closed loop current control *)
bds_outPwm_setCurrent(bds_outPwm_signal_te.bds_outPwm_K07_E, iPmpFwdSet_mA_u16); (* Set current set point for proportional valve *)
(* CtrlValve *)
bds_outDig_set(bds_outDig_signal_te.bds_outDig_K13_E, (st_CtrlValve_u8 > 0));
(* Safout *)
bds_out_po_cfg(bds_out_po_signal_te.K09, STD_ON);                                                (* Configure K09 as closed loop current control *)
bds_out_po_cfg(bds_out_po_signal_te.K73, STD_ON);                                                (* Configure K73 as closed loop current control *)
bds_safout(PHMDL_CHNL1, bds_out_po_signal_te.K09, GlobalVariables.PrmAsw_gstruc.iSpSafout1_u16); (* Safout - HS1 *)
bds_safout(PHMDL_CHNL1, bds_out_po_signal_te.K73, GlobalVariables.PrmAsw_gstruc.iSpSafout2_u16); (* Safout - HS2 *)
