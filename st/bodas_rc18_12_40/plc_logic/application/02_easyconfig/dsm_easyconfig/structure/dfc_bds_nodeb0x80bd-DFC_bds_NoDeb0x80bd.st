(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80bd'}
TYPE DFC_bds_NoDeb0x80bd : STRUCT
        DTC            : UDINT := 16#80BD00;
        DFCid          : UINT  := 196;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
