(* --- Interface --- *)
{attribute 'external_name' := 'cmp_rts_DFC_bds_NoDeb0x809c'}
TYPE DFC_bds_NoDeb0x809c : STRUCT
        DTC            : UDINT := 16#809C00;
        DFCid          : UINT  := 163;
        debounceMethod : USINT := TIME_UP_DOWN;
    END_STRUCT
END_TYPE
