(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e6'}
TYPE DFC_bds_NoDeb0x80e6 : STRUCT
        DTC            : UDINT := 16#80E600;
        DFCid          : UINT  := 32;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
