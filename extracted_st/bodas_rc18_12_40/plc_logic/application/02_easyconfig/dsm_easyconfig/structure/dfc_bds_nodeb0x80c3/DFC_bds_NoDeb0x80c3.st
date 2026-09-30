(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c3'}
TYPE DFC_bds_NoDeb0x80c3 : STRUCT
        DTC            : UDINT := 16#80C300;
        DFCid          : UINT  := 202;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
