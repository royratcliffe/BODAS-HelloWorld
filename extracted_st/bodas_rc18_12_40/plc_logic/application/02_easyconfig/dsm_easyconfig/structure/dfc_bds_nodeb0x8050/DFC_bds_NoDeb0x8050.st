(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8050'}
TYPE DFC_bds_NoDeb0x8050 : STRUCT
        DTC            : UDINT := 16#805000;
        DFCid          : UINT  := 801;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
