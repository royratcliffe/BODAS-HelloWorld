(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80f6'}
TYPE DFC_bds_NoDeb0x80f6 : STRUCT
        DTC            : UDINT := 16#80F600;
        DFCid          : UINT  := 48;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
