(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b4'}
TYPE DFC_bds_NoDeb0x80b4 : STRUCT
        DTC            : UDINT := 16#80B400;
        DFCid          : UINT  := 187;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
