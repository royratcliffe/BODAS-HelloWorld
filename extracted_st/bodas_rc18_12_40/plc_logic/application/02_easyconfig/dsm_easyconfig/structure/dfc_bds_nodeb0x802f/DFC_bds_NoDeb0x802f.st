(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x802f'}
TYPE DFC_bds_NoDeb0x802f : STRUCT
        DTC            : UDINT := 16#802F00;
        DFCid          : UINT  := 768;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
