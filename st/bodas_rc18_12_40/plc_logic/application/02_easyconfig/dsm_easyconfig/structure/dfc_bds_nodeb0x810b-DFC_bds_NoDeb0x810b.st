(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x810b'}
TYPE DFC_bds_NoDeb0x810b : STRUCT
        DTC            : UDINT := 16#810B00;
        DFCid          : UINT  := 69;
        debounceMethod : USINT := TIME_IN_ROW;
    END_STRUCT
END_TYPE
