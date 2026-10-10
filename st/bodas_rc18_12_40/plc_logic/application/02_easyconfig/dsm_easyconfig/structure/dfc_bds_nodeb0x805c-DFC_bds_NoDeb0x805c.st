(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x805c'}
TYPE DFC_bds_NoDeb0x805c : STRUCT
        DTC            : UDINT := 16#805C00;
        DFCid          : UINT  := 813;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
