(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x803a'}
TYPE DFC_bds_NoDeb0x803a : STRUCT
        DTC            : UDINT := 16#803A00;
        DFCid          : UINT  := 779;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
