(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b6'}
TYPE DFC_bds_NoDeb0x80b6 : STRUCT
        DTC            : UDINT := 16#80B600;
        DFCid          : UINT  := 189;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
