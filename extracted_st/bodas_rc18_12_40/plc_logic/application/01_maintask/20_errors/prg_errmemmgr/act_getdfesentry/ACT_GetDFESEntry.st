(* --- Implementation --- *)
(* Action: ErrMemMgr_getDfesEntr *)

(* global variable DFES_numEntryAvl not available *)
//bds_dsm_getNumErrors( BDS_DSM_SET_FAILED_SINCE_CLEAR_MASK_DU16, ADR( DFES_numEntryAvl ) );
//appl_errList_s := bds_dsmDTC_getErrList(bds_dsmCmn_setFailedClrMsk_DU16, TRUE); 
//DFES_numEntryAvl := appl_errList_s.nrErr_u8;
bds_dsm_getErrors(BDS_DSM_SET_FAILED_SINCE_CLEAR_MASK_DU16 ,TRUE,32,ADR(DFES_numEntryAvl),ADR(dfc_as));

(* check the DFES for error entries *)
IF(DFES_numEntryAvl>0) THEN
	FOR cntrDfes_u8 := 0 TO ( UINT_TO_USINT( DFES_numEntryAvl ) - 1 ) DO
		ErrMemMgr_s.dtc_error_au32[cntrDfes_u8] := 0;
		ErrMemMgr_s.stDfes_au8[cntrDfes_u8]     := 0;
		ErrMemMgr_s.dfc_s.id                    := 0;
	
		idxActEntry_u8        := ErrMemMgr_stNoEntryAvl_DU8;
		idxFirstEmptyEntry_u8 := ErrMemMgr_stNoEntryAvl_DU8;
	
		(* get error status of DFES entries *)
		//ErrMemMgr_s.stDfes_au8[cntrDfes_u8] := (SHR(iDFC_st[iDFES_numDFC[cntrDfes_u8]], 3)) AND ErrMemMgr_BitMaskErrSts_DU8;
	dsmDTC_getStatus_s                  := bds_dsmDTC_getStatus(dfc_as[cntrDfes_u8].id);
	ErrMemMgr_s.stDfes_au8[cntrDfes_u8] := TO_USINT( dsmDTC_getStatus_s.errState_e );
	//bds_dsm_getDFC_Status(dfc_active_as[cntrDfes_u8],ADR(status_u16)); 
	//ErrMemMgr_s.stDfes_au8[cntrDfes_u8]:= UINT_TO_USINT(status_u16);
		IF( ErrMemMgr_s.stDfes_au8[cntrDfes_u8] <> 0 ) THEN (* DFES entry with error status found *)
			ErrMemMgr_s.nrDfesEntr_u8 := ErrMemMgr_s.nrDfesEntr_u8 + 1;
			ErrMemMgr_s.dfc_s.id      := dfc_as[cntrDfes_u8].id;
			ErrMemMgr_s.dfc_s.debmode := dfc_as[cntrDfes_u8].debmode;
	
			(* returns the DTC of a specified DFC *)
			ErrMemMgr_s.status_au16[cntrDfes_u8] := bds_dsm_getDTC_DFC(ErrMemMgr_s.dfc_s, ADR( ErrMemMgr_s.dtc_error_au32[cntrDfes_u8] ) );
			
			(* compare DTC with application buffer *)
			FOR cntrApplBuf_u8 := 0 TO ErrMemMgr_nrDfesEntries_DU8 - 1 DO
				(* check in application buffer if DTC is already listed *)
				IF (ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[cntrApplBuf_u8].idxPrevActvDfes_u32 = ErrMemMgr_s.dtc_error_au32[cntrDfes_u8]) AND (idxActEntry_u8 = ErrMemMgr_stNoEntryAvl_DU8) THEN
					idxActEntry_u8 := cntrApplBuf_u8; (* entry already available in application buffer *)
				
				ELSIF (ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[cntrApplBuf_u8].idxPrevActvDfes_u32 = 0) AND (idxFirstEmptyEntry_u8 = ErrMemMgr_stNoEntryAvl_DU8) THEN
					idxFirstEmptyEntry_u8 := cntrApplBuf_u8; (* first empty entry in application buffer *)
				ELSE
					;	(* entry not interesting *)
				END_IF;
			END_FOR;
			
			(* logic applied to get the previously active or deactive DTCs *)
			IF (((ErrMemMgr_s.stDfes_au8[cntrDfes_u8] )  = bds_dsmCmn_stErrDeactv_e)    OR    (* Saved Errors *)
				((ErrMemMgr_s.stDfes_au8[cntrDfes_u8] )  = bds_dsmCmn_stErrPrevActv_e)  OR    (* Previously active errors (errors which healed during ECU-Reset) *)
				((ErrMemMgr_s.stDfes_au8[cntrDfes_u8] ) <> bds_dsmCmn_stErrActv_e)      AND   (* No active error (can be saved and active (Bit-Mask 0x07) *)
				(idxActEntry_u8 = ErrMemMgr_stNoEntryAvl_DU8) AND (idxFirstEmptyEntry_u8 <> ErrMemMgr_stNoEntryAvl_DU8)) THEN   (*  no actual entry available and empty entry in buffer available *)
			
				(* collecting the previously active or deactive DTCs into application buffer *)
				ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[idxFirstEmptyEntry_u8].idxPrevActvDfes_u32 := ErrMemMgr_s.dtc_error_au32[cntrDfes_u8];
				ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[idxFirstEmptyEntry_u8].tiStamp_min_u32 := bds_sys_getAge();
			(* check DTCs if it is active again *)
			ELSIF ((ErrMemMgr_s.stDfes_au8[cntrDfes_u8]) = bds_dsmCmn_stErrActv_e) AND (* Active error *)
				  (idxActEntry_u8 <> ErrMemMgr_stNoEntryAvl_DU8) THEN                  (* actual entry available in buffer *)
				  
				(*remove the active DTCs from the application buffer so as to hold only previously active or deactive DTCs*)
				ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[idxActEntry_u8].idxPrevActvDfes_u32 := 0;
				ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[idxActEntry_u8].tiStamp_min_u32     := 0;
			ELSE
				; (* no error in DFES entry *)	
			END_IF;
		END_IF;
	END_FOR;
END_IF