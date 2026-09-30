(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x800b'}
TYPE DFC_bds_NoDeb0x800b : STRUCT
        DTC            : UDINT := 16#800B00;
        DFCid          : UINT  := 732;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
