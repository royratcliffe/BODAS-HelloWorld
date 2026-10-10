(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x806f'}
TYPE DFC_bds_NoDeb0x806f : STRUCT
        DTC            : UDINT := 16#806F00;
        DFCid          : UINT  := 118;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
