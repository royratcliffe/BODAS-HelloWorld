(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b3'}
TYPE DFC_bds_NoDeb0x80b3 : STRUCT
        DTC            : UDINT := 16#80B300;
        DFCid          : UINT  := 186;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
