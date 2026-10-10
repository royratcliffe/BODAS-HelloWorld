(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8015'}
TYPE DFC_bds_NoDeb0x8015 : STRUCT
        DTC            : UDINT := 16#801500;
        DFCid          : UINT  := 742;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
