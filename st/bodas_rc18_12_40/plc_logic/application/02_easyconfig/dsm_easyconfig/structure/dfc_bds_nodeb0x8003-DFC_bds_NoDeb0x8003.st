(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8003'}
TYPE DFC_bds_NoDeb0x8003 : STRUCT
        DTC            : UDINT := 16#800300;
        DFCid          : UINT  := 724;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
