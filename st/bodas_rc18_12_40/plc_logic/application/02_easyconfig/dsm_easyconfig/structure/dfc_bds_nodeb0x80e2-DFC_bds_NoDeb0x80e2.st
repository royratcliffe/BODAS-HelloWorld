(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e2'}
TYPE DFC_bds_NoDeb0x80e2 : STRUCT
        DTC            : UDINT := 16#80E200;
        DFCid          : UINT  := 28;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
