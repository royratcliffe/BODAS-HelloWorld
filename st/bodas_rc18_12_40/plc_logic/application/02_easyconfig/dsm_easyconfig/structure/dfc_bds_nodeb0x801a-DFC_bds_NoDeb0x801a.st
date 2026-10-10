(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x801a'}
TYPE DFC_bds_NoDeb0x801a : STRUCT
        DTC            : UDINT := 16#801A00;
        DFCid          : UINT  := 747;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
