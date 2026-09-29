(* --- Interface --- *)

VAR_GLOBAL
	PrmAsw_gstruc: struc_para;
	
	anValue_perc_gu8          : USINT;
	swtStatus_gu8             : USINT;
	can1RxDataboxCbkCntr_gu32 : UDINT;
END_VAR

VAR_GLOBAL CONSTANT
	PrmAsw_cgstruc: struc_para :=
	(
		fctPmp_s16       := 0,
    	listCtrlVlv_enu  := 1,
		nrCogs_s16       := 33,
		iSpSafout1_u16   := 500,
		iSpSafout2_u16   := 500,
		eff_perc_au16    := [ 10, 50, 90 ],
		nEngSpd_rpm_au16 := [ 500, 2000, 3500 ],
		PrmDbg_struc     :=
		(
			flgXcpOn_b          := FALSE,
			flgStoreDataToNvm_b := FALSE
		)
	);
 
	ErrMemMgr_nrDfesEntries_DU8           : USINT := 32;     (* Maximum number OF errors in DFES *)
    ErrMemMgr_stNoEntryAvl_DU8            : USINT := 255;      

    (* bit masks for error states *)
    ErrMemMgr_BitMaskErrDeactvNotSave_DU8 : BYTE := 16#01;   (* mask TO fetch Deactive errors which are NOT saved yet *)
    ErrMemMgr_BitMaskErrPrevActv_DU8      : BYTE := 16#10;   (* mask TO fetch previously active errors *)
    ErrMemMgr_BitMaskErrActv_DU8          : BYTE := 16#03;   (* mask TO fetch active errors *)
    ErrMemMgr_BitMaskErrDeactvSaved_DU8   : BYTE := 16#04;   (* mask TO fetch saved deactive errors *)
    ErrMemMgr_BitMaskErrSts_DU8           : BYTE := 16#FF;   (* default mask *)
    
    ErrMemMgr_nrMaxErrEntry_DU8           : BYTE := 27;      (* Max. number of entries, before deleting starts *)
END_VAR