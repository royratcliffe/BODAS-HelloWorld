(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x804c'}
TYPE DFC_bds_NoDeb0x804c : STRUCT
        DTC            : UDINT := 16#804C00;
        DFCid          : UINT  := 797;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
