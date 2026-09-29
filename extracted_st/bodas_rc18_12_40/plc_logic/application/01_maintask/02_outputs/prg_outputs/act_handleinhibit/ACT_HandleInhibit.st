(* --- Implementation --- *)
(* Monitor battery voltage AND state OF inhibit            *
 * reset inhibit in CASE it was activated BY under voltage *
*)
(* Invert logic of flgStInhb_u8 *)
st_FlgInhActive_b := NOT( PRG_Inputs.st_FlgStInhb_u8 > 0 );

bds_sys_aiv(bds_sys_aiv_signal_te.UBAT_MON, ADR(no_UBatt_mV_u16));  (* battery supply voltage *)   

IF( no_UBatt_mV_u16 < 7000 ) THEN (* under voltage detection if the battery voltage is less than 7V *)
  st_FlgUnderUbat_b := TRUE;
END_IF
      
st_FlgUBatLowDetd_b := ( ( st_FlgInhActive_b )OR (6500  >  no_UBatt_mV_u16 ) );

(* Inhibit Reset (i.e. release outputs again after emergency stop) *)
st_FlgRstInh_b :=	st_FlgInhActive_b                   AND  (* Inhibit is active -> Outputs are disabled *)
					( 9000 <  no_UBatt_mV_u16 )         AND  (* Voltage is greater than x V *)
					( 0    =  PRG_Inputs.st_K21Inh_u8 ) AND  (* Inhibit inputs are in a legitimate state *)
					( 0    <> PRG_Inputs.st_K22Inh_u8 );     (* Inhibit inputs are in a legitimate state *)
					
(* Low Battery Reset (i.e. release outputs after low battery was detected) *)
st_FlgRstLowBatt_b :=	st_FlgInhActive_b           AND  (* Inhibit is not active *)  
						st_FlgOutpLocked_b          AND  (* Outputs are locked *)
						( 9000 < no_UBatt_mV_u16 );      (* Voltage is greater than x V *)
						
						
(* Debounce Reset *)
IF( st_FlgRstInh_b OR st_FlgRstLowBatt_b ) THEN  
	no_NrCycDebRst_u16 := no_NrCycDebRst_u16 + 1;
END_IF					


IF( 5 < no_NrCycDebRst_u16 ) THEN
	(* Reset inhibit (enables the output again) *)	
	bds_sys_resetINH();
	
	(* Re-Configure K08 as power supply FOR K13 Control valve *)
	diagParam_s.diFullDiag_l     := TRUE;
	diagParam_s.diCntlAndDiag_l  := FALSE;
	diagParam_s.diOpenLoadDetn_l := TRUE;
	diagParam_s.diNonHotSCDetn_l := FALSE;
	
	bds_outPwm_cfgDiag(bds_outPwm_signal_te.bds_outPwm_K08_E, diagParam_s);
	bds_outPwm_setDutyCycle(bds_outPwm_signal_te.bds_outPwm_K08_E, 1000);
	
	st_FlgUnderUbat_b  := FALSE;
	no_NrCycDebRst_u16 := 0;

ELSE
	;	
END_IF