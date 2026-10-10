(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x806b'}
TYPE DFC_bds_NoDeb0x806b : STRUCT
        DTC            : UDINT := 16#806B00;
        DFCid          : UINT  := 114;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
