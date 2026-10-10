(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8016'}
TYPE DFC_bds_NoDeb0x8016 : STRUCT
        DTC            : UDINT := 16#801600;
        DFCid          : UINT  := 743;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
