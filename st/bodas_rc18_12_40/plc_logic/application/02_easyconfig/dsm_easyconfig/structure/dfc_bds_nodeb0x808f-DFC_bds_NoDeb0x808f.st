(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x808f'}
TYPE DFC_bds_NoDeb0x808f : STRUCT
        DTC            : UDINT := 16#808F00;
        DFCid          : UINT  := 150;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
