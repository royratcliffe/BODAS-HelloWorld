(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x805a'}
TYPE DFC_bds_NoDeb0x805a : STRUCT
        DTC            : UDINT := 16#805A00;
        DFCid          : UINT  := 811;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
