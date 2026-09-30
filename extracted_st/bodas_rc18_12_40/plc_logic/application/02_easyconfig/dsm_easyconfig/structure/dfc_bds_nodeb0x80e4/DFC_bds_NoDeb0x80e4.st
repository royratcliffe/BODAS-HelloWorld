(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80e4'}
TYPE DFC_bds_NoDeb0x80e4 : STRUCT
        DTC            : UDINT := 16#80E400;
        DFCid          : UINT  := 30;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
