(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80ba'}
TYPE DFC_bds_NoDeb0x80ba : STRUCT
        DTC            : UDINT := 16#80BA00;
        DFCid          : UINT  := 193;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
