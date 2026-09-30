(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x801f'}
TYPE DFC_bds_NoDeb0x801f : STRUCT
        DTC            : UDINT := 16#801F00;
        DFCid          : UINT  := 752;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
