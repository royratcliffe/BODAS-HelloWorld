(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8039'}
TYPE DFC_bds_NoDeb0x8039 : STRUCT
        DTC            : UDINT := 16#803900;
        DFCid          : UINT  := 778;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
