(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f3'}
TYPE DFC_bds_NoDeb0x80f3 : STRUCT
        DTC            : UDINT := 16#80F300;
        DFCid          : UINT  := 45;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
