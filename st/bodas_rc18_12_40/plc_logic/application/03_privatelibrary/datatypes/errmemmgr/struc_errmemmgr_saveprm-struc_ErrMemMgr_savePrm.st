(* --- Interface --- *)
TYPE struc_ErrMemMgr_savePrm : STRUCT
        ErrMemMgr_prevActvDfes_as : ARRAY[0..ErrMemMgr_nrDfesEntries_DU8 - 1] OF struc_ErrMemMgr_prevActvDfes; (* Previously active DFES list *)
    END_STRUCT
END_TYPE
