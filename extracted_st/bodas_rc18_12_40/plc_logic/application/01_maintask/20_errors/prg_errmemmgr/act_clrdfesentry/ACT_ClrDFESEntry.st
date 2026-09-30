(* --- Implementation --- *)
(* Action: ErrMemMgr_clrDfesEntr *)
idxActEntry_u8 := ErrMemMgr_stNoEntryAvl_DU8; (* Actual index entry *)
(* delete DTCs when maximum number of entries are exceeded *)
IF ErrMemMgr_s.nrDfesEntr_u8 > ErrMemMgr_nrMaxErrEntry_DU8 THEN
    ErrMemMgr_s.tiOldStamp_u32 := 16#FFFFFFFF;
    (* delete DTCs when maximum number of entries are exceeded *)
    FOR cntrApplBuf_u8 := 0 TO ErrMemMgr_nrDfesEntries_DU8 - 1 DO
        IF (ErrMemMgr_s.tiOldStamp_u32 > ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[cntrApplBuf_u8].tiStamp_min_u32) AND
           (0 < ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[cntrApplBuf_u8].tiStamp_min_u32) THEN
            ErrMemMgr_s.tiOldStamp_u32 := ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[cntrApplBuf_u8].tiStamp_min_u32;
            idxActEntry_u8             := cntrApplBuf_u8;
        END_IF;
    END_FOR;

    IF idxActEntry_u8 <> ErrMemMgr_stNoEntryAvl_DU8 THEN
        (* Remove oldest previously active or deactive DTC from DFES *)
        ErrMemMgr_s.status_au16[idxActEntry_u8] :=
            ErrMemMgr_s.status_au16[idxActEntry_u8] OR
            UINT_TO_WORD(bds_dsm_delError_DTC(UDINT_TO_UINT(ErrMemMgr_s.ErrMemMgr_savePrm_s
                                                                .ErrMemMgr_prevActvDfes_as[idxActEntry_u8].idxPrevActvDfes_u32)));

        ErrMemMgr_s.clrCntr_au8[idxActEntry_u8] := ErrMemMgr_s.clrCntr_au8[idxActEntry_u8] + 1;
        (* remove oldest DFC from the application buffer *)
        ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[idxActEntry_u8].idxPrevActvDfes_u32 := 0;
        ErrMemMgr_s.ErrMemMgr_savePrm_s.ErrMemMgr_prevActvDfes_as[idxActEntry_u8].tiStamp_min_u32     := 0;
    END_IF;
END_IF;
