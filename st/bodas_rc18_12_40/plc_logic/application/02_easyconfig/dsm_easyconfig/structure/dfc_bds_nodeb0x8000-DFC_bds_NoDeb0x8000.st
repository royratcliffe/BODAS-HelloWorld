(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8000'}
TYPE DFC_bds_NoDeb0x8000 : STRUCT
        DTC            : UDINT := 16#800000;
        DFCid          : UINT  := 721;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
