(* --- Interface --- *)
TYPE struc_MngInhb : STRUCT
        st_flgUBattLowDetd_b : BOOL;
        st_flgInhbActv_b     : BOOL;
        st_flgOutpLockd_b    : BOOL;
        UBatt_mV_u16         : UINT;
        NrCycDebRst_u16      : UINT;
    END_STRUCT
END_TYPE
