(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x808c'}
TYPE DFC_bds_NoDeb0x808c : STRUCT
        DTC            : UDINT := 16#808C00;
        DFCid          : UINT  := 147;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
