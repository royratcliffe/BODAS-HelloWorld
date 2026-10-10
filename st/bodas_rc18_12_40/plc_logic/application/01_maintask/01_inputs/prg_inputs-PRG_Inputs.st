(* --- Interface --- *)
(*********************************************************************************************************************
 *     __   __   ___  ___           __   __        __   __  ___
 *   /_ / /  / /__  /    /__/     /_ / /_   |_ / /_ / /  /  /  /__/
 *  /__/ /__/ __ / /__  /  /     /  | /__  /  | /  | /__/  /  /  /
 *
 * Project: Hello World for ml290.rts
 *
 * Program: PRG_Inputs
 *
 * Author:  
 *
 * Description:
 * Interface for the hardware inputs to the application
 *
 * (c) Copyright by BOSCH REXROTH AG, all rights reserved
 *
 *********************************************************************************************************************)
PROGRAM PRG_Inputs
VAR_INPUT
    i_TaskCycleTime_ms_u16 : UINT;
END_VAR
VAR
    st_K21Inh_u8           : USINT;
    st_K22Inh_u8           : USINT;
    st_FlgStInhb_u8        : USINT;
    bds_inPwm_getFrqPwm_s  : bds_inPwm_frqMeasmt_ts;
    FrqP_Hz_10_u32         : UDINT;                (* frequency [0.1Hz] *)
    Tmp_u32                : UDINT;                (* temporary *)
    stPmpSnsrU_struc       : bds_inU_measmt_ts;    (*structure FOR Pump sensor voltage measurement *)
    uPmpSnsr_mV_u16        : UINT;                 (* voltage [mV], ECU pin K52 *)
    stPmpSnsrSigInvldErr_e : bds_dsmCmn_fltLvl_te; (* status of error: PmpSnsr *)
    (* K78 � DIG, BrkSwitch - read as AIV *)
    stBrkSwtU_struc       : bds_inU_measmt_ts;    (* structure FOR Brake switch voltage measurement *)
    uBrkSwt_mV_u16        : UINT;                 (* voltage [mV], ECU pin K78 *)
    stBrkSwt_u8           : USINT;                (* status OF break switch, ECU pin K78 *)
    stBrkSwtSigInvldErr_e : bds_dsmCmn_fltLvl_te; (* status OF error: BrkSwt *)
    (* K54_VI � FREQ, VehSensor *)
    stVehSnsrFrq_struc : bds_inPwm_frqMeasmt_ts; (*structure FOR vehicle sensor frequency measurement *)
    frqVehSnsr_Hz_u32  : UDINT;                  (* frequency [Hz], ECU pin K54_VI *)
    vWhlSpd_kph_u16    : UINT;                   (* vehicle speed [km/h] *)
    (* K37 and K41 - DST Sensor *)
    SpdSnsrDST1_struc         : bds_snsrDst_getSpdAndDir_ts;
    SpdSnsrDST1_inst_enu      : bds_snsrDst_inst_te;
    SpdSnsrDST1_dRpm_u32      : UDINT;
    SpdSnsrDST1_rotDir_enu    : bds_snsrDst_dir_te;
    SpdSnsrDST1Temp_struc     : bds_snsrDst_getTemp_ts;
    SpdSnsrDST1_temp_degC_s32 : DINT;
    (* PR4SENTSnsr - BDL *)
    PR4Snsr_getP_struc : bds_snsrPr4_getPressure_ts;
    PR4SnsrP_u16       : UINT;
    PR4Snsr_getT_struc : bds_snsrPr4_getTemp_ts;
    PR4SnsrT_s32       : DINT;
END_VAR
VAR_OUTPUT
    o_T15_st_u8 : USINT;
END_VAR
VAR CONSTANT
    PI_no_100_u16         : UINT := 314;
    Rad_m_u16             : UINT := 1;
    PR4SnsrPCalcY1Fact    : UINT := 193;
    PR4SnsrPCalcY2Y1Fact  : UINT := 3703;
    PR4SnsrPCalcX2X1Range : UINT := 50;
    PR4SnsrTCalcX1Fact    : UINT := 200;
    PR4SnsrTCalcY2Y1Fact  : UINT := 4088;
    PR4SnsrTCalcX2X1Range : UINT := 511;
END_VAR

(* --- Implementation --- *)
(* Inhibit active at low battery voltage *)
(* get the states of inhibits*)
bds_in_di(bds_in_di_signal_te.K21, ADR(st_K21Inh_u8));
bds_in_di(bds_in_di_signal_te.K22, ADR(st_K22Inh_u8));
(* get a state of the inhibit signal *)
bds_sys_di(bds_sys_di_signal_te.ST_INH, ADR(st_FlgStInhb_u8));
(* get state of T15 *)
bds_sys_getT15(ADR(o_T15_st_u8));
(* ----------------------------------------------------------------------- *)
(* --- Read inputs ---*)
(* ----------------------------------------------------------------------- *)
(* PumpSensor - voltage *)
(* Get the voltage value of input signal K52 *)
stPmpSnsrU_struc := bds_inU_get(bds_inU_signal_te.bds_inU_K52_E);

(* get the measured voltage on selected input signal *)
IF (bds_inCmn_ok_E = stPmpSnsrU_struc.status_e) THEN
    (* save the actual voltage into local variable *)
    uPmpSnsr_mV_u16 := stPmpSnsrU_struc.u_mV_u16;
    (* Report no error *)
    stPmpSnsrSigInvldErr_e := bds_dsmCmn_fltLvl_0_Perc_e;
