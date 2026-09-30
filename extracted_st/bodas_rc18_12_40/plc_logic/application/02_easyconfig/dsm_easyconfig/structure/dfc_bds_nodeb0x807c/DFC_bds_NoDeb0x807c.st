(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x807c'}
TYPE DFC_bds_NoDeb0x807c : STRUCT
        DTC            : UDINT := 16#807C00;
        DFCid          : UINT  := 131;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
