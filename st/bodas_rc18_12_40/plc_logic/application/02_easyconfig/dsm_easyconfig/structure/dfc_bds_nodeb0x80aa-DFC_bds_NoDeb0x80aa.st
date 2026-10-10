(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80aa'}
TYPE DFC_bds_NoDeb0x80aa : STRUCT
        DTC            : UDINT := 16#80AA00;
        DFCid          : UINT  := 177;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
