(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80b1'}
TYPE DFC_bds_NoDeb0x80b1 : STRUCT
        DTC            : UDINT := 16#80B100;
        DFCid          : UINT  := 184;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
