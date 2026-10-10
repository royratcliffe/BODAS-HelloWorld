(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8004'}
TYPE DFC_bds_NoDeb0x8004 : STRUCT
        DTC            : UDINT := 16#800400;
        DFCid          : UINT  := 725;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
