(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80bc'}
TYPE DFC_bds_NoDeb0x80bc : STRUCT
        DTC            : UDINT := 16#80BC00;
        DFCid          : UINT  := 195;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
