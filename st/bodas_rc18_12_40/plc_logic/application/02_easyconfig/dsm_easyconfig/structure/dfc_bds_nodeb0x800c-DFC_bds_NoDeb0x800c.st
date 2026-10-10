(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x800c'}
TYPE DFC_bds_NoDeb0x800c : STRUCT
        DTC            : UDINT := 16#800C00;
        DFCid          : UINT  := 733;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
