(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x808d'}
TYPE DFC_bds_NoDeb0x808d : STRUCT
        DTC            : UDINT := 16#808D00;
        DFCid          : UINT  := 148;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
