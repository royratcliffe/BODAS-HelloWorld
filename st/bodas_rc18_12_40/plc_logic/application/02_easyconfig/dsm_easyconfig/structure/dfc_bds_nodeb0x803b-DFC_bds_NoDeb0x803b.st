(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x803b'}
TYPE DFC_bds_NoDeb0x803b : STRUCT
        DTC            : UDINT := 16#803B00;
        DFCid          : UINT  := 780;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
