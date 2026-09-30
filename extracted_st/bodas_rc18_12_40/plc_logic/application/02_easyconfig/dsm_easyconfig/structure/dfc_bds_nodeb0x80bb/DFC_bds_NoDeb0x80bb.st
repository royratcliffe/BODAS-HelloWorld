(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80bb'}
TYPE DFC_bds_NoDeb0x80bb : STRUCT
        DTC            : UDINT := 16#80BB00;
        DFCid          : UINT  := 194;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
