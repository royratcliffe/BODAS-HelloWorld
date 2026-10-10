(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x803d'}
TYPE DFC_bds_NoDeb0x803d : STRUCT
        DTC            : UDINT := 16#803D00;
        DFCid          : UINT  := 782;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
