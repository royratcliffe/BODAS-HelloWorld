(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8014'}
TYPE DFC_bds_NoDeb0x8014 : STRUCT
        DTC            : UDINT := 16#801400;
        DFCid          : UINT  := 741;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
