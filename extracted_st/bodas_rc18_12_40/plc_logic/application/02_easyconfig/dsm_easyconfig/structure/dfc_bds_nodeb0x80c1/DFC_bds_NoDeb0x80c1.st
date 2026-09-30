(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c1'}
TYPE DFC_bds_NoDeb0x80c1 : STRUCT
        DTC            : UDINT := 16#80C100;
        DFCid          : UINT  := 200;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
