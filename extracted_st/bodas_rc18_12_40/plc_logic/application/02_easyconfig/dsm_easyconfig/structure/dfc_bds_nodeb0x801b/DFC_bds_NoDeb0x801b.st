(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x801b'}
TYPE DFC_bds_NoDeb0x801b : STRUCT
        DTC            : UDINT := 16#801B00;
        DFCid          : UINT  := 748;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
