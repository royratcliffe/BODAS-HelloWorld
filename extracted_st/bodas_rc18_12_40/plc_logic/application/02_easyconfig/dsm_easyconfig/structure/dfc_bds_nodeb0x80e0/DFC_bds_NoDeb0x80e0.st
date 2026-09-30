(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e0'}
TYPE DFC_bds_NoDeb0x80e0 : STRUCT
        DTC            : UDINT := 16#80E000;
        DFCid          : UINT  := 26;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
