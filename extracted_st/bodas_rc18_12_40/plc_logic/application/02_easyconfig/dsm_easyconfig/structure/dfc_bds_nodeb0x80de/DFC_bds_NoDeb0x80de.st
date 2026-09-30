(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80de'}
TYPE DFC_bds_NoDeb0x80de : STRUCT
        DTC            : UDINT := 16#80DE00;
        DFCid          : UINT  := 24;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
