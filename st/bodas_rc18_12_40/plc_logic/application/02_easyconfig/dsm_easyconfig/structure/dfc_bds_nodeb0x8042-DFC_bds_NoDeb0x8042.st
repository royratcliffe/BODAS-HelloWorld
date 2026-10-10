(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x8042'}
TYPE DFC_bds_NoDeb0x8042 : STRUCT
        DTC            : UDINT := 16#804200;
        DFCid          : UINT  := 787;
        debounceMethod : USINT := NO_DEBOUNCE;
    END_STRUCT
END_TYPE
