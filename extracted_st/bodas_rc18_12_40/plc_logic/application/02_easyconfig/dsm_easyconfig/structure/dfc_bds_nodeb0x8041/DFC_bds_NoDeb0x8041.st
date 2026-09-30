(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8041'}
TYPE DFC_bds_NoDeb0x8041 : STRUCT
        DTC            : UDINT := 16#804100;
        DFCid          : UINT  := 786;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
