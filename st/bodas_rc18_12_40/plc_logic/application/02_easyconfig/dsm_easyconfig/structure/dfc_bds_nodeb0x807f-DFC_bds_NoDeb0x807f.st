(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x807f'}
TYPE DFC_bds_NoDeb0x807f : STRUCT
        DTC            : UDINT := 16#807F00;
        DFCid          : UINT  := 134;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
