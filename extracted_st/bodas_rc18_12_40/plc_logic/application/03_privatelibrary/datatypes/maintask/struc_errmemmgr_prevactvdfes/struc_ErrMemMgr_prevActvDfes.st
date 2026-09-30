(* --- Interface --- *)
TYPE struc_ErrMemMgr_prevActvDfes : STRUCT
        idxPrevActvDfes_u32 : UDINT; (* DTC OF previously active/deactive error in DFES *)
        tiStamp_min_u32     : UDINT; (* TIME stamp when DFES got previously active *)
    END_STRUCT
END_TYPE
