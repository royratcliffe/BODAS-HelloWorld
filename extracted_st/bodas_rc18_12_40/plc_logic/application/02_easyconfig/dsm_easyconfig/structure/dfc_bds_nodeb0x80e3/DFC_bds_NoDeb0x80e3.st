(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e3'}
TYPE DFC_bds_NoDeb0x80e3 : STRUCT
        DTC            : UDINT := 16#80E300;
        DFCid          : UINT  := 29;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