ELSE
    (* Report an error *)
    stPmpSnsrSigInvldErr_e := bds_dsmCmn_fltLvl_100_Perc_e;
    (* BrkSwitch - as digital *)
    (* Get the voltage value of input signal K78 *)
    stBrkSwtU_struc := bds_inU_get(bds_inU_signal_te.bds_inU_K78_E);

    (* get the measured voltage on selected input signal *)
    IF (bds_inCmn_ok_E = stBrkSwtU_struc.status_e) THEN
        (* save the actual voltage into local variable *)
        uBrkSwt_mV_u16 := stBrkSwtU_struc.u_mV_u16;
        (* Report no error *)
        stBrkSwtSigInvldErr_e := bds_dsmCmn_fltLvl_0_Perc_e;
    ELSE
        (* Report an error *)
        stBrkSwtSigInvldErr_e := bds_dsmCmn_fltLvl_100_Perc_e;
    END_IF
END_IF

(* VehSensor - frequency *)
(* Get the pwm frequency value of input signal K54 *)
stVehSnsrFrq_struc := bds_inPwm_getFrq(bds_inPwm_signal_te.bds_inPwm_K54_E);

(* get the actual pwm frequency on selected input signal *)
IF (bds_inCmn_ok_E = stVehSnsrFrq_struc.status_e) THEN
    (* save the actual pwm times AND counter into local variable *)
    FrqP_Hz_10_u32 := stVehSnsrFrq_struc.frq_dHz_u32;
    (*convert into Hz *)
    FrqP_Hz_10_u32 := FrqP_Hz_10_u32 + 5;  (* rounding the value *)
    Tmp_u32        := FrqP_Hz_10_u32 / 10; (* convert in Hz *)
    FrqP_Hz_10_u32 := MIN(Tmp_u32, 16#FFFF);
ELSE
    (* Report no error *)
    (* stVehSnsrSigInvldErr_u16 := BDS_DSM_FAULT_PERCENT_00_DU8; *)
END_IF

(* ----------------------------------------------------------------------- *)
(* --- BODASDriver library (BDL) *)
(* ----------------------------------------------------------------------- *)
(* ----------------------------------------------------------------------- *)
(* --- Rotation Speed Sensor (DST)*)
(* ----------------------------------------------------------------------- *)
SpdSnsrDST1_struc := bds_snsrDst_getSpdAndDir(bds_snsrDst_inst_te.SpdSnsr_E);

(* check the return status of API function call *)
IF (bds_snsrDst_ok_E = SpdSnsrDST1_struc.statusApi_e) THEN
    (* save the actual wheel speed and rotation direction *)
    SpdSnsrDST1_dRpm_u32   := SpdSnsrDST1_struc.spd_dRpm_u32;
    SpdSnsrDST1_rotDir_enu := SpdSnsrDST1_struc.dir_e;
END_IF

(* BDL API function call for temperature *)
SpdSnsrDST1Temp_struc := bds_snsrDst_getTemp(bds_snsrDst_inst_te.SpdSnsr_E);

(* check the return status of API function call *)
IF (bds_snsrDst_ok_E = SpdSnsrDST1Temp_struc.statusApi_e) THEN
    (* save the actual temperature in degree celsius *)
    SpdSnsrDST1_temp_degC_s32 := SpdSnsrDST1Temp_struc.temp_degC_s32;
END_IF

(***************************************************************)
(*  PR4SENTSnsr                              				   *)
(***************************************************************)
(* BDL API function call to get pressure *)
PR4Snsr_getP_struc := bds_snsrPr4_getPressure(bds_snsrPr4_inst_te.pSnsr_E);

(* check the return status of API function call *)
IF (bds_snsrPr4_ok_E = PR4Snsr_getP_struc.stsApi_e) THEN
    (* save the actual wheel speed and rotation direction *)
    PR4SnsrP_u16 := PR4Snsr_getP_struc.pressure_dBar_u16;
END_IF

(* BDL API function call to get temperature*)
PR4Snsr_getT_struc := bds_snsrPr4_getTemp(bds_snsrPr4_inst_te.pSnsr_E);

(* check the return status of API function call *)
IF (bds_snsrPr4_ok_E = PR4Snsr_getT_struc.stsApi_e) THEN
    (* save the actual temperature in degree celsius *)
    PR4SnsrT_s32 := PR4Snsr_getT_struc.temp_degC_s32;
END_IF

(* ----------------------------------------------------------------------- *)
(* --- Processing of inputs and outputs ---*)
(* ----------------------------------------------------------------------- *)
(* Brake switch status evaluation: Maximum threshold 2.2V and Minimum Threshold 0.8V *)
IF ((uBrkSwt_mV_u16 > 2200) AND (uBrkSwt_mV_u16 < 5200)) THEN
    stBrkSwt_u8 := 1;
ELSIF (uBrkSwt_mV_u16 < 800) THEN
    stBrkSwt_u8 := 0;
ELSE
    (* do nothing *)
    ;
END_IF

(* Calculate vehicle speed *)
Tmp_u32 := frqVehSnsr_Hz_u32 * 3600 * 2 * PI_no_100_u16 * Rad_m_u16 / 1000 / 100;
(*Tmp_r := ROUND((float)frqVehSnsr_Hz_u32 * (float32)3600 * ((float32)2 * Pi_DF32 * (float32)r_DU16) / (float32)1000);
*)
(* Vehicle speed [CCVS] based on frq. [K54_VI] depending on #cogs [0xC003] *)
vWhlSpd_kph_u16 := DINT_TO_UINT(UDINT_TO_DINT(Tmp_u32) / GlobalVariables.PrmAsw_gstruc.nrCogs_s16);
