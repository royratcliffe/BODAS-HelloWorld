(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b5'}
TYPE DFC_bds_NoDeb0x80b5 : STRUCT
        DTC            : UDINT := 16#80B500;
        DFCid          : UINT  := 188;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
