(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d0'}
TYPE DFC_bds_NoDeb0x80d0 : STRUCT
        DTC            : UDINT := 16#80D000;
        DFCid          : UINT  := 10;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
