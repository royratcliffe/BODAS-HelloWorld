(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x80fc'}
TYPE DFC_bds_NoDeb0x80fc : STRUCT
        DTC            : UDINT := 16#80FC00;
        DFCid          : UINT  := 54;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
