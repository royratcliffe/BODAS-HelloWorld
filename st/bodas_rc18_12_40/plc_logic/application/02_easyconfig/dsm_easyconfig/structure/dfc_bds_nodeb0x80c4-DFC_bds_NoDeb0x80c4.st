(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c4'}
TYPE DFC_bds_NoDeb0x80c4 : STRUCT
        DTC            : UDINT := 16#80C400;
        DFCid          : UINT  := 203;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
