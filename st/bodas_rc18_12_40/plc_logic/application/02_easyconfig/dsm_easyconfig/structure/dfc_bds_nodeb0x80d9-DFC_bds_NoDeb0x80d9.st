(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80d9'}
TYPE DFC_bds_NoDeb0x80d9 : STRUCT
        DTC            : UDINT := 16#80D900;
        DFCid          : UINT  := 19;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
