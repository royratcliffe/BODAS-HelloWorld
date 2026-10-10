(* --- Interface --- *)
TYPE struc_ErrMemMgr_prv : STRUCT
        ErrMemMgr_savePrm_s : struc_ErrMemMgr_savePrm;                            (* Data which are saved in EEPROM *)
        dtc_error_au32      : ARRAY[0..ErrMemMgr_nrDfesEntries_DU8 - 1] OF UDINT; (* dtc_error_au32 *)
        stDfes_au8          : ARRAY[0..ErrMemMgr_nrDfesEntries_DU8 - 1] OF BYTE;  (* stDfes_au8 *)
        dfc_s               : bds_dsm_dfc_ts;                                     (* dfc_s *)
        status_au16         : ARRAY[0..ErrMemMgr_nrDfesEntries_DU8 - 1] OF WORD;  (* status_au16 *)
        nrDfesEntr_u8       : USINT;                                              (* nrDfesEntr_u8 *)
        clrCntr_au8         : ARRAY[0..ErrMemMgr_nrDfesEntries_DU8 - 1] OF USINT; (* clrCntr_u8 *)
        tiOldStamp_u32      : UDINT;                                              (* tiOldStamp_u32 *)
        stDtcAvl_au8        : ARRAY[0..ErrMemMgr_nrDfesEntries_DU8 - 1] OF USINT;
    END_STRUCT
END_TYPE
