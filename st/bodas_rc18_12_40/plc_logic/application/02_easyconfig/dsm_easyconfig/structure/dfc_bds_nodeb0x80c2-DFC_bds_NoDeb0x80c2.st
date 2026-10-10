(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80c2'}
TYPE DFC_bds_NoDeb0x80c2 : STRUCT
        DTC            : UDINT := 16#80C200;
        DFCid          : UINT  := 201;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
